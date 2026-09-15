    .text

    .p2align 4
    .globl lb_window_0init
lb_window_0init:
    .seh_proc lb_window_0init
    pushq %rbp
    .seh_pushreg %rbp
    subq $608, %rsp
    .seh_stackalloc 608
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 600(%rbp)
    .seh_savereg %rdi, 600
    movq %rsi, 592(%rbp)
    .seh_savereg %rsi, 592
    movdqu %xmm6, 576(%rbp)
    .seh_savexmm %xmm6, 576
    movdqu %xmm7, 560(%rbp)
    .seh_savexmm %xmm7, 560
    movdqu %xmm8, 544(%rbp)
    .seh_savexmm %xmm8, 544
    movdqu %xmm9, 528(%rbp)
    .seh_savexmm %xmm9, 528
    movdqu %xmm10, 512(%rbp)
    .seh_savexmm %xmm10, 512
    movdqu %xmm11, 496(%rbp)
    .seh_savexmm %xmm11, 496
    movdqu %xmm12, 480(%rbp)
    .seh_savexmm %xmm12, 480
    movdqu %xmm13, 464(%rbp)
    .seh_savexmm %xmm13, 464
    movdqu %xmm14, 448(%rbp)
    .seh_savexmm %xmm14, 448
    movdqu %xmm15, 432(%rbp)
    .seh_savexmm %xmm15, 432
    movq %rbx, 424(%rbp)
    .seh_savereg %rbx, 424
    movq %r12, 416(%rbp)
    .seh_savereg %r12, 416
    .seh_endprologue
    movq %rcx, 624(%rbp)
    movq %rdx, 632(%rbp)
    movq %r8, 640(%rbp)
    movq %r9, 648(%rbp)
    leaq lb_window_unsupported(%rip), %rbx
    movl $208273493, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_window_12wrong_thread(%rip), %rbx
    movl $208273494, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_window_15invalid_options(%rip), %rbx
    movl $208273495, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_window_failed(%rip), %rbx
    movl $208273496, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_window_closed(%rip), %rbx
    movl $208273497, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_window_19presentation_in_use(%rip), %rbx
    movl $208273498, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq 160(%rbp), %rbx
    movl $4, %eax
    movq %rbx, %r10
    movw %ax, (%r10)
    movq $2, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $22, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $4, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $7, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $6, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $9, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $11, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $10, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $10, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $12, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $29, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $14, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $27, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $6, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $18, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $25, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $20, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $22, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $5, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $20, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $26, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $26, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $28, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $8, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $30, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $21, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $28, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $34, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $23, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $36, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $30, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $38, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $31, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $32, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $42, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $33, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $44, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $35, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $46, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $34, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $46, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $50, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $38, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $52, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $36, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $54, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $45, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $56, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $37, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $58, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $39, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $60, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $48, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $62, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $18, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $24, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $66, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $47, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $68, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $12, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $70, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $19, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $72, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $40, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $74, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $15, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $76, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $13, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $78, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $52, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $80, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $14, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $82, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $51, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $84, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $49, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $86, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $54, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $88, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $56, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $90, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $17, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $92, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $16, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $94, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $55, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $43, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $98, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $44, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $100, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $53, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $102, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $42, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $104, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $106, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $41, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $108, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $231, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $110, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $227, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $112, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $225, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $114, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $57, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $116, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $226, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $118, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $224, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $229, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $122, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $230, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $124, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $228, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $126, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $128, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $130, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $132, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $134, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $136, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $138, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $140, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $142, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $144, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $146, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $148, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $150, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $152, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $154, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $156, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $158, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $160, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $162, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $164, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $166, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $168, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $170, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $172, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $174, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $176, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $178, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $180, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $182, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $184, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $186, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $188, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $190, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $192, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $62, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $194, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $63, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $196, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $64, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $198, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $60, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $200, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $65, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $202, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $66, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $204, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $206, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $68, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $208, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $210, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $212, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $214, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $216, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $218, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $67, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $220, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $222, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $69, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $224, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $226, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $228, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $230, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $74, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $232, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $75, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $234, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $76, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $236, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $61, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $238, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $77, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $240, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $59, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $242, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $78, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $244, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $58, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $246, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $80, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $248, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $79, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $250, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $81, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $252, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $82, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $254, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    leaq lb_window_13key_positions(%rip), %r12
    movq %r12, %rdi
    movq %rbx, %rsi
    movq $256, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    leaq lb_window_13mac_not_found(%rip), %rbx
    movabsq $9223372036854775807, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq 138(%rbp), %rbx
    movl $76, %eax
    movq %rbx, %r10
    movw %ax, (%r10)
    movq $2, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $117, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $4, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $99, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $6, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $101, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $87, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $10, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $105, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $12, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $110, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $14, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $100, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $111, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $18, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $119, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $20, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    leaq lb_window_14win_class_name(%rip), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl 16(%r10), %eax
    movl %eax, 16(%r11)
    movzwl 20(%r10), %eax
    movw %ax, 20(%r11)
    leaq 10(%rbp), %rbx
    movl $0, %eax
    movq %rbx, %r10
    movw %ax, (%r10)
    movq $2, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $41, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $4, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $30, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $6, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $31, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $32, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $10, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $33, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $12, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $34, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $14, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $35, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $36, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $18, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $37, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $20, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $38, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $22, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $39, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $45, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $26, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $46, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $28, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $42, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $30, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $43, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $20, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $34, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $26, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $36, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $8, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $38, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $21, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $23, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $42, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $28, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $44, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $24, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $46, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $12, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $48, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $18, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $50, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $19, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $52, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $47, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $54, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $48, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $56, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $40, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $58, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $224, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $60, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $4, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $62, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $22, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $64, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $7, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $66, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $9, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $68, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $10, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $70, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $11, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $72, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $13, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $74, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $14, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $76, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $15, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $78, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $51, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $80, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $52, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $82, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $53, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $84, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $225, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $86, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $49, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $88, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $29, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $90, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $27, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $92, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $6, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $94, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $25, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $96, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $5, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $98, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $17, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $100, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $16, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $102, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $54, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $104, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $55, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $106, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $56, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $108, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $229, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $110, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $112, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $226, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $114, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $44, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $116, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $57, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $118, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $58, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $120, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $59, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $122, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $60, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $124, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $61, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    movq $126, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $62, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    leaq lb_window_13win_scan_keys(%rip), %r12
    movq %rbx, %r10
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
    movq 600(%rbp), %rdi
    movq 592(%rbp), %rsi
    movdqu 576(%rbp), %xmm6
    movdqu 560(%rbp), %xmm7
    movdqu 544(%rbp), %xmm8
    movdqu 528(%rbp), %xmm9
    movdqu 512(%rbp), %xmm10
    movdqu 496(%rbp), %xmm11
    movdqu 480(%rbp), %xmm12
    movdqu 464(%rbp), %xmm13
    movdqu 448(%rbp), %xmm14
    movdqu 432(%rbp), %xmm15
    movq 424(%rbp), %rbx
    movq 416(%rbp), %r12
    leaq 608(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_window_Window_open
lb_window_Window_open:
    .seh_proc lb_window_Window_open
    pushq %rbp
    .seh_pushreg %rbp
    subq $416, %rsp
    .seh_stackalloc 416
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 232(%rbp)
    movq %rdi, 408(%rbp)
    .seh_savereg %rdi, 408
    movq %rsi, 400(%rbp)
    .seh_savereg %rsi, 400
    movdqu %xmm6, 384(%rbp)
    .seh_savexmm %xmm6, 384
    movdqu %xmm7, 368(%rbp)
    .seh_savexmm %xmm7, 368
    movdqu %xmm8, 352(%rbp)
    .seh_savexmm %xmm8, 352
    movdqu %xmm9, 336(%rbp)
    .seh_savexmm %xmm9, 336
    movdqu %xmm10, 320(%rbp)
    .seh_savexmm %xmm10, 320
    movdqu %xmm11, 304(%rbp)
    .seh_savexmm %xmm11, 304
    movdqu %xmm12, 288(%rbp)
    .seh_savexmm %xmm12, 288
    movdqu %xmm13, 272(%rbp)
    .seh_savexmm %xmm13, 272
    movdqu %xmm14, 256(%rbp)
    .seh_savexmm %xmm14, 256
    movdqu %xmm15, 240(%rbp)
    .seh_savexmm %xmm15, 240
    movq %rbx, 224(%rbp)
    .seh_savereg %rbx, 224
    movq %r12, 216(%rbp)
    .seh_savereg %r12, 216
    movq %r13, 208(%rbp)
    .seh_savereg %r13, 208
    movq %r14, 200(%rbp)
    .seh_savereg %r14, 200
    .seh_endprologue
    movq %rcx, 432(%rbp)
    movq %rdx, 440(%rbp)
    movq %r8, 448(%rbp)
    movq %r9, 456(%rbp)
    movq 440(%rbp), %r10
    leaq 128(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    subq $32, %rsp
    leaq 96(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_window_12check_thread
    addq $32, %rsp
    leaq 96(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_2
    jmp .L1_1
.L1_2:
    leaq 160(%rbp), %rbx
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
    movq 232(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 232(%rbp), %rax
    movq 408(%rbp), %rdi
    movq 400(%rbp), %rsi
    movdqu 384(%rbp), %xmm6
    movdqu 368(%rbp), %xmm7
    movdqu 352(%rbp), %xmm8
    movdqu 336(%rbp), %xmm9
    movdqu 320(%rbp), %xmm10
    movdqu 304(%rbp), %xmm11
    movdqu 288(%rbp), %xmm12
    movdqu 272(%rbp), %xmm13
    movdqu 256(%rbp), %xmm14
    movdqu 240(%rbp), %xmm15
    movq 224(%rbp), %rbx
    movq 216(%rbp), %r12
    movq 208(%rbp), %r13
    movq 200(%rbp), %r14
    leaq 416(%rbp), %rsp
    popq %rbp
    ret
.L1_3:
.L1_1:
    leaq 128(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq $20, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl (%r10), %r13d
    subq $32, %rsp
    movl %r12d, %eax
    movq %rax, 8(%rsp)
    movl %r13d, %eax
    movq %rax, 16(%rsp)
    leaq 64(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_window_12check_extent
    addq $32, %rsp
    leaq 64(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_5
    jmp .L1_4
.L1_5:
    leaq 160(%rbp), %rbx
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
    movq 232(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 232(%rbp), %rax
    movq 408(%rbp), %rdi
    movq 400(%rbp), %rsi
    movdqu 384(%rbp), %xmm6
    movdqu 368(%rbp), %xmm7
    movdqu 352(%rbp), %xmm8
    movdqu 336(%rbp), %xmm9
    movdqu 320(%rbp), %xmm10
    movdqu 304(%rbp), %xmm11
    movdqu 288(%rbp), %xmm12
    movdqu 272(%rbp), %xmm13
    movdqu 256(%rbp), %xmm14
    movdqu 240(%rbp), %xmm15
    movq 224(%rbp), %rbx
    movq 216(%rbp), %r12
    movq 208(%rbp), %r13
    movq 200(%rbp), %r14
    leaq 416(%rbp), %rsp
    popq %rbp
    ret
.L1_6:
.L1_4:
    subq $48, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_utf8_valid
    addq $48, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L1_8
.L1_7:
    leaq 160(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_2(%rip), %r13
    leaq 48(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $35, %rax
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
    movq 232(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 232(%rbp), %rax
    movq 408(%rbp), %rdi
    movq 400(%rbp), %rsi
    movdqu 384(%rbp), %xmm6
    movdqu 368(%rbp), %xmm7
    movdqu 352(%rbp), %xmm8
    movdqu 336(%rbp), %xmm9
    movdqu 320(%rbp), %xmm10
    movdqu 304(%rbp), %xmm11
    movdqu 288(%rbp), %xmm12
    movdqu 272(%rbp), %xmm13
    movdqu 256(%rbp), %xmm14
    movdqu 240(%rbp), %xmm15
    movq 224(%rbp), %rbx
    movq 216(%rbp), %r12
    movq 208(%rbp), %r13
    movq 200(%rbp), %r14
    leaq 416(%rbp), %rsp
    popq %rbp
    ret
.L1_10:
    jmp .L1_9
.L1_8:
.L1_9:
    leaq 40(%rbp), %r13
    movq %r13, %r11
    movq $0, 0(%r11)
    subq $64, %rsp
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_8win_open
    addq $64, %rsp
    leaq 0(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_12
    jmp .L1_11
.L1_12:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 160(%rbp), %r12
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
    movq 232(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 232(%rbp), %rax
    movq 408(%rbp), %rdi
    movq 400(%rbp), %rsi
    movdqu 384(%rbp), %xmm6
    movdqu 368(%rbp), %xmm7
    movdqu 352(%rbp), %xmm8
    movdqu 336(%rbp), %xmm9
    movdqu 320(%rbp), %xmm10
    movdqu 304(%rbp), %xmm11
    movdqu 288(%rbp), %xmm12
    movdqu 272(%rbp), %xmm13
    movdqu 256(%rbp), %xmm14
    movdqu 240(%rbp), %xmm15
    movq 224(%rbp), %rbx
    movq 216(%rbp), %r12
    movq 208(%rbp), %r13
    movq 200(%rbp), %r14
    leaq 416(%rbp), %rsp
    popq %rbp
    ret
.L1_13:
.L1_11:
    movq %r14, %r10
    movq (%r10), %rbx
    movq %r13, %r10
    movq %rbx, (%r10)
    leaq 160(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 232(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 232(%rbp), %rax
    movq 408(%rbp), %rdi
    movq 400(%rbp), %rsi
    movdqu 384(%rbp), %xmm6
    movdqu 368(%rbp), %xmm7
    movdqu 352(%rbp), %xmm8
    movdqu 336(%rbp), %xmm9
    movdqu 320(%rbp), %xmm10
    movdqu 304(%rbp), %xmm11
    movdqu 288(%rbp), %xmm12
    movdqu 272(%rbp), %xmm13
    movdqu 256(%rbp), %xmm14
    movdqu 240(%rbp), %xmm15
    movq 224(%rbp), %rbx
    movq 216(%rbp), %r12
    movq 208(%rbp), %r13
    movq 200(%rbp), %r14
    leaq 416(%rbp), %rsp
    popq %rbp
    ret
.L1_14:
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_window_Window_show
lb_window_Window_show:
    .seh_proc lb_window_Window_show
    pushq %rbp
    .seh_pushreg %rbp
    subq $320, %rsp
    .seh_stackalloc 320
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 136(%rbp)
    movq %rdi, 312(%rbp)
    .seh_savereg %rdi, 312
    movq %rsi, 304(%rbp)
    .seh_savereg %rsi, 304
    movdqu %xmm6, 288(%rbp)
    .seh_savexmm %xmm6, 288
    movdqu %xmm7, 272(%rbp)
    .seh_savexmm %xmm7, 272
    movdqu %xmm8, 256(%rbp)
    .seh_savexmm %xmm8, 256
    movdqu %xmm9, 240(%rbp)
    .seh_savexmm %xmm9, 240
    movdqu %xmm10, 224(%rbp)
    .seh_savexmm %xmm10, 224
    movdqu %xmm11, 208(%rbp)
    .seh_savexmm %xmm11, 208
    movdqu %xmm12, 192(%rbp)
    .seh_savexmm %xmm12, 192
    movdqu %xmm13, 176(%rbp)
    .seh_savexmm %xmm13, 176
    movdqu %xmm14, 160(%rbp)
    .seh_savexmm %xmm14, 160
    movdqu %xmm15, 144(%rbp)
    .seh_savexmm %xmm15, 144
    movq %rbx, 128(%rbp)
    .seh_savereg %rbx, 128
    movq %r12, 120(%rbp)
    .seh_savereg %r12, 120
    movq %r13, 112(%rbp)
    .seh_savereg %r13, 112
    .seh_endprologue
    movq %rcx, 336(%rbp)
    movq %rdx, 344(%rbp)
    movq %r8, 352(%rbp)
    movq %r9, 360(%rbp)
    movq 344(%rbp), %rax
    movq %rax, 72(%rbp)
    leaq 72(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 32(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_Window_checked
    addq $32, %rsp
    leaq 32(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_2
    jmp .L2_1
.L2_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 80(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 136(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 136(%rbp), %rax
    movq 312(%rbp), %rdi
    movq 304(%rbp), %rsi
    movdqu 288(%rbp), %xmm6
    movdqu 272(%rbp), %xmm7
    movdqu 256(%rbp), %xmm8
    movdqu 240(%rbp), %xmm9
    movdqu 224(%rbp), %xmm10
    movdqu 208(%rbp), %xmm11
    movdqu 192(%rbp), %xmm12
    movdqu 176(%rbp), %xmm13
    movdqu 160(%rbp), %xmm14
    movdqu 144(%rbp), %xmm15
    movq 128(%rbp), %rbx
    movq 120(%rbp), %r12
    movq 112(%rbp), %r13
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
.L2_3:
.L2_1:
    movq %r12, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 16(%rbp), %r10
    movq %rbx, (%r10)
    testq %rbx, %rbx
    jne .L2_4
    jmp .L2_5
.L2_4:
    jmp .L2_6
.L2_5:
    leaq .Ltext_39(%rip), %rbx
    leaq 0(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
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
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_6:
    jmp .L2_8
.L2_7:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L2_8:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movl $5, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call ShowWindow
    addq $32, %rsp
    movl %eax, %ebx
    leaq 80(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 136(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 136(%rbp), %rax
    movq 312(%rbp), %rdi
    movq 304(%rbp), %rsi
    movdqu 288(%rbp), %xmm6
    movdqu 272(%rbp), %xmm7
    movdqu 256(%rbp), %xmm8
    movdqu 240(%rbp), %xmm9
    movdqu 224(%rbp), %xmm10
    movdqu 208(%rbp), %xmm11
    movdqu 192(%rbp), %xmm12
    movdqu 176(%rbp), %xmm13
    movdqu 160(%rbp), %xmm14
    movdqu 144(%rbp), %xmm15
    movq 128(%rbp), %rbx
    movq 120(%rbp), %r12
    movq 112(%rbp), %r13
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_window_Window_size
lb_window_Window_size:
    .seh_proc lb_window_Window_size
    pushq %rbp
    .seh_pushreg %rbp
    subq $384, %rsp
    .seh_stackalloc 384
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 200(%rbp)
    movq %rdi, 376(%rbp)
    .seh_savereg %rdi, 376
    movq %rsi, 368(%rbp)
    .seh_savereg %rsi, 368
    movdqu %xmm6, 352(%rbp)
    .seh_savexmm %xmm6, 352
    movdqu %xmm7, 336(%rbp)
    .seh_savexmm %xmm7, 336
    movdqu %xmm8, 320(%rbp)
    .seh_savexmm %xmm8, 320
    movdqu %xmm9, 304(%rbp)
    .seh_savexmm %xmm9, 304
    movdqu %xmm10, 288(%rbp)
    .seh_savexmm %xmm10, 288
    movdqu %xmm11, 272(%rbp)
    .seh_savexmm %xmm11, 272
    movdqu %xmm12, 256(%rbp)
    .seh_savexmm %xmm12, 256
    movdqu %xmm13, 240(%rbp)
    .seh_savexmm %xmm13, 240
    movdqu %xmm14, 224(%rbp)
    .seh_savexmm %xmm14, 224
    movdqu %xmm15, 208(%rbp)
    .seh_savexmm %xmm15, 208
    movq %rbx, 192(%rbp)
    .seh_savereg %rbx, 192
    movq %r12, 184(%rbp)
    .seh_savereg %r12, 184
    movq %r13, 176(%rbp)
    .seh_savereg %r13, 176
    movq %r14, 168(%rbp)
    .seh_savereg %r14, 168
    .seh_endprologue
    movq %rcx, 400(%rbp)
    movq %rdx, 408(%rbp)
    movq %r8, 416(%rbp)
    movq %r9, 424(%rbp)
    movq 408(%rbp), %rax
    movq %rax, 88(%rbp)
    leaq 88(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 48(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_Window_checked
    addq $32, %rsp
    leaq 48(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_2
    jmp .L3_1
.L3_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 96(%rbp), %r13
    movq $40, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $64, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 200(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 200(%rbp), %rax
    movq 376(%rbp), %rdi
    movq 368(%rbp), %rsi
    movdqu 352(%rbp), %xmm6
    movdqu 336(%rbp), %xmm7
    movdqu 320(%rbp), %xmm8
    movdqu 304(%rbp), %xmm9
    movdqu 288(%rbp), %xmm10
    movdqu 272(%rbp), %xmm11
    movdqu 256(%rbp), %xmm12
    movdqu 240(%rbp), %xmm13
    movdqu 224(%rbp), %xmm14
    movdqu 208(%rbp), %xmm15
    movq 192(%rbp), %rbx
    movq 184(%rbp), %r12
    movq 176(%rbp), %r13
    movq 168(%rbp), %r14
    leaq 384(%rbp), %rsp
    popq %rbp
    ret
.L3_3:
.L3_1:
    movq %r12, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 8(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_8win_size
    addq $32, %rsp
    leaq 8(%rbp), %rbx
    leaq 96(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq $64, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 200(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 200(%rbp), %rax
    movq 376(%rbp), %rdi
    movq 368(%rbp), %rsi
    movdqu 352(%rbp), %xmm6
    movdqu 336(%rbp), %xmm7
    movdqu 320(%rbp), %xmm8
    movdqu 304(%rbp), %xmm9
    movdqu 288(%rbp), %xmm10
    movdqu 272(%rbp), %xmm11
    movdqu 256(%rbp), %xmm12
    movdqu 240(%rbp), %xmm13
    movdqu 224(%rbp), %xmm14
    movdqu 208(%rbp), %xmm15
    movq 192(%rbp), %rbx
    movq 184(%rbp), %r12
    movq 176(%rbp), %r13
    movq 168(%rbp), %r14
    leaq 384(%rbp), %rsp
    popq %rbp
    ret
.L3_4:
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_window_Window_resize
lb_window_Window_resize:
    .seh_proc lb_window_Window_resize
    pushq %rbp
    .seh_pushreg %rbp
    subq $608, %rsp
    .seh_stackalloc 608
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 424(%rbp)
    movq %rdi, 600(%rbp)
    .seh_savereg %rdi, 600
    movq %rsi, 592(%rbp)
    .seh_savereg %rsi, 592
    movdqu %xmm6, 576(%rbp)
    .seh_savexmm %xmm6, 576
    movdqu %xmm7, 560(%rbp)
    .seh_savexmm %xmm7, 560
    movdqu %xmm8, 544(%rbp)
    .seh_savexmm %xmm8, 544
    movdqu %xmm9, 528(%rbp)
    .seh_savexmm %xmm9, 528
    movdqu %xmm10, 512(%rbp)
    .seh_savexmm %xmm10, 512
    movdqu %xmm11, 496(%rbp)
    .seh_savexmm %xmm11, 496
    movdqu %xmm12, 480(%rbp)
    .seh_savexmm %xmm12, 480
    movdqu %xmm13, 464(%rbp)
    .seh_savexmm %xmm13, 464
    movdqu %xmm14, 448(%rbp)
    .seh_savexmm %xmm14, 448
    movdqu %xmm15, 432(%rbp)
    .seh_savexmm %xmm15, 432
    movq %rbx, 416(%rbp)
    .seh_savereg %rbx, 416
    movq %r12, 408(%rbp)
    .seh_savereg %r12, 408
    movq %r13, 400(%rbp)
    .seh_savereg %r13, 400
    movq %r14, 392(%rbp)
    .seh_savereg %r14, 392
    movq %r15, 384(%rbp)
    .seh_savereg %r15, 384
    .seh_endprologue
    movq %rcx, 624(%rbp)
    movq %rdx, 632(%rbp)
    movq %r8, 640(%rbp)
    movq %r9, 648(%rbp)
    movq 632(%rbp), %rax
    movq %rax, 344(%rbp)
    movq 640(%rbp), %rax
    movl %eax, 328(%rbp)
    movq 648(%rbp), %rax
    movl %eax, 312(%rbp)
    leaq 344(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 272(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_Window_checked
    addq $32, %rsp
    leaq 272(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_2
    jmp .L4_1
.L4_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 352(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 424(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 424(%rbp), %rax
    movq 600(%rbp), %rdi
    movq 592(%rbp), %rsi
    movdqu 576(%rbp), %xmm6
    movdqu 560(%rbp), %xmm7
    movdqu 544(%rbp), %xmm8
    movdqu 528(%rbp), %xmm9
    movdqu 512(%rbp), %xmm10
    movdqu 496(%rbp), %xmm11
    movdqu 480(%rbp), %xmm12
    movdqu 464(%rbp), %xmm13
    movdqu 448(%rbp), %xmm14
    movdqu 432(%rbp), %xmm15
    movq 416(%rbp), %rbx
    movq 408(%rbp), %r12
    movq 400(%rbp), %r13
    movq 392(%rbp), %r14
    movq 384(%rbp), %r15
    leaq 608(%rbp), %rsp
    popq %rbp
    ret
.L4_1:
    movq %r12, %r10
    movq (%r10), %rbx
    leaq 328(%rbp), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    leaq 312(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %r10
    movl (%r10), %eax
    movl %eax, 32(%rbp)
    subq $32, %rsp
    movl %r13d, %eax
    movq %rax, 8(%rsp)
    movl 32(%rbp), %eax
    movq %rax, 16(%rsp)
    leaq 240(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_window_12check_extent
    addq $32, %rsp
    leaq 240(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L4_5
    jmp .L4_4
.L4_5:
    leaq 352(%rbp), %rbx
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
    movq 424(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 424(%rbp), %rax
    movq 600(%rbp), %rdi
    movq 592(%rbp), %rsi
    movdqu 576(%rbp), %xmm6
    movdqu 560(%rbp), %xmm7
    movdqu 544(%rbp), %xmm8
    movdqu 528(%rbp), %xmm9
    movdqu 512(%rbp), %xmm10
    movdqu 496(%rbp), %xmm11
    movdqu 480(%rbp), %xmm12
    movdqu 464(%rbp), %xmm13
    movdqu 448(%rbp), %xmm14
    movdqu 432(%rbp), %xmm15
    movq 416(%rbp), %rbx
    movq 408(%rbp), %r12
    movq 400(%rbp), %r13
    movq 392(%rbp), %r14
    movq 384(%rbp), %r15
    leaq 608(%rbp), %rsp
    popq %rbp
    ret
.L4_4:
    leaq 160(%rbp), %r10
    movq %rbx, (%r10)
    leaq 144(%rbp), %r10
    movl %r13d, (%r10)
    movl 32(%rbp), %eax
    leaq 128(%rbp), %r10
    movl %eax, (%r10)
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    leaq 64(%rbp), %r10
    movq %rax, (%r10)
    movq 24(%rbp), %rax
    testq %rax, %rax
    jne .L4_20
    jmp .L4_21
.L4_20:
    jmp .L4_22
.L4_21:
    leaq .Ltext_39(%rip), %rbx
    leaq 48(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
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
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L4_22:
.L4_24:
    subq $32, %rsp
    movq 24(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GetDpiForWindow
    addq $32, %rsp
    movl %eax, 16(%rbp)
    subq $32, %rsp
    movq 24(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $4294967280, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call GetWindowLongPtrW
    addq $32, %rsp
    movq %rax, 8(%rbp)
    leaq 112(%rbp), %rax
    movq %rax, 0(%rbp)
    leaq 96(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movl %r13d, %r15d
    movl 16(%rbp), %eax
    movl %eax, %ebx
    imulq %rbx, %r15
.L4_11:
    movq $96, %rcx
    movq %r15, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, %r13
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl %r13d, (%r10)
    movl 32(%rbp), %eax
    movl %eax, %r12d
    movq %r12, %rcx
    movq %rbx, %r12
    imulq %rcx, %r12
.L4_13:
    movq $96, %rcx
    movq %r12, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, %rbx
    movq $12, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movl %ebx, (%r10)
    movq %r14, %r10
    movq 0(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $48, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movl 8(%rbp), %eax
    movq %rax, 8(%rsp)
    movl $0, %eax
    movq %rax, 16(%rsp)
    movl $0, %eax
    movq %rax, 24(%rsp)
    movl 16(%rbp), %eax
    movq %rax, 32(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call AdjustWindowRectExForDpi
    addq $48, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L4_26
    jmp .L4_17
.L4_26:
    movl %ebx, %r12d
    jmp .L4_18
.L4_17:
    movq 0(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movq 0(%rbp), %r10
    movslq (%r10), %r12
    movl %ebx, %eax
    movl %r12d, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_248(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %ebx
    movq 0(%rbp), %rax
    movq $12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movq 0(%rbp), %rax
    movq $4, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movslq (%r10), %r13
    movl %r12d, %eax
    movl %r13d, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_248(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r12d
    subq $64, %rsp
    movq 24(%rbp), %rax
    movq %rax, 0(%rsp)
    movq $0, %rax
    movq %rax, 8(%rsp)
    movl $0, %eax
    movq %rax, 16(%rsp)
    movl $0, %eax
    movq %rax, 24(%rsp)
    movl %ebx, %eax
    movq %rax, 32(%rsp)
    movl %r12d, %eax
    movq %rax, 40(%rsp)
    movl $22, %eax
    movq %rax, 48(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call SetWindowPos
    addq $64, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L4_18:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L4_14
    jmp .L4_15
.L4_14:
    leaq 176(%rbp), %rbx
    leaq lb_window_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_249(%rip), %r12
    leaq 80(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $38, %rax
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
    leaq 208(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L4_25
.L4_15:
.L4_16:
    leaq 176(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 208(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L4_25:
    leaq 208(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_8
    jmp .L4_7
.L4_8:
    leaq 352(%rbp), %rbx
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
    movq 424(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 424(%rbp), %rax
    movq 600(%rbp), %rdi
    movq 592(%rbp), %rsi
    movdqu 576(%rbp), %xmm6
    movdqu 560(%rbp), %xmm7
    movdqu 544(%rbp), %xmm8
    movdqu 528(%rbp), %xmm9
    movdqu 512(%rbp), %xmm10
    movdqu 496(%rbp), %xmm11
    movdqu 480(%rbp), %xmm12
    movdqu 464(%rbp), %xmm13
    movdqu 448(%rbp), %xmm14
    movdqu 432(%rbp), %xmm15
    movq 416(%rbp), %rbx
    movq 408(%rbp), %r12
    movq 400(%rbp), %r13
    movq 392(%rbp), %r14
    movq 384(%rbp), %r15
    leaq 608(%rbp), %rsp
    popq %rbp
    ret
.L4_7:
    leaq 352(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 424(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 424(%rbp), %rax
    movq 600(%rbp), %rdi
    movq 592(%rbp), %rsi
    movdqu 576(%rbp), %xmm6
    movdqu 560(%rbp), %xmm7
    movdqu 544(%rbp), %xmm8
    movdqu 528(%rbp), %xmm9
    movdqu 512(%rbp), %xmm10
    movdqu 496(%rbp), %xmm11
    movdqu 480(%rbp), %xmm12
    movdqu 464(%rbp), %xmm13
    movdqu 448(%rbp), %xmm14
    movdqu 432(%rbp), %xmm15
    movq 416(%rbp), %rbx
    movq 408(%rbp), %r12
    movq 400(%rbp), %r13
    movq 392(%rbp), %r14
    movq 384(%rbp), %r15
    leaq 608(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_window_Window_14set_text_input
lb_window_Window_14set_text_input:
    .seh_proc lb_window_Window_14set_text_input
    pushq %rbp
    .seh_pushreg %rbp
    subq $320, %rsp
    .seh_stackalloc 320
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 136(%rbp)
    movq %rdi, 312(%rbp)
    .seh_savereg %rdi, 312
    movq %rsi, 304(%rbp)
    .seh_savereg %rsi, 304
    movdqu %xmm6, 288(%rbp)
    .seh_savexmm %xmm6, 288
    movdqu %xmm7, 272(%rbp)
    .seh_savexmm %xmm7, 272
    movdqu %xmm8, 256(%rbp)
    .seh_savexmm %xmm8, 256
    movdqu %xmm9, 240(%rbp)
    .seh_savexmm %xmm9, 240
    movdqu %xmm10, 224(%rbp)
    .seh_savexmm %xmm10, 224
    movdqu %xmm11, 208(%rbp)
    .seh_savexmm %xmm11, 208
    movdqu %xmm12, 192(%rbp)
    .seh_savexmm %xmm12, 192
    movdqu %xmm13, 176(%rbp)
    .seh_savexmm %xmm13, 176
    movdqu %xmm14, 160(%rbp)
    .seh_savexmm %xmm14, 160
    movdqu %xmm15, 144(%rbp)
    .seh_savexmm %xmm15, 144
    movq %rbx, 128(%rbp)
    .seh_savereg %rbx, 128
    movq %r12, 120(%rbp)
    .seh_savereg %r12, 120
    movq %r13, 112(%rbp)
    .seh_savereg %r13, 112
    movq %r14, 104(%rbp)
    .seh_savereg %r14, 104
    movq %r15, 96(%rbp)
    .seh_savereg %r15, 96
    .seh_endprologue
    movq %rcx, 336(%rbp)
    movq %rdx, 344(%rbp)
    movq %r8, 352(%rbp)
    movq %r9, 360(%rbp)
    movq 344(%rbp), %rax
    movq %rax, 56(%rbp)
    movq 352(%rbp), %rax
    movl %eax, 40(%rbp)
    leaq 56(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_Window_checked
    addq $32, %rsp
    leaq 0(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L5_2
    jmp .L5_1
.L5_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 64(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 136(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 136(%rbp), %rax
    movq 312(%rbp), %rdi
    movq 304(%rbp), %rsi
    movdqu 288(%rbp), %xmm6
    movdqu 272(%rbp), %xmm7
    movdqu 256(%rbp), %xmm8
    movdqu 240(%rbp), %xmm9
    movdqu 224(%rbp), %xmm10
    movdqu 208(%rbp), %xmm11
    movdqu 192(%rbp), %xmm12
    movdqu 176(%rbp), %xmm13
    movdqu 160(%rbp), %xmm14
    movdqu 144(%rbp), %xmm15
    movq 128(%rbp), %rbx
    movq 120(%rbp), %r12
    movq 112(%rbp), %r13
    movq 104(%rbp), %r14
    movq 96(%rbp), %r15
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
.L5_3:
.L5_1:
    movq %r12, %r10
    movq (%r10), %rbx
    movq $14380, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r14d
    leaq 40(%rbp), %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    cmpl %r15d, %r14d
    jne .L5_5
.L5_4:
    leaq 64(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 136(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 136(%rbp), %rax
    movq 312(%rbp), %rdi
    movq 304(%rbp), %rsi
    movdqu 288(%rbp), %xmm6
    movdqu 272(%rbp), %xmm7
    movdqu 256(%rbp), %xmm8
    movdqu 240(%rbp), %xmm9
    movdqu 224(%rbp), %xmm10
    movdqu 208(%rbp), %xmm11
    movdqu 192(%rbp), %xmm12
    movdqu 176(%rbp), %xmm13
    movdqu 160(%rbp), %xmm14
    movdqu 144(%rbp), %xmm15
    movq 128(%rbp), %rbx
    movq 120(%rbp), %r12
    movq 112(%rbp), %r13
    movq 104(%rbp), %r14
    movq 96(%rbp), %r15
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
.L5_7:
    jmp .L5_6
.L5_5:
.L5_6:
    movq %r13, %r10
    movb %r15b, (%r10)
    movq $14382, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    leaq 64(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 136(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 136(%rbp), %rax
    movq 312(%rbp), %rdi
    movq 304(%rbp), %rsi
    movdqu 288(%rbp), %xmm6
    movdqu 272(%rbp), %xmm7
    movdqu 256(%rbp), %xmm8
    movdqu 240(%rbp), %xmm9
    movdqu 224(%rbp), %xmm10
    movdqu 208(%rbp), %xmm11
    movdqu 192(%rbp), %xmm12
    movdqu 176(%rbp), %xmm13
    movdqu 160(%rbp), %xmm14
    movdqu 144(%rbp), %xmm15
    movq 128(%rbp), %rbx
    movq 120(%rbp), %r12
    movq 112(%rbp), %r13
    movq 104(%rbp), %r14
    movq 96(%rbp), %r15
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_window_Window_10set_cursor
lb_window_Window_10set_cursor:
    .seh_proc lb_window_Window_10set_cursor
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
    movq 560(%rbp), %rax
    movl %eax, 248(%rbp)
    leaq 264(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 208(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_Window_checked
    addq $32, %rsp
    leaq 208(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L6_2
    jmp .L6_1
.L6_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 272(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
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
.L6_3:
.L6_1:
    movq %r12, %r10
    movq (%r10), %rbx
    leaq 248(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl %r13d, %r14d
    movzbl %r14b, %r14d
    movl $7, %ecx
    cmpl %ecx, %r14d
    jbe .L6_5
.L6_4:
    leaq 272(%rbp), %rbx
    leaq lb_window_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_5(%rip), %r12
    leaq 192(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $21, %rax
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
.L6_7:
    jmp .L6_6
.L6_5:
.L6_6:
    leaq 112(%rbp), %r10
    movq %rbx, (%r10)
    leaq 96(%rbp), %r10
    movl %r13d, (%r10)
    movq $14392, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L6_14
    jmp .L6_50
.L6_50:
    movl %r14d, %r13d
    jmp .L6_15
.L6_14:
    movq $14385, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    leaq 96(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    cmpl %r14d, %r13d
    sete %al
    movzbl %al, %r13d
.L6_15:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L6_11
    jmp .L6_12
.L6_11:
    leaq 128(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 160(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L6_49
.L6_16:
    jmp .L6_13
.L6_12:
.L6_13:
    movq %r12, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L6_51
    jmp .L6_20
.L6_51:
    movl %r13d, %r14d
    jmp .L6_21
.L6_20:
    movq $14385, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    leaq 96(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    cmpl %r14d, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
.L6_21:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L6_17
    jmp .L6_18
.L6_17:
    leaq 96(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    subq $32, %rsp
    movl %r13d, %eax
    movq %rax, 8(%rsp)
    leaq 56(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_10win_cursor
    addq $32, %rsp
    leaq 56(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L6_23
    jmp .L6_22
.L6_23:
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 128(%rbp), %r12
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
    leaq 160(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L6_49
.L6_24:
.L6_22:
    movq %r15, %r10
    movq (%r10), %r14
    movq %r12, %r10
    movq %r14, (%r10)
    movq $14385, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movb %r13b, (%r10)
    jmp .L6_19
.L6_18:
.L6_19:
    movq %rbx, %r10
    movq (%r10), %r13
    leaq 16(%rbp), %r10
    movq %r13, (%r10)
    testq %r13, %r13
    jne .L6_44
    jmp .L6_45
.L6_44:
    jmp .L6_46
.L6_45:
    leaq .Ltext_39(%rip), %rbx
    leaq 0(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
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
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L6_46:
    jmp .L6_48
.L6_47:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L6_48:
    leaq 48(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    subq $32, %rsp
    call GetCapture
    addq $32, %rsp
    movq %rax, %r14
    cmpq %r14, %r13
    jne .L6_26
.L6_25:
    movq %r12, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call SetCursor
    addq $32, %rsp
    movq %rax, %rbx
    jmp .L6_27
.L6_26:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GetCursorPos
    addq $32, %rsp
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L6_31
    jmp .L6_52
.L6_52:
    movl %r14d, %r15d
    jmp .L6_32
.L6_31:
    subq $32, %rsp
    movq %rbx, %r10
    movq 0(%r10), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call WindowFromPoint
    addq $32, %rsp
    movq %rax, %r14
    cmpq %r14, %r13
    sete %al
    movzbl %al, %r15d
.L6_32:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L6_28
    jmp .L6_29
.L6_28:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call ScreenToClient
    addq $32, %rsp
    movl %eax, %r14d
    leaq 32(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call GetClientRect
    addq $32, %rsp
    movl %eax, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %r15d
    testl %r15d, %r15d
    jne .L6_36
    jmp .L6_53
.L6_53:
    movl %r15d, %r13d
    jmp .L6_37
.L6_36:
    movq %rbx, %r10
    movslq (%r10), %r13
    movl $0, %ecx
    cmpl %ecx, %r13d
    setge %al
    movzbl %al, %r13d
.L6_37:
    movzbl %r13b, %r15d
    testl %r15d, %r15d
    jne .L6_38
    jmp .L6_54
.L6_54:
    movl %r15d, %r13d
    jmp .L6_39
.L6_38:
    movq $4, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movslq (%r10), %r13
    movl $0, %ecx
    cmpl %ecx, %r13d
    setge %al
    movzbl %al, %r13d
.L6_39:
    movzbl %r13b, %r15d
    testl %r15d, %r15d
    jne .L6_40
    jmp .L6_55
.L6_55:
    movl %r15d, %r13d
    jmp .L6_41
.L6_40:
    movq %rbx, %r10
    movslq (%r10), %r13
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movslq (%r10), %r15
    cmpl %r15d, %r13d
    setl %al
    movzbl %al, %r13d
.L6_41:
    movzbl %r13b, %r15d
    testl %r15d, %r15d
    jne .L6_42
    jmp .L6_56
.L6_56:
    movl %r15d, %ebx
    jmp .L6_43
.L6_42:
    movq $4, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movslq (%r10), %r13
    movq $12, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movslq (%r10), %r15
    cmpl %r15d, %r13d
    setl %al
    movzbl %al, %r13d
    movl %r13d, %ebx
.L6_43:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L6_33
    jmp .L6_34
.L6_33:
    movq %r12, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call SetCursor
    addq $32, %rsp
    movq %rax, %rbx
    jmp .L6_35
.L6_34:
.L6_35:
    jmp .L6_30
.L6_29:
.L6_30:
.L6_27:
    leaq 128(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 160(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L6_49:
    leaq 160(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L6_9
    jmp .L6_8
.L6_9:
    leaq 272(%rbp), %rbx
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
.L6_10:
.L6_8:
    leaq 272(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
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
    .seh_endproc

    .p2align 4
    .globl lb_window_Window_cursor
lb_window_Window_cursor:
    .seh_proc lb_window_Window_cursor
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
    .seh_endprologue
    movq %rcx, 320(%rbp)
    movq %rdx, 328(%rbp)
    movq %r8, 336(%rbp)
    movq %r9, 344(%rbp)
    movq 328(%rbp), %rax
    movq %rax, 40(%rbp)
    leaq 40(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_Window_checked
    addq $32, %rsp
    leaq 0(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L7_2
    jmp .L7_1
.L7_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 48(%rbp), %r13
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
    movq 120(%rbp), %rdi
    movq $40, %rdx
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
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
.L7_3:
.L7_1:
    movq %r12, %r10
    movq (%r10), %rbx
    movq $14385, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    leaq 48(%rbp), %r13
    movq %r13, %r10
    movb %bl, (%r10)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 120(%rbp), %rdi
    movq $40, %rdx
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
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
.L7_4:
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
    .globl lb_window_Window_20acquire_presentation
lb_window_Window_20acquire_presentation:
    .seh_proc lb_window_Window_20acquire_presentation
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
    movq %rax, 72(%rbp)
    leaq 72(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 32(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_Window_checked
    addq $32, %rsp
    leaq 32(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L8_2
    jmp .L8_1
.L8_2:
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
.L8_3:
.L8_1:
    movq %r12, %r10
    movq (%r10), %rbx
    movq $14378, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L8_4
    jmp .L8_5
.L8_4:
    leaq 80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_19presentation_in_use(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_7(%rip), %r13
    leaq 16(%rbp), %r14
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
.L8_7:
    jmp .L8_6
.L8_5:
.L8_6:
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq 8(%rbp), %r12
    movq %r12, %r11
    movq $0, 0(%r11)
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq 80(%rbp), %r14
    movq %r12, %r10
    movq %r14, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r14, %rsi
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
.L8_8:
    leaq .Ltext_8(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_window_Window_13request_close
lb_window_Window_13request_close:
    .seh_proc lb_window_Window_13request_close
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
    .seh_endprologue
    movq %rcx, 304(%rbp)
    movq %rdx, 312(%rbp)
    movq %r8, 320(%rbp)
    movq %r9, 328(%rbp)
    movq 312(%rbp), %rax
    movq %rax, 40(%rbp)
    leaq 40(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 0(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_Window_checked
    addq $32, %rsp
    leaq 0(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L9_2
    jmp .L9_1
.L9_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 48(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
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
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
.L9_3:
.L9_1:
    movq %r12, %r10
    movq (%r10), %rbx
    movq $14377, %rcx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 48(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
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
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_window_Window_poll
lb_window_Window_poll:
    .seh_proc lb_window_Window_poll
    pushq %rbp
    .seh_pushreg %rbp
    subq $704, %rsp
    .seh_stackalloc 704
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 520(%rbp)
    movq %rdi, 696(%rbp)
    .seh_savereg %rdi, 696
    movq %rsi, 688(%rbp)
    .seh_savereg %rsi, 688
    movdqu %xmm6, 672(%rbp)
    .seh_savexmm %xmm6, 672
    movdqu %xmm7, 656(%rbp)
    .seh_savexmm %xmm7, 656
    movdqu %xmm8, 640(%rbp)
    .seh_savexmm %xmm8, 640
    movdqu %xmm9, 624(%rbp)
    .seh_savexmm %xmm9, 624
    movdqu %xmm10, 608(%rbp)
    .seh_savexmm %xmm10, 608
    movdqu %xmm11, 592(%rbp)
    .seh_savexmm %xmm11, 592
    movdqu %xmm12, 576(%rbp)
    .seh_savexmm %xmm12, 576
    movdqu %xmm13, 560(%rbp)
    .seh_savexmm %xmm13, 560
    movdqu %xmm14, 544(%rbp)
    .seh_savexmm %xmm14, 544
    movdqu %xmm15, 528(%rbp)
    .seh_savexmm %xmm15, 528
    movq %rbx, 512(%rbp)
    .seh_savereg %rbx, 512
    movq %r12, 504(%rbp)
    .seh_savereg %r12, 504
    movq %r13, 496(%rbp)
    .seh_savereg %r13, 496
    movq %r14, 488(%rbp)
    .seh_savereg %r14, 488
    movq %r15, 480(%rbp)
    .seh_savereg %r15, 480
    .seh_endprologue
    movq %rcx, 720(%rbp)
    movq %rdx, 728(%rbp)
    movq %r8, 736(%rbp)
    movq %r9, 744(%rbp)
    movq 728(%rbp), %rax
    movq %rax, 376(%rbp)
    leaq 376(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 336(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_Window_checked
    addq $32, %rsp
    leaq 336(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L10_2
    jmp .L10_1
.L10_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 384(%rbp), %r13
    movq $64, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $88, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 520(%rbp), %rdi
    movq $96, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 520(%rbp), %rax
    movq 696(%rbp), %rdi
    movq 688(%rbp), %rsi
    movdqu 672(%rbp), %xmm6
    movdqu 656(%rbp), %xmm7
    movdqu 640(%rbp), %xmm8
    movdqu 624(%rbp), %xmm9
    movdqu 608(%rbp), %xmm10
    movdqu 592(%rbp), %xmm11
    movdqu 576(%rbp), %xmm12
    movdqu 560(%rbp), %xmm13
    movdqu 544(%rbp), %xmm14
    movdqu 528(%rbp), %xmm15
    movq 512(%rbp), %rbx
    movq 504(%rbp), %r12
    movq 496(%rbp), %r13
    movq 488(%rbp), %r14
    movq 480(%rbp), %r15
    leaq 704(%rbp), %rsp
    popq %rbp
    ret
.L10_3:
.L10_1:
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 16(%rbp)
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 272(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_9pop_event
    addq $32, %rsp
    leaq 272(%rbp), %r14
    movq $56, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L10_7
    jmp .L10_5
.L10_7:
    leaq 216(%rbp), %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
.L10_4:
    leaq 152(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq $56, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq 384(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movq $88, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 520(%rbp), %rdi
    movq $96, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 520(%rbp), %rax
    movq 696(%rbp), %rdi
    movq 688(%rbp), %rsi
    movdqu 672(%rbp), %xmm6
    movdqu 656(%rbp), %xmm7
    movdqu 640(%rbp), %xmm8
    movdqu 624(%rbp), %xmm9
    movdqu 608(%rbp), %xmm10
    movdqu 592(%rbp), %xmm11
    movdqu 576(%rbp), %xmm12
    movdqu 560(%rbp), %xmm13
    movdqu 544(%rbp), %xmm14
    movdqu 528(%rbp), %xmm15
    movq 512(%rbp), %rbx
    movq 504(%rbp), %r12
    movq 496(%rbp), %r13
    movq 488(%rbp), %r14
    movq 480(%rbp), %r15
    leaq 704(%rbp), %rsp
    popq %rbp
    ret
.L10_8:
    jmp .L10_6
.L10_5:
.L10_6:
    movq 16(%rbp), %rax
    leaq 72(%rbp), %r10
    movq %rax, (%r10)
    leaq 24(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq 16(%rbp), %rax
    movq $14368, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq 16(%rbp), %rax
    movq $14377, %rcx
    addq %rcx, %rax
    movq %rax, 8(%rbp)
    movq 16(%rbp), %rax
    movq $14376, %rcx
    addq %rcx, %rax
    movq %rax, 0(%rbp)
    movq $0, %rax
    movq %rax, %r15
.L10_10:
    movq $256, %rcx
    cmpq %rcx, %r15
    setb %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L10_13
    jmp .L10_24
.L10_24:
    movl %ebx, %r14d
    jmp .L10_14
.L10_13:
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq $0, %rax
    movq %rax, 8(%rsp)
    movl $0, %eax
    movq %rax, 16(%rsp)
    movl $0, %eax
    movq %rax, 24(%rsp)
    movl $1, %eax
    movq %rax, 32(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call PeekMessageW
    addq $48, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r14d
.L10_14:
    movzbl %r14b, %ebx
    testl %ebx, %ebx
    jne .L10_11
    jmp .L10_12
.L10_11:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call TranslateMessage
    addq $32, %rsp
    movl %eax, %ebx
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call DispatchMessageW
    addq $32, %rsp
    movq %rax, %rbx
    movq %r15, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_250(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq %r13, %r10
    movq (%r10), %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    seta %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L10_25
    jmp .L10_18
.L10_25:
    movl %r14d, %r15d
    jmp .L10_19
.L10_18:
    movq 8(%rbp), %r10
    movzbl (%r10), %r15d
.L10_19:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L10_26
    jmp .L10_20
.L10_26:
    movl %r14d, %r15d
    jmp .L10_21
.L10_20:
    movq 0(%rbp), %r10
    movzbl (%r10), %r15d
.L10_21:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L10_15
    jmp .L10_16
.L10_15:
    jmp .L10_12
.L10_22:
    jmp .L10_17
.L10_16:
.L10_17:
    movq %rbx, %r15
    jmp .L10_10
.L10_12:
.L10_23:
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 8(%rsp)
    leaq 88(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_9pop_event
    addq $32, %rsp
    leaq 88(%rbp), %rbx
    leaq 384(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movq $88, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 520(%rbp), %rdi
    movq $96, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 520(%rbp), %rax
    movq 696(%rbp), %rdi
    movq 688(%rbp), %rsi
    movdqu 672(%rbp), %xmm6
    movdqu 656(%rbp), %xmm7
    movdqu 640(%rbp), %xmm8
    movdqu 624(%rbp), %xmm9
    movdqu 608(%rbp), %xmm10
    movdqu 592(%rbp), %xmm11
    movdqu 576(%rbp), %xmm12
    movdqu 560(%rbp), %xmm13
    movdqu 544(%rbp), %xmm14
    movdqu 528(%rbp), %xmm15
    movq 512(%rbp), %rbx
    movq 504(%rbp), %r12
    movq 496(%rbp), %r13
    movq 488(%rbp), %r14
    movq 480(%rbp), %r15
    leaq 704(%rbp), %rsp
    popq %rbp
    ret
.L10_9:
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_window_Window_destroy
lb_window_Window_destroy:
    .seh_proc lb_window_Window_destroy
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
    .seh_endprologue
    movq %rcx, 304(%rbp)
    movq %rdx, 312(%rbp)
    movq %r8, 320(%rbp)
    movq %r9, 328(%rbp)
    movq 304(%rbp), %rax
    movq %rax, 72(%rbp)
    leaq 72(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L11_1
    jmp .L11_2
.L11_1:
    jmp .L11_3
.L11_2:
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
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
.L11_4:
.L11_3:
    subq $32, %rsp
    leaq 16(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_window_12check_thread
    addq $32, %rsp
    leaq 16(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L11_8
    jmp .L11_7
.L11_8:
    leaq 48(%rbp), %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L11_5
.L11_7:
    jmp .L11_6
.L11_5:
    leaq .Ltext_10(%rip), %r13
    leaq 0(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $43, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_11(%rip), %r13
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
.L11_6:
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_11win_destroy
    addq $32, %rsp
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
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_window_Window_checked
lb_window_Window_checked:
    .seh_proc lb_window_Window_checked
    pushq %rbp
    .seh_pushreg %rbp
    subq $320, %rsp
    .seh_stackalloc 320
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 136(%rbp)
    movq %rdi, 312(%rbp)
    .seh_savereg %rdi, 312
    movq %rsi, 304(%rbp)
    .seh_savereg %rsi, 304
    movdqu %xmm6, 288(%rbp)
    .seh_savexmm %xmm6, 288
    movdqu %xmm7, 272(%rbp)
    .seh_savexmm %xmm7, 272
    movdqu %xmm8, 256(%rbp)
    .seh_savexmm %xmm8, 256
    movdqu %xmm9, 240(%rbp)
    .seh_savexmm %xmm9, 240
    movdqu %xmm10, 224(%rbp)
    .seh_savexmm %xmm10, 224
    movdqu %xmm11, 208(%rbp)
    .seh_savexmm %xmm11, 208
    movdqu %xmm12, 192(%rbp)
    .seh_savexmm %xmm12, 192
    movdqu %xmm13, 176(%rbp)
    .seh_savexmm %xmm13, 176
    movdqu %xmm14, 160(%rbp)
    .seh_savexmm %xmm14, 160
    movdqu %xmm15, 144(%rbp)
    .seh_savexmm %xmm15, 144
    movq %rbx, 128(%rbp)
    .seh_savereg %rbx, 128
    movq %r12, 120(%rbp)
    .seh_savereg %r12, 120
    movq %r13, 112(%rbp)
    .seh_savereg %r13, 112
    movq %r14, 104(%rbp)
    .seh_savereg %r14, 104
    .seh_endprologue
    movq %rcx, 336(%rbp)
    movq %rdx, 344(%rbp)
    movq %r8, 352(%rbp)
    movq %r9, 360(%rbp)
    movq 344(%rbp), %rax
    movq %rax, 56(%rbp)
    leaq 56(%rbp), %r10
    movq (%r10), %r12
    subq $32, %rsp
    leaq 24(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_window_12check_thread
    addq $32, %rsp
    leaq 24(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L12_2
    jmp .L12_1
.L12_2:
    leaq 64(%rbp), %rbx
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
    movq 136(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 136(%rbp), %rax
    movq 312(%rbp), %rdi
    movq 304(%rbp), %rsi
    movdqu 288(%rbp), %xmm6
    movdqu 272(%rbp), %xmm7
    movdqu 256(%rbp), %xmm8
    movdqu 240(%rbp), %xmm9
    movdqu 224(%rbp), %xmm10
    movdqu 208(%rbp), %xmm11
    movdqu 192(%rbp), %xmm12
    movdqu 176(%rbp), %xmm13
    movdqu 160(%rbp), %xmm14
    movdqu 144(%rbp), %xmm15
    movq 128(%rbp), %rbx
    movq 120(%rbp), %r12
    movq 112(%rbp), %r13
    movq 104(%rbp), %r14
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
.L12_3:
.L12_1:
    movq %r12, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L12_4
    jmp .L12_5
.L12_4:
    jmp .L12_6
.L12_5:
    leaq 64(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_12(%rip), %r13
    leaq 8(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $20, %rax
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
    movq 136(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 136(%rbp), %rax
    movq 312(%rbp), %rdi
    movq 304(%rbp), %rsi
    movdqu 288(%rbp), %xmm6
    movdqu 272(%rbp), %xmm7
    movdqu 256(%rbp), %xmm8
    movdqu 240(%rbp), %xmm9
    movdqu 224(%rbp), %xmm10
    movdqu 208(%rbp), %xmm11
    movdqu 192(%rbp), %xmm12
    movdqu 176(%rbp), %xmm13
    movdqu 160(%rbp), %xmm14
    movdqu 144(%rbp), %xmm15
    movq 128(%rbp), %rbx
    movq 120(%rbp), %r12
    movq 112(%rbp), %r13
    movq 104(%rbp), %r14
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
.L12_7:
.L12_6:
    leaq 64(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 136(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 136(%rbp), %rax
    movq 312(%rbp), %rdi
    movq 304(%rbp), %rsi
    movdqu 288(%rbp), %xmm6
    movdqu 272(%rbp), %xmm7
    movdqu 256(%rbp), %xmm8
    movdqu 240(%rbp), %xmm9
    movdqu 224(%rbp), %xmm10
    movdqu 208(%rbp), %xmm11
    movdqu 192(%rbp), %xmm12
    movdqu 176(%rbp), %xmm13
    movdqu 160(%rbp), %xmm14
    movdqu 144(%rbp), %xmm15
    movq 128(%rbp), %rbx
    movq 120(%rbp), %r12
    movq 112(%rbp), %r13
    movq 104(%rbp), %r14
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
.L12_8:
    leaq .Ltext_13(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_window_12check_thread
lb_window_12check_thread:
    .seh_proc lb_window_12check_thread
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
    .seh_endprologue
    movq %rcx, 304(%rbp)
    movq %rdx, 312(%rbp)
    movq %r8, 320(%rbp)
    movq %r9, 328(%rbp)
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L13_11
    jmp .L13_19
.L13_19:
    movl %ebx, %r12d
    jmp .L13_12
.L13_11:
    leaq lb_platform_arm64(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %r12d
.L13_12:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L13_20
    jmp .L13_13
.L13_20:
    movl %ebx, %r12d
    jmp .L13_14
.L13_13:
    leaq lb_platform_windows(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L13_15
    jmp .L13_21
.L13_21:
    movl %ebx, %r12d
    jmp .L13_16
.L13_15:
    leaq lb_platform_6x86_64(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %r12d
.L13_16:
    movzbl %r12b, %ebx
    movl %ebx, %r12d
.L13_14:
    movzbl %r12b, %ebx
    movzbl %bl, %ebx
    leaq 8(%rbp), %r10
    movl %ebx, (%r10)
    jmp .L13_18
.L13_17:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L13_18:
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L13_2
.L13_1:
    leaq 48(%rbp), %rbx
    leaq lb_window_unsupported(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_14(%rip), %r12
    leaq 32(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $50, %rax
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
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
.L13_4:
    jmp .L13_3
.L13_2:
.L13_3:
    leaq lb_platform_windows(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L13_8
    jmp .L13_22
.L13_22:
    movl %ebx, %r12d
    jmp .L13_9
.L13_8:
    subq $32, %rsp
    call lb_thread_7is_main
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L13_9:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L13_5
    jmp .L13_6
.L13_5:
    leaq 48(%rbp), %rbx
    leaq lb_window_12wrong_thread(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_15(%rip), %r12
    leaq 16(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $41, %rax
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
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
.L13_10:
    jmp .L13_7
.L13_6:
.L13_7:
    leaq 48(%rbp), %rbx
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
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_window_12check_extent
lb_window_12check_extent:
    .seh_proc lb_window_12check_extent
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
    .seh_endprologue
    movq %rcx, 304(%rbp)
    movq %rdx, 312(%rbp)
    movq %r8, 320(%rbp)
    movq %r9, 328(%rbp)
    movq 312(%rbp), %rax
    movl %eax, 32(%rbp)
    movq 320(%rbp), %rax
    movl %eax, 16(%rbp)
    leaq 32(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L14_11
    jmp .L14_4
.L14_11:
    movl %r12d, %r13d
    jmp .L14_5
.L14_4:
    leaq 16(%rbp), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L14_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L14_12
    jmp .L14_6
.L14_12:
    movl %r12d, %ebx
    jmp .L14_7
.L14_6:
    movl $10000, %ecx
    cmpl %ecx, %ebx
    seta %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L14_7:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L14_13
    jmp .L14_8
.L14_13:
    movl %r12d, %ebx
    jmp .L14_9
.L14_8:
    leaq 16(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl $10000, %ecx
    cmpl %ecx, %ebx
    seta %al
    movzbl %al, %ebx
.L14_9:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L14_1
    jmp .L14_2
.L14_1:
    leaq 48(%rbp), %rbx
    leaq lb_window_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_16(%rip), %r12
    leaq 0(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $52, %rax
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
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
.L14_10:
    jmp .L14_3
.L14_2:
.L14_3:
    leaq 48(%rbp), %rbx
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
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_window_11push_scalar
lb_window_11push_scalar:
    .seh_proc lb_window_11push_scalar
    pushq %rbp
    .seh_pushreg %rbp
    subq $304, %rsp
    .seh_stackalloc 304
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 120(%rbp)
    .seh_savereg %rbx, 120
    movq %r12, 112(%rbp)
    .seh_savereg %r12, 112
    movq %r13, 104(%rbp)
    .seh_savereg %r13, 104
    movq %r14, 96(%rbp)
    .seh_savereg %r14, 96
    .seh_endprologue
    movq %rcx, 320(%rbp)
    movq %rdx, 328(%rbp)
    movq %r8, 336(%rbp)
    movq %r9, 344(%rbp)
    movq 320(%rbp), %rax
    movq %rax, 80(%rbp)
    movq 328(%rbp), %rax
    movl %eax, 64(%rbp)
    leaq 64(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl $32, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L15_4
    jmp .L15_12
.L15_12:
    movl %r12d, %r13d
    jmp .L15_5
.L15_4:
    movl $127, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r13d
.L15_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L15_6
    jmp .L15_13
.L15_13:
    movl %r12d, %r13d
    jmp .L15_7
.L15_6:
    movl $1114111, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r13d
.L15_7:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L15_8
    jmp .L15_14
.L15_14:
    movl %r12d, %r13d
    jmp .L15_9
.L15_8:
    movl $55296, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L15_10
    jmp .L15_15
.L15_15:
    movl %r12d, %r13d
    jmp .L15_11
.L15_10:
    movl $57343, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r13d
.L15_11:
    movzbl %r13b, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %r13d
.L15_9:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L15_1
    jmp .L15_2
.L15_1:
    leaq 80(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 8(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movl $13, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq $52, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl %ebx, (%r10)
    subq $96, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_10push_event
    addq $96, %rsp
    jmp .L15_3
.L15_2:
.L15_3:
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
    movq 120(%rbp), %rbx
    movq 112(%rbp), %r12
    movq 104(%rbp), %r13
    movq 96(%rbp), %r14
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_window_10push_utf16
lb_window_10push_utf16:
    .seh_proc lb_window_10push_utf16
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
    movq %r14, 48(%rbp)
    .seh_savereg %r14, 48
    movq %r15, 40(%rbp)
    .seh_savereg %r15, 40
    .seh_endprologue
    movq %rcx, 272(%rbp)
    movq %rdx, 280(%rbp)
    movq %r8, 288(%rbp)
    movq %r9, 296(%rbp)
    movq 272(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 280(%rbp), %rax
    movl %eax, 8(%rbp)
    leaq 8(%rbp), %rbx
    movq %rbx, %r10
    movzwl (%r10), %ebx
    movl $55296, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L16_4
    jmp .L16_22
.L16_22:
    movl %r12d, %r13d
    jmp .L16_5
.L16_4:
    movl $56319, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r13d
.L16_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L16_1
    jmp .L16_2
.L16_1:
    leaq 24(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $14382, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzwl (%r10), %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L16_7
.L16_6:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movl $65533, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_11push_scalar
    addq $32, %rsp
    jmp .L16_8
.L16_7:
.L16_8:
    movq %r13, %r10
    movw %bx, (%r10)
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
    movq 48(%rbp), %r14
    movq 40(%rbp), %r15
    leaq 256(%rbp), %rsp
    popq %rbp
    ret
.L16_9:
    jmp .L16_3
.L16_2:
.L16_3:
    movl $56320, %ecx
    cmpl %ecx, %ebx
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L16_13
    jmp .L16_23
.L16_23:
    movl %r12d, %r13d
    jmp .L16_14
.L16_13:
    movl $57343, %ecx
    cmpl %ecx, %ebx
    setbe %al
    movzbl %al, %r13d
.L16_14:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L16_10
    jmp .L16_11
.L16_10:
    leaq 24(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $14382, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzwl (%r10), %r14d
    movl $0, %eax
    movq %r13, %r10
    movw %ax, (%r10)
    movzwl %r14w, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L16_16
.L16_15:
    movl %r13d, %r14d
    movl %r14d, %eax
    movl $55296, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r14d
    movl %r14d, %eax
    movl $1024, %ecx
    mull %ecx
    jnc 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r14d
    movl %r14d, %eax
    movl $65536, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r14d
    movl %ebx, %r15d
    movl %r14d, %eax
    movl %r15d, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r14d
    movl %r14d, %eax
    movl $56320, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r14d
    jmp .L16_17
.L16_16:
    movl $65533, %eax
    movl %eax, %r14d
.L16_17:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movl %r14d, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_11push_scalar
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
    movq 56(%rbp), %r13
    movq 48(%rbp), %r14
    movq 40(%rbp), %r15
    leaq 256(%rbp), %rsp
    popq %rbp
    ret
.L16_18:
    jmp .L16_12
.L16_11:
.L16_12:
    leaq 24(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $14382, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzwl (%r10), %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L16_20
.L16_19:
    movl $0, %eax
    movq %r13, %r10
    movw %ax, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movl $65533, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_11push_scalar
    addq $32, %rsp
    jmp .L16_21
.L16_20:
.L16_21:
    movl %ebx, %r13d
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movl %r13d, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_11push_scalar
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
    movq 56(%rbp), %r13
    movq 48(%rbp), %r14
    movq 40(%rbp), %r15
    leaq 256(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_window_10push_event
lb_window_10push_event:
    .seh_proc lb_window_10push_event
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
    movq 304(%rbp), %rax
    movq %rax, 56(%rbp)
    movq 312(%rbp), %r10
    leaq 0(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq 56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $14368, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $256, %rcx
    cmpq %rcx, %r13
    jne .L17_2
.L17_1:
    movq $14360, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $14376, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    jmp .L17_3
.L17_2:
.L17_3:
    movq $14360, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq (%r10), %r14
    movq %r13, %rax
    movq %r14, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
.L17_5:
    movq $256, %rcx
    movq %r13, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rdx, %r14
    movq $24, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq $256, %rcx
    cmpq %rcx, %r14
    jb 1f
    leaq .Ltext_18(%rip), %rdi
    leaq .Ltext_265(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $56, %rcx
    imulq %rcx, %r14
    movq %r14, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    leaq 0(%rbp), %r15
    movq %r15, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq %r12, %r10
    movq (%r10), %r14
    movq %r14, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq %r12, %r10
    movq %r14, (%r10)
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

    .p2align 4
    .globl lb_window_9pop_event
lb_window_9pop_event:
    .seh_proc lb_window_9pop_event
    pushq %rbp
    .seh_pushreg %rbp
    subq $736, %rsp
    .seh_stackalloc 736
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 552(%rbp)
    movq %rdi, 728(%rbp)
    .seh_savereg %rdi, 728
    movq %rsi, 720(%rbp)
    .seh_savereg %rsi, 720
    movdqu %xmm6, 704(%rbp)
    .seh_savexmm %xmm6, 704
    movdqu %xmm7, 688(%rbp)
    .seh_savexmm %xmm7, 688
    movdqu %xmm8, 672(%rbp)
    .seh_savexmm %xmm8, 672
    movdqu %xmm9, 656(%rbp)
    .seh_savexmm %xmm9, 656
    movdqu %xmm10, 640(%rbp)
    .seh_savexmm %xmm10, 640
    movdqu %xmm11, 624(%rbp)
    .seh_savexmm %xmm11, 624
    movdqu %xmm12, 608(%rbp)
    .seh_savexmm %xmm12, 608
    movdqu %xmm13, 592(%rbp)
    .seh_savexmm %xmm13, 592
    movdqu %xmm14, 576(%rbp)
    .seh_savexmm %xmm14, 576
    movdqu %xmm15, 560(%rbp)
    .seh_savexmm %xmm15, 560
    movq %rbx, 544(%rbp)
    .seh_savereg %rbx, 544
    movq %r12, 536(%rbp)
    .seh_savereg %r12, 536
    movq %r13, 528(%rbp)
    .seh_savereg %r13, 528
    movq %r14, 520(%rbp)
    .seh_savereg %r14, 520
    movq %r15, 512(%rbp)
    .seh_savereg %r15, 512
    .seh_endprologue
    movq %rcx, 752(%rbp)
    movq %rdx, 760(%rbp)
    movq %r8, 768(%rbp)
    movq %r9, 776(%rbp)
    movq 760(%rbp), %rax
    movq %rax, 432(%rbp)
    leaq 432(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $14377, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L18_1
    jmp .L18_2
.L18_1:
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 376(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 312(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq $56, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 448(%rbp), %rbx
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
    movq %rbx, %rsi
    movq 552(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 552(%rbp), %rax
    movq 728(%rbp), %rdi
    movq 720(%rbp), %rsi
    movdqu 704(%rbp), %xmm6
    movdqu 688(%rbp), %xmm7
    movdqu 672(%rbp), %xmm8
    movdqu 656(%rbp), %xmm9
    movdqu 640(%rbp), %xmm10
    movdqu 624(%rbp), %xmm11
    movdqu 608(%rbp), %xmm12
    movdqu 592(%rbp), %xmm13
    movdqu 576(%rbp), %xmm14
    movdqu 560(%rbp), %xmm15
    movq 544(%rbp), %rbx
    movq 536(%rbp), %r12
    movq 528(%rbp), %r13
    movq 520(%rbp), %r14
    movq 512(%rbp), %r15
    leaq 736(%rbp), %rsp
    popq %rbp
    ret
.L18_2:
.L18_3:
    movq $14376, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L18_5
    jmp .L18_6
.L18_5:
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 256(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movl $12, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 192(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq $56, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 448(%rbp), %rbx
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
    movq %rbx, %rsi
    movq 552(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 552(%rbp), %rax
    movq 728(%rbp), %rdi
    movq 720(%rbp), %rsi
    movdqu 704(%rbp), %xmm6
    movdqu 688(%rbp), %xmm7
    movdqu 672(%rbp), %xmm8
    movdqu 656(%rbp), %xmm9
    movdqu 640(%rbp), %xmm10
    movdqu 624(%rbp), %xmm11
    movdqu 608(%rbp), %xmm12
    movdqu 592(%rbp), %xmm13
    movdqu 576(%rbp), %xmm14
    movdqu 560(%rbp), %xmm15
    movq 544(%rbp), %rbx
    movq 536(%rbp), %r12
    movq 528(%rbp), %r13
    movq 520(%rbp), %r14
    movq 512(%rbp), %r15
    leaq 736(%rbp), %rsp
    popq %rbp
    ret
.L18_6:
.L18_7:
    movq $14368, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L18_10
.L18_9:
    leaq 128(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    leaq 448(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movq %r12, %rsi
    movq 552(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 552(%rbp), %rax
    movq 728(%rbp), %rdi
    movq 720(%rbp), %rsi
    movdqu 704(%rbp), %xmm6
    movdqu 688(%rbp), %xmm7
    movdqu 672(%rbp), %xmm8
    movdqu 656(%rbp), %xmm9
    movdqu 640(%rbp), %xmm10
    movdqu 624(%rbp), %xmm11
    movdqu 608(%rbp), %xmm12
    movdqu 592(%rbp), %xmm13
    movdqu 576(%rbp), %xmm14
    movdqu 560(%rbp), %xmm15
    movq 544(%rbp), %rbx
    movq 536(%rbp), %r12
    movq 528(%rbp), %r13
    movq 520(%rbp), %r14
    movq 512(%rbp), %r15
    leaq 736(%rbp), %rsp
    popq %rbp
    ret
.L18_10:
.L18_11:
    leaq 72(%rbp), %r13
    movq $14360, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r15
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $256, %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_265(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $56, %rcx
    imulq %rcx, %r15
    addq %r15, %r12
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq %r14, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r12
.L18_14:
    movq $256, %rcx
    movq %r12, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rdx, %rbx
    movq %r14, %r10
    movq %rbx, (%r10)
    movq 0(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movq 0(%rbp), %r10
    movq %rbx, (%r10)
    leaq 8(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq $56, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    leaq 448(%rbp), %r15
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movups 48(%r10), %xmm8
    movups %xmm8, 48(%r11)
    movq %r15, %rsi
    movq 552(%rbp), %rdi
    movq $64, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 552(%rbp), %rax
    movq 728(%rbp), %rdi
    movq 720(%rbp), %rsi
    movdqu 704(%rbp), %xmm6
    movdqu 688(%rbp), %xmm7
    movdqu 672(%rbp), %xmm8
    movdqu 656(%rbp), %xmm9
    movdqu 640(%rbp), %xmm10
    movdqu 624(%rbp), %xmm11
    movdqu 608(%rbp), %xmm12
    movdqu 592(%rbp), %xmm13
    movdqu 576(%rbp), %xmm14
    movdqu 560(%rbp), %xmm15
    movq 544(%rbp), %rbx
    movq 536(%rbp), %r12
    movq 528(%rbp), %r13
    movq 520(%rbp), %r14
    movq 512(%rbp), %r15
    leaq 736(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_window_Presentation_size
lb_window_Presentation_size:
    .seh_proc lb_window_Presentation_size
    pushq %rbp
    .seh_pushreg %rbp
    subq $384, %rsp
    .seh_stackalloc 384
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 200(%rbp)
    movq %rdi, 376(%rbp)
    .seh_savereg %rdi, 376
    movq %rsi, 368(%rbp)
    .seh_savereg %rsi, 368
    movdqu %xmm6, 352(%rbp)
    .seh_savexmm %xmm6, 352
    movdqu %xmm7, 336(%rbp)
    .seh_savexmm %xmm7, 336
    movdqu %xmm8, 320(%rbp)
    .seh_savexmm %xmm8, 320
    movdqu %xmm9, 304(%rbp)
    .seh_savexmm %xmm9, 304
    movdqu %xmm10, 288(%rbp)
    .seh_savexmm %xmm10, 288
    movdqu %xmm11, 272(%rbp)
    .seh_savexmm %xmm11, 272
    movdqu %xmm12, 256(%rbp)
    .seh_savexmm %xmm12, 256
    movdqu %xmm13, 240(%rbp)
    .seh_savexmm %xmm13, 240
    movdqu %xmm14, 224(%rbp)
    .seh_savexmm %xmm14, 224
    movdqu %xmm15, 208(%rbp)
    .seh_savexmm %xmm15, 208
    movq %rbx, 192(%rbp)
    .seh_savereg %rbx, 192
    movq %r12, 184(%rbp)
    .seh_savereg %r12, 184
    movq %r13, 176(%rbp)
    .seh_savereg %r13, 176
    movq %r14, 168(%rbp)
    .seh_savereg %r14, 168
    .seh_endprologue
    movq %rcx, 400(%rbp)
    movq %rdx, 408(%rbp)
    movq %r8, 416(%rbp)
    movq %r9, 424(%rbp)
    movq 408(%rbp), %rax
    movq %rax, 88(%rbp)
    leaq 88(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 48(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_Presentation_checked
    addq $32, %rsp
    leaq 48(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L19_2
    jmp .L19_1
.L19_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 96(%rbp), %r13
    movq $40, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $64, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 200(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 200(%rbp), %rax
    movq 376(%rbp), %rdi
    movq 368(%rbp), %rsi
    movdqu 352(%rbp), %xmm6
    movdqu 336(%rbp), %xmm7
    movdqu 320(%rbp), %xmm8
    movdqu 304(%rbp), %xmm9
    movdqu 288(%rbp), %xmm10
    movdqu 272(%rbp), %xmm11
    movdqu 256(%rbp), %xmm12
    movdqu 240(%rbp), %xmm13
    movdqu 224(%rbp), %xmm14
    movdqu 208(%rbp), %xmm15
    movq 192(%rbp), %rbx
    movq 184(%rbp), %r12
    movq 176(%rbp), %r13
    movq 168(%rbp), %r14
    leaq 384(%rbp), %rsp
    popq %rbp
    ret
.L19_3:
.L19_1:
    movq %r12, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 8(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_8win_size
    addq $32, %rsp
    leaq 8(%rbp), %rbx
    leaq 96(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq $64, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 200(%rbp), %rdi
    movq $72, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 200(%rbp), %rax
    movq 376(%rbp), %rdi
    movq 368(%rbp), %rsi
    movdqu 352(%rbp), %xmm6
    movdqu 336(%rbp), %xmm7
    movdqu 320(%rbp), %xmm8
    movdqu 304(%rbp), %xmm9
    movdqu 288(%rbp), %xmm10
    movdqu 272(%rbp), %xmm11
    movdqu 256(%rbp), %xmm12
    movdqu 240(%rbp), %xmm13
    movdqu 224(%rbp), %xmm14
    movdqu 208(%rbp), %xmm15
    movq 192(%rbp), %rbx
    movq 184(%rbp), %r12
    movq 176(%rbp), %r13
    movq 168(%rbp), %r14
    leaq 384(%rbp), %rsp
    popq %rbp
    ret
.L19_4:
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_window_Presentation_visible
lb_window_Presentation_visible:
    .seh_proc lb_window_Presentation_visible
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
    movq %rax, 72(%rbp)
    leaq 72(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 32(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_Presentation_checked
    addq $32, %rsp
    leaq 32(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L20_2
    jmp .L20_1
.L20_2:
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
.L20_3:
.L20_1:
    movq %r12, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 16(%rbp), %r10
    movq %rbx, (%r10)
    testq %rbx, %rbx
    jne .L20_7
    jmp .L20_8
.L20_7:
    jmp .L20_9
.L20_8:
    leaq .Ltext_39(%rip), %rbx
    leaq 0(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
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
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L20_9:
    jmp .L20_11
.L20_10:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L20_11:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call IsWindowVisible
    addq $32, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L20_4
    jmp .L20_12
.L20_12:
    movl %r12d, %ebx
    jmp .L20_5
.L20_4:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call IsIconic
    addq $32, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L20_5:
    movzbl %bl, %r12d
    leaq 80(%rbp), %r13
    movq %r13, %r10
    movb %r12b, (%r10)
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
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
.L20_6:
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_window_Presentation_10macos_view
lb_window_Presentation_10macos_view:
    .seh_proc lb_window_Presentation_10macos_view
    pushq %rbp
    .seh_pushreg %rbp
    subq $320, %rsp
    .seh_stackalloc 320
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 136(%rbp)
    movq %rdi, 312(%rbp)
    .seh_savereg %rdi, 312
    movq %rsi, 304(%rbp)
    .seh_savereg %rsi, 304
    movdqu %xmm6, 288(%rbp)
    .seh_savexmm %xmm6, 288
    movdqu %xmm7, 272(%rbp)
    .seh_savexmm %xmm7, 272
    movdqu %xmm8, 256(%rbp)
    .seh_savexmm %xmm8, 256
    movdqu %xmm9, 240(%rbp)
    .seh_savexmm %xmm9, 240
    movdqu %xmm10, 224(%rbp)
    .seh_savexmm %xmm10, 224
    movdqu %xmm11, 208(%rbp)
    .seh_savexmm %xmm11, 208
    movdqu %xmm12, 192(%rbp)
    .seh_savexmm %xmm12, 192
    movdqu %xmm13, 176(%rbp)
    .seh_savexmm %xmm13, 176
    movdqu %xmm14, 160(%rbp)
    .seh_savexmm %xmm14, 160
    movdqu %xmm15, 144(%rbp)
    .seh_savexmm %xmm15, 144
    movq %rbx, 128(%rbp)
    .seh_savereg %rbx, 128
    movq %r12, 120(%rbp)
    .seh_savereg %r12, 120
    movq %r13, 112(%rbp)
    .seh_savereg %r13, 112
    movq %r14, 104(%rbp)
    .seh_savereg %r14, 104
    .seh_endprologue
    movq %rcx, 336(%rbp)
    movq %rdx, 344(%rbp)
    movq %r8, 352(%rbp)
    movq %r9, 360(%rbp)
    movq 344(%rbp), %rax
    movq %rax, 56(%rbp)
    leaq 56(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 16(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_Presentation_checked
    addq $32, %rsp
    leaq 16(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L21_2
    jmp .L21_1
.L21_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 64(%rbp), %r13
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
    movq 136(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 136(%rbp), %rax
    movq 312(%rbp), %rdi
    movq 304(%rbp), %rsi
    movdqu 288(%rbp), %xmm6
    movdqu 272(%rbp), %xmm7
    movdqu 256(%rbp), %xmm8
    movdqu 240(%rbp), %xmm9
    movdqu 224(%rbp), %xmm10
    movdqu 208(%rbp), %xmm11
    movdqu 192(%rbp), %xmm12
    movdqu 176(%rbp), %xmm13
    movdqu 160(%rbp), %xmm14
    movdqu 144(%rbp), %xmm15
    movq 128(%rbp), %rbx
    movq 120(%rbp), %r12
    movq 112(%rbp), %r13
    movq 104(%rbp), %r14
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
.L21_3:
.L21_1:
    leaq 64(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_unsupported(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_27(%rip), %r13
    leaq 0(%rbp), %r14
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
    movq 136(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 136(%rbp), %rax
    movq 312(%rbp), %rdi
    movq 304(%rbp), %rsi
    movdqu 288(%rbp), %xmm6
    movdqu 272(%rbp), %xmm7
    movdqu 256(%rbp), %xmm8
    movdqu 240(%rbp), %xmm9
    movdqu 224(%rbp), %xmm10
    movdqu 208(%rbp), %xmm11
    movdqu 192(%rbp), %xmm12
    movdqu 176(%rbp), %xmm13
    movdqu 160(%rbp), %xmm14
    movdqu 144(%rbp), %xmm15
    movq 128(%rbp), %rbx
    movq 120(%rbp), %r12
    movq 112(%rbp), %r13
    movq 104(%rbp), %r14
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
.L21_4:
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_window_Presentation_14windows_handle
lb_window_Presentation_14windows_handle:
    .seh_proc lb_window_Presentation_14windows_handle
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
    movq %rax, 72(%rbp)
    leaq 72(%rbp), %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 32(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_Presentation_checked
    addq $32, %rsp
    leaq 32(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L22_2
    jmp .L22_1
.L22_2:
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
.L22_3:
.L22_1:
    movq %r12, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 16(%rbp), %r10
    movq %rbx, (%r10)
    testq %rbx, %rbx
    jne .L22_5
    jmp .L22_6
.L22_5:
    jmp .L22_7
.L22_6:
    leaq .Ltext_39(%rip), %rbx
    leaq 0(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
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
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L22_7:
    jmp .L22_9
.L22_8:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L22_9:
    leaq 80(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
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
.L22_4:
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_window_Presentation_destroy
lb_window_Presentation_destroy:
    .seh_proc lb_window_Presentation_destroy
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
    .seh_endprologue
    movq %rcx, 304(%rbp)
    movq %rdx, 312(%rbp)
    movq %r8, 320(%rbp)
    movq %r9, 328(%rbp)
    movq 304(%rbp), %rax
    movq %rax, 72(%rbp)
    leaq 72(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L23_1
    jmp .L23_2
.L23_1:
    jmp .L23_3
.L23_2:
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
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
.L23_4:
.L23_3:
    subq $32, %rsp
    leaq 16(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_window_12check_thread
    addq $32, %rsp
    leaq 16(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L23_8
    jmp .L23_7
.L23_8:
    leaq 48(%rbp), %r13
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L23_5
.L23_7:
    jmp .L23_6
.L23_5:
    leaq .Ltext_30(%rip), %r13
    leaq 0(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $55, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_31(%rip), %r13
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
.L23_6:
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $14378, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq lb_platform_windows(%rip), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L23_12
    jmp .L23_14
.L23_14:
    movl %r13d, %ebx
    jmp .L23_13
.L23_12:
    movq $14379, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
.L23_13:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L23_9
    jmp .L23_10
.L23_9:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_8win_free
    addq $32, %rsp
    jmp .L23_11
.L23_10:
.L23_11:
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
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_window_Presentation_checked
lb_window_Presentation_checked:
    .seh_proc lb_window_Presentation_checked
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
    movq %rax, 72(%rbp)
    leaq 72(%rbp), %r10
    movq (%r10), %r12
    subq $32, %rsp
    leaq 40(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_window_12check_thread
    addq $32, %rsp
    leaq 40(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L24_2
    jmp .L24_1
.L24_2:
    leaq 80(%rbp), %rbx
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
.L24_3:
.L24_1:
    movq %r12, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L24_4
    jmp .L24_5
.L24_4:
    jmp .L24_6
.L24_5:
    leaq 80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_32(%rip), %r13
    leaq 24(%rbp), %r14
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
.L24_7:
.L24_6:
    movq $14379, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L24_8
    jmp .L24_9
.L24_8:
    leaq 80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_33(%rip), %r13
    leaq 8(%rbp), %r14
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
.L24_11:
    jmp .L24_10
.L24_9:
.L24_10:
    leaq 80(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
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
.L24_12:
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_window_12native_class
lb_window_12native_class:
    .seh_proc lb_window_12native_class
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
    movq %rax, 16(%rbp)
    leaq 16(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_getClass
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L25_1
    jmp .L25_2
.L25_1:
    jmp .L25_3
.L25_2:
    leaq 32(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_37(%rip), %r13
    leaq 0(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $66, %rax
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
.L25_4:
.L25_3:
    leaq 32(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
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
.L25_5:
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_window_9get_state
lb_window_9get_state:
    .seh_proc lb_window_9get_state
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
    .seh_endprologue
    movq %rcx, 240(%rbp)
    movq %rdx, 248(%rbp)
    movq %r8, 256(%rbp)
    movq %r9, 264(%rbp)
    movq 240(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 0(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    leaq 8(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq .Ltext_41(%rip), %r13
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
    call object_getInstanceVariable
    addq $32, %rsp
    movq %rax, %r12
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L26_1
    jmp .L26_2
.L26_1:
    jmp .L26_3
.L26_2:
    movq $0, %rax
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
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L26_4:
.L26_3:
    movq %rbx, %rax
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
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L26_5:
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_window_10add_method
lb_window_10add_method:
    .seh_proc lb_window_10add_method
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
    movq %rax, 88(%rbp)
    movq 384(%rbp), %rax
    movq %rax, 72(%rbp)
    movq 392(%rbp), %rax
    movq %rax, 56(%rbp)
    movq 400(%rbp), %rax
    movq %rax, 40(%rbp)
    leaq 88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 72(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 8(%rbp), %r10
    movq %r12, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L27_5
    jmp .L27_6
.L27_6:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L27_5:
    jmp .L27_8
.L27_7:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L27_8:
    leaq 56(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq 40(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq %r14, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call class_addMethod
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L27_2
.L27_1:
    leaq 104(%rbp), %rbx
    leaq lb_window_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_43(%rip), %r12
    leaq 24(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $43, %rax
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
.L27_4:
    jmp .L27_3
.L27_2:
.L27_3:
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
    .globl lb_window_14close_callback
lb_window_14close_callback:
    .seh_proc lb_window_14close_callback
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
    movq %rax, 32(%rbp)
    movq 264(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 272(%rbp), %rax
    movq %rax, 0(%rbp)
    leaq 16(%rbp), %rbx
    leaq 0(%rbp), %rbx
    leaq 32(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_9get_state
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L28_4
    jmp .L28_2
.L28_4:
.L28_1:
    movq $14377, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L28_3
.L28_2:
.L28_3:
    movl $0, %eax
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
.L28_5:
    leaq .Ltext_44(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_window_15resize_callback
lb_window_15resize_callback:
    .seh_proc lb_window_15resize_callback
    pushq %rbp
    .seh_pushreg %rbp
    subq $304, %rsp
    .seh_stackalloc 304
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 120(%rbp)
    .seh_savereg %rbx, 120
    movq %r12, 112(%rbp)
    .seh_savereg %r12, 112
    .seh_endprologue
    movq %rcx, 320(%rbp)
    movq %rdx, 328(%rbp)
    movq %r8, 336(%rbp)
    movq %r9, 344(%rbp)
    movq 320(%rbp), %rax
    movq %rax, 96(%rbp)
    movq 328(%rbp), %rax
    movq %rax, 80(%rbp)
    movq 336(%rbp), %rax
    movq %rax, 64(%rbp)
    leaq 80(%rbp), %rbx
    leaq 64(%rbp), %rbx
    leaq 96(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_9get_state
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L29_4
    jmp .L29_2
.L29_4:
.L29_1:
    leaq 8(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movl $2, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $96, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_10push_event
    addq $96, %rsp
    jmp .L29_3
.L29_2:
.L29_3:
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
    movq 120(%rbp), %rbx
    movq 112(%rbp), %r12
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_window_14focus_callback
lb_window_14focus_callback:
    .seh_proc lb_window_14focus_callback
    pushq %rbp
    .seh_pushreg %rbp
    subq $336, %rsp
    .seh_stackalloc 336
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 152(%rbp)
    .seh_savereg %rbx, 152
    movq %r12, 144(%rbp)
    .seh_savereg %r12, 144
    movq %r13, 136(%rbp)
    .seh_savereg %r13, 136
    movq %r14, 128(%rbp)
    .seh_savereg %r14, 128
    movq %r15, 120(%rbp)
    .seh_savereg %r15, 120
    .seh_endprologue
    movq %rcx, 352(%rbp)
    movq %rdx, 360(%rbp)
    movq %r8, 368(%rbp)
    movq %r9, 376(%rbp)
    movq 352(%rbp), %rax
    movq %rax, 104(%rbp)
    movq 360(%rbp), %rax
    movq %rax, 88(%rbp)
    movq 368(%rbp), %rax
    movq %rax, 72(%rbp)
    leaq 72(%rbp), %rbx
    leaq 104(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_9get_state
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L30_4
    jmp .L30_2
.L30_4:
.L30_1:
    leaq 88(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r13
    leaq .Ltext_45(%rip), %r12
    leaq 0(%rbp), %r10
    movq %r12, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L30_11
    jmp .L30_12
.L30_12:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L30_11:
    jmp .L30_14
.L30_13:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L30_14:
    cmpq %r12, %r13
    sete %al
    movzbl %al, %r14d
    movzbl %r14b, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L30_6
.L30_5:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_16mac_clear_marked
    addq $32, %rsp
    movq $14401, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq $14400, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L30_7
.L30_6:
.L30_7:
    leaq 16(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    testl %r14d, %r14d
    jne .L30_8
    jmp .L30_9
.L30_8:
    movl $3, %eax
    movl %eax, %r13d
    jmp .L30_10
.L30_9:
    movl $4, %eax
    movl %eax, %r13d
.L30_10:
    movzbl %r13b, %r14d
    movq %r12, %r10
    movb %r14b, (%r10)
    subq $96, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_10push_event
    addq $96, %rsp
    jmp .L30_3
.L30_2:
.L30_3:
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
    movq 152(%rbp), %rbx
    movq 144(%rbp), %r12
    movq 136(%rbp), %r13
    movq 128(%rbp), %r14
    movq 120(%rbp), %r15
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_window_12view_accepts
lb_window_12view_accepts:
    .seh_proc lb_window_12view_accepts
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
    .seh_endprologue
    movq %rcx, 240(%rbp)
    movq %rdx, 248(%rbp)
    movq %r8, 256(%rbp)
    movq %r9, 264(%rbp)
    movq 240(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 248(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 24(%rbp), %rbx
    leaq 8(%rbp), %rbx
    movl $1, %eax
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
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L31_1:
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_window_modifiers
lb_window_modifiers:
    .seh_proc lb_window_modifiers
    pushq %rbp
    .seh_pushreg %rbp
    subq $256, %rsp
    .seh_stackalloc 256
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 72(%rbp)
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
    movq %rbx, 64(%rbp)
    .seh_savereg %rbx, 64
    movq %r12, 56(%rbp)
    .seh_savereg %r12, 56
    movq %r13, 48(%rbp)
    .seh_savereg %r13, 48
    movq %r14, 40(%rbp)
    .seh_savereg %r14, 40
    .seh_endprologue
    movq %rcx, 272(%rbp)
    movq %rdx, 280(%rbp)
    movq %r8, 288(%rbp)
    movq %r9, 296(%rbp)
    movq 280(%rbp), %rax
    movq %rax, 16(%rbp)
    leaq 11(%rbp), %r12
    movq %r12, %r11
    movl $0, 0(%r11)
    movb $0, 4(%r11)
    leaq 16(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
.L32_2:
    movq $131072, %rcx
    movq %rbx, %r13
    andq %rcx, %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movq %r12, %r10
    movb %r13b, (%r10)
.L32_4:
    movq $262144, %rcx
    movq %rbx, %r13
    andq %rcx, %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movq $1, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movb %r13b, (%r10)
.L32_6:
    movq $524288, %rcx
    movq %rbx, %r13
    andq %rcx, %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movq $2, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movb %r13b, (%r10)
.L32_8:
    movq $1048576, %rcx
    movq %rbx, %r13
    andq %rcx, %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movq $3, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movb %r13b, (%r10)
.L32_10:
    movq $65536, %rcx
    movq %rbx, %r13
    andq %rcx, %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movq $4, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movb %r13b, (%r10)
    leaq 35(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movl 0(%r10), %eax
    movl %eax, 0(%r11)
    movzbl 4(%r10), %eax
    movb %al, 4(%r11)
    movq %r13, %rsi
    movq 72(%rbp), %rdi
    movq $5, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 72(%rbp), %rax
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
    movq 64(%rbp), %rbx
    movq 56(%rbp), %r12
    movq 48(%rbp), %r13
    movq 40(%rbp), %r14
    leaq 256(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_window_12key_callback
lb_window_12key_callback:
    .seh_proc lb_window_12key_callback
    pushq %rbp
    .seh_pushreg %rbp
    subq $480, %rsp
    .seh_stackalloc 480
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 296(%rbp)
    .seh_savereg %rbx, 296
    movq %r12, 288(%rbp)
    .seh_savereg %r12, 288
    movq %r13, 280(%rbp)
    .seh_savereg %r13, 280
    movq %r14, 272(%rbp)
    .seh_savereg %r14, 272
    movq %r15, 264(%rbp)
    .seh_savereg %r15, 264
    .seh_endprologue
    movq %rcx, 496(%rbp)
    movq %rdx, 504(%rbp)
    movq %r8, 512(%rbp)
    movq %r9, 520(%rbp)
    movq 496(%rbp), %rax
    movq %rax, 248(%rbp)
    movq 504(%rbp), %rax
    movq %rax, 232(%rbp)
    movq 512(%rbp), %rax
    movq %rax, 216(%rbp)
    leaq 232(%rbp), %rbx
    leaq 248(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 48(%rbp)
    subq $32, %rsp
    movq 48(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_9get_state
    addq $32, %rsp
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    testq %rax, %rax
    jne .L33_1
    jmp .L33_2
.L33_1:
    jmp .L33_3
.L33_2:
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
    movq 296(%rbp), %rbx
    movq 288(%rbp), %r12
    movq 280(%rbp), %r13
    movq 272(%rbp), %r14
    movq 264(%rbp), %r15
    leaq 480(%rbp), %rsp
    popq %rbp
    ret
.L33_4:
.L33_3:
    leaq 216(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq .Ltext_49(%rip), %r14
    leaq 80(%rbp), %r10
    movq %r14, (%r10)
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L33_33
    jmp .L33_34
.L33_34:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L33_33:
    jmp .L33_36
.L33_35:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L33_36:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movq %rax, 40(%rbp)
    leaq 160(%rbp), %rbx
    leaq 104(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movl $7, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq $4, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 16(%rbp)
    leaq .Ltext_50(%rip), %r12
    leaq 80(%rbp), %r10
    movq %r12, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L33_37
    jmp .L33_38
.L33_38:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L33_37:
    jmp .L33_40
.L33_39:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L33_40:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movq %rax, %r14
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 8(%rsp)
    leaq 99(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_modifiers
    addq $32, %rsp
    leaq 99(%rbp), %r14
    movq %r14, %r10
    movq 16(%rbp), %r11
    movl 0(%r10), %eax
    movl %eax, 0(%r11)
    movzbl 4(%r10), %eax
    movb %al, 4(%r11)
    movq $2, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 8(%rbp)
    leaq .Ltext_51(%rip), %r14
    leaq 80(%rbp), %r10
    movq %r14, (%r10)
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L33_41
    jmp .L33_42
.L33_42:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L33_41:
    jmp .L33_44
.L33_43:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L33_44:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movl %eax, %r12d
    leaq 64(%rbp), %r10
    movl %r12d, (%r10)
    leaq 64(%rbp), %r12
    movq %r12, %r10
    movzwl (%r10), %r12d
    movl $128, %ecx
    cmpl %ecx, %r12d
    jb .L33_46
.L33_45:
    movl $0, %eax
    leaq 56(%rbp), %r10
    movl %eax, (%r10)
    movl $0, %eax
    movl %eax, %r12d
    jmp .L33_50
.L33_48:
    jmp .L33_47
.L33_46:
.L33_47:
    movl %r12d, %r14d
    leaq lb_window_13key_positions(%rip), %r15
    movq $2, %rcx
    imulq %rcx, %r14
    movq %r14, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzwl (%r10), %r14d
    movl %r14d, %r14d
    movzwl %r14w, %r14d
    movzwl %r14w, %r14d
    leaq 56(%rbp), %r10
    movl %r14d, (%r10)
    movl %r14d, %r12d
    jmp .L33_50
.L33_49:
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L33_50:
    movq 8(%rbp), %r10
    movw %r12w, (%r10)
    movq 40(%rbp), %rax
    movq $10, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %eax
    movl %eax, 32(%rbp)
    movl 32(%rbp), %eax
    testl %eax, %eax
    jne .L33_63
    jmp .L33_8
.L33_63:
    movl 32(%rbp), %eax
    movl %eax, %r12d
    jmp .L33_9
.L33_8:
    movq 40(%rbp), %rax
    movq $11, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r12d
.L33_9:
    movzbl %r12b, %r15d
    testl %r15d, %r15d
    jne .L33_5
    jmp .L33_6
.L33_5:
    movl 32(%rbp), %eax
    testl %eax, %eax
    jne .L33_10
    jmp .L33_11
.L33_10:
    movl $5, %eax
    movl %eax, %r12d
    jmp .L33_12
.L33_11:
    movl $6, %eax
    movl %eax, %r12d
.L33_12:
    movzbl %r12b, %r15d
    movq %rbx, %r10
    movb %r15b, (%r10)
    movq $9, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    leaq .Ltext_52(%rip), %r15
    leaq 80(%rbp), %r10
    movq %r15, (%r10)
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r15
    testq %r15, %r15
    jne .L33_51
    jmp .L33_52
.L33_52:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L33_51:
    jmp .L33_54
.L33_53:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L33_54:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movl %eax, %r12d
    movq %r14, %r10
    movb %r12b, (%r10)
    jmp .L33_7
.L33_6:
.L33_7:
    movq 24(%rbp), %rax
    movq $14408, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movzbl %r12b, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L33_14
.L33_13:
    subq $96, %rsp
    movq 24(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_10push_event
    addq $96, %rsp
    jmp .L33_15
.L33_14:
.L33_15:
    movl 32(%rbp), %eax
    testl %eax, %eax
    jne .L33_19
    jmp .L33_64
.L33_64:
    movl 32(%rbp), %eax
    movl %eax, %ebx
    jmp .L33_20
.L33_19:
    movq 24(%rbp), %rax
    movq $14380, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
.L33_20:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L33_21
    jmp .L33_65
.L33_65:
    movl %r12d, %ebx
    jmp .L33_22
.L33_21:
    movq 16(%rbp), %rax
    movq $3, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L33_22:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L33_23
    jmp .L33_66
.L33_66:
    movl %r12d, %ebx
    jmp .L33_24
.L33_23:
    movq 16(%rbp), %rax
    movq $1, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L33_24:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L33_16
    jmp .L33_17
.L33_16:
    leaq .Ltext_53(%rip), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_getClass
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L33_25
    jmp .L33_26
.L33_25:
    jmp .L33_27
.L33_26:
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
    movq 296(%rbp), %rbx
    movq 288(%rbp), %r12
    movq 280(%rbp), %r13
    movq 272(%rbp), %r14
    movq 264(%rbp), %r15
    leaq 480(%rbp), %rsp
    popq %rbp
    ret
.L33_28:
.L33_27:
    leaq .Ltext_54(%rip), %r12
    leaq 80(%rbp), %r10
    movq %r12, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L33_55
    jmp .L33_56
.L33_56:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L33_55:
    jmp .L33_58
.L33_57:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L33_58:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call objc_msgSend
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L33_29
    jmp .L33_30
.L33_29:
    jmp .L33_31
.L33_30:
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
    movq 296(%rbp), %rbx
    movq 288(%rbp), %r12
    movq 280(%rbp), %r13
    movq 272(%rbp), %r14
    movq 264(%rbp), %r15
    leaq 480(%rbp), %rsp
    popq %rbp
    ret
.L33_32:
.L33_31:
    leaq .Ltext_55(%rip), %rbx
    leaq 80(%rbp), %r10
    movq %rbx, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L33_59
    jmp .L33_60
.L33_60:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L33_59:
    jmp .L33_62
.L33_61:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L33_62:
    subq $32, %rsp
    movq 48(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call objc_msgSend
    addq $32, %rsp
    jmp .L33_18
.L33_17:
.L33_18:
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
    movq 296(%rbp), %rbx
    movq 288(%rbp), %r12
    movq 280(%rbp), %r13
    movq 272(%rbp), %r14
    movq 264(%rbp), %r15
    leaq 480(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_window_16pointer_callback
lb_window_16pointer_callback:
    .seh_proc lb_window_16pointer_callback
    pushq %rbp
    .seh_pushreg %rbp
    subq $656, %rsp
    .seh_stackalloc 656
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 472(%rbp)
    .seh_savereg %rbx, 472
    movq %r12, 464(%rbp)
    .seh_savereg %r12, 464
    movq %r13, 456(%rbp)
    .seh_savereg %r13, 456
    movq %r14, 448(%rbp)
    .seh_savereg %r14, 448
    movq %r15, 440(%rbp)
    .seh_savereg %r15, 440
    .seh_endprologue
    movq %rcx, 672(%rbp)
    movq %rdx, 680(%rbp)
    movq %r8, 688(%rbp)
    movq %r9, 696(%rbp)
    movq 672(%rbp), %rax
    movq %rax, 424(%rbp)
    movq 680(%rbp), %rax
    movq %rax, 408(%rbp)
    movq 688(%rbp), %rax
    movq %rax, 392(%rbp)
    leaq 408(%rbp), %rbx
    leaq 424(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 80(%rbp)
    subq $32, %rsp
    movq 80(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_9get_state
    addq $32, %rsp
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    testq %rax, %rax
    jne .L34_1
    jmp .L34_2
.L34_1:
    jmp .L34_3
.L34_2:
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
    movq 472(%rbp), %rbx
    movq 464(%rbp), %r12
    movq 456(%rbp), %r13
    movq 448(%rbp), %r14
    movq 440(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L34_4:
.L34_3:
    leaq 392(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq .Ltext_49(%rip), %r14
    leaq 88(%rbp), %r10
    movq %r14, (%r10)
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L34_47
    jmp .L34_48
.L34_48:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L34_47:
    jmp .L34_50
.L34_49:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L34_50:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movq %rax, 72(%rbp)
    leaq 376(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq .Ltext_56(%rip), %r12
    leaq 88(%rbp), %r10
    movq %r12, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L34_51
    jmp .L34_52
.L34_52:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L34_51:
    jmp .L34_54
.L34_53:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L34_54:
    leaq .Ltext_57(%rip), %r14
    leaq 88(%rbp), %r10
    movq %r14, (%r10)
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L34_55
    jmp .L34_56
.L34_56:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L34_55:
    jmp .L34_58
.L34_57:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L34_58:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    leaq 360(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call objc_msgSend
    addq $32, %rsp
    leaq 360(%rbp), %rax
    movq %rax, 64(%rbp)
    subq $64, %rsp
    movq 80(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %r12, %rax
    movq %rax, 16(%rsp)
    movq 64(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 24(%rsp)
    movq $0, %rax
    movq %rax, 32(%rsp)
    leaq 344(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call objc_msgSend
    addq $64, %rsp
    leaq 344(%rbp), %rax
    movq %rax, 56(%rbp)
    movq 56(%rbp), %r10
    movq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 288(%rbp), %rax
    movq %rax, 48(%rbp)
    leaq 232(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movl $8, %eax
    movq 40(%rbp), %r10
    movb %al, (%r10)
    movq 8(%rbp), %r10
    movsd (%r10), %xmm8
    movsd %xmm8, 32(%rbp)
    movq 40(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movsd 32(%rbp), %xmm8
    movq %r15, %r10
    movsd %xmm8, (%r10)
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movsd (%r10), %xmm8
    movsd %xmm8, 24(%rbp)
    movq 40(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movsd 24(%rbp), %xmm8
    movq %r15, %r10
    movsd %xmm8, (%r10)
    movq 40(%rbp), %r10
    movq 48(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq 48(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, 0(%rbp)
    leaq .Ltext_50(%rip), %r15
    leaq 88(%rbp), %r10
    movq %r15, (%r10)
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r15
    testq %r15, %r15
    jne .L34_59
    jmp .L34_60
.L34_60:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L34_59:
    jmp .L34_62
.L34_61:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L34_62:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movq %rax, %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    leaq 227(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_modifiers
    addq $32, %rsp
    leaq 227(%rbp), %r12
    movq %r12, %r10
    movq 0(%rbp), %r11
    movl 0(%r10), %eax
    movl %eax, 0(%r11)
    movzbl 4(%r10), %eax
    movb %al, 4(%r11)
    movq 72(%rbp), %rax
    movq $8, %rcx
    cmpq %rcx, %rax
    jne .L34_6
.L34_5:
    movl $14, %eax
    movq 48(%rbp), %r10
    movb %al, (%r10)
    jmp .L34_7
.L34_6:
    movq 72(%rbp), %rax
    movq $9, %rcx
    cmpq %rcx, %rax
    jne .L34_9
.L34_8:
    movq 16(%rbp), %rax
    movq $14400, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 168(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movl $15, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    subq $96, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_10push_event
    addq $96, %rsp
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
    movq 472(%rbp), %rbx
    movq 464(%rbp), %r12
    movq 456(%rbp), %r13
    movq 448(%rbp), %r14
    movq 440(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
.L34_11:
    jmp .L34_10
.L34_9:
    movq 72(%rbp), %rax
    movq $1, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L34_87
    jmp .L34_15
.L34_87:
    movl %r12d, %r14d
    jmp .L34_16
.L34_15:
    movq 72(%rbp), %rax
    movq $3, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r14d
.L34_16:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L34_88
    jmp .L34_17
.L34_88:
    movl %r12d, %r14d
    jmp .L34_18
.L34_17:
    movq 72(%rbp), %rax
    movq $25, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r14d
.L34_18:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L34_12
    jmp .L34_13
.L34_12:
    movl $9, %eax
    movq 48(%rbp), %r10
    movb %al, (%r10)
    movq 48(%rbp), %rax
    movq $12, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    leaq .Ltext_58(%rip), %r12
    leaq 88(%rbp), %r10
    movq %r12, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L34_63
    jmp .L34_64
.L34_64:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L34_63:
    jmp .L34_66
.L34_65:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L34_66:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movq %rax, %r15
    movq %r14, %r10
    movl %r15d, (%r10)
    jmp .L34_14
.L34_13:
    movq 72(%rbp), %rax
    movq $2, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L34_89
    jmp .L34_22
.L34_89:
    movl %r12d, %r14d
    jmp .L34_23
.L34_22:
    movq 72(%rbp), %rax
    movq $4, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r14d
.L34_23:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L34_90
    jmp .L34_24
.L34_90:
    movl %r12d, %r14d
    jmp .L34_25
.L34_24:
    movq 72(%rbp), %rax
    movq $26, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %r14d
.L34_25:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L34_19
    jmp .L34_20
.L34_19:
    movl $10, %eax
    movq 48(%rbp), %r10
    movb %al, (%r10)
    movq 48(%rbp), %rax
    movq $12, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    leaq .Ltext_58(%rip), %r12
    leaq 88(%rbp), %r10
    movq %r12, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L34_67
    jmp .L34_68
.L34_68:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L34_67:
    jmp .L34_70
.L34_69:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L34_70:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movq %rax, %r15
    movq %r14, %r10
    movl %r15d, (%r10)
    jmp .L34_21
.L34_20:
    movq 72(%rbp), %rax
    movq $22, %rcx
    cmpq %rcx, %rax
    jne .L34_27
.L34_26:
    movl $11, %eax
    movq 48(%rbp), %r10
    movb %al, (%r10)
    movq 48(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    leaq .Ltext_59(%rip), %r12
    leaq 88(%rbp), %r10
    movq %r12, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L34_71
    jmp .L34_72
.L34_72:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L34_71:
    jmp .L34_74
.L34_73:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L34_74:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movapd %xmm0, %xmm12
    movq %r14, %r10
    movsd %xmm12, (%r10)
    movq 48(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq .Ltext_60(%rip), %r15
    leaq 88(%rbp), %r10
    movq %r15, (%r10)
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r15
    testq %r15, %r15
    jne .L34_75
    jmp .L34_76
.L34_76:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L34_75:
    jmp .L34_78
.L34_77:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L34_78:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movapd %xmm0, %xmm12
    movq %rbx, %r10
    movsd %xmm12, (%r10)
    movq 48(%rbp), %rax
    movq $48, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    leaq .Ltext_61(%rip), %r12
    leaq 88(%rbp), %r10
    movq %r12, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L34_79
    jmp .L34_80
.L34_80:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L34_79:
    jmp .L34_82
.L34_81:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L34_82:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movl %eax, %ebx
    testl %ebx, %ebx
    jne .L34_29
    jmp .L34_30
.L34_29:
    movl $1, %eax
    movl %eax, %ebx
    jmp .L34_31
.L34_30:
    movl $0, %eax
    movl %eax, %ebx
.L34_31:
    movzbl %bl, %r12d
    movq %r14, %r10
    movb %r12b, (%r10)
    jmp .L34_28
.L34_27:
.L34_28:
.L34_21:
.L34_14:
.L34_10:
.L34_7:
    leaq 136(%rbp), %r12
    leaq .Ltext_62(%rip), %rbx
    leaq 88(%rbp), %r10
    movq %rbx, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L34_83
    jmp .L34_84
.L34_84:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L34_83:
    jmp .L34_86
.L34_85:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L34_86:
    subq $32, %rsp
    movq 80(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    leaq 104(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call objc_msgSend
    addq $32, %rsp
    leaq 104(%rbp), %r13
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 16(%rbp), %rax
    movq $14400, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq $0, %rax
    movq %rax, %xmm12
    movsd 32(%rbp), %xmm8
    ucomisd %xmm12, %xmm8
    setae %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L34_32
    jmp .L34_91
.L34_91:
    movl %r13d, %ebx
    jmp .L34_33
.L34_32:
    movsd 24(%rbp), %xmm8
    ucomisd %xmm12, %xmm8
    setae %al
    movzbl %al, %ebx
.L34_33:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L34_34
    jmp .L34_92
.L34_92:
    movl %r13d, %ebx
    jmp .L34_35
.L34_34:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movsd 32(%rbp), %xmm8
    ucomisd %xmm8, %xmm12
    seta %al
    movzbl %al, %ebx
.L34_35:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L34_36
    jmp .L34_93
.L34_93:
    movl %r13d, %ebx
    jmp .L34_37
.L34_36:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movsd 24(%rbp), %xmm8
    ucomisd %xmm8, %xmm12
    seta %al
    movzbl %al, %ebx
.L34_37:
    movzbl %bl, %r12d
    movq %r14, %r10
    movb %r12b, (%r10)
    movq 48(%rbp), %rax
    movq $12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L34_39
.L34_38:
    movq 48(%rbp), %r10
    movzbl (%r10), %ebx
    movl $9, %ecx
    cmpl %ecx, %ebx
    jne .L34_42
.L34_41:
    movq 16(%rbp), %rax
    movq $14401, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L34_43
.L34_42:
.L34_43:
    movq 48(%rbp), %r10
    movzbl (%r10), %ebx
    movl $10, %ecx
    cmpl %ecx, %ebx
    jne .L34_45
.L34_44:
    movq 16(%rbp), %rax
    movq $14401, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L34_46
.L34_45:
.L34_46:
    jmp .L34_40
.L34_39:
.L34_40:
    subq $96, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 48(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_10push_event
    addq $96, %rsp
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
    movq 472(%rbp), %rbx
    movq 464(%rbp), %r12
    movq 456(%rbp), %r13
    movq 448(%rbp), %r14
    movq 440(%rbp), %r15
    leaq 656(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_window_10mac_cursor
lb_window_10mac_cursor:
    .seh_proc lb_window_10mac_cursor
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
    movl %eax, 80(%rbp)
    leaq .Ltext_64(%rip), %rbx
    leaq 80(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq 79(%rbp), %r13
    movq %r13, %r10
    movb %r12b, (%r10)
    leaq 78(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movzbl 0(%r10), %eax
    movb %al, 0(%r11)
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $1, %ecx
    cmpl %ecx, %r12d
    je .L35_2
.L35_4:
    jmp .L35_3
.L35_2:
    leaq .Ltext_65(%rip), %rbx
    jmp .L35_1
.L35_3:
    movl $2, %ecx
    cmpl %ecx, %r12d
    je .L35_5
.L35_7:
    jmp .L35_6
.L35_5:
    leaq .Ltext_66(%rip), %rbx
    jmp .L35_1
.L35_6:
    movl $3, %ecx
    cmpl %ecx, %r12d
    je .L35_8
.L35_10:
    jmp .L35_9
.L35_8:
    leaq .Ltext_67(%rip), %rbx
    jmp .L35_1
.L35_9:
    movl $4, %ecx
    cmpl %ecx, %r12d
    je .L35_11
.L35_13:
    jmp .L35_12
.L35_11:
    leaq .Ltext_68(%rip), %rbx
    jmp .L35_1
.L35_12:
    movl $5, %ecx
    cmpl %ecx, %r12d
    je .L35_14
.L35_16:
    jmp .L35_15
.L35_14:
    leaq .Ltext_69(%rip), %rbx
    jmp .L35_1
.L35_15:
    movl $6, %ecx
    cmpl %ecx, %r12d
    je .L35_17
.L35_19:
    jmp .L35_18
.L35_17:
    leaq .Ltext_70(%rip), %rbx
    jmp .L35_1
.L35_18:
    movl $7, %ecx
    cmpl %ecx, %r12d
    je .L35_20
.L35_22:
    jmp .L35_21
.L35_20:
    leaq .Ltext_71(%rip), %rbx
    jmp .L35_1
.L35_21:
    jmp .L35_23
.L35_25:
    jmp .L35_24
.L35_23:
    jmp .L35_1
.L35_24:
.L35_1:
    leaq .Ltext_72(%rip), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    leaq 32(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_12native_class
    addq $32, %rsp
    leaq 32(%rbp), %r13
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L35_27
    jmp .L35_26
.L35_27:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 96(%rbp), %r12
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
.L35_28:
.L35_26:
    movq %r13, %r10
    movq (%r10), %r12
    leaq 0(%rbp), %r10
    movq %rbx, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L35_34
    jmp .L35_35
.L35_35:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L35_34:
    jmp .L35_37
.L35_36:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L35_37:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L35_29
    jmp .L35_30
.L35_29:
    jmp .L35_31
.L35_30:
    leaq 96(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_73(%rip), %r13
    leaq 16(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $37, %rax
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
.L35_32:
.L35_31:
    leaq 96(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
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
.L35_33:
    leaq .Ltext_74(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_window_14mac_set_cursor
lb_window_14mac_set_cursor:
    .seh_proc lb_window_14mac_set_cursor
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
    movq %r15, 176(%rbp)
    .seh_savereg %r15, 176
    .seh_endprologue
    movq %rcx, 416(%rbp)
    movq %rdx, 424(%rbp)
    movq %r8, 432(%rbp)
    movq %r9, 440(%rbp)
    movq 424(%rbp), %rax
    movq %rax, 128(%rbp)
    movq 432(%rbp), %rax
    movl %eax, 112(%rbp)
    leaq 128(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $14392, %rcx
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
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L36_4
    jmp .L36_42
.L36_42:
    movl %r13d, %r14d
    jmp .L36_5
.L36_4:
    movq $14385, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    leaq 112(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    cmpl %r14d, %r13d
    sete %al
    movzbl %al, %r14d
.L36_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L36_1
    jmp .L36_2
.L36_1:
    leaq 144(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 216(%rbp), %rdi
    movq $32, %rdx
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
    movq 176(%rbp), %r15
    leaq 400(%rbp), %rsp
    popq %rbp
    ret
.L36_6:
    jmp .L36_3
.L36_2:
.L36_3:
    subq $32, %rsp
    call objc_autoreleasePoolPush
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L36_7
    jmp .L36_8
.L36_8:
    leaq .Ltext_75(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L36_7:
    movq %r12, %r10
    movq (%r10), %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L36_43
    jmp .L36_12
.L36_43:
    movl %r14d, %r15d
    jmp .L36_13
.L36_12:
    movq $14385, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    leaq 112(%rbp), %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    cmpl %r15d, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
.L36_13:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L36_9
    jmp .L36_10
.L36_9:
    leaq 112(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %r10
    movzbl (%r10), %eax
    movl %eax, 8(%rbp)
    subq $32, %rsp
    movl 8(%rbp), %eax
    movq %rax, 8(%rsp)
    leaq 72(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_10mac_cursor
    addq $32, %rsp
    leaq 72(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L36_15
    jmp .L36_14
.L36_15:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 144(%rbp), %r12
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
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    movq %r12, %rsi
    movq 216(%rbp), %rdi
    movq $32, %rdx
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
    movq 176(%rbp), %r15
    leaq 400(%rbp), %rsp
    popq %rbp
    ret
.L36_16:
.L36_14:
    movq %r14, %r10
    movq (%r10), %r15
    movq %r12, %r10
    movq %r15, (%r10)
    movq $14385, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movl 8(%rbp), %eax
    movq %r15, %r10
    movb %al, (%r10)
    jmp .L36_11
.L36_10:
.L36_11:
    movq $14400, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L36_44
    jmp .L36_20
.L36_44:
    movl %r14d, %r15d
    jmp .L36_21
.L36_20:
    movq $14401, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r15d
.L36_21:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L36_22
    jmp .L36_45
.L36_45:
    movl %r14d, %ebx
    jmp .L36_23
.L36_22:
    movq %rbx, %r10
    movq (%r10), %r14
    leaq 56(%rbp), %r10
    movq %r14, (%r10)
    testq %r14, %r14
    jne .L36_24
    jmp .L36_25
.L36_24:
    jmp .L36_26
.L36_25:
    leaq .Ltext_39(%rip), %rbx
    leaq 40(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
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
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L36_26:
    jmp .L36_28
.L36_27:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L36_28:
    leaq .Ltext_76(%rip), %rbx
    leaq 24(%rbp), %r10
    movq %rbx, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L36_29
    jmp .L36_30
.L36_30:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L36_29:
    jmp .L36_32
.L36_31:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L36_32:
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movl %eax, %r15d
    movl %r15d, %ebx
.L36_23:
    movzbl %bl, %r14d
    testl %r14d, %r14d
    jne .L36_17
    jmp .L36_18
.L36_17:
    movq %r12, %r10
    movq (%r10), %rbx
    leaq 56(%rbp), %r10
    movq %rbx, (%r10)
    testq %rbx, %rbx
    jne .L36_33
    jmp .L36_34
.L36_33:
    jmp .L36_35
.L36_34:
    leaq .Ltext_39(%rip), %rbx
    leaq 40(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
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
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L36_35:
    jmp .L36_37
.L36_36:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L36_37:
    leaq .Ltext_77(%rip), %r12
    leaq 24(%rbp), %r10
    movq %r12, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L36_38
    jmp .L36_39
.L36_39:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L36_38:
    jmp .L36_41
.L36_40:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L36_41:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    jmp .L36_19
.L36_18:
.L36_19:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    leaq 144(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 216(%rbp), %rdi
    movq $32, %rdx
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
    movq 176(%rbp), %r15
    leaq 400(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_window_15cursor_callback
lb_window_15cursor_callback:
    .seh_proc lb_window_15cursor_callback
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
    movq %rax, 32(%rbp)
    movq 288(%rbp), %rax
    movq %rax, 16(%rbp)
    leaq 48(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_9get_state
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L37_1
    jmp .L37_2
.L37_1:
    jmp .L37_3
.L37_2:
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
.L37_4:
.L37_3:
    movq $14392, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L37_5
    jmp .L37_6
.L37_5:
    jmp .L37_7
.L37_6:
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
.L37_8:
.L37_7:
    leaq .Ltext_77(%rip), %rbx
    leaq 0(%rbp), %r10
    movq %rbx, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L37_9
    jmp .L37_10
.L37_10:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L37_9:
    jmp .L37_12
.L37_11:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L37_12:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
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
    .seh_endproc

    .p2align 4
    .globl lb_window_14mac_plain_text
lb_window_14mac_plain_text:
    .seh_proc lb_window_14mac_plain_text
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
    leaq .Ltext_102(%rip), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_getClass
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L38_1
    jmp .L38_2
.L38_1:
    jmp .L38_3
.L38_2:
    movq $0, %rax
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
.L38_4:
.L38_3:
    leaq 16(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq .Ltext_103(%rip), %r13
    leaq 0(%rbp), %r10
    movq %r13, (%r10)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L38_10
    jmp .L38_11
.L38_11:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L38_10:
    jmp .L38_13
.L38_12:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L38_13:
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
    call objc_msgSend
    addq $32, %rsp
    movl %eax, %r14d
    testl %r14d, %r14d
    jne .L38_5
    jmp .L38_6
.L38_5:
    movq %r12, %rax
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
.L38_8:
    jmp .L38_7
.L38_6:
.L38_7:
    leaq .Ltext_104(%rip), %rbx
    leaq 0(%rbp), %r10
    movq %rbx, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L38_14
    jmp .L38_15
.L38_15:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L38_14:
    jmp .L38_17
.L38_16:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L38_17:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movq %rax, %r13
    movq %r13, %rax
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
.L38_9:
    leaq .Ltext_105(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_window_16mac_clear_marked
lb_window_16mac_clear_marked:
    .seh_proc lb_window_16mac_clear_marked
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
    movq $14408, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L39_4
    jmp .L39_2
.L39_4:
.L39_1:
    leaq .Ltext_106(%rip), %r14
    leaq 0(%rbp), %r10
    movq %r14, (%r10)
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L39_5
    jmp .L39_6
.L39_6:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L39_5:
    jmp .L39_8
.L39_7:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L39_8:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    jmp .L39_3
.L39_2:
.L39_3:
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $14416, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $14424, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
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
    .globl lb_window_15mac_insert_text
lb_window_15mac_insert_text:
    .seh_proc lb_window_15mac_insert_text
    pushq %rbp
    .seh_pushreg %rbp
    subq $320, %rsp
    .seh_stackalloc 320
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 312(%rbp)
    .seh_savereg %rdi, 312
    movq %rsi, 304(%rbp)
    .seh_savereg %rsi, 304
    movdqu %xmm6, 288(%rbp)
    .seh_savexmm %xmm6, 288
    movdqu %xmm7, 272(%rbp)
    .seh_savexmm %xmm7, 272
    movdqu %xmm8, 256(%rbp)
    .seh_savexmm %xmm8, 256
    movdqu %xmm9, 240(%rbp)
    .seh_savexmm %xmm9, 240
    movdqu %xmm10, 224(%rbp)
    .seh_savexmm %xmm10, 224
    movdqu %xmm11, 208(%rbp)
    .seh_savexmm %xmm11, 208
    movdqu %xmm12, 192(%rbp)
    .seh_savexmm %xmm12, 192
    movdqu %xmm13, 176(%rbp)
    .seh_savexmm %xmm13, 176
    movdqu %xmm14, 160(%rbp)
    .seh_savexmm %xmm14, 160
    movdqu %xmm15, 144(%rbp)
    .seh_savexmm %xmm15, 144
    movq %rbx, 136(%rbp)
    .seh_savereg %rbx, 136
    movq %r12, 128(%rbp)
    .seh_savereg %r12, 128
    movq %r13, 120(%rbp)
    .seh_savereg %r13, 120
    movq %r14, 112(%rbp)
    .seh_savereg %r14, 112
    movq %r15, 104(%rbp)
    .seh_savereg %r15, 104
    .seh_endprologue
    movq %rcx, 336(%rbp)
    movq %rdx, 344(%rbp)
    movq %r8, 352(%rbp)
    movq %r9, 360(%rbp)
    movq 336(%rbp), %rax
    movq %rax, 88(%rbp)
    movq 344(%rbp), %rax
    movq %rax, 72(%rbp)
    movq 352(%rbp), %rax
    movq %rax, 56(%rbp)
    movq 360(%rbp), %r10
    leaq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_9get_state
    addq $32, %rsp
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    testq %rax, %rax
    jne .L40_1
    jmp .L40_2
.L40_1:
    jmp .L40_3
.L40_2:
    movq 312(%rbp), %rdi
    movq 304(%rbp), %rsi
    movdqu 288(%rbp), %xmm6
    movdqu 272(%rbp), %xmm7
    movdqu 256(%rbp), %xmm8
    movdqu 240(%rbp), %xmm9
    movdqu 224(%rbp), %xmm10
    movdqu 208(%rbp), %xmm11
    movdqu 192(%rbp), %xmm12
    movdqu 176(%rbp), %xmm13
    movdqu 160(%rbp), %xmm14
    movdqu 144(%rbp), %xmm15
    movq 136(%rbp), %rbx
    movq 128(%rbp), %r12
    movq 120(%rbp), %r13
    movq 112(%rbp), %r14
    movq 104(%rbp), %r15
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
.L40_4:
.L40_3:
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_16mac_clear_marked
    addq $32, %rsp
    movq 8(%rbp), %rax
    movq $14380, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L40_6
.L40_5:
    movq 312(%rbp), %rdi
    movq 304(%rbp), %rsi
    movdqu 288(%rbp), %xmm6
    movdqu 272(%rbp), %xmm7
    movdqu 256(%rbp), %xmm8
    movdqu 240(%rbp), %xmm9
    movdqu 224(%rbp), %xmm10
    movdqu 208(%rbp), %xmm11
    movdqu 192(%rbp), %xmm12
    movdqu 176(%rbp), %xmm13
    movdqu 160(%rbp), %xmm14
    movdqu 144(%rbp), %xmm15
    movq 136(%rbp), %rbx
    movq 128(%rbp), %r12
    movq 120(%rbp), %r13
    movq 112(%rbp), %r14
    movq 104(%rbp), %r15
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
.L40_8:
    jmp .L40_7
.L40_6:
.L40_7:
    leaq 56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_14mac_plain_text
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L40_9
    jmp .L40_10
.L40_9:
    jmp .L40_11
.L40_10:
    movq 312(%rbp), %rdi
    movq 304(%rbp), %rsi
    movdqu 288(%rbp), %xmm6
    movdqu 272(%rbp), %xmm7
    movdqu 256(%rbp), %xmm8
    movdqu 240(%rbp), %xmm9
    movdqu 224(%rbp), %xmm10
    movdqu 208(%rbp), %xmm11
    movdqu 192(%rbp), %xmm12
    movdqu 176(%rbp), %xmm13
    movdqu 160(%rbp), %xmm14
    movdqu 144(%rbp), %xmm15
    movq 136(%rbp), %rbx
    movq 128(%rbp), %r12
    movq 120(%rbp), %r13
    movq 112(%rbp), %r14
    movq 104(%rbp), %r15
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
.L40_12:
.L40_11:
    leaq .Ltext_107(%rip), %r13
    leaq 24(%rbp), %r10
    movq %r13, (%r10)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L40_24
    jmp .L40_25
.L40_25:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L40_24:
    jmp .L40_27
.L40_26:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L40_27:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movq %rax, %r14
    movq 8(%rbp), %rax
    movq $14368, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq $256, %rax
    movq %r15, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_108(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r15
    cmpq %r15, %r14
    jbe .L40_14
.L40_13:
    movq 8(%rbp), %rax
    movq $14376, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq 312(%rbp), %rdi
    movq 304(%rbp), %rsi
    movdqu 288(%rbp), %xmm6
    movdqu 272(%rbp), %xmm7
    movdqu 256(%rbp), %xmm8
    movdqu 240(%rbp), %xmm9
    movdqu 224(%rbp), %xmm10
    movdqu 208(%rbp), %xmm11
    movdqu 192(%rbp), %xmm12
    movdqu 176(%rbp), %xmm13
    movdqu 160(%rbp), %xmm14
    movdqu 144(%rbp), %xmm15
    movq 136(%rbp), %rbx
    movq 128(%rbp), %r12
    movq 120(%rbp), %r13
    movq 112(%rbp), %r14
    movq 104(%rbp), %r15
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
.L40_16:
    jmp .L40_15
.L40_14:
.L40_15:
    leaq .Ltext_109(%rip), %rax
    movq %rax, 16(%rbp)
    movq $0, %rax
    movq %rax, %r15
.L40_17:
    cmpq %r14, %r15
    jae .L40_20
.L40_18:
    movq 16(%rbp), %rax
    leaq 24(%rbp), %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L40_28
    jmp .L40_29
.L40_29:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L40_28:
    jmp .L40_31
.L40_30:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L40_31:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r15, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call objc_msgSend
    addq $32, %rsp
    movl %eax, %r13d
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movl %r13d, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_10push_utf16
    addq $32, %rsp
.L40_19:
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r15
    jmp .L40_17
.L40_20:
    movq 8(%rbp), %rax
    movq $14382, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzwl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L40_22
.L40_21:
    movl $0, %eax
    movq %rbx, %r10
    movw %ax, (%r10)
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $65533, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_11push_scalar
    addq $32, %rsp
    jmp .L40_23
.L40_22:
.L40_23:
    movq 312(%rbp), %rdi
    movq 304(%rbp), %rsi
    movdqu 288(%rbp), %xmm6
    movdqu 272(%rbp), %xmm7
    movdqu 256(%rbp), %xmm8
    movdqu 240(%rbp), %xmm9
    movdqu 224(%rbp), %xmm10
    movdqu 208(%rbp), %xmm11
    movdqu 192(%rbp), %xmm12
    movdqu 176(%rbp), %xmm13
    movdqu 160(%rbp), %xmm14
    movdqu 144(%rbp), %xmm15
    movq 136(%rbp), %rbx
    movq 128(%rbp), %r12
    movq 120(%rbp), %r13
    movq 112(%rbp), %r14
    movq 104(%rbp), %r15
    leaq 320(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_window_14mac_set_marked
lb_window_14mac_set_marked:
    .seh_proc lb_window_14mac_set_marked
    pushq %rbp
    .seh_pushreg %rbp
    subq $352, %rsp
    .seh_stackalloc 352
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 168(%rbp)
    .seh_savereg %rbx, 168
    movq %r12, 160(%rbp)
    .seh_savereg %r12, 160
    movq %r13, 152(%rbp)
    .seh_savereg %r13, 152
    movq %r14, 144(%rbp)
    .seh_savereg %r14, 144
    movq %r15, 136(%rbp)
    .seh_savereg %r15, 136
    .seh_endprologue
    movq %rcx, 368(%rbp)
    movq %rdx, 376(%rbp)
    movq %r8, 384(%rbp)
    movq %r9, 392(%rbp)
    movq 368(%rbp), %rax
    movq %rax, 120(%rbp)
    movq 376(%rbp), %rax
    movq %rax, 104(%rbp)
    movq 384(%rbp), %rax
    movq %rax, 88(%rbp)
    movq 392(%rbp), %r10
    leaq 72(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 400(%rbp), %r10
    leaq 56(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 120(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_9get_state
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L41_1
    jmp .L41_2
.L41_1:
    jmp .L41_3
.L41_2:
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
    movq 168(%rbp), %rbx
    movq 160(%rbp), %r12
    movq 152(%rbp), %r13
    movq 144(%rbp), %r14
    movq 136(%rbp), %r15
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L41_4:
.L41_3:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_16mac_clear_marked
    addq $32, %rsp
    movq $14380, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L41_6
.L41_5:
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
    movq 168(%rbp), %rbx
    movq 160(%rbp), %r12
    movq 152(%rbp), %r13
    movq 144(%rbp), %r14
    movq 136(%rbp), %r15
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L41_8:
    jmp .L41_7
.L41_6:
.L41_7:
    leaq 88(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_14mac_plain_text
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L41_9
    jmp .L41_10
.L41_9:
    jmp .L41_11
.L41_10:
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
    movq 168(%rbp), %rbx
    movq 160(%rbp), %r12
    movq 152(%rbp), %r13
    movq 144(%rbp), %r14
    movq 136(%rbp), %r15
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
.L41_12:
.L41_11:
    leaq .Ltext_107(%rip), %r13
    leaq 40(%rbp), %r10
    movq %r13, (%r10)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L41_16
    jmp .L41_17
.L41_17:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L41_16:
    jmp .L41_19
.L41_18:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L41_19:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movq %rax, %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    jbe .L41_14
.L41_13:
    movq $14408, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    leaq .Ltext_110(%rip), %r13
    leaq 40(%rbp), %r10
    movq %r13, (%r10)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L41_20
    jmp .L41_21
.L41_21:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L41_20:
    jmp .L41_23
.L41_22:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L41_23:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movq %rax, 32(%rbp)
    movq 32(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $14416, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 24(%rbp)
    leaq 72(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq 24(%rbp), %r10
    movq %rax, (%r10)
    movq $14424, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, 0(%rbp)
    movq 16(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq 0(%rbp), %r10
    movq %r15, (%r10)
    jmp .L41_15
.L41_14:
.L41_15:
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
    movq 168(%rbp), %rbx
    movq 160(%rbp), %r12
    movq 152(%rbp), %r13
    movq 144(%rbp), %r14
    movq 136(%rbp), %r15
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_window_10mac_unmark
lb_window_10mac_unmark:
    .seh_proc lb_window_10mac_unmark
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
    .seh_endprologue
    movq %rcx, 240(%rbp)
    movq %rdx, 248(%rbp)
    movq %r8, 256(%rbp)
    movq %r9, 264(%rbp)
    movq 240(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 248(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 24(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_9get_state
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L42_4
    jmp .L42_2
.L42_4:
.L42_1:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_16mac_clear_marked
    addq $32, %rsp
    jmp .L42_3
.L42_2:
.L42_3:
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
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_window_14mac_has_marked
lb_window_14mac_has_marked:
    .seh_proc lb_window_14mac_has_marked
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
    .seh_endprologue
    movq %rcx, 240(%rbp)
    movq %rdx, 248(%rbp)
    movq %r8, 256(%rbp)
    movq %r9, 264(%rbp)
    movq 240(%rbp), %rax
    movq %rax, 16(%rbp)
    movq 248(%rbp), %rax
    movq %rax, 0(%rbp)
    leaq 16(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_9get_state
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L43_1
    jmp .L43_2
.L43_1:
    jmp .L43_3
.L43_2:
    movl $0, %eax
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
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L43_4:
.L43_3:
    movq $14408, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movzbl %r12b, %r12d
    movl %r12d, %eax
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
    leaq 224(%rbp), %rsp
    popq %rbp
    ret
.L43_5:
    leaq .Ltext_111(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_window_16mac_marked_range
lb_window_16mac_marked_range:
    .seh_proc lb_window_16mac_marked_range
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
    movq %rax, 80(%rbp)
    movq 368(%rbp), %rax
    movq %rax, 64(%rbp)
    leaq 80(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_9get_state
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L44_1
    jmp .L44_2
.L44_1:
    jmp .L44_3
.L44_2:
    leaq 48(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_window_13mac_not_found(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 96(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 152(%rbp), %rdi
    movq $16, %rdx
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
.L44_4:
.L44_3:
    movq $14408, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L44_5
    jmp .L44_6
.L44_5:
    jmp .L44_7
.L44_6:
    leaq 32(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_window_13mac_not_found(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 96(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 152(%rbp), %rdi
    movq $16, %rdx
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
.L44_8:
.L44_7:
    leaq 16(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_107(%rip), %rbx
    leaq 0(%rbp), %r10
    movq %rbx, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L44_10
    jmp .L44_11
.L44_11:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L44_10:
    jmp .L44_13
.L44_12:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L44_13:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movq %rax, %r14
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    leaq 96(%rbp), %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r14, %rsi
    movq 152(%rbp), %rdi
    movq $16, %rdx
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
.L44_9:
    leaq .Ltext_112(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_window_18mac_selected_range
lb_window_18mac_selected_range:
    .seh_proc lb_window_18mac_selected_range
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
    .seh_endprologue
    movq %rcx, 320(%rbp)
    movq %rdx, 328(%rbp)
    movq %r8, 336(%rbp)
    movq %r9, 344(%rbp)
    movq 328(%rbp), %rax
    movq %rax, 56(%rbp)
    movq 336(%rbp), %rax
    movq %rax, 40(%rbp)
    leaq 56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_9get_state
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L45_1
    jmp .L45_2
.L45_1:
    jmp .L45_3
.L45_2:
    leaq 24(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq $0, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq 72(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %rsi
    movq 120(%rbp), %rdi
    movq $16, %rdx
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
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
.L45_4:
.L45_3:
    leaq 8(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $14416, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq %r13, (%r10)
    movq $14424, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    leaq 72(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %rsi
    movq 120(%rbp), %rdi
    movq $16, %rdx
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
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
.L45_5:
    leaq .Ltext_113(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_window_21mac_marked_attributes
lb_window_21mac_marked_attributes:
    .seh_proc lb_window_21mac_marked_attributes
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
    movq 280(%rbp), %rax
    movq %rax, 24(%rbp)
    leaq .Ltext_53(%rip), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_getClass
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L46_1
    jmp .L46_2
.L46_1:
    jmp .L46_3
.L46_2:
    movq $0, %rax
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
.L46_4:
.L46_3:
    leaq .Ltext_114(%rip), %r12
    leaq 8(%rbp), %r10
    movq %r12, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L46_6
    jmp .L46_7
.L46_7:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L46_6:
    jmp .L46_9
.L46_8:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L46_9:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movq %rax, %r13
    movq %r13, %rax
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
.L46_5:
    leaq .Ltext_115(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_window_18mac_text_substring
lb_window_18mac_text_substring:
    .seh_proc lb_window_18mac_text_substring
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
    .seh_endprologue
    movq %rcx, 304(%rbp)
    movq %rdx, 312(%rbp)
    movq %r8, 320(%rbp)
    movq %r9, 328(%rbp)
    movq 304(%rbp), %rax
    movq %rax, 72(%rbp)
    movq 312(%rbp), %rax
    movq %rax, 56(%rbp)
    movq 320(%rbp), %r10
    leaq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 328(%rbp), %rax
    movq %rax, 24(%rbp)
    leaq 24(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L47_4
    jmp .L47_2
.L47_4:
.L47_1:
    leaq 8(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_window_13mac_not_found(%rip), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r12, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L47_3
.L47_2:
.L47_3:
    movq $0, %rax
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
    leaq 288(%rbp), %rsp
    popq %rbp
    ret
.L47_5:
    leaq .Ltext_116(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_window_14mac_text_index
lb_window_14mac_text_index:
    .seh_proc lb_window_14mac_text_index
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
    .seh_endprologue
    movq %rcx, 256(%rbp)
    movq %rdx, 264(%rbp)
    movq %r8, 272(%rbp)
    movq %r9, 280(%rbp)
    movq 256(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 264(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 272(%rbp), %r10
    leaq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_window_13mac_not_found(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
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
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
.L48_1:
    leaq .Ltext_117(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_window_13mac_text_rect
lb_window_13mac_text_rect:
    .seh_proc lb_window_13mac_text_rect
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
    movq %rax, 208(%rbp)
    movq 512(%rbp), %rax
    movq %rax, 192(%rbp)
    movq 520(%rbp), %r10
    leaq 176(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 528(%rbp), %rax
    movq %rax, 160(%rbp)
    leaq 160(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L49_4
    jmp .L49_2
.L49_4:
.L49_1:
    leaq 176(%rbp), %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L49_3
.L49_2:
.L49_3:
    leaq 208(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_9get_state
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L49_5
    jmp .L49_6
.L49_5:
    jmp .L49_7
.L49_6:
    leaq 128(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    leaq 224(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq %r12, %rsi
    movq 296(%rbp), %rdi
    movq $32, %rdx
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
.L49_8:
.L49_7:
    movq %rbx, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L49_9
    jmp .L49_10
.L49_9:
    jmp .L49_11
.L49_10:
    leaq 96(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    leaq 224(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq %r12, %rsi
    movq 296(%rbp), %rdi
    movq $32, %rdx
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
.L49_12:
.L49_11:
    leaq .Ltext_118(%rip), %rbx
    leaq 0(%rbp), %r10
    movq %rbx, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L49_14
    jmp .L49_15
.L49_15:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L49_14:
    jmp .L49_17
.L49_16:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L49_17:
    leaq 64(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    leaq 48(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movabsq $4607182418800017408, %rax
    movq %rax, %xmm12
    movq %r14, %r10
    movsd %xmm12, (%r10)
    movabsq $4625759767262920704, %rax
    movq %rax, %xmm12
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movsd %xmm12, (%r10)
    movq $16, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r14, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $64, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 24(%rsp)
    leaq 16(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call objc_msgSend
    addq $64, %rsp
    leaq 16(%rbp), %r13
    leaq 224(%rbp), %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq %r14, %rsi
    movq 296(%rbp), %rdi
    movq $32, %rdx
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
.L49_13:
    leaq .Ltext_119(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_window_16mac_text_command
lb_window_16mac_text_command:
    .seh_proc lb_window_16mac_text_command
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
    .seh_endprologue
    movq %rcx, 256(%rbp)
    movq %rdx, 264(%rbp)
    movq %r8, 272(%rbp)
    movq %r9, 280(%rbp)
    movq 256(%rbp), %rax
    movq %rax, 40(%rbp)
    movq 264(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 272(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 8(%rbp), %rbx
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
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_window_21mac_cancel_text_input
lb_window_21mac_cancel_text_input:
    .seh_proc lb_window_21mac_cancel_text_input
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
    .seh_endprologue
    movq %rcx, 256(%rbp)
    movq %rdx, 264(%rbp)
    movq %r8, 272(%rbp)
    movq %r9, 280(%rbp)
    movq 256(%rbp), %rax
    movq %rax, 24(%rbp)
    leaq 24(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_16mac_clear_marked
    addq $32, %rsp
    movq $8, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L51_4
    jmp .L51_2
.L51_4:
.L51_1:
    leaq .Ltext_120(%rip), %r12
    leaq 8(%rbp), %r10
    movq %r12, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L51_9
    jmp .L51_10
.L51_10:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L51_9:
    jmp .L51_12
.L51_11:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L51_12:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L51_8
    jmp .L51_6
.L51_8:
.L51_5:
    leaq .Ltext_121(%rip), %rbx
    leaq 8(%rbp), %r10
    movq %rbx, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L51_13
    jmp .L51_14
.L51_14:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L51_13:
    jmp .L51_16
.L51_15:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L51_16:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    jmp .L51_7
.L51_6:
.L51_7:
    jmp .L51_3
.L51_2:
.L51_3:
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
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_window_10make_class
lb_window_10make_class:
    .seh_proc lb_window_10make_class
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
    movq %rax, 88(%rbp)
    movq 400(%rbp), %rax
    movq %rax, 72(%rbp)
    leaq 88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 32(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_12native_class
    addq $32, %rsp
    leaq 32(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L52_2
    jmp .L52_1
.L52_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 104(%rbp), %r13
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
.L52_3:
.L52_1:
    movq %r12, %r10
    movq (%r10), %rbx
    leaq 72(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call objc_allocateClassPair
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L52_4
    jmp .L52_5
.L52_4:
    jmp .L52_6
.L52_5:
    leaq 104(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_122(%rip), %r13
    leaq 16(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $40, %rax
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
.L52_7:
.L52_6:
    leaq .Ltext_41(%rip), %r12
    leaq .Ltext_123(%rip), %r13
    subq $48, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $8, %rax
    movq %rax, 16(%rsp)
    movl $3, %eax
    movq %rax, 24(%rsp)
    movq %r13, %rax
    movq %rax, 32(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call class_addIvar
    addq $48, %rsp
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L52_9
.L52_8:
    leaq 104(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    leaq lb_window_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_124(%rip), %r14
    leaq 0(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $38, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_disposeClassPair
    addq $32, %rsp
    movq %r12, %rsi
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
.L52_11:
    jmp .L52_10
.L52_9:
.L52_10:
    leaq 104(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
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
.L52_12:
    leaq .Ltext_125(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_window_13setup_classes
lb_window_13setup_classes:
    .seh_proc lb_window_13setup_classes
    pushq %rbp
    .seh_pushreg %rbp
    subq $1584, %rsp
    .seh_stackalloc 1584
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 1400(%rbp)
    movq %rdi, 1576(%rbp)
    .seh_savereg %rdi, 1576
    movq %rsi, 1568(%rbp)
    .seh_savereg %rsi, 1568
    movdqu %xmm6, 1552(%rbp)
    .seh_savexmm %xmm6, 1552
    movdqu %xmm7, 1536(%rbp)
    .seh_savexmm %xmm7, 1536
    movdqu %xmm8, 1520(%rbp)
    .seh_savexmm %xmm8, 1520
    movdqu %xmm9, 1504(%rbp)
    .seh_savexmm %xmm9, 1504
    movdqu %xmm10, 1488(%rbp)
    .seh_savexmm %xmm10, 1488
    movdqu %xmm11, 1472(%rbp)
    .seh_savexmm %xmm11, 1472
    movdqu %xmm12, 1456(%rbp)
    .seh_savexmm %xmm12, 1456
    movdqu %xmm13, 1440(%rbp)
    .seh_savexmm %xmm13, 1440
    movdqu %xmm14, 1424(%rbp)
    .seh_savexmm %xmm14, 1424
    movdqu %xmm15, 1408(%rbp)
    .seh_savexmm %xmm15, 1408
    movq %rbx, 1392(%rbp)
    .seh_savereg %rbx, 1392
    movq %r12, 1384(%rbp)
    .seh_savereg %r12, 1384
    movq %r13, 1376(%rbp)
    .seh_savereg %r13, 1376
    movq %r14, 1368(%rbp)
    .seh_savereg %r14, 1368
    movq %r15, 1360(%rbp)
    .seh_savereg %r15, 1360
    .seh_endprologue
    movq %rcx, 1600(%rbp)
    movq %rdx, 1608(%rbp)
    movq %r8, 1616(%rbp)
    movq %r9, 1624(%rbp)
    leaq lb_window_14delegate_class(%rip), %rax
    movq %rax, 168(%rbp)
    movq 168(%rbp), %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L53_2
.L53_1:
    leaq .Ltext_126(%rip), %r12
    leaq .Ltext_127(%rip), %r13
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    leaq 1288(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_window_10make_class
    addq $32, %rsp
    leaq 1288(%rbp), %r13
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L53_5
    jmp .L53_4
.L53_5:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 1328(%rbp), %r12
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
    movq %r12, %rsi
    movq 1400(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1400(%rbp), %rax
    movq 1576(%rbp), %rdi
    movq 1568(%rbp), %rsi
    movdqu 1552(%rbp), %xmm6
    movdqu 1536(%rbp), %xmm7
    movdqu 1520(%rbp), %xmm8
    movdqu 1504(%rbp), %xmm9
    movdqu 1488(%rbp), %xmm10
    movdqu 1472(%rbp), %xmm11
    movdqu 1456(%rbp), %xmm12
    movdqu 1440(%rbp), %xmm13
    movdqu 1424(%rbp), %xmm14
    movdqu 1408(%rbp), %xmm15
    movq 1392(%rbp), %rbx
    movq 1384(%rbp), %r12
    movq 1376(%rbp), %r13
    movq 1368(%rbp), %r14
    movq 1360(%rbp), %r15
    leaq 1584(%rbp), %rsp
    popq %rbp
    ret
.L53_6:
.L53_4:
    movq %r13, %r10
    movq (%r10), %r12
    leaq .Ltext_128(%rip), %r14
    leaq lb_window_14close_callback(%rip), %r15
    leaq .Ltext_129(%rip), %rbx
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movq %r15, %rax
    movq %rax, 24(%rsp)
    movq %rbx, %rax
    movq %rax, 32(%rsp)
    leaq 1256(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_window_10add_method
    addq $48, %rsp
    leaq 1256(%rbp), %r14
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_8
    jmp .L53_7
.L53_8:
    leaq 1328(%rbp), %rbx
    movq %r14, %r10
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
    call objc_disposeClassPair
    addq $32, %rsp
    movq %rbx, %rsi
    movq 1400(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1400(%rbp), %rax
    movq 1576(%rbp), %rdi
    movq 1568(%rbp), %rsi
    movdqu 1552(%rbp), %xmm6
    movdqu 1536(%rbp), %xmm7
    movdqu 1520(%rbp), %xmm8
    movdqu 1504(%rbp), %xmm9
    movdqu 1488(%rbp), %xmm10
    movdqu 1472(%rbp), %xmm11
    movdqu 1456(%rbp), %xmm12
    movdqu 1440(%rbp), %xmm13
    movdqu 1424(%rbp), %xmm14
    movdqu 1408(%rbp), %xmm15
    movq 1392(%rbp), %rbx
    movq 1384(%rbp), %r12
    movq 1376(%rbp), %r13
    movq 1368(%rbp), %r14
    movq 1360(%rbp), %r15
    leaq 1584(%rbp), %rsp
    popq %rbp
    ret
.L53_9:
.L53_7:
    leaq .Ltext_130(%rip), %rbx
    leaq lb_window_15resize_callback(%rip), %r13
    leaq .Ltext_131(%rip), %r14
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq %r14, %rax
    movq %rax, 32(%rsp)
    leaq 1224(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_window_10add_method
    addq $48, %rsp
    leaq 1224(%rbp), %r15
    movq $24, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_11
    jmp .L53_10
.L53_11:
    leaq 1328(%rbp), %rbx
    movq %r15, %r10
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
    call objc_disposeClassPair
    addq $32, %rsp
    movq %rbx, %rsi
    movq 1400(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1400(%rbp), %rax
    movq 1576(%rbp), %rdi
    movq 1568(%rbp), %rsi
    movdqu 1552(%rbp), %xmm6
    movdqu 1536(%rbp), %xmm7
    movdqu 1520(%rbp), %xmm8
    movdqu 1504(%rbp), %xmm9
    movdqu 1488(%rbp), %xmm10
    movdqu 1472(%rbp), %xmm11
    movdqu 1456(%rbp), %xmm12
    movdqu 1440(%rbp), %xmm13
    movdqu 1424(%rbp), %xmm14
    movdqu 1408(%rbp), %xmm15
    movq 1392(%rbp), %rbx
    movq 1384(%rbp), %r12
    movq 1376(%rbp), %r13
    movq 1368(%rbp), %r14
    movq 1360(%rbp), %r15
    leaq 1584(%rbp), %rsp
    popq %rbp
    ret
.L53_12:
.L53_10:
    leaq .Ltext_132(%rip), %rbx
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq %r14, %rax
    movq %rax, 32(%rsp)
    leaq 1192(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_window_10add_method
    addq $48, %rsp
    leaq 1192(%rbp), %r15
    movq $24, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_14
    jmp .L53_13
.L53_14:
    leaq 1328(%rbp), %rbx
    movq %r15, %r10
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
    call objc_disposeClassPair
    addq $32, %rsp
    movq %rbx, %rsi
    movq 1400(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1400(%rbp), %rax
    movq 1576(%rbp), %rdi
    movq 1568(%rbp), %rsi
    movdqu 1552(%rbp), %xmm6
    movdqu 1536(%rbp), %xmm7
    movdqu 1520(%rbp), %xmm8
    movdqu 1504(%rbp), %xmm9
    movdqu 1488(%rbp), %xmm10
    movdqu 1472(%rbp), %xmm11
    movdqu 1456(%rbp), %xmm12
    movdqu 1440(%rbp), %xmm13
    movdqu 1424(%rbp), %xmm14
    movdqu 1408(%rbp), %xmm15
    movq 1392(%rbp), %rbx
    movq 1384(%rbp), %r12
    movq 1376(%rbp), %r13
    movq 1368(%rbp), %r14
    movq 1360(%rbp), %r15
    leaq 1584(%rbp), %rsp
    popq %rbp
    ret
.L53_15:
.L53_13:
    leaq .Ltext_45(%rip), %rbx
    leaq lb_window_14focus_callback(%rip), %r13
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq %r14, %rax
    movq %rax, 32(%rsp)
    leaq 1160(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_window_10add_method
    addq $48, %rsp
    leaq 1160(%rbp), %r15
    movq $24, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_17
    jmp .L53_16
.L53_17:
    leaq 1328(%rbp), %rbx
    movq %r15, %r10
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
    call objc_disposeClassPair
    addq $32, %rsp
    movq %rbx, %rsi
    movq 1400(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1400(%rbp), %rax
    movq 1576(%rbp), %rdi
    movq 1568(%rbp), %rsi
    movdqu 1552(%rbp), %xmm6
    movdqu 1536(%rbp), %xmm7
    movdqu 1520(%rbp), %xmm8
    movdqu 1504(%rbp), %xmm9
    movdqu 1488(%rbp), %xmm10
    movdqu 1472(%rbp), %xmm11
    movdqu 1456(%rbp), %xmm12
    movdqu 1440(%rbp), %xmm13
    movdqu 1424(%rbp), %xmm14
    movdqu 1408(%rbp), %xmm15
    movq 1392(%rbp), %rbx
    movq 1384(%rbp), %r12
    movq 1376(%rbp), %r13
    movq 1368(%rbp), %r14
    movq 1360(%rbp), %r15
    leaq 1584(%rbp), %rsp
    popq %rbp
    ret
.L53_18:
.L53_16:
    leaq .Ltext_133(%rip), %rbx
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq %r14, %rax
    movq %rax, 32(%rsp)
    leaq 1128(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_window_10add_method
    addq $48, %rsp
    leaq 1128(%rbp), %r15
    movq $24, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_20
    jmp .L53_19
.L53_20:
    leaq 1328(%rbp), %rbx
    movq %r15, %r10
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
    call objc_disposeClassPair
    addq $32, %rsp
    movq %rbx, %rsi
    movq 1400(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1400(%rbp), %rax
    movq 1576(%rbp), %rdi
    movq 1568(%rbp), %rsi
    movdqu 1552(%rbp), %xmm6
    movdqu 1536(%rbp), %xmm7
    movdqu 1520(%rbp), %xmm8
    movdqu 1504(%rbp), %xmm9
    movdqu 1488(%rbp), %xmm10
    movdqu 1472(%rbp), %xmm11
    movdqu 1456(%rbp), %xmm12
    movdqu 1440(%rbp), %xmm13
    movdqu 1424(%rbp), %xmm14
    movdqu 1408(%rbp), %xmm15
    movq 1392(%rbp), %rbx
    movq 1384(%rbp), %r12
    movq 1376(%rbp), %r13
    movq 1368(%rbp), %r14
    movq 1360(%rbp), %r15
    leaq 1584(%rbp), %rsp
    popq %rbp
    ret
.L53_21:
.L53_19:
    leaq .Ltext_134(%rip), %rbx
    leaq lb_window_15launch_callback(%rip), %r13
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq %r14, %rax
    movq %rax, 32(%rsp)
    leaq 1096(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_window_10add_method
    addq $48, %rsp
    leaq 1096(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_23
    jmp .L53_22
.L53_23:
    leaq 1328(%rbp), %rbx
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
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_disposeClassPair
    addq $32, %rsp
    movq %rbx, %rsi
    movq 1400(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1400(%rbp), %rax
    movq 1576(%rbp), %rdi
    movq 1568(%rbp), %rsi
    movdqu 1552(%rbp), %xmm6
    movdqu 1536(%rbp), %xmm7
    movdqu 1520(%rbp), %xmm8
    movdqu 1504(%rbp), %xmm9
    movdqu 1488(%rbp), %xmm10
    movdqu 1472(%rbp), %xmm11
    movdqu 1456(%rbp), %xmm12
    movdqu 1440(%rbp), %xmm13
    movdqu 1424(%rbp), %xmm14
    movdqu 1408(%rbp), %xmm15
    movq 1392(%rbp), %rbx
    movq 1384(%rbp), %r12
    movq 1376(%rbp), %r13
    movq 1368(%rbp), %r14
    movq 1360(%rbp), %r15
    leaq 1584(%rbp), %rsp
    popq %rbp
    ret
.L53_24:
.L53_22:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_registerClassPair
    addq $32, %rsp
    movq 168(%rbp), %r10
    movq %r12, (%r10)
    jmp .L53_3
.L53_2:
.L53_3:
    leaq lb_window_10view_class(%rip), %rax
    movq %rax, 160(%rbp)
    movq 160(%rbp), %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L53_26
.L53_25:
    leaq .Ltext_135(%rip), %r12
    leaq .Ltext_136(%rip), %r13
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    leaq 1056(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call lb_window_10make_class
    addq $32, %rsp
    leaq 1056(%rbp), %r13
    movq $32, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L53_29
    jmp .L53_28
.L53_29:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 1328(%rbp), %r12
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
    movq %r12, %rsi
    movq 1400(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1400(%rbp), %rax
    movq 1576(%rbp), %rdi
    movq 1568(%rbp), %rsi
    movdqu 1552(%rbp), %xmm6
    movdqu 1536(%rbp), %xmm7
    movdqu 1520(%rbp), %xmm8
    movdqu 1504(%rbp), %xmm9
    movdqu 1488(%rbp), %xmm10
    movdqu 1472(%rbp), %xmm11
    movdqu 1456(%rbp), %xmm12
    movdqu 1440(%rbp), %xmm13
    movdqu 1424(%rbp), %xmm14
    movdqu 1408(%rbp), %xmm15
    movq 1392(%rbp), %rbx
    movq 1384(%rbp), %r12
    movq 1376(%rbp), %r13
    movq 1368(%rbp), %r14
    movq 1360(%rbp), %r15
    leaq 1584(%rbp), %rsp
    popq %rbp
    ret
.L53_30:
.L53_28:
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 152(%rbp)
    leaq .Ltext_137(%rip), %r14
    leaq lb_window_12view_accepts(%rip), %r15
    leaq .Ltext_88(%rip), %rax
    movq %rax, 144(%rbp)
    subq $48, %rsp
    movq 152(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movq %r15, %rax
    movq %rax, 24(%rsp)
    movq 144(%rbp), %rax
    movq %rax, 32(%rsp)
    leaq 1024(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_window_10add_method
    addq $48, %rsp
    leaq 1024(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L53_32
    jmp .L53_31
.L53_32:
    leaq 1328(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movl $1, %eax
    movq %r14, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 152(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_disposeClassPair
    addq $32, %rsp
    movq %r13, %rsi
    movq 1400(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1400(%rbp), %rax
    movq 1576(%rbp), %rdi
    movq 1568(%rbp), %rsi
    movdqu 1552(%rbp), %xmm6
    movdqu 1536(%rbp), %xmm7
    movdqu 1520(%rbp), %xmm8
    movdqu 1504(%rbp), %xmm9
    movdqu 1488(%rbp), %xmm10
    movdqu 1472(%rbp), %xmm11
    movdqu 1456(%rbp), %xmm12
    movdqu 1440(%rbp), %xmm13
    movdqu 1424(%rbp), %xmm14
    movdqu 1408(%rbp), %xmm15
    movq 1392(%rbp), %rbx
    movq 1384(%rbp), %r12
    movq 1376(%rbp), %r13
    movq 1368(%rbp), %r14
    movq 1360(%rbp), %r15
    leaq 1584(%rbp), %rsp
    popq %rbp
    ret
.L53_33:
.L53_31:
    leaq .Ltext_138(%rip), %rbx
    subq $48, %rsp
    movq 152(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq %r15, %rax
    movq %rax, 24(%rsp)
    movq 144(%rbp), %rax
    movq %rax, 32(%rsp)
    leaq 992(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_window_10add_method
    addq $48, %rsp
    leaq 992(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_35
    jmp .L53_34
.L53_35:
    leaq 1328(%rbp), %rbx
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
    subq $32, %rsp
    movq 152(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_disposeClassPair
    addq $32, %rsp
    movq %rbx, %rsi
    movq 1400(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1400(%rbp), %rax
    movq 1576(%rbp), %rdi
    movq 1568(%rbp), %rsi
    movdqu 1552(%rbp), %xmm6
    movdqu 1536(%rbp), %xmm7
    movdqu 1520(%rbp), %xmm8
    movdqu 1504(%rbp), %xmm9
    movdqu 1488(%rbp), %xmm10
    movdqu 1472(%rbp), %xmm11
    movdqu 1456(%rbp), %xmm12
    movdqu 1440(%rbp), %xmm13
    movdqu 1424(%rbp), %xmm14
    movdqu 1408(%rbp), %xmm15
    movq 1392(%rbp), %rbx
    movq 1384(%rbp), %r12
    movq 1376(%rbp), %r13
    movq 1368(%rbp), %r14
    movq 1360(%rbp), %r15
    leaq 1584(%rbp), %rsp
    popq %rbp
    ret
.L53_36:
.L53_34:
    leaq .Ltext_139(%rip), %rbx
    leaq lb_window_15cursor_callback(%rip), %r13
    leaq .Ltext_131(%rip), %r14
    subq $48, %rsp
    movq 152(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq %r14, %rax
    movq %rax, 32(%rsp)
    leaq 960(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_window_10add_method
    addq $48, %rsp
    leaq 960(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_38
    jmp .L53_37
.L53_38:
    leaq 1328(%rbp), %rbx
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
    subq $32, %rsp
    movq 152(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_disposeClassPair
    addq $32, %rsp
    movq %rbx, %rsi
    movq 1400(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1400(%rbp), %rax
    movq 1576(%rbp), %rdi
    movq 1568(%rbp), %rsi
    movdqu 1552(%rbp), %xmm6
    movdqu 1536(%rbp), %xmm7
    movdqu 1520(%rbp), %xmm8
    movdqu 1504(%rbp), %xmm9
    movdqu 1488(%rbp), %xmm10
    movdqu 1472(%rbp), %xmm11
    movdqu 1456(%rbp), %xmm12
    movdqu 1440(%rbp), %xmm13
    movdqu 1424(%rbp), %xmm14
    movdqu 1408(%rbp), %xmm15
    movq 1392(%rbp), %rbx
    movq 1384(%rbp), %r12
    movq 1376(%rbp), %r13
    movq 1368(%rbp), %r14
    movq 1360(%rbp), %r15
    leaq 1584(%rbp), %rsp
    popq %rbp
    ret
.L53_39:
.L53_37:
    movq 152(%rbp), %rax
    leaq 560(%rbp), %r10
    movq %rax, (%r10)
    leaq .Ltext_78(%rip), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_getProtocol
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L53_57
    jmp .L53_58
.L53_57:
    jmp .L53_59
.L53_58:
    leaq 576(%rbp), %rbx
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq .Ltext_79(%rip), %r13
    leaq 544(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $32, %rax
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
    movq %rbx, %r10
    leaq 928(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L53_98
.L53_60:
.L53_59:
    subq $32, %rsp
    movq 152(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call class_addProtocol
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L53_62
.L53_61:
    leaq 576(%rbp), %rbx
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq .Ltext_80(%rip), %r13
    leaq 528(%rbp), %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq $47, %rax
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
    movq %rbx, %r10
    leaq 928(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L53_98
.L53_64:
    jmp .L53_63
.L53_62:
.L53_63:
    leaq .Ltext_81(%rip), %rbx
    leaq lb_window_15mac_insert_text(%rip), %r13
    leaq .Ltext_82(%rip), %r15
    subq $48, %rsp
    movq 152(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq %r15, %rax
    movq %rax, 32(%rsp)
    leaq 496(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_window_10add_method
    addq $48, %rsp
    leaq 496(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_66
    jmp .L53_65
.L53_66:
    leaq 576(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 928(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L53_98
.L53_67:
.L53_65:
    leaq .Ltext_83(%rip), %rbx
    leaq lb_window_14mac_set_marked(%rip), %r13
    leaq .Ltext_84(%rip), %r15
    subq $48, %rsp
    movq 152(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq %r15, %rax
    movq %rax, 32(%rsp)
    leaq 464(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_window_10add_method
    addq $48, %rsp
    leaq 464(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_69
    jmp .L53_68
.L53_69:
    leaq 576(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 928(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L53_98
.L53_70:
.L53_68:
    leaq .Ltext_85(%rip), %rbx
    leaq lb_window_10mac_unmark(%rip), %r13
    leaq .Ltext_86(%rip), %r15
    subq $48, %rsp
    movq 152(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq %r15, %rax
    movq %rax, 32(%rsp)
    leaq 432(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_window_10add_method
    addq $48, %rsp
    leaq 432(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_72
    jmp .L53_71
.L53_72:
    leaq 576(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 928(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L53_98
.L53_73:
.L53_71:
    leaq .Ltext_87(%rip), %rbx
    leaq lb_window_14mac_has_marked(%rip), %r13
    subq $48, %rsp
    movq 152(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq 144(%rbp), %rax
    movq %rax, 32(%rsp)
    leaq 400(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_window_10add_method
    addq $48, %rsp
    leaq 400(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_75
    jmp .L53_74
.L53_75:
    leaq 576(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 928(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L53_98
.L53_76:
.L53_74:
    leaq .Ltext_89(%rip), %rbx
    leaq lb_window_16mac_marked_range(%rip), %r13
    leaq .Ltext_90(%rip), %r15
    subq $48, %rsp
    movq 152(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq %r15, %rax
    movq %rax, 32(%rsp)
    leaq 368(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_window_10add_method
    addq $48, %rsp
    leaq 368(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_78
    jmp .L53_77
.L53_78:
    leaq 576(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 928(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L53_98
.L53_79:
.L53_77:
    leaq .Ltext_91(%rip), %rbx
    leaq lb_window_18mac_selected_range(%rip), %r13
    subq $48, %rsp
    movq 152(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq %r15, %rax
    movq %rax, 32(%rsp)
    leaq 336(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_window_10add_method
    addq $48, %rsp
    leaq 336(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_81
    jmp .L53_80
.L53_81:
    leaq 576(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 928(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L53_98
.L53_82:
.L53_80:
    leaq .Ltext_92(%rip), %rbx
    leaq lb_window_21mac_marked_attributes(%rip), %r13
    leaq .Ltext_93(%rip), %r15
    subq $48, %rsp
    movq 152(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq %r15, %rax
    movq %rax, 32(%rsp)
    leaq 304(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_window_10add_method
    addq $48, %rsp
    leaq 304(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_84
    jmp .L53_83
.L53_84:
    leaq 576(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 928(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L53_98
.L53_85:
.L53_83:
    leaq .Ltext_94(%rip), %rbx
    leaq lb_window_18mac_text_substring(%rip), %r13
    leaq .Ltext_95(%rip), %r15
    subq $48, %rsp
    movq 152(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq %r15, %rax
    movq %rax, 32(%rsp)
    leaq 272(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_window_10add_method
    addq $48, %rsp
    leaq 272(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_87
    jmp .L53_86
.L53_87:
    leaq 576(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 928(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L53_98
.L53_88:
.L53_86:
    leaq .Ltext_96(%rip), %rbx
    leaq lb_window_14mac_text_index(%rip), %r13
    leaq .Ltext_97(%rip), %r15
    subq $48, %rsp
    movq 152(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq %r15, %rax
    movq %rax, 32(%rsp)
    leaq 240(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_window_10add_method
    addq $48, %rsp
    leaq 240(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_90
    jmp .L53_89
.L53_90:
    leaq 576(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 928(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L53_98
.L53_91:
.L53_89:
    leaq .Ltext_98(%rip), %rbx
    leaq lb_window_13mac_text_rect(%rip), %r13
    leaq .Ltext_99(%rip), %r15
    subq $48, %rsp
    movq 152(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq %r15, %rax
    movq %rax, 32(%rsp)
    leaq 208(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_window_10add_method
    addq $48, %rsp
    leaq 208(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_93
    jmp .L53_92
.L53_93:
    leaq 576(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 928(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L53_98
.L53_94:
.L53_92:
    leaq .Ltext_100(%rip), %rbx
    leaq lb_window_16mac_text_command(%rip), %r13
    leaq .Ltext_101(%rip), %r15
    subq $48, %rsp
    movq 152(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq %r13, %rax
    movq %rax, 24(%rsp)
    movq %r15, %rax
    movq %rax, 32(%rsp)
    leaq 176(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_window_10add_method
    addq $48, %rsp
    leaq 176(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_96
    jmp .L53_95
.L53_96:
    leaq 576(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movl $1, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 928(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L53_98
.L53_97:
.L53_95:
    leaq 576(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 928(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L53_98:
    leaq 928(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_41
    jmp .L53_40
.L53_41:
    leaq 1328(%rbp), %rbx
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
    subq $32, %rsp
    movq 152(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_disposeClassPair
    addq $32, %rsp
    movq %rbx, %rsi
    movq 1400(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1400(%rbp), %rax
    movq 1576(%rbp), %rdi
    movq 1568(%rbp), %rsi
    movdqu 1552(%rbp), %xmm6
    movdqu 1536(%rbp), %xmm7
    movdqu 1520(%rbp), %xmm8
    movdqu 1504(%rbp), %xmm9
    movdqu 1488(%rbp), %xmm10
    movdqu 1472(%rbp), %xmm11
    movdqu 1456(%rbp), %xmm12
    movdqu 1440(%rbp), %xmm13
    movdqu 1424(%rbp), %xmm14
    movdqu 1408(%rbp), %xmm15
    movq 1392(%rbp), %rbx
    movq 1384(%rbp), %r12
    movq 1376(%rbp), %r13
    movq 1368(%rbp), %r14
    movq 1360(%rbp), %r15
    leaq 1584(%rbp), %rsp
    popq %rbp
    ret
.L53_42:
.L53_40:
    leaq 904(%rbp), %rbx
    leaq 880(%rbp), %rax
    movq %rax, 136(%rbp)
    leaq .Ltext_140(%rip), %r15
    movq 136(%rbp), %r10
    movq %r15, (%r10)
    leaq .Ltext_141(%rip), %r15
    movq 136(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    leaq .Ltext_142(%rip), %r12
    movq 136(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r12, (%r10)
    movq 136(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq lb_window_12key_callback(%rip), %r12
    leaq 848(%rbp), %rax
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 128(%rbp)
    movq $0, %rax
    movq %rax, %r15
.L53_43:
    movq $3, %rcx
    cmpq %rcx, %r15
    jae .L53_46
.L53_44:
    movq $8, %rcx
    movq %r15, %r13
    imulq %rcx, %r13
    movq %r13, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $48, %rsp
    movq 152(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq %r12, %rax
    movq %rax, 24(%rsp)
    movq %r14, %rax
    movq %rax, 32(%rsp)
    leaq 848(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_window_10add_method
    addq $48, %rsp
    movq 128(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L53_48
    jmp .L53_47
.L53_48:
    leaq 1328(%rbp), %rbx
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
    subq $32, %rsp
    movq 152(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_disposeClassPair
    addq $32, %rsp
    movq %rbx, %rsi
    movq 1400(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1400(%rbp), %rax
    movq 1576(%rbp), %rdi
    movq 1568(%rbp), %rsi
    movdqu 1552(%rbp), %xmm6
    movdqu 1536(%rbp), %xmm7
    movdqu 1520(%rbp), %xmm8
    movdqu 1504(%rbp), %xmm9
    movdqu 1488(%rbp), %xmm10
    movdqu 1472(%rbp), %xmm11
    movdqu 1456(%rbp), %xmm12
    movdqu 1440(%rbp), %xmm13
    movdqu 1424(%rbp), %xmm14
    movdqu 1408(%rbp), %xmm15
    movq 1392(%rbp), %rbx
    movq 1384(%rbp), %r12
    movq 1376(%rbp), %r13
    movq 1368(%rbp), %r14
    movq 1360(%rbp), %r15
    leaq 1584(%rbp), %rsp
    popq %rbp
    ret
.L53_49:
.L53_47:
.L53_45:
    movq $1, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r15
    jmp .L53_43
.L53_46:
    leaq 744(%rbp), %rbx
    leaq 640(%rbp), %r12
    leaq .Ltext_143(%rip), %rax
    movq %rax, 120(%rbp)
    movq 120(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq .Ltext_144(%rip), %rax
    movq %rax, 112(%rbp)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq 112(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq .Ltext_145(%rip), %rax
    movq %rax, 104(%rbp)
    movq $16, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq 104(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq .Ltext_146(%rip), %rax
    movq %rax, 96(%rbp)
    movq $24, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq 96(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq .Ltext_147(%rip), %rax
    movq %rax, 88(%rbp)
    movq $32, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq 88(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq .Ltext_148(%rip), %rax
    movq %rax, 80(%rbp)
    movq $40, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq 80(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq .Ltext_149(%rip), %rax
    movq %rax, 72(%rbp)
    movq $48, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq 72(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq .Ltext_150(%rip), %rax
    movq %rax, 64(%rbp)
    movq $56, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq 64(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq .Ltext_151(%rip), %rax
    movq %rax, 56(%rbp)
    movq $64, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq 56(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq .Ltext_152(%rip), %rax
    movq %rax, 48(%rbp)
    movq $72, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq 48(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq .Ltext_153(%rip), %rax
    movq %rax, 40(%rbp)
    movq $80, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq 40(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq .Ltext_154(%rip), %rax
    movq %rax, 32(%rbp)
    movq $88, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq 32(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq .Ltext_155(%rip), %rax
    movq %rax, 24(%rbp)
    movq $96, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq 24(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
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
    movq 96(%r10), %rax
    movq %rax, 96(%r11)
    leaq lb_window_16pointer_callback(%rip), %r12
    leaq 608(%rbp), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, 16(%rbp)
    movq $0, %rax
    movq %rax, %r15
.L53_50:
    movq $13, %rcx
    cmpq %rcx, %r15
    jae .L53_53
.L53_51:
    movq $8, %rcx
    movq %r15, %r13
    imulq %rcx, %r13
    movq %r13, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $48, %rsp
    movq 152(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq %r12, %rax
    movq %rax, 24(%rsp)
    movq %r14, %rax
    movq %rax, 32(%rsp)
    leaq 608(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call lb_window_10add_method
    addq $48, %rsp
    movq 16(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L53_55
    jmp .L53_54
.L53_55:
    leaq 1328(%rbp), %rbx
    movq 8(%rbp), %r10
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
    movq 152(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_disposeClassPair
    addq $32, %rsp
    movq %rbx, %rsi
    movq 1400(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1400(%rbp), %rax
    movq 1576(%rbp), %rdi
    movq 1568(%rbp), %rsi
    movdqu 1552(%rbp), %xmm6
    movdqu 1536(%rbp), %xmm7
    movdqu 1520(%rbp), %xmm8
    movdqu 1504(%rbp), %xmm9
    movdqu 1488(%rbp), %xmm10
    movdqu 1472(%rbp), %xmm11
    movdqu 1456(%rbp), %xmm12
    movdqu 1440(%rbp), %xmm13
    movdqu 1424(%rbp), %xmm14
    movdqu 1408(%rbp), %xmm15
    movq 1392(%rbp), %rbx
    movq 1384(%rbp), %r12
    movq 1376(%rbp), %r13
    movq 1368(%rbp), %r14
    movq 1360(%rbp), %r15
    leaq 1584(%rbp), %rsp
    popq %rbp
    ret
.L53_56:
.L53_54:
.L53_52:
    movq $1, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r15
    jmp .L53_50
.L53_53:
    subq $32, %rsp
    movq 152(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_registerClassPair
    addq $32, %rsp
    movq 152(%rbp), %rax
    movq 160(%rbp), %r10
    movq %rax, (%r10)
    jmp .L53_27
.L53_26:
.L53_27:
    leaq 1328(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 1400(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 1400(%rbp), %rax
    movq 1576(%rbp), %rdi
    movq 1568(%rbp), %rsi
    movdqu 1552(%rbp), %xmm6
    movdqu 1536(%rbp), %xmm7
    movdqu 1520(%rbp), %xmm8
    movdqu 1504(%rbp), %xmm9
    movdqu 1488(%rbp), %xmm10
    movdqu 1472(%rbp), %xmm11
    movdqu 1456(%rbp), %xmm12
    movdqu 1440(%rbp), %xmm13
    movdqu 1424(%rbp), %xmm14
    movdqu 1408(%rbp), %xmm15
    movq 1392(%rbp), %rbx
    movq 1384(%rbp), %r12
    movq 1376(%rbp), %r13
    movq 1368(%rbp), %r14
    movq 1360(%rbp), %r15
    leaq 1584(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_window_8mac_open
lb_window_8mac_open:
    .seh_proc lb_window_8mac_open
    pushq %rbp
    .seh_pushreg %rbp
    movq $15472, %rax
    call ___chkstk_ms
    subq $15472, %rsp
    .seh_stackalloc 15472
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 15288(%rbp)
    movq %rdi, 15464(%rbp)
    .seh_savereg %rdi, 15464
    movq %rsi, 15456(%rbp)
    .seh_savereg %rsi, 15456
    movdqu %xmm6, 15440(%rbp)
    .seh_savexmm %xmm6, 15440
    movdqu %xmm7, 15424(%rbp)
    .seh_savexmm %xmm7, 15424
    movdqu %xmm8, 15408(%rbp)
    .seh_savexmm %xmm8, 15408
    movdqu %xmm9, 15392(%rbp)
    .seh_savexmm %xmm9, 15392
    movdqu %xmm10, 15376(%rbp)
    .seh_savexmm %xmm10, 15376
    movdqu %xmm11, 15360(%rbp)
    .seh_savexmm %xmm11, 15360
    movdqu %xmm12, 15344(%rbp)
    .seh_savexmm %xmm12, 15344
    movdqu %xmm13, 15328(%rbp)
    .seh_savexmm %xmm13, 15328
    movdqu %xmm14, 15312(%rbp)
    .seh_savexmm %xmm14, 15312
    movdqu %xmm15, 15296(%rbp)
    .seh_savexmm %xmm15, 15296
    movq %rbx, 15280(%rbp)
    .seh_savereg %rbx, 15280
    movq %r12, 15272(%rbp)
    .seh_savereg %r12, 15272
    movq %r13, 15264(%rbp)
    .seh_savereg %r13, 15264
    movq %r14, 15256(%rbp)
    .seh_savereg %r14, 15256
    movq %r15, 15248(%rbp)
    .seh_savereg %r15, 15248
    .seh_endprologue
    movq %rcx, 15488(%rbp)
    movq %rdx, 15496(%rbp)
    movq %r8, 15504(%rbp)
    movq %r9, 15512(%rbp)
    movq 15496(%rbp), %r10
    leaq 15176(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    subq $32, %rsp
    call objc_autoreleasePoolPush
    addq $32, %rsp
    movq %rax, 0(%rbp)
    movq 0(%rbp), %rax
    testq %rax, %rax
    jne .L54_1
    jmp .L54_2
.L54_2:
    leaq .Ltext_156(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_1:
    subq $32, %rsp
    leaq 15144(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_window_13setup_classes
    addq $32, %rsp
    leaq 15144(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L54_4
    jmp .L54_3
.L54_4:
    leaq 15208(%rbp), %r12
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
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    movq %r12, %rsi
    movq 15288(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 15288(%rbp), %rax
    movq 15464(%rbp), %rdi
    movq 15456(%rbp), %rsi
    movdqu 15440(%rbp), %xmm6
    movdqu 15424(%rbp), %xmm7
    movdqu 15408(%rbp), %xmm8
    movdqu 15392(%rbp), %xmm9
    movdqu 15376(%rbp), %xmm10
    movdqu 15360(%rbp), %xmm11
    movdqu 15344(%rbp), %xmm12
    movdqu 15328(%rbp), %xmm13
    movdqu 15312(%rbp), %xmm14
    movdqu 15296(%rbp), %xmm15
    movq 15280(%rbp), %rbx
    movq 15272(%rbp), %r12
    movq 15264(%rbp), %r13
    movq 15256(%rbp), %r14
    movq 15248(%rbp), %r15
    leaq 15472(%rbp), %rsp
    popq %rbp
    ret
.L54_5:
.L54_3:
    leaq lb_window_application(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L54_7
.L54_6:
    leaq .Ltext_157(%rip), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    leaq 15104(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_12native_class
    addq $32, %rsp
    leaq 15104(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L54_10
    jmp .L54_9
.L54_10:
    movq $8, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    leaq 15208(%rbp), %r13
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r12, %r10
    movq %r15, %r11
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
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    movq %r13, %rsi
    movq 15288(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 15288(%rbp), %rax
    movq 15464(%rbp), %rdi
    movq 15456(%rbp), %rsi
    movdqu 15440(%rbp), %xmm6
    movdqu 15424(%rbp), %xmm7
    movdqu 15408(%rbp), %xmm8
    movdqu 15392(%rbp), %xmm9
    movdqu 15376(%rbp), %xmm10
    movdqu 15360(%rbp), %xmm11
    movdqu 15344(%rbp), %xmm12
    movdqu 15328(%rbp), %xmm13
    movdqu 15312(%rbp), %xmm14
    movdqu 15296(%rbp), %xmm15
    movq 15280(%rbp), %rbx
    movq 15272(%rbp), %r12
    movq 15264(%rbp), %r13
    movq 15256(%rbp), %r14
    movq 15248(%rbp), %r15
    leaq 15472(%rbp), %rsp
    popq %rbp
    ret
.L54_11:
.L54_9:
    movq %r14, %r10
    movq (%r10), %r13
    leaq .Ltext_158(%rip), %r15
    leaq 128(%rbp), %r10
    movq %r15, (%r10)
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r15
    testq %r15, %r15
    jne .L54_83
    jmp .L54_84
.L54_84:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_83:
    jmp .L54_86
.L54_85:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_86:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L54_12
    jmp .L54_13
.L54_12:
    jmp .L54_14
.L54_13:
    leaq 15208(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    leaq lb_window_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_159(%rip), %r14
    leaq 15088(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $42, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    movq %r12, %rsi
    movq 15288(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 15288(%rbp), %rax
    movq 15464(%rbp), %rdi
    movq 15456(%rbp), %rsi
    movdqu 15440(%rbp), %xmm6
    movdqu 15424(%rbp), %xmm7
    movdqu 15408(%rbp), %xmm8
    movdqu 15392(%rbp), %xmm9
    movdqu 15376(%rbp), %xmm10
    movdqu 15360(%rbp), %xmm11
    movdqu 15344(%rbp), %xmm12
    movdqu 15328(%rbp), %xmm13
    movdqu 15312(%rbp), %xmm14
    movdqu 15296(%rbp), %xmm15
    movq 15280(%rbp), %rbx
    movq 15272(%rbp), %r12
    movq 15264(%rbp), %r13
    movq 15256(%rbp), %r14
    movq 15248(%rbp), %r15
    leaq 15472(%rbp), %rsp
    popq %rbp
    ret
.L54_15:
.L54_14:
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 8(%rsp)
    leaq 15056(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_13finish_launch
    addq $32, %rsp
    leaq 15056(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L54_17
    jmp .L54_16
.L54_17:
    leaq 15208(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    movq %r12, %rsi
    movq 15288(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 15288(%rbp), %rax
    movq 15464(%rbp), %rdi
    movq 15456(%rbp), %rsi
    movdqu 15440(%rbp), %xmm6
    movdqu 15424(%rbp), %xmm7
    movdqu 15408(%rbp), %xmm8
    movdqu 15392(%rbp), %xmm9
    movdqu 15376(%rbp), %xmm10
    movdqu 15360(%rbp), %xmm11
    movdqu 15344(%rbp), %xmm12
    movdqu 15328(%rbp), %xmm13
    movdqu 15312(%rbp), %xmm14
    movdqu 15296(%rbp), %xmm15
    movq 15280(%rbp), %rbx
    movq 15272(%rbp), %r12
    movq 15264(%rbp), %r13
    movq 15256(%rbp), %r14
    movq 15248(%rbp), %r15
    leaq 15472(%rbp), %rsp
    popq %rbp
    ret
.L54_18:
.L54_16:
    leaq .Ltext_160(%rip), %r13
    leaq 128(%rbp), %r10
    movq %r13, (%r10)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L54_87
    jmp .L54_88
.L54_88:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_87:
    jmp .L54_90
.L54_89:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_90:
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call objc_msgSend
    addq $32, %rsp
    movl %eax, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L54_20
.L54_19:
    leaq 15208(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    leaq lb_window_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_161(%rip), %r14
    leaq 15040(%rbp), %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq $8, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq $57, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r13
    movq %r15, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    movq %r12, %rsi
    movq 15288(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 15288(%rbp), %rax
    movq 15464(%rbp), %rdi
    movq 15456(%rbp), %rsi
    movdqu 15440(%rbp), %xmm6
    movdqu 15424(%rbp), %xmm7
    movdqu 15408(%rbp), %xmm8
    movdqu 15392(%rbp), %xmm9
    movdqu 15376(%rbp), %xmm10
    movdqu 15360(%rbp), %xmm11
    movdqu 15344(%rbp), %xmm12
    movdqu 15328(%rbp), %xmm13
    movdqu 15312(%rbp), %xmm14
    movdqu 15296(%rbp), %xmm15
    movq 15280(%rbp), %rbx
    movq 15272(%rbp), %r12
    movq 15264(%rbp), %r13
    movq 15256(%rbp), %r14
    movq 15248(%rbp), %r15
    leaq 15472(%rbp), %rsp
    popq %rbp
    ret
.L54_22:
    jmp .L54_21
.L54_20:
.L54_21:
    movq %r12, %r10
    movq %r14, (%r10)
    jmp .L54_8
.L54_7:
.L54_8:
    leaq lb_memory_heap(%rip), %r12
    leaq 15024(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 14984(%rbp), %r14
    movq %r13, %r10
    movq (%r10), %r12
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L54_23
    jmp .L54_24
.L54_24:
    leaq .Ltext_163(%rip), %rdi
    leaq .Ltext_162(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_23:
    movq %r13, %r10
    movq (%r10), %r15
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $14432, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    leaq 14960(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r15, %r11
    call *%r11
    addq $32, %rsp
    leaq 14960(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L54_25
    jmp .L54_26
.L54_26:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_164(%rip), %r12
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
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L54_27
.L54_25:
    movq %rbx, %r10
    movq (%r10), %r12
    leaq 528(%rbp), %r13
    movq %r13, %rdi
    xorl %esi, %esi
    movq $14432, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memset
    addq $32, %rsp
    movq %r12, %rdi
    movq %r13, %rsi
    movq $14432, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq %r14, %r10
    movq %r12, (%r10)
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
.L54_27:
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L54_29
    jmp .L54_28
.L54_29:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 15208(%rbp), %r12
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
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    movq %r12, %rsi
    movq 15288(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 15288(%rbp), %rax
    movq 15464(%rbp), %rdi
    movq 15456(%rbp), %rsi
    movdqu 15440(%rbp), %xmm6
    movdqu 15424(%rbp), %xmm7
    movdqu 15408(%rbp), %xmm8
    movdqu 15392(%rbp), %xmm9
    movdqu 15376(%rbp), %xmm10
    movdqu 15360(%rbp), %xmm11
    movdqu 15344(%rbp), %xmm12
    movdqu 15328(%rbp), %xmm13
    movdqu 15312(%rbp), %xmm14
    movdqu 15296(%rbp), %xmm15
    movq 15280(%rbp), %rbx
    movq 15272(%rbp), %r12
    movq 15264(%rbp), %r13
    movq 15256(%rbp), %r14
    movq 15248(%rbp), %r15
    leaq 15472(%rbp), %rsp
    popq %rbp
    ret
.L54_30:
.L54_28:
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, 56(%rbp)
    movq 56(%rbp), %rax
    movq $14392, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    subq $32, %rsp
    movl $0, %eax
    movq %rax, 8(%rsp)
    leaq 488(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_10mac_cursor
    addq $32, %rsp
    leaq 488(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L54_32
    jmp .L54_31
.L54_32:
    movq $8, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq 15208(%rbp), %r13
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
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_11mac_destroy
    addq $32, %rsp
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    movq %r13, %rsi
    movq 15288(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 15288(%rbp), %rax
    movq 15464(%rbp), %rdi
    movq 15456(%rbp), %rsi
    movdqu 15440(%rbp), %xmm6
    movdqu 15424(%rbp), %xmm7
    movdqu 15408(%rbp), %xmm8
    movdqu 15392(%rbp), %xmm9
    movdqu 15376(%rbp), %xmm10
    movdqu 15360(%rbp), %xmm11
    movdqu 15344(%rbp), %xmm12
    movdqu 15328(%rbp), %xmm13
    movdqu 15312(%rbp), %xmm14
    movdqu 15296(%rbp), %xmm15
    movq 15280(%rbp), %rbx
    movq 15272(%rbp), %r12
    movq 15264(%rbp), %r13
    movq 15256(%rbp), %r14
    movq 15248(%rbp), %r15
    leaq 15472(%rbp), %rsp
    popq %rbp
    ret
.L54_33:
.L54_31:
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq 456(%rbp), %rax
    movq %rax, 40(%rbp)
    leaq 424(%rbp), %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    leaq 408(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq 15176(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movl %r14d, %r14d
    movq %r14, %rcx
    testq %rcx, %rcx
    js 1f
    cvtsi2sdq %rcx, %xmm8
    jmp 2f
1:
    movq %rcx, %rax
    shrq $1, %rax
    andl $1, %ecx
    orq %rcx, %rax
    cvtsi2sdq %rax, %xmm8
    addsd %xmm8, %xmm8
2:
    movapd %xmm8, %xmm12
    movq %rbx, %r10
    movsd %xmm12, (%r10)
    movq 24(%rbp), %rax
    movq $20, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movl %r14d, %r14d
    movq %r14, %rcx
    testq %rcx, %rcx
    js 1f
    cvtsi2sdq %rcx, %xmm8
    jmp 2f
1:
    movq %rcx, %rax
    shrq $1, %rax
    andl $1, %ecx
    orq %rcx, %rax
    cvtsi2sdq %rax, %xmm8
    addsd %xmm8, %xmm8
2:
    movapd %xmm8, %xmm12
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movsd %xmm12, (%r10)
    movq 32(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 32(%rbp), %r10
    movq 40(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq .Ltext_165(%rip), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 368(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_12native_class
    addq $32, %rsp
    leaq 368(%rbp), %r14
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L54_35
    jmp .L54_34
.L54_35:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq 15208(%rbp), %r12
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
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_11mac_destroy
    addq $32, %rsp
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    movq %r12, %rsi
    movq 15288(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 15288(%rbp), %rax
    movq 15464(%rbp), %rdi
    movq 15456(%rbp), %rsi
    movdqu 15440(%rbp), %xmm6
    movdqu 15424(%rbp), %xmm7
    movdqu 15408(%rbp), %xmm8
    movdqu 15392(%rbp), %xmm9
    movdqu 15376(%rbp), %xmm10
    movdqu 15360(%rbp), %xmm11
    movdqu 15344(%rbp), %xmm12
    movdqu 15328(%rbp), %xmm13
    movdqu 15312(%rbp), %xmm14
    movdqu 15296(%rbp), %xmm15
    movq 15280(%rbp), %rbx
    movq 15272(%rbp), %r12
    movq 15264(%rbp), %r13
    movq 15256(%rbp), %r14
    movq 15248(%rbp), %r15
    leaq 15472(%rbp), %rsp
    popq %rbp
    ret
.L54_36:
.L54_34:
    movq %r14, %r10
    movq (%r10), %rbx
    leaq .Ltext_166(%rip), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    leaq 128(%rbp), %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r15
    testq %r15, %r15
    jne .L54_91
    jmp .L54_92
.L54_92:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_91:
    jmp .L54_94
.L54_93:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_94:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L54_37
    jmp .L54_38
.L54_37:
    jmp .L54_39
.L54_38:
    leaq 15208(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_167(%rip), %r13
    leaq 352(%rbp), %r14
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
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_11mac_destroy
    addq $32, %rsp
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    movq %rbx, %rsi
    movq 15288(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 15288(%rbp), %rax
    movq 15464(%rbp), %rdi
    movq 15456(%rbp), %rsi
    movdqu 15440(%rbp), %xmm6
    movdqu 15424(%rbp), %xmm7
    movdqu 15408(%rbp), %xmm8
    movdqu 15392(%rbp), %xmm9
    movdqu 15376(%rbp), %xmm10
    movdqu 15360(%rbp), %xmm11
    movdqu 15344(%rbp), %xmm12
    movdqu 15328(%rbp), %xmm13
    movdqu 15312(%rbp), %xmm14
    movdqu 15296(%rbp), %xmm15
    movq 15280(%rbp), %rbx
    movq 15272(%rbp), %r12
    movq 15264(%rbp), %r13
    movq 15256(%rbp), %r14
    movq 15248(%rbp), %r15
    leaq 15472(%rbp), %rsp
    popq %rbp
    ret
.L54_40:
.L54_39:
    leaq .Ltext_168(%rip), %rbx
    leaq 128(%rbp), %r10
    movq %rbx, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L54_95
    jmp .L54_96
.L54_96:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_95:
    jmp .L54_98
.L54_97:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_98:
    movq 24(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L54_41
    jmp .L54_42
.L54_41:
    movq $15, %rax
    movq %rax, %r15
    jmp .L54_43
.L54_42:
    movq $7, %rax
    movq %rax, %r15
.L54_43:
    subq $80, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 40(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq %r15, %rax
    movq %rax, 24(%rsp)
    movq $2, %rax
    movq %rax, 32(%rsp)
    movl $0, %eax
    movq %rax, 40(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call objc_msgSend
    addq $80, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L54_44
    jmp .L54_45
.L54_44:
    jmp .L54_46
.L54_45:
    leaq 15208(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_169(%rip), %r13
    leaq 336(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $36, %rax
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
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_11mac_destroy
    addq $32, %rsp
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    movq %rbx, %rsi
    movq 15288(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 15288(%rbp), %rax
    movq 15464(%rbp), %rdi
    movq 15456(%rbp), %rsi
    movdqu 15440(%rbp), %xmm6
    movdqu 15424(%rbp), %xmm7
    movdqu 15408(%rbp), %xmm8
    movdqu 15392(%rbp), %xmm9
    movdqu 15376(%rbp), %xmm10
    movdqu 15360(%rbp), %xmm11
    movdqu 15344(%rbp), %xmm12
    movdqu 15328(%rbp), %xmm13
    movdqu 15312(%rbp), %xmm14
    movdqu 15296(%rbp), %xmm15
    movq 15280(%rbp), %rbx
    movq 15272(%rbp), %r12
    movq 15264(%rbp), %r13
    movq 15256(%rbp), %r14
    movq 15248(%rbp), %r15
    leaq 15472(%rbp), %rsp
    popq %rbp
    ret
.L54_47:
.L54_46:
    movq 56(%rbp), %r10
    movq %r12, (%r10)
    leaq .Ltext_170(%rip), %rbx
    leaq 128(%rbp), %r10
    movq %rbx, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L54_99
    jmp .L54_100
.L54_100:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_99:
    jmp .L54_102
.L54_101:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_102:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movl $0, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call objc_msgSend
    addq $32, %rsp
    leaq lb_window_10view_class(%rip), %r14
    movq %r14, %r10
    movq (%r10), %r14
    leaq 112(%rbp), %r10
    movq %r14, (%r10)
    testq %r14, %r14
    jne .L54_103
    jmp .L54_104
.L54_103:
    jmp .L54_105
.L54_104:
    leaq .Ltext_39(%rip), %rbx
    leaq 96(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
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
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_105:
    jmp .L54_107
.L54_106:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_107:
    movq 16(%rbp), %rax
    leaq 128(%rbp), %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L54_108
    jmp .L54_109
.L54_109:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_108:
    jmp .L54_111
.L54_110:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_111:
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movq %rax, %r15
    testq %r15, %r15
    jne .L54_48
    jmp .L54_49
.L54_48:
    jmp .L54_50
.L54_49:
    leaq 15208(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_171(%rip), %r13
    leaq 320(%rbp), %r14
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
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_11mac_destroy
    addq $32, %rsp
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    movq %rbx, %rsi
    movq 15288(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 15288(%rbp), %rax
    movq 15464(%rbp), %rdi
    movq 15456(%rbp), %rsi
    movdqu 15440(%rbp), %xmm6
    movdqu 15424(%rbp), %xmm7
    movdqu 15408(%rbp), %xmm8
    movdqu 15392(%rbp), %xmm9
    movdqu 15376(%rbp), %xmm10
    movdqu 15360(%rbp), %xmm11
    movdqu 15344(%rbp), %xmm12
    movdqu 15328(%rbp), %xmm13
    movdqu 15312(%rbp), %xmm14
    movdqu 15296(%rbp), %xmm15
    movq 15280(%rbp), %rbx
    movq 15272(%rbp), %r12
    movq 15264(%rbp), %r13
    movq 15256(%rbp), %r14
    movq 15248(%rbp), %r15
    leaq 15472(%rbp), %rsp
    popq %rbp
    ret
.L54_51:
.L54_50:
    leaq .Ltext_172(%rip), %rbx
    leaq 128(%rbp), %r10
    movq %rbx, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L54_112
    jmp .L54_113
.L54_113:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_112:
    jmp .L54_115
.L54_114:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_115:
    subq $64, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 40(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call objc_msgSend
    addq $64, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L54_52
    jmp .L54_53
.L54_52:
    jmp .L54_54
.L54_53:
    leaq 15208(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_173(%rip), %r13
    leaq 304(%rbp), %r14
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
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_11mac_destroy
    addq $32, %rsp
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    movq %rbx, %rsi
    movq 15288(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 15288(%rbp), %rax
    movq 15464(%rbp), %rdi
    movq 15456(%rbp), %rsi
    movdqu 15440(%rbp), %xmm6
    movdqu 15424(%rbp), %xmm7
    movdqu 15408(%rbp), %xmm8
    movdqu 15392(%rbp), %xmm9
    movdqu 15376(%rbp), %xmm10
    movdqu 15360(%rbp), %xmm11
    movdqu 15344(%rbp), %xmm12
    movdqu 15328(%rbp), %xmm13
    movdqu 15312(%rbp), %xmm14
    movdqu 15296(%rbp), %xmm15
    movq 15280(%rbp), %rbx
    movq 15272(%rbp), %r12
    movq 15264(%rbp), %r13
    movq 15256(%rbp), %r14
    movq 15248(%rbp), %r15
    leaq 15472(%rbp), %rsp
    popq %rbp
    ret
.L54_55:
.L54_54:
    movq 56(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    leaq 80(%rbp), %r10
    movq %r14, (%r10)
    movq 56(%rbp), %rax
    leaq 64(%rbp), %r10
    movq %rax, (%r10)
    movq 56(%rbp), %rax
    testq %rax, %rax
    jne .L54_119
    jmp .L54_117
.L54_119:
.L54_116:
    leaq .Ltext_41(%rip), %rbx
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 56(%rbp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call object_setInstanceVariable
    addq $32, %rsp
    movq %rax, %rbx
    jmp .L54_118
.L54_117:
    leaq .Ltext_41(%rip), %rbx
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call object_setInstanceVariable
    addq $32, %rsp
    movq %rax, %rbx
.L54_118:
.L54_120:
    leaq .Ltext_174(%rip), %rbx
    leaq 128(%rbp), %r10
    movq %rbx, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L54_121
    jmp .L54_122
.L54_122:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_121:
    jmp .L54_124
.L54_123:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_124:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call objc_msgSend
    addq $32, %rsp
    leaq .Ltext_175(%rip), %r15
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 8(%rsp)
    leaq 264(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_12native_class
    addq $32, %rsp
    leaq 264(%rbp), %r13
    movq $32, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    testl %r15d, %r15d
    jne .L54_57
    jmp .L54_56
.L54_57:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 15208(%rbp), %r12
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
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_11mac_destroy
    addq $32, %rsp
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    movq %r12, %rsi
    movq 15288(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 15288(%rbp), %rax
    movq 15464(%rbp), %rdi
    movq 15456(%rbp), %rsi
    movdqu 15440(%rbp), %xmm6
    movdqu 15424(%rbp), %xmm7
    movdqu 15408(%rbp), %xmm8
    movdqu 15392(%rbp), %xmm9
    movdqu 15376(%rbp), %xmm10
    movdqu 15360(%rbp), %xmm11
    movdqu 15344(%rbp), %xmm12
    movdqu 15328(%rbp), %xmm13
    movdqu 15312(%rbp), %xmm14
    movdqu 15296(%rbp), %xmm15
    movq 15280(%rbp), %rbx
    movq 15272(%rbp), %r12
    movq 15264(%rbp), %r13
    movq 15256(%rbp), %r14
    movq 15248(%rbp), %r15
    leaq 15472(%rbp), %rsp
    popq %rbp
    ret
.L54_58:
.L54_56:
    movq %r13, %r10
    movq (%r10), %rbx
    movq 16(%rbp), %rax
    leaq 128(%rbp), %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r15
    testq %r15, %r15
    jne .L54_125
    jmp .L54_126
.L54_126:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_125:
    jmp .L54_128
.L54_127:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_128:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L54_59
    jmp .L54_60
.L54_59:
    jmp .L54_61
.L54_60:
    leaq 15208(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_176(%rip), %r13
    leaq 248(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $35, %rax
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
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_11mac_destroy
    addq $32, %rsp
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    movq %rbx, %rsi
    movq 15288(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 15288(%rbp), %rax
    movq 15464(%rbp), %rdi
    movq 15456(%rbp), %rsi
    movdqu 15440(%rbp), %xmm6
    movdqu 15424(%rbp), %xmm7
    movdqu 15408(%rbp), %xmm8
    movdqu 15392(%rbp), %xmm9
    movdqu 15376(%rbp), %xmm10
    movdqu 15360(%rbp), %xmm11
    movdqu 15344(%rbp), %xmm12
    movdqu 15328(%rbp), %xmm13
    movdqu 15312(%rbp), %xmm14
    movdqu 15296(%rbp), %xmm15
    movq 15280(%rbp), %rbx
    movq 15272(%rbp), %r12
    movq 15264(%rbp), %r13
    movq 15256(%rbp), %r14
    movq 15248(%rbp), %r15
    leaq 15472(%rbp), %rsp
    popq %rbp
    ret
.L54_62:
.L54_61:
    leaq .Ltext_177(%rip), %rbx
    leaq 128(%rbp), %r10
    movq %rbx, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L54_129
    jmp .L54_130
.L54_130:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_129:
    jmp .L54_132
.L54_131:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_132:
    subq $80, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 40(%rbp), %r10
    leaq 48(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 48(%rsp), %rax
    movq %rax, 16(%rsp)
    movq $1573, %rax
    movq %rax, 24(%rsp)
    movq %r14, %rax
    movq %rax, 32(%rsp)
    movq $0, %rax
    movq %rax, 40(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call objc_msgSend
    addq $80, %rsp
    movq %rax, %r15
    testq %r15, %r15
    jne .L54_63
    jmp .L54_64
.L54_63:
    jmp .L54_65
.L54_64:
    leaq 15208(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_178(%rip), %r13
    leaq 232(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $37, %rax
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
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_11mac_destroy
    addq $32, %rsp
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    movq %rbx, %rsi
    movq 15288(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 15288(%rbp), %rax
    movq 15464(%rbp), %rdi
    movq 15456(%rbp), %rsi
    movdqu 15440(%rbp), %xmm6
    movdqu 15424(%rbp), %xmm7
    movdqu 15408(%rbp), %xmm8
    movdqu 15392(%rbp), %xmm9
    movdqu 15376(%rbp), %xmm10
    movdqu 15360(%rbp), %xmm11
    movdqu 15344(%rbp), %xmm12
    movdqu 15328(%rbp), %xmm13
    movdqu 15312(%rbp), %xmm14
    movdqu 15296(%rbp), %xmm15
    movq 15280(%rbp), %rbx
    movq 15272(%rbp), %r12
    movq 15264(%rbp), %r13
    movq 15256(%rbp), %r14
    movq 15248(%rbp), %r15
    leaq 15472(%rbp), %rsp
    popq %rbp
    ret
.L54_66:
.L54_65:
    leaq .Ltext_179(%rip), %rbx
    leaq 128(%rbp), %r10
    movq %rbx, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L54_133
    jmp .L54_134
.L54_134:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_133:
    jmp .L54_136
.L54_135:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_136:
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r15, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call objc_msgSend
    addq $32, %rsp
    leaq .Ltext_106(%rip), %rax
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    leaq 128(%rbp), %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L54_137
    jmp .L54_138
.L54_138:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_137:
    jmp .L54_140
.L54_139:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_140:
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    leaq lb_window_14delegate_class(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 112(%rbp), %r10
    movq %rbx, (%r10)
    testq %rbx, %rbx
    jne .L54_141
    jmp .L54_142
.L54_141:
    jmp .L54_143
.L54_142:
    leaq .Ltext_39(%rip), %rbx
    leaq 96(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
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
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_143:
    jmp .L54_145
.L54_144:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_145:
    leaq .Ltext_180(%rip), %r13
    leaq 128(%rbp), %r10
    movq %r13, (%r10)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L54_146
    jmp .L54_147
.L54_147:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_146:
    jmp .L54_149
.L54_148:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_149:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movq %rax, %r15
    testq %r15, %r15
    jne .L54_67
    jmp .L54_68
.L54_67:
    jmp .L54_69
.L54_68:
    leaq 15208(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_181(%rip), %r13
    leaq 216(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $36, %rax
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
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_11mac_destroy
    addq $32, %rsp
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    movq %rbx, %rsi
    movq 15288(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 15288(%rbp), %rax
    movq 15464(%rbp), %rdi
    movq 15456(%rbp), %rsi
    movdqu 15440(%rbp), %xmm6
    movdqu 15424(%rbp), %xmm7
    movdqu 15408(%rbp), %xmm8
    movdqu 15392(%rbp), %xmm9
    movdqu 15376(%rbp), %xmm10
    movdqu 15360(%rbp), %xmm11
    movdqu 15344(%rbp), %xmm12
    movdqu 15328(%rbp), %xmm13
    movdqu 15312(%rbp), %xmm14
    movdqu 15296(%rbp), %xmm15
    movq 15280(%rbp), %rbx
    movq 15272(%rbp), %r12
    movq 15264(%rbp), %r13
    movq 15256(%rbp), %r14
    movq 15248(%rbp), %r15
    leaq 15472(%rbp), %rsp
    popq %rbp
    ret
.L54_70:
.L54_69:
    movq 56(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    leaq 80(%rbp), %r10
    movq %r15, (%r10)
    movq 56(%rbp), %rax
    leaq 64(%rbp), %r10
    movq %rax, (%r10)
    movq 56(%rbp), %rax
    testq %rax, %rax
    jne .L54_153
    jmp .L54_151
.L54_153:
.L54_150:
    leaq .Ltext_41(%rip), %rbx
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 56(%rbp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call object_setInstanceVariable
    addq $32, %rsp
    movq %rax, %rbx
    jmp .L54_152
.L54_151:
    leaq .Ltext_41(%rip), %rbx
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
    call object_setInstanceVariable
    addq $32, %rsp
    movq %rax, %rbx
.L54_152:
.L54_154:
    leaq .Ltext_182(%rip), %rbx
    leaq 128(%rbp), %r10
    movq %rbx, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L54_155
    jmp .L54_156
.L54_156:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_155:
    jmp .L54_158
.L54_157:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_158:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r15, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call objc_msgSend
    addq $32, %rsp
    leaq .Ltext_183(%rip), %r13
    leaq 128(%rbp), %r10
    movq %r13, (%r10)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L54_159
    jmp .L54_160
.L54_160:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_159:
    jmp .L54_162
.L54_161:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_162:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movl $1, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call objc_msgSend
    addq $32, %rsp
    leaq .Ltext_184(%rip), %rbx
    leaq 128(%rbp), %r10
    movq %rbx, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L54_163
    jmp .L54_164
.L54_164:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_163:
    jmp .L54_166
.L54_165:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_166:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call objc_msgSend
    addq $32, %rsp
    movl %eax, %ebx
    leaq .Ltext_102(%rip), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    leaq 176(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_12native_class
    addq $32, %rsp
    leaq 176(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L54_72
    jmp .L54_71
.L54_72:
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq 15208(%rbp), %r12
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
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_11mac_destroy
    addq $32, %rsp
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    movq %r12, %rsi
    movq 15288(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 15288(%rbp), %rax
    movq 15464(%rbp), %rdi
    movq 15456(%rbp), %rsi
    movdqu 15440(%rbp), %xmm6
    movdqu 15424(%rbp), %xmm7
    movdqu 15408(%rbp), %xmm8
    movdqu 15392(%rbp), %xmm9
    movdqu 15376(%rbp), %xmm10
    movdqu 15360(%rbp), %xmm11
    movdqu 15344(%rbp), %xmm12
    movdqu 15328(%rbp), %xmm13
    movdqu 15312(%rbp), %xmm14
    movdqu 15296(%rbp), %xmm15
    movq 15280(%rbp), %rbx
    movq 15272(%rbp), %r12
    movq 15264(%rbp), %r13
    movq 15256(%rbp), %r14
    movq 15248(%rbp), %r15
    leaq 15472(%rbp), %rsp
    popq %rbp
    ret
.L54_73:
.L54_71:
    movq %r15, %r10
    movq (%r10), %rbx
    movq 16(%rbp), %rax
    leaq 128(%rbp), %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L54_167
    jmp .L54_168
.L54_168:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_167:
    jmp .L54_170
.L54_169:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_170:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L54_74
    jmp .L54_75
.L54_74:
    jmp .L54_76
.L54_75:
    leaq 15208(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_185(%rip), %r13
    leaq 160(%rbp), %r14
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
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_11mac_destroy
    addq $32, %rsp
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    movq %rbx, %rsi
    movq 15288(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 15288(%rbp), %rax
    movq 15464(%rbp), %rdi
    movq 15456(%rbp), %rsi
    movdqu 15440(%rbp), %xmm6
    movdqu 15424(%rbp), %xmm7
    movdqu 15408(%rbp), %xmm8
    movdqu 15392(%rbp), %xmm9
    movdqu 15376(%rbp), %xmm10
    movdqu 15360(%rbp), %xmm11
    movdqu 15344(%rbp), %xmm12
    movdqu 15328(%rbp), %xmm13
    movdqu 15312(%rbp), %xmm14
    movdqu 15296(%rbp), %xmm15
    movq 15280(%rbp), %rbx
    movq 15272(%rbp), %r12
    movq 15264(%rbp), %r13
    movq 15256(%rbp), %r14
    movq 15248(%rbp), %r15
    leaq 15472(%rbp), %rsp
    popq %rbp
    ret
.L54_77:
.L54_76:
    leaq .Ltext_186(%rip), %rbx
    leaq 128(%rbp), %r10
    movq %rbx, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L54_171
    jmp .L54_172
.L54_172:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_171:
    jmp .L54_174
.L54_173:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_174:
    movq 24(%rbp), %r10
    movq (%r10), %r13
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    subq $48, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq %r15, %rax
    movq %rax, 24(%rsp)
    movq $4, %rax
    movq %rax, 32(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call objc_msgSend
    addq $48, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L54_78
    jmp .L54_79
.L54_78:
    jmp .L54_80
.L54_79:
    leaq 15208(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_187(%rip), %r13
    leaq 144(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $30, %rax
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
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_11mac_destroy
    addq $32, %rsp
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    movq %rbx, %rsi
    movq 15288(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 15288(%rbp), %rax
    movq 15464(%rbp), %rdi
    movq 15456(%rbp), %rsi
    movdqu 15440(%rbp), %xmm6
    movdqu 15424(%rbp), %xmm7
    movdqu 15408(%rbp), %xmm8
    movdqu 15392(%rbp), %xmm9
    movdqu 15376(%rbp), %xmm10
    movdqu 15360(%rbp), %xmm11
    movdqu 15344(%rbp), %xmm12
    movdqu 15328(%rbp), %xmm13
    movdqu 15312(%rbp), %xmm14
    movdqu 15296(%rbp), %xmm15
    movq 15280(%rbp), %rbx
    movq 15272(%rbp), %r12
    movq 15264(%rbp), %r13
    movq 15256(%rbp), %r14
    movq 15248(%rbp), %r15
    leaq 15472(%rbp), %rsp
    popq %rbp
    ret
.L54_81:
.L54_80:
    leaq .Ltext_188(%rip), %rbx
    leaq 128(%rbp), %r10
    movq %rbx, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L54_175
    jmp .L54_176
.L54_176:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_175:
    jmp .L54_178
.L54_177:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_178:
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
    call objc_msgSend
    addq $32, %rsp
    leaq .Ltext_189(%rip), %r14
    leaq 128(%rbp), %r10
    movq %r14, (%r10)
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L54_179
    jmp .L54_180
.L54_180:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_179:
    jmp .L54_182
.L54_181:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_182:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    leaq 15208(%rbp), %rbx
    movq 56(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movl $0, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq 8(%rbp), %rax
    leaq 128(%rbp), %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r15
    testq %r15, %r15
    jne .L54_183
    jmp .L54_184
.L54_184:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_183:
    jmp .L54_186
.L54_185:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_186:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    subq $32, %rsp
    movq 0(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    movq %rbx, %rsi
    movq 15288(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 15288(%rbp), %rax
    movq 15464(%rbp), %rdi
    movq 15456(%rbp), %rsi
    movdqu 15440(%rbp), %xmm6
    movdqu 15424(%rbp), %xmm7
    movdqu 15408(%rbp), %xmm8
    movdqu 15392(%rbp), %xmm9
    movdqu 15376(%rbp), %xmm10
    movdqu 15360(%rbp), %xmm11
    movdqu 15344(%rbp), %xmm12
    movdqu 15328(%rbp), %xmm13
    movdqu 15312(%rbp), %xmm14
    movdqu 15296(%rbp), %xmm15
    movq 15280(%rbp), %rbx
    movq 15272(%rbp), %r12
    movq 15264(%rbp), %r13
    movq 15256(%rbp), %r14
    movq 15248(%rbp), %r15
    leaq 15472(%rbp), %rsp
    popq %rbp
    ret
.L54_82:
    leaq .Ltext_106(%rip), %rbx
    leaq 128(%rbp), %r10
    movq %rbx, (%r10)
    leaq 128(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L54_187
    jmp .L54_188
.L54_188:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_187:
    movq %rbx, %r12
    jmp .L54_190
.L54_189:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L54_190:
    movq %r12, %r13
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movq %r14, %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    leaq .Ltext_190(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_window_13finish_launch
lb_window_13finish_launch:
    .seh_proc lb_window_13finish_launch
    pushq %rbp
    .seh_pushreg %rbp
    subq $432, %rsp
    .seh_stackalloc 432
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 248(%rbp)
    movq %rdi, 424(%rbp)
    .seh_savereg %rdi, 424
    movq %rsi, 416(%rbp)
    .seh_savereg %rsi, 416
    movdqu %xmm6, 400(%rbp)
    .seh_savexmm %xmm6, 400
    movdqu %xmm7, 384(%rbp)
    .seh_savexmm %xmm7, 384
    movdqu %xmm8, 368(%rbp)
    .seh_savexmm %xmm8, 368
    movdqu %xmm9, 352(%rbp)
    .seh_savexmm %xmm9, 352
    movdqu %xmm10, 336(%rbp)
    .seh_savexmm %xmm10, 336
    movdqu %xmm11, 320(%rbp)
    .seh_savexmm %xmm11, 320
    movdqu %xmm12, 304(%rbp)
    .seh_savexmm %xmm12, 304
    movdqu %xmm13, 288(%rbp)
    .seh_savexmm %xmm13, 288
    movdqu %xmm14, 272(%rbp)
    .seh_savexmm %xmm14, 272
    movdqu %xmm15, 256(%rbp)
    .seh_savexmm %xmm15, 256
    movq %rbx, 240(%rbp)
    .seh_savereg %rbx, 240
    movq %r12, 232(%rbp)
    .seh_savereg %r12, 232
    movq %r13, 224(%rbp)
    .seh_savereg %r13, 224
    movq %r14, 216(%rbp)
    .seh_savereg %r14, 216
    movq %r15, 208(%rbp)
    .seh_savereg %r15, 208
    .seh_endprologue
    movq %rcx, 448(%rbp)
    movq %rdx, 456(%rbp)
    movq %r8, 464(%rbp)
    movq %r9, 472(%rbp)
    movq 456(%rbp), %rax
    movq %rax, 160(%rbp)
    leaq .Ltext_191(%rip), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 120(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_12native_class
    addq $32, %rsp
    leaq 120(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L55_2
    jmp .L55_1
.L55_2:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 176(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq 248(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 248(%rbp), %rax
    movq 424(%rbp), %rdi
    movq 416(%rbp), %rsi
    movdqu 400(%rbp), %xmm6
    movdqu 384(%rbp), %xmm7
    movdqu 368(%rbp), %xmm8
    movdqu 352(%rbp), %xmm9
    movdqu 336(%rbp), %xmm10
    movdqu 320(%rbp), %xmm11
    movdqu 304(%rbp), %xmm12
    movdqu 288(%rbp), %xmm13
    movdqu 272(%rbp), %xmm14
    movdqu 256(%rbp), %xmm15
    movq 240(%rbp), %rbx
    movq 232(%rbp), %r12
    movq 224(%rbp), %r13
    movq 216(%rbp), %r14
    movq 208(%rbp), %r15
    leaq 432(%rbp), %rsp
    popq %rbp
    ret
.L55_3:
.L55_1:
    movq %r12, %r10
    movq (%r10), %rbx
    leaq .Ltext_192(%rip), %r13
    leaq 48(%rbp), %r10
    movq %r13, (%r10)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L55_15
    jmp .L55_16
.L55_16:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L55_15:
    jmp .L55_18
.L55_17:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L55_18:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movq %rax, %r12
    leaq 32(%rbp), %r10
    movq %r12, (%r10)
    testq %r12, %r12
    jne .L55_19
    jmp .L55_20
.L55_19:
    jmp .L55_21
.L55_20:
    leaq .Ltext_39(%rip), %rbx
    leaq 16(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
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
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L55_21:
    jmp .L55_23
.L55_22:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L55_23:
    leaq .Ltext_193(%rip), %rbx
    leaq 48(%rbp), %r10
    movq %rbx, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L55_24
    jmp .L55_25
.L55_25:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L55_24:
    jmp .L55_27
.L55_26:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L55_27:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movl %eax, %r13d
    testl %r13d, %r13d
    jne .L55_4
    jmp .L55_5
.L55_4:
    leaq 176(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 248(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 248(%rbp), %rax
    movq 424(%rbp), %rdi
    movq 416(%rbp), %rsi
    movdqu 400(%rbp), %xmm6
    movdqu 384(%rbp), %xmm7
    movdqu 368(%rbp), %xmm8
    movdqu 352(%rbp), %xmm9
    movdqu 336(%rbp), %xmm10
    movdqu 320(%rbp), %xmm11
    movdqu 304(%rbp), %xmm12
    movdqu 288(%rbp), %xmm13
    movdqu 272(%rbp), %xmm14
    movdqu 256(%rbp), %xmm15
    movq 240(%rbp), %rbx
    movq 232(%rbp), %r12
    movq 224(%rbp), %r13
    movq 216(%rbp), %r14
    movq 208(%rbp), %r15
    leaq 432(%rbp), %rsp
    popq %rbp
    ret
.L55_7:
    jmp .L55_6
.L55_5:
.L55_6:
    leaq lb_window_14delegate_class(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 32(%rbp), %r10
    movq %rbx, (%r10)
    testq %rbx, %rbx
    jne .L55_28
    jmp .L55_29
.L55_28:
    jmp .L55_30
.L55_29:
    leaq .Ltext_39(%rip), %rbx
    leaq 16(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
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
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L55_30:
    jmp .L55_32
.L55_31:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L55_32:
    leaq .Ltext_180(%rip), %r12
    leaq 48(%rbp), %r10
    movq %r12, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L55_33
    jmp .L55_34
.L55_34:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L55_33:
    jmp .L55_36
.L55_35:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L55_36:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L55_8
    jmp .L55_9
.L55_8:
    jmp .L55_10
.L55_9:
    leaq 176(%rbp), %rbx
    leaq lb_window_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_194(%rip), %r12
    leaq 104(%rbp), %r13
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
    movq 248(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 248(%rbp), %rax
    movq 424(%rbp), %rdi
    movq 416(%rbp), %rsi
    movdqu 400(%rbp), %xmm6
    movdqu 384(%rbp), %xmm7
    movdqu 368(%rbp), %xmm8
    movdqu 352(%rbp), %xmm9
    movdqu 336(%rbp), %xmm10
    movdqu 320(%rbp), %xmm11
    movdqu 304(%rbp), %xmm12
    movdqu 288(%rbp), %xmm13
    movdqu 272(%rbp), %xmm14
    movdqu 256(%rbp), %xmm15
    movq 240(%rbp), %rbx
    movq 232(%rbp), %r12
    movq 224(%rbp), %r13
    movq 216(%rbp), %r14
    movq 208(%rbp), %r15
    leaq 432(%rbp), %rsp
    popq %rbp
    ret
.L55_11:
.L55_10:
    leaq .Ltext_195(%rip), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    leaq 64(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_12native_class
    addq $32, %rsp
    leaq 64(%rbp), %r12
    movq $32, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L55_13
    jmp .L55_12
.L55_13:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq 176(%rbp), %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq .Ltext_106(%rip), %rbx
    leaq 48(%rbp), %r10
    movq %rbx, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L55_37
    jmp .L55_38
.L55_38:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L55_37:
    jmp .L55_40
.L55_39:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L55_40:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movq %r14, %rsi
    movq 248(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 248(%rbp), %rax
    movq 424(%rbp), %rdi
    movq 416(%rbp), %rsi
    movdqu 400(%rbp), %xmm6
    movdqu 384(%rbp), %xmm7
    movdqu 368(%rbp), %xmm8
    movdqu 352(%rbp), %xmm9
    movdqu 336(%rbp), %xmm10
    movdqu 320(%rbp), %xmm11
    movdqu 304(%rbp), %xmm12
    movdqu 288(%rbp), %xmm13
    movdqu 272(%rbp), %xmm14
    movdqu 256(%rbp), %xmm15
    movq 240(%rbp), %rbx
    movq 232(%rbp), %r12
    movq 224(%rbp), %r13
    movq 216(%rbp), %r14
    movq 208(%rbp), %r15
    leaq 432(%rbp), %rsp
    popq %rbp
    ret
.L55_14:
.L55_12:
    movq %r12, %r10
    movq (%r10), %rbx
    leaq .Ltext_196(%rip), %r14
    leaq 48(%rbp), %r10
    movq %r14, (%r10)
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L55_41
    jmp .L55_42
.L55_42:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L55_41:
    jmp .L55_44
.L55_43:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L55_44:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movq %rax, %r12
    leaq 32(%rbp), %r10
    movq %r12, (%r10)
    testq %r12, %r12
    jne .L55_45
    jmp .L55_46
.L55_45:
    jmp .L55_47
.L55_46:
    leaq .Ltext_39(%rip), %rbx
    leaq 16(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
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
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L55_47:
    jmp .L55_49
.L55_48:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L55_49:
    leaq .Ltext_197(%rip), %rbx
    leaq 48(%rbp), %r10
    movq %rbx, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    testq %rax, %rax
    jne .L55_50
    jmp .L55_51
.L55_51:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L55_50:
    jmp .L55_53
.L55_52:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L55_53:
    leaq .Ltext_134(%rip), %r14
    leaq 48(%rbp), %r10
    movq %r14, (%r10)
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L55_54
    jmp .L55_55
.L55_55:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L55_54:
    jmp .L55_57
.L55_56:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L55_57:
    leaq NSApplicationDidFinishLaunchingNotification(%rip), %r15
    movq %r15, %r10
    movq (%r10), %r15
    leaq 160(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 8(%rbp), %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq %r14, %rax
    movq %rax, 24(%rsp)
    movq %r15, %rax
    movq %rax, 32(%rsp)
    movq %rbx, %rax
    movq %rax, 40(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call objc_msgSend
    addq $48, %rsp
    leaq .Ltext_198(%rip), %r15
    leaq 48(%rbp), %r10
    movq %r15, (%r10)
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r15
    testq %r15, %r15
    jne .L55_58
    jmp .L55_59
.L55_59:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L55_58:
    jmp .L55_61
.L55_60:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L55_61:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    leaq .Ltext_199(%rip), %r14
    leaq 48(%rbp), %r10
    movq %r14, (%r10)
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L55_62
    jmp .L55_63
.L55_63:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L55_62:
    jmp .L55_65
.L55_64:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L55_65:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call objc_msgSend
    addq $32, %rsp
    leaq .Ltext_106(%rip), %rbx
    leaq 48(%rbp), %r10
    movq %rbx, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L55_66
    jmp .L55_67
.L55_67:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L55_66:
    jmp .L55_69
.L55_68:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L55_69:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    leaq 176(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq 248(%rbp), %rdi
    movq $32, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 248(%rbp), %rax
    movq 424(%rbp), %rdi
    movq 416(%rbp), %rsi
    movdqu 400(%rbp), %xmm6
    movdqu 384(%rbp), %xmm7
    movdqu 368(%rbp), %xmm8
    movdqu 352(%rbp), %xmm9
    movdqu 336(%rbp), %xmm10
    movdqu 320(%rbp), %xmm11
    movdqu 304(%rbp), %xmm12
    movdqu 288(%rbp), %xmm13
    movdqu 272(%rbp), %xmm14
    movdqu 256(%rbp), %xmm15
    movq 240(%rbp), %rbx
    movq 232(%rbp), %r12
    movq 224(%rbp), %r13
    movq 216(%rbp), %r14
    movq 208(%rbp), %r15
    leaq 432(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_window_15launch_callback
lb_window_15launch_callback:
    .seh_proc lb_window_15launch_callback
    pushq %rbp
    .seh_pushreg %rbp
    subq $336, %rsp
    .seh_stackalloc 336
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 152(%rbp)
    .seh_savereg %rbx, 152
    movq %r12, 144(%rbp)
    .seh_savereg %r12, 144
    movq %r13, 136(%rbp)
    .seh_savereg %r13, 136
    movq %r14, 128(%rbp)
    .seh_savereg %r14, 128
    .seh_endprologue
    movq %rcx, 352(%rbp)
    movq %rdx, 360(%rbp)
    movq %r8, 368(%rbp)
    movq %r9, 376(%rbp)
    movq 352(%rbp), %rax
    movq %rax, 112(%rbp)
    movq 360(%rbp), %rax
    movq %rax, 96(%rbp)
    movq 368(%rbp), %rax
    movq %rax, 80(%rbp)
    leaq 112(%rbp), %rbx
    leaq 96(%rbp), %rbx
    leaq 80(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq .Ltext_200(%rip), %r12
    leaq 32(%rbp), %r10
    movq %r12, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L56_4
    jmp .L56_5
.L56_5:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L56_4:
    jmp .L56_7
.L56_6:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L56_7:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movq %rax, %r13
    leaq 16(%rbp), %r10
    movq %r13, (%r10)
    testq %r13, %r13
    jne .L56_8
    jmp .L56_9
.L56_8:
    jmp .L56_10
.L56_9:
    leaq .Ltext_39(%rip), %rbx
    leaq 0(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
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
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L56_10:
    jmp .L56_12
.L56_11:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L56_12:
    leaq .Ltext_201(%rip), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_getClass
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L56_1
    jmp .L56_2
.L56_1:
    jmp .L56_3
.L56_2:
    leaq .Ltext_202(%rip), %rbx
    leaq 64(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $27, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_203(%rip), %rbx
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
    leaq .Ltext_203(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L56_3:
    leaq .Ltext_204(%rip), %r12
    leaq 32(%rbp), %r10
    movq %r12, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L56_13
    jmp .L56_14
.L56_14:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L56_13:
    jmp .L56_16
.L56_15:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L56_16:
    leaq 48(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %rax, %xmm12
    subq $112, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $15, %rax
    movq %rax, 16(%rsp)
    movq %r14, %r10
    leaq 96(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 96(%rsp), %rax
    movq %rax, 24(%rsp)
    movq $0, %rax
    movq %rax, 32(%rsp)
    movapd %xmm12, %xmm0
    movq %xmm0, %rax
    movq %rax, 40(%rsp)
    movq $0, %rax
    movq %rax, 48(%rsp)
    movq $0, %rax
    movq %rax, 56(%rsp)
    movl $0, %eax
    movq %rax, 64(%rsp)
    movq $0, %rax
    movq %rax, 72(%rsp)
    movq $0, %rax
    movq %rax, 80(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call objc_msgSend
    addq $112, %rsp
    movq %rax, %r14
    leaq 16(%rbp), %r10
    movq %r14, (%r10)
    testq %r14, %r14
    jne .L56_17
    jmp .L56_18
.L56_17:
    jmp .L56_19
.L56_18:
    leaq .Ltext_39(%rip), %rbx
    leaq 0(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
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
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L56_19:
    jmp .L56_21
.L56_20:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L56_21:
    leaq .Ltext_205(%rip), %rbx
    leaq 32(%rbp), %r10
    movq %rbx, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L56_22
    jmp .L56_23
.L56_23:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L56_22:
    jmp .L56_25
.L56_24:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L56_25:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    movl $1, %eax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call objc_msgSend
    addq $32, %rsp
    leaq .Ltext_206(%rip), %r12
    leaq 32(%rbp), %r10
    movq %r12, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L56_26
    jmp .L56_27
.L56_27:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L56_26:
    jmp .L56_29
.L56_28:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L56_29:
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
    call objc_msgSend
    addq $32, %rsp
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
    movq 152(%rbp), %rbx
    movq 144(%rbp), %r12
    movq 136(%rbp), %r13
    movq 128(%rbp), %r14
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_window_8mac_show
lb_window_8mac_show:
    .seh_proc lb_window_8mac_show
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
    movq 288(%rbp), %rax
    movq %rax, 48(%rbp)
    subq $32, %rsp
    call objc_autoreleasePoolPush
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L57_1
    jmp .L57_2
.L57_2:
    leaq .Ltext_207(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L57_1:
    leaq lb_window_application(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 32(%rbp), %r10
    movq %r12, (%r10)
    testq %r12, %r12
    jne .L57_3
    jmp .L57_4
.L57_3:
    jmp .L57_5
.L57_4:
    leaq .Ltext_39(%rip), %rbx
    leaq 16(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
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
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L57_5:
    jmp .L57_7
.L57_6:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L57_7:
    leaq .Ltext_208(%rip), %r13
    leaq 0(%rbp), %r10
    movq %r13, (%r10)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L57_8
    jmp .L57_9
.L57_9:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L57_8:
    jmp .L57_11
.L57_10:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L57_11:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movl $1, %eax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call objc_msgSend
    addq $32, %rsp
    leaq 48(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %r10
    movq (%r10), %r14
    leaq 32(%rbp), %r10
    movq %r14, (%r10)
    testq %r14, %r14
    jne .L57_12
    jmp .L57_13
.L57_12:
    jmp .L57_14
.L57_13:
    leaq .Ltext_39(%rip), %rbx
    leaq 16(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
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
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L57_14:
    jmp .L57_16
.L57_15:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L57_16:
    leaq .Ltext_209(%rip), %r12
    leaq 0(%rbp), %r10
    movq %r12, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L57_17
    jmp .L57_18
.L57_18:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L57_17:
    jmp .L57_20
.L57_19:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L57_20:
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call objc_msgSend
    addq $32, %rsp
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
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

    .p2align 4
    .globl lb_window_8mac_size
lb_window_8mac_size:
    .seh_proc lb_window_8mac_size
    pushq %rbp
    .seh_pushreg %rbp
    subq $592, %rsp
    .seh_stackalloc 592
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 408(%rbp)
    movq %rdi, 584(%rbp)
    .seh_savereg %rdi, 584
    movq %rsi, 576(%rbp)
    .seh_savereg %rsi, 576
    movdqu %xmm6, 560(%rbp)
    .seh_savexmm %xmm6, 560
    movdqu %xmm7, 544(%rbp)
    .seh_savexmm %xmm7, 544
    movdqu %xmm8, 528(%rbp)
    .seh_savexmm %xmm8, 528
    movdqu %xmm9, 512(%rbp)
    .seh_savexmm %xmm9, 512
    movdqu %xmm10, 496(%rbp)
    .seh_savexmm %xmm10, 496
    movdqu %xmm11, 480(%rbp)
    .seh_savexmm %xmm11, 480
    movdqu %xmm12, 464(%rbp)
    .seh_savexmm %xmm12, 464
    movdqu %xmm13, 448(%rbp)
    .seh_savexmm %xmm13, 448
    movdqu %xmm14, 432(%rbp)
    .seh_savexmm %xmm14, 432
    movdqu %xmm15, 416(%rbp)
    .seh_savexmm %xmm15, 416
    movq %rbx, 400(%rbp)
    .seh_savereg %rbx, 400
    movq %r12, 392(%rbp)
    .seh_savereg %r12, 392
    movq %r13, 384(%rbp)
    .seh_savereg %r13, 384
    movq %r14, 376(%rbp)
    .seh_savereg %r14, 376
    movq %r15, 368(%rbp)
    .seh_savereg %r15, 368
    .seh_endprologue
    movq %rcx, 608(%rbp)
    movq %rdx, 616(%rbp)
    movq %r8, 624(%rbp)
    movq %r9, 632(%rbp)
    movq 616(%rbp), %rax
    movq %rax, 312(%rbp)
    subq $32, %rsp
    call objc_autoreleasePoolPush
    addq $32, %rsp
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    testq %rax, %rax
    jne .L58_1
    jmp .L58_2
.L58_2:
    leaq .Ltext_210(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L58_1:
    leaq 312(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 88(%rbp)
    movq 88(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq 128(%rbp), %r10
    movq %r13, (%r10)
    testq %r13, %r13
    jne .L58_4
    jmp .L58_5
.L58_4:
    jmp .L58_6
.L58_5:
    leaq .Ltext_39(%rip), %rbx
    leaq 112(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
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
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L58_6:
    jmp .L58_8
.L58_7:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L58_8:
    leaq 280(%rbp), %r15
    leaq .Ltext_62(%rip), %r14
    leaq 96(%rbp), %r10
    movq %r14, (%r10)
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L58_9
    jmp .L58_10
.L58_10:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L58_9:
    jmp .L58_12
.L58_11:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L58_12:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %r14, %rax
    movq %rax, 16(%rsp)
    leaq 248(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call objc_msgSend
    addq $32, %rsp
    leaq 248(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 216(%rbp), %r12
    leaq .Ltext_211(%rip), %rbx
    leaq 96(%rbp), %r10
    movq %rbx, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L58_13
    jmp .L58_14
.L58_14:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L58_13:
    jmp .L58_16
.L58_15:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L58_16:
    subq $64, %rsp
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq %r15, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 24(%rsp)
    leaq 184(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call objc_msgSend
    addq $64, %rsp
    leaq 184(%rbp), %rax
    movq %rax, 80(%rbp)
    movq 80(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq 144(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    movq $16, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %r10
    movsd (%r10), %xmm12
    movq %r14, %r10
    movsd %xmm12, (%r10)
    movq 72(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 64(%rbp)
    movq 64(%rbp), %r10
    movsd (%r10), %xmm12
    movq $8, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, 56(%rbp)
    movq 56(%rbp), %r10
    movsd %xmm12, (%r10)
    movq $16, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 48(%rbp)
    movq 48(%rbp), %r10
    movsd (%r10), %xmm12
    movq $16, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, 40(%rbp)
    movq 40(%rbp), %r10
    movsd %xmm12, (%r10)
    movq 48(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    movq 32(%rbp), %r10
    movsd (%r10), %xmm12
    movq $24, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, 24(%rbp)
    movq 24(%rbp), %r10
    movsd %xmm12, (%r10)
    movq 88(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    leaq 128(%rbp), %r10
    movq %rax, (%r10)
    movq 16(%rbp), %rax
    testq %rax, %rax
    jne .L58_17
    jmp .L58_18
.L58_17:
    jmp .L58_19
.L58_18:
    leaq .Ltext_39(%rip), %rbx
    leaq 112(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
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
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L58_19:
    jmp .L58_21
.L58_20:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L58_21:
    leaq .Ltext_212(%rip), %rbx
    leaq 96(%rbp), %r10
    movq %rbx, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L58_22
    jmp .L58_23
.L58_23:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L58_22:
    jmp .L58_25
.L58_24:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L58_25:
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movapd %xmm0, %xmm12
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movsd %xmm12, (%r10)
    leaq 328(%rbp), %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    movq %r12, %rsi
    movq 408(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 408(%rbp), %rax
    movq 584(%rbp), %rdi
    movq 576(%rbp), %rsi
    movdqu 560(%rbp), %xmm6
    movdqu 544(%rbp), %xmm7
    movdqu 528(%rbp), %xmm8
    movdqu 512(%rbp), %xmm9
    movdqu 496(%rbp), %xmm10
    movdqu 480(%rbp), %xmm11
    movdqu 464(%rbp), %xmm12
    movdqu 448(%rbp), %xmm13
    movdqu 432(%rbp), %xmm14
    movdqu 416(%rbp), %xmm15
    movq 400(%rbp), %rbx
    movq 392(%rbp), %r12
    movq 384(%rbp), %r13
    movq 376(%rbp), %r14
    movq 368(%rbp), %r15
    leaq 592(%rbp), %rsp
    popq %rbp
    ret
.L58_3:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
    leaq .Ltext_213(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_window_10mac_resize
lb_window_10mac_resize:
    .seh_proc lb_window_10mac_resize
    pushq %rbp
    .seh_pushreg %rbp
    subq $336, %rsp
    .seh_stackalloc 336
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 152(%rbp)
    .seh_savereg %rbx, 152
    movq %r12, 144(%rbp)
    .seh_savereg %r12, 144
    movq %r13, 136(%rbp)
    .seh_savereg %r13, 136
    movq %r14, 128(%rbp)
    .seh_savereg %r14, 128
    movq %r15, 120(%rbp)
    .seh_savereg %r15, 120
    .seh_endprologue
    movq %rcx, 352(%rbp)
    movq %rdx, 360(%rbp)
    movq %r8, 368(%rbp)
    movq %r9, 376(%rbp)
    movq 352(%rbp), %rax
    movq %rax, 104(%rbp)
    movq 360(%rbp), %rax
    movl %eax, 88(%rbp)
    movq 368(%rbp), %rax
    movl %eax, 72(%rbp)
    subq $32, %rsp
    call objc_autoreleasePoolPush
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L59_1
    jmp .L59_2
.L59_2:
    leaq .Ltext_214(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L59_1:
    leaq 104(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq 40(%rbp), %r10
    movq %r12, (%r10)
    testq %r12, %r12
    jne .L59_3
    jmp .L59_4
.L59_3:
    jmp .L59_5
.L59_4:
    leaq .Ltext_39(%rip), %rbx
    leaq 24(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
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
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L59_5:
    jmp .L59_7
.L59_6:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L59_7:
    leaq .Ltext_215(%rip), %r13
    leaq 8(%rbp), %r10
    movq %r13, (%r10)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L59_8
    jmp .L59_9
.L59_9:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L59_8:
    jmp .L59_11
.L59_10:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L59_11:
    leaq 56(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq 88(%rbp), %r15
    movq %r15, %r10
    movl (%r10), %r15d
    movl %r15d, %r15d
    movq %r15, %rcx
    testq %rcx, %rcx
    js 1f
    cvtsi2sdq %rcx, %xmm8
    jmp 2f
1:
    movq %rcx, %rax
    shrq $1, %rax
    andl $1, %ecx
    orq %rcx, %rax
    cvtsi2sdq %rax, %xmm8
    addsd %xmm8, %xmm8
2:
    movapd %xmm8, %xmm12
    movq %r14, %r10
    movsd %xmm12, (%r10)
    leaq 72(%rbp), %r15
    movq %r15, %r10
    movl (%r10), %r15d
    movl %r15d, %r15d
    movq %r15, %rcx
    testq %rcx, %rcx
    js 1f
    cvtsi2sdq %rcx, %xmm8
    jmp 2f
1:
    movq %rcx, %rax
    shrq $1, %rax
    andl $1, %ecx
    orq %rcx, %rax
    cvtsi2sdq %rax, %xmm8
    addsd %xmm8, %xmm8
2:
    movapd %xmm8, %xmm12
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movsd %xmm12, (%r10)
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq %r14, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call objc_msgSend
    addq $48, %rsp
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
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
    movq 152(%rbp), %rbx
    movq 144(%rbp), %r12
    movq 136(%rbp), %r13
    movq 128(%rbp), %r14
    movq 120(%rbp), %r15
    leaq 336(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_window_8mac_pump
lb_window_8mac_pump:
    .seh_proc lb_window_8mac_pump
    pushq %rbp
    .seh_pushreg %rbp
    subq $368, %rsp
    .seh_stackalloc 368
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 184(%rbp)
    .seh_savereg %rbx, 184
    movq %r12, 176(%rbp)
    .seh_savereg %r12, 176
    movq %r13, 168(%rbp)
    .seh_savereg %r13, 168
    movq %r14, 160(%rbp)
    .seh_savereg %r14, 160
    movq %r15, 152(%rbp)
    .seh_savereg %r15, 152
    .seh_endprologue
    movq %rcx, 384(%rbp)
    movq %rdx, 392(%rbp)
    movq %r8, 400(%rbp)
    movq %r9, 408(%rbp)
    movq 384(%rbp), %rax
    movq %rax, 136(%rbp)
    leaq lb_window_application(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %rax
    testq %rax, %rax
    jne .L60_1
    jmp .L60_2
.L60_1:
    jmp .L60_3
.L60_2:
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
    movq 184(%rbp), %rbx
    movq 176(%rbp), %r12
    movq 168(%rbp), %r13
    movq 160(%rbp), %r14
    movq 152(%rbp), %r15
    leaq 368(%rbp), %rsp
    popq %rbp
    ret
.L60_4:
.L60_3:
    subq $32, %rsp
    call objc_autoreleasePoolPush
    addq $32, %rsp
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    testq %rax, %rax
    jne .L60_5
    jmp .L60_6
.L60_6:
    leaq .Ltext_216(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L60_5:
    leaq .Ltext_217(%rip), %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_getClass
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L60_7
    jmp .L60_8
.L60_7:
    jmp .L60_9
.L60_8:
    leaq .Ltext_218(%rip), %rbx
    leaq 120(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $26, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_219(%rip), %rbx
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
    leaq .Ltext_219(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L60_9:
    leaq .Ltext_220(%rip), %r14
    leaq 104(%rbp), %r10
    movq %r14, (%r10)
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L60_25
    jmp .L60_26
.L60_26:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L60_25:
    jmp .L60_28
.L60_27:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L60_28:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    movq %rax, 64(%rbp)
    movq 64(%rbp), %rax
    leaq 88(%rbp), %r10
    movq %rax, (%r10)
    movq 64(%rbp), %rax
    testq %rax, %rax
    jne .L60_29
    jmp .L60_30
.L60_29:
    jmp .L60_31
.L60_30:
    leaq .Ltext_39(%rip), %rbx
    leaq 72(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
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
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L60_31:
    jmp .L60_33
.L60_32:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L60_33:
    leaq .Ltext_221(%rip), %rax
    movq %rax, 56(%rbp)
    leaq NSDefaultRunLoopMode(%rip), %rax
    movq %rax, 48(%rbp)
    leaq .Ltext_222(%rip), %rax
    movq %rax, 40(%rbp)
    leaq 136(%rbp), %rax
    movq %rax, 24(%rbp)
    movq $0, %rax
    movq %rax, %r12
.L60_10:
    movq $256, %rcx
    cmpq %rcx, %r12
    jae .L60_12
.L60_11:
    movq 56(%rbp), %rax
    leaq 104(%rbp), %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq 56(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L60_34
    jmp .L60_35
.L60_35:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L60_34:
    jmp .L60_37
.L60_36:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L60_37:
    movq 48(%rbp), %r10
    movq (%r10), %r13
    subq $48, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq $-1, %rax
    movq %rax, 16(%rsp)
    movq 64(%rbp), %rax
    movq %rax, 24(%rsp)
    movq %r13, %rax
    movq %rax, 32(%rsp)
    movl $1, %eax
    movq %rax, 40(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call objc_msgSend
    addq $48, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L60_13
    jmp .L60_14
.L60_13:
    jmp .L60_15
.L60_14:
    jmp .L60_12
.L60_16:
.L60_15:
    movq 40(%rbp), %rax
    leaq 104(%rbp), %r10
    movq %rax, (%r10)
    subq $32, %rsp
    movq 40(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L60_38
    jmp .L60_39
.L60_39:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L60_38:
    jmp .L60_41
.L60_40:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L60_41:
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call objc_msgSend
    addq $32, %rsp
    movq $1, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 32(%rbp)
    movq 24(%rbp), %r10
    movq (%r10), %r15
    movq $14368, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    seta %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L60_46
    jmp .L60_20
.L60_46:
    movl %r14d, %ebx
    jmp .L60_21
.L60_20:
    movq $14377, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
.L60_21:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L60_47
    jmp .L60_22
.L60_47:
    movl %r12d, %ebx
    jmp .L60_23
.L60_22:
    movq $14376, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
.L60_23:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L60_17
    jmp .L60_18
.L60_17:
    jmp .L60_12
.L60_24:
    jmp .L60_19
.L60_18:
.L60_19:
    movq 32(%rbp), %rax
    movq %rax, %r12
    jmp .L60_10
.L60_12:
    leaq .Ltext_224(%rip), %rbx
    leaq 104(%rbp), %r10
    movq %rbx, (%r10)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L60_42
    jmp .L60_43
.L60_43:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L60_42:
    jmp .L60_45
.L60_44:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L60_45:
    subq $32, %rsp
    movq 16(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
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
    movq 184(%rbp), %rbx
    movq 176(%rbp), %r12
    movq 168(%rbp), %r13
    movq 160(%rbp), %r14
    movq 152(%rbp), %r15
    leaq 368(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_window_11mac_destroy
lb_window_11mac_destroy:
    .seh_proc lb_window_11mac_destroy
    pushq %rbp
    .seh_pushreg %rbp
    subq $352, %rsp
    .seh_stackalloc 352
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
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
    movq %rbx, 168(%rbp)
    .seh_savereg %rbx, 168
    movq %r12, 160(%rbp)
    .seh_savereg %r12, 160
    movq %r13, 152(%rbp)
    .seh_savereg %r13, 152
    movq %r14, 144(%rbp)
    .seh_savereg %r14, 144
    movq %r15, 136(%rbp)
    .seh_savereg %r15, 136
    .seh_endprologue
    movq %rcx, 368(%rbp)
    movq %rdx, 376(%rbp)
    movq %r8, 384(%rbp)
    movq %r9, 392(%rbp)
    movq 368(%rbp), %rax
    movq %rax, 120(%rbp)
    subq $32, %rsp
    call objc_autoreleasePoolPush
    addq $32, %rsp
    movq %rax, 8(%rbp)
    movq 8(%rbp), %rax
    testq %rax, %rax
    jne .L61_1
    jmp .L61_2
.L61_2:
    leaq .Ltext_225(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L61_1:
    leaq 120(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $14379, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_16mac_clear_marked
    addq $32, %rsp
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L61_6
    jmp .L61_4
.L61_6:
.L61_3:
    leaq 104(%rbp), %r10
    movq %r14, (%r10)
    movq $0, %rax
    leaq 88(%rbp), %r10
    movq %rax, (%r10)
.L61_19:
    leaq .Ltext_41(%rip), %r15
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
    call object_setInstanceVariable
    addq $32, %rsp
    movq %rax, %r14
.L61_20:
.L61_22:
    jmp .L61_5
.L61_4:
.L61_5:
    movq $16, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, 16(%rbp)
    movq 16(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L61_10
    jmp .L61_8
.L61_10:
.L61_7:
    leaq 104(%rbp), %r10
    movq %r15, (%r10)
    movq $0, %rax
    leaq 88(%rbp), %r10
    movq %rax, (%r10)
.L61_24:
    leaq .Ltext_41(%rip), %rbx
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
    call object_setInstanceVariable
    addq $32, %rsp
    movq %rax, %rbx
.L61_25:
.L61_27:
    jmp .L61_9
.L61_8:
.L61_9:
    movq %r12, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L61_14
    jmp .L61_12
.L61_14:
.L61_11:
    leaq .Ltext_182(%rip), %r15
    leaq 72(%rbp), %r10
    movq %r15, (%r10)
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r15
    testq %r15, %r15
    jne .L61_28
    jmp .L61_29
.L61_29:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L61_28:
.L61_31:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call objc_msgSend
    addq $32, %rsp
    leaq .Ltext_226(%rip), %r14
    leaq 72(%rbp), %r10
    movq %r14, (%r10)
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L61_32
    jmp .L61_33
.L61_33:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L61_32:
.L61_35:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call objc_msgSend
    addq $32, %rsp
    leaq .Ltext_227(%rip), %r15
    leaq 72(%rbp), %r10
    movq %r15, (%r10)
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r15
    testq %r15, %r15
    jne .L61_36
    jmp .L61_37
.L61_37:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L61_36:
.L61_39:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    jmp .L61_13
.L61_12:
.L61_13:
    movq $14378, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L61_16
.L61_15:
    leaq 56(%rbp), %r10
    movq %r12, (%r10)
    subq $32, %rsp
    call objc_autoreleasePoolPush
    addq $32, %rsp
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L61_40
    jmp .L61_41
.L61_41:
    leaq .Ltext_228(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L61_40:
    movq %r12, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L61_45
    jmp .L61_43
.L61_45:
.L61_42:
    leaq .Ltext_106(%rip), %r15
    leaq 24(%rbp), %r10
    movq %r15, (%r10)
    subq $32, %rsp
    movq %r15, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r15
    testq %r15, %r15
    jne .L61_56
    jmp .L61_57
.L61_57:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L61_56:
.L61_59:
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r15, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    jmp .L61_44
.L61_43:
.L61_44:
    movq %r13, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L61_49
    jmp .L61_47
.L61_49:
.L61_46:
    leaq .Ltext_106(%rip), %r13
    leaq 24(%rbp), %r10
    movq %r13, (%r10)
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r13
    testq %r13, %r13
    jne .L61_60
    jmp .L61_61
.L61_61:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L61_60:
.L61_63:
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    jmp .L61_48
.L61_47:
.L61_48:
    movq 16(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L61_53
    jmp .L61_51
.L61_53:
.L61_50:
    leaq .Ltext_106(%rip), %r14
    leaq 24(%rbp), %r10
    movq %r14, (%r10)
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call sel_registerName
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L61_64
    jmp .L61_65
.L61_65:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L61_64:
.L61_67:
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq %r14, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call objc_msgSend
    addq $32, %rsp
    jmp .L61_52
.L61_51:
.L61_52:
    leaq lb_memory_heap(%rip), %r13
    leaq 40(%rbp), %r14
    movq %r14, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq $14432, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq (%r10), %r15
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L61_55
    jmp .L61_54
.L61_55:
    movq $16, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $48, %rsp
    movq %r15, %rax
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
.L61_54:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
.L61_68:
    jmp .L61_17
.L61_16:
.L61_17:
    subq $32, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call objc_autoreleasePoolPop
    addq $32, %rsp
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
    movq 168(%rbp), %rbx
    movq 160(%rbp), %r12
    movq 152(%rbp), %r13
    movq 144(%rbp), %r14
    movq 136(%rbp), %r15
    leaq 352(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_window_8win_open
lb_window_8win_open:
    .seh_proc lb_window_8win_open
    pushq %rbp
    .seh_pushreg %rbp
    movq $15472, %rax
    call ___chkstk_ms
    subq $15472, %rsp
    .seh_stackalloc 15472
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 15288(%rbp)
    movq %rdi, 15464(%rbp)
    .seh_savereg %rdi, 15464
    movq %rsi, 15456(%rbp)
    .seh_savereg %rsi, 15456
    movdqu %xmm6, 15440(%rbp)
    .seh_savexmm %xmm6, 15440
    movdqu %xmm7, 15424(%rbp)
    .seh_savexmm %xmm7, 15424
    movdqu %xmm8, 15408(%rbp)
    .seh_savexmm %xmm8, 15408
    movdqu %xmm9, 15392(%rbp)
    .seh_savexmm %xmm9, 15392
    movdqu %xmm10, 15376(%rbp)
    .seh_savexmm %xmm10, 15376
    movdqu %xmm11, 15360(%rbp)
    .seh_savexmm %xmm11, 15360
    movdqu %xmm12, 15344(%rbp)
    .seh_savexmm %xmm12, 15344
    movdqu %xmm13, 15328(%rbp)
    .seh_savexmm %xmm13, 15328
    movdqu %xmm14, 15312(%rbp)
    .seh_savexmm %xmm14, 15312
    movdqu %xmm15, 15296(%rbp)
    .seh_savexmm %xmm15, 15296
    movq %rbx, 15280(%rbp)
    .seh_savereg %rbx, 15280
    movq %r12, 15272(%rbp)
    .seh_savereg %r12, 15272
    movq %r13, 15264(%rbp)
    .seh_savereg %r13, 15264
    movq %r14, 15256(%rbp)
    .seh_savereg %r14, 15256
    movq %r15, 15248(%rbp)
    .seh_savereg %r15, 15248
    .seh_endprologue
    movq %rcx, 15488(%rbp)
    movq %rdx, 15496(%rbp)
    movq %r8, 15504(%rbp)
    movq %r9, 15512(%rbp)
    movq 15496(%rbp), %r10
    leaq 15176(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq lb_window_14win_class_atom(%rip), %rax
    movq %rax, 56(%rbp)
    movq 56(%rbp), %r10
    movzwl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L62_61
.L62_60:
    leaq 328(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 15144(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L62_70
.L62_61:
.L62_62:
    subq $32, %rsp
    movq $-4, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call SetProcessDpiAwarenessContext
    addq $32, %rsp
    movl %eax, %r12d
    leaq 248(%rbp), %r14
    leaq 168(%rbp), %r15
    movq %r15, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movl $80, %eax
    movq %r15, %r10
    movl %eax, (%r10)
    leaq lb_window_12win_callback(%rip), %r12
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    subq $32, %rsp
    movq $0, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GetModuleHandleW
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L62_64
    jmp .L62_65
.L62_65:
    leaq .Ltext_229(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L62_64:
    movq $24, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    subq $32, %rsp
    movq $0, %rax
    movq %rax, 0(%rsp)
    movq $32512, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call LoadCursorW
    addq $32, %rsp
    movq %rax, %r13
    movq $40, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r13, (%r10)
    movq $48, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq $6, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq lb_window_14win_class_name(%rip), %rbx
    movq $64, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq %r15, %r10
    movq %r14, %r11
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
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call RegisterClassExW
    addq $32, %rsp
    movl %eax, %ebx
    movq 56(%rbp), %r10
    movw %bx, (%r10)
    movq 56(%rbp), %r10
    movzwl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L62_67
.L62_66:
    leaq 328(%rbp), %rbx
    leaq lb_window_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_230(%rip), %r12
    leaq 152(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $47, %rax
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
    leaq 15144(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L62_70
.L62_67:
.L62_68:
    leaq 328(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq 15144(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L62_70:
    leaq 15144(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L62_2
    jmp .L62_1
.L62_2:
    leaq 15208(%rbp), %rbx
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
    movq 15288(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 15288(%rbp), %rax
    movq 15464(%rbp), %rdi
    movq 15456(%rbp), %rsi
    movdqu 15440(%rbp), %xmm6
    movdqu 15424(%rbp), %xmm7
    movdqu 15408(%rbp), %xmm8
    movdqu 15392(%rbp), %xmm9
    movdqu 15376(%rbp), %xmm10
    movdqu 15360(%rbp), %xmm11
    movdqu 15344(%rbp), %xmm12
    movdqu 15328(%rbp), %xmm13
    movdqu 15312(%rbp), %xmm14
    movdqu 15296(%rbp), %xmm15
    movq 15280(%rbp), %rbx
    movq 15272(%rbp), %r12
    movq 15264(%rbp), %r13
    movq 15256(%rbp), %r14
    movq 15248(%rbp), %r15
    leaq 15472(%rbp), %rsp
    popq %rbp
    ret
.L62_1:
    leaq lb_memory_heap(%rip), %rbx
    leaq 15128(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq 15088(%rbp), %r13
    movq %r12, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L62_4
    jmp .L62_5
.L62_5:
    leaq .Ltext_231(%rip), %rdi
    leaq .Ltext_162(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L62_4:
    movq %r12, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq $14432, %rax
    movq %rax, 16(%rsp)
    movq $8, %rax
    movq %rax, 24(%rsp)
    leaq 15064(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r14, %r11
    call *%r11
    addq $32, %rsp
    leaq 15064(%rbp), %r15
    movq $16, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L62_6
    jmp .L62_7
.L62_7:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_164(%rip), %r12
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
    jmp .L62_8
.L62_6:
    movq %r15, %r10
    movq (%r10), %rbx
    leaq 632(%rbp), %r12
    movq %r12, %rdi
    xorl %esi, %esi
    movq $14432, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memset
    addq $32, %rsp
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $14432, %rdx
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
.L62_8:
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L62_10
    jmp .L62_9
.L62_10:
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    leaq 15208(%rbp), %r12
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
    movq 15288(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 15288(%rbp), %rax
    movq 15464(%rbp), %rdi
    movq 15456(%rbp), %rsi
    movdqu 15440(%rbp), %xmm6
    movdqu 15424(%rbp), %xmm7
    movdqu 15408(%rbp), %xmm8
    movdqu 15392(%rbp), %xmm9
    movdqu 15376(%rbp), %xmm10
    movdqu 15360(%rbp), %xmm11
    movdqu 15344(%rbp), %xmm12
    movdqu 15328(%rbp), %xmm13
    movdqu 15312(%rbp), %xmm14
    movdqu 15296(%rbp), %xmm15
    movq 15280(%rbp), %rbx
    movq 15272(%rbp), %r12
    movq 15264(%rbp), %r13
    movq 15256(%rbp), %r14
    movq 15248(%rbp), %r15
    leaq 15472(%rbp), %rsp
    popq %rbp
    ret
.L62_9:
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, 144(%rbp)
    movq 144(%rbp), %rax
    movq $14392, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    subq $32, %rsp
    movl $0, %eax
    movq %rax, 8(%rsp)
    leaq 592(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_10win_cursor
    addq $32, %rsp
    leaq 592(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L62_13
    jmp .L62_12
.L62_13:
    movq $8, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    leaq 15208(%rbp), %r13
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
    subq $32, %rsp
    movq 144(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_11win_destroy
    addq $32, %rsp
    movq %r13, %rsi
    movq 15288(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 15288(%rbp), %rax
    movq 15464(%rbp), %rdi
    movq 15456(%rbp), %rsi
    movdqu 15440(%rbp), %xmm6
    movdqu 15424(%rbp), %xmm7
    movdqu 15408(%rbp), %xmm8
    movdqu 15392(%rbp), %xmm9
    movdqu 15376(%rbp), %xmm10
    movdqu 15360(%rbp), %xmm11
    movdqu 15344(%rbp), %xmm12
    movdqu 15328(%rbp), %xmm13
    movdqu 15312(%rbp), %xmm14
    movdqu 15296(%rbp), %xmm15
    movq 15280(%rbp), %rbx
    movq 15272(%rbp), %r12
    movq 15264(%rbp), %r13
    movq 15256(%rbp), %r14
    movq 15248(%rbp), %r15
    leaq 15472(%rbp), %rsp
    popq %rbp
    ret
.L62_12:
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, 136(%rbp)
    movq 136(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    leaq 576(%rbp), %rax
    movq %rax, 48(%rbp)
    movl _tls_index(%rip), %eax
    movq %gs:88, %r11
    movq (%r11,%rax,8), %rax
    leaq lb_memory_allocator@SECREL32(%rax), %rax
    movq %rax, 40(%rbp)
    leaq 15176(%rbp), %rax
    movq %rax, 128(%rbp)
    movq 128(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, 120(%rbp)
    movq 120(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 112(%rbp)
    movq 112(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_232(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, 32(%rbp)
    leaq 528(%rbp), %rax
    movq %rax, 24(%rbp)
    movq 32(%rbp), %rax
    movabsq $2305843009213693952, %rcx
    cmpq %rcx, %rax
    jbe .L62_16
.L62_15:
    movq 24(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $208273409, %eax
    movq %r12, %r10
    movl %eax, (%r10)
    leaq .Ltext_233(%rip), %r13
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $16, %rcx
    addq %rcx, %r12
    movq $47, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 24(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L62_17
.L62_16:
    movq 32(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    movq 40(%rbp), %r10
    movq (%r10), %r12
    movq 40(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L62_18
    jmp .L62_19
.L62_19:
    leaq .Ltext_232(%rip), %rdi
    leaq .Ltext_162(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L62_18:
    movq %r14, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq %r15, %rax
    movq %rax, 16(%rsp)
    movq $2, %rax
    movq %rax, 24(%rsp)
    leaq 504(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    movq %r13, %r11
    call *%r11
    addq $32, %rsp
    leaq 504(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq $0, %rcx
    cmpq %rcx, %r15
    setne %al
    movzbl %al, %eax
    movl %eax, 104(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl 104(%rbp), %eax
    andl %r13d, %eax
    movl %eax, 96(%rbp)
    movl 96(%rbp), %eax
    testl %eax, %eax
    jne .L62_20
    jmp .L62_21
.L62_20:
    movq 24(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_164(%rip), %r12
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
    movq 24(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L62_17
.L62_21:
    movq %rbx, %r10
    movq (%r10), %r12
    movq 24(%rbp), %r10
    movq %r12, (%r10)
    movq 24(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq 32(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq 24(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
.L62_17:
    movq 24(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L62_23
    jmp .L62_22
.L62_23:
    movq 24(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq 15208(%rbp), %r12
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
    movq 144(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_11win_destroy
    addq $32, %rsp
    movq %r12, %rsi
    movq 15288(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 15288(%rbp), %rax
    movq 15464(%rbp), %rdi
    movq 15456(%rbp), %rsi
    movdqu 15440(%rbp), %xmm6
    movdqu 15424(%rbp), %xmm7
    movdqu 15408(%rbp), %xmm8
    movdqu 15392(%rbp), %xmm9
    movdqu 15376(%rbp), %xmm10
    movdqu 15360(%rbp), %xmm11
    movdqu 15344(%rbp), %xmm12
    movdqu 15328(%rbp), %xmm13
    movdqu 15312(%rbp), %xmm14
    movdqu 15296(%rbp), %xmm15
    movq 15280(%rbp), %rbx
    movq 15272(%rbp), %r12
    movq 15264(%rbp), %r13
    movq 15256(%rbp), %r14
    movq 15248(%rbp), %r15
    leaq 15472(%rbp), %rsp
    popq %rbp
    ret
.L62_22:
    movq 24(%rbp), %r10
    movq 48(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 112(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jbe .L62_26
.L62_25:
    movq 128(%rbp), %r10
    movq (%r10), %rbx
    movq 48(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 88(%rbp)
    movq 48(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movl %r13d, %eax
    movl $1, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_234(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r14d
    subq $48, %rsp
    movl $65001, %eax
    movq %rax, 0(%rsp)
    movl $8, %eax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movl 112(%rbp), %eax
    movq %rax, 24(%rsp)
    movq 88(%rbp), %rax
    movq %rax, 32(%rsp)
    movl %r14d, %eax
    movq %rax, 40(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call MultiByteToWideChar
    addq $48, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L62_29
.L62_28:
    leaq 15208(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    leaq lb_window_15invalid_options(%rip), %r15
    movq %r15, %r10
    movl (%r10), %r15d
    movq %r14, %r10
    movl %r15d, (%r10)
    leaq .Ltext_235(%rip), %r15
    leaq 488(%rbp), %r12
    movq %r12, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq $49, %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    addq %rcx, %r14
    movq %r12, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 472(%rbp), %r12
    movq %r13, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_236(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r14
    movq 88(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq 40(%rbp), %r10
    movq (%r10), %r14
    movq 40(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L62_32
    jmp .L62_31
.L62_32:
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
.L62_31:
    subq $32, %rsp
    movq 144(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_11win_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 15288(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 15288(%rbp), %rax
    movq 15464(%rbp), %rdi
    movq 15456(%rbp), %rsi
    movdqu 15440(%rbp), %xmm6
    movdqu 15424(%rbp), %xmm7
    movdqu 15408(%rbp), %xmm8
    movdqu 15392(%rbp), %xmm9
    movdqu 15376(%rbp), %xmm10
    movdqu 15360(%rbp), %xmm11
    movdqu 15344(%rbp), %xmm12
    movdqu 15328(%rbp), %xmm13
    movdqu 15312(%rbp), %xmm14
    movdqu 15296(%rbp), %xmm15
    movq 15280(%rbp), %rbx
    movq 15272(%rbp), %r12
    movq 15264(%rbp), %r13
    movq 15256(%rbp), %r14
    movq 15248(%rbp), %r15
    leaq 15472(%rbp), %rsp
    popq %rbp
    ret
.L62_29:
.L62_30:
    movl %ebx, %r12d
    jmp .L62_27
.L62_26:
    movl $0, %eax
    movl %eax, %r12d
.L62_27:
    movslq %r12d, %rbx
    movq 48(%rbp), %r10
    movq (%r10), %rax
    movq %rax, 80(%rbp)
    movq 48(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, 72(%rbp)
    movq 72(%rbp), %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_237(%rip), %rdi
    leaq .Ltext_265(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq $2, %rcx
    imulq %rcx, %rbx
    movq 80(%rbp), %rax
    movq %rbx, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movw %ax, (%r10)
    movq 128(%rbp), %rax
    movq $24, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L62_34
    jmp .L62_35
.L62_34:
    movl $13565952, %eax
    movl %eax, 16(%rbp)
    jmp .L62_36
.L62_35:
    movl $13238272, %eax
    movl %eax, 16(%rbp)
.L62_36:
    subq $32, %rsp
    call GetDpiForSystem
    addq $32, %rsp
    movl %eax, 64(%rbp)
    leaq 456(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 440(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq 128(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movl (%r10), %r15d
    movl %r15d, %r15d
    movl 64(%rbp), %eax
    movl %eax, %r13d
    imulq %r13, %r15
.L62_38:
    movq $96, %rcx
    movq %r15, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, %r12
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl %r12d, (%r10)
    movq 128(%rbp), %rax
    movq $20, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movl %r12d, %r12d
    movq %r12, %rcx
    movq %r13, %r12
    imulq %rcx, %r12
.L62_40:
    movq $96, %rcx
    movq %r12, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, %r13
    movq $12, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl %r13d, (%r10)
    movq %rbx, %r10
    movq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    subq $48, %rsp
    movq 8(%rbp), %rax
    movq %rax, 0(%rsp)
    movl 16(%rbp), %eax
    movq %rax, 8(%rsp)
    movl $0, %eax
    movq %rax, 16(%rsp)
    movl $0, %eax
    movq %rax, 24(%rsp)
    movl 64(%rbp), %eax
    movq %rax, 32(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call AdjustWindowRectExForDpi
    addq $48, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L62_42
.L62_41:
    leaq 15208(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_239(%rip), %r13
    leaq 424(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $52, %rax
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
    leaq 408(%rbp), %r12
    movq 72(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_240(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 80(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq 40(%rbp), %r10
    movq (%r10), %r13
    movq 40(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L62_45
    jmp .L62_44
.L62_45:
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
.L62_44:
    subq $32, %rsp
    movq 144(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_11win_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 15288(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 15288(%rbp), %rax
    movq 15464(%rbp), %rdi
    movq 15456(%rbp), %rsi
    movdqu 15440(%rbp), %xmm6
    movdqu 15424(%rbp), %xmm7
    movdqu 15408(%rbp), %xmm8
    movdqu 15392(%rbp), %xmm9
    movdqu 15376(%rbp), %xmm10
    movdqu 15360(%rbp), %xmm11
    movdqu 15344(%rbp), %xmm12
    movdqu 15328(%rbp), %xmm13
    movdqu 15312(%rbp), %xmm14
    movdqu 15296(%rbp), %xmm15
    movq 15280(%rbp), %rbx
    movq 15272(%rbp), %r12
    movq 15264(%rbp), %r13
    movq 15256(%rbp), %r14
    movq 15248(%rbp), %r15
    leaq 15472(%rbp), %rsp
    popq %rbp
    ret
.L62_42:
.L62_43:
    leaq lb_window_14win_class_name(%rip), %rbx
    movq 8(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movq 8(%rbp), %r10
    movslq (%r10), %r13
    movl %r12d, %eax
    movl %r13d, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_241(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r12d
    movq 8(%rbp), %rax
    movq $12, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movslq (%r10), %r13
    movq 8(%rbp), %rax
    movq $4, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movslq (%r10), %r14
    movl %r13d, %eax
    movl %r14d, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_241(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r13d
    subq $32, %rsp
    movq $0, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GetModuleHandleW
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L62_47
    jmp .L62_48
.L62_48:
    leaq .Ltext_241(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L62_47:
    subq $96, %rsp
    movl $0, %eax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 80(%rbp), %rax
    movq %rax, 16(%rsp)
    movl 16(%rbp), %eax
    movq %rax, 24(%rsp)
    movl $2147483648, %eax
    movq %rax, 32(%rsp)
    movl $2147483648, %eax
    movq %rax, 40(%rsp)
    movl %r12d, %eax
    movq %rax, 48(%rsp)
    movl %r13d, %eax
    movq %rax, 56(%rsp)
    movq $0, %rax
    movq %rax, 64(%rsp)
    movq $0, %rax
    movq %rax, 72(%rsp)
    movq %r14, %rax
    movq %rax, 80(%rsp)
    movq 144(%rbp), %rax
    movq %rax, 88(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call CreateWindowExW
    addq $96, %rsp
    movq %rax, %r15
    testq %r15, %r15
    jne .L62_49
    jmp .L62_50
.L62_49:
    jmp .L62_51
.L62_50:
    leaq 15208(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_242(%rip), %r13
    leaq 392(%rbp), %r14
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
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 376(%rbp), %r12
    movq 72(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_241(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 80(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq 40(%rbp), %r10
    movq (%r10), %r13
    movq 40(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L62_53
    jmp .L62_52
.L62_53:
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
.L62_52:
    subq $32, %rsp
    movq 144(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_11win_destroy
    addq $32, %rsp
    movq %rbx, %rsi
    movq 15288(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 15288(%rbp), %rax
    movq 15464(%rbp), %rdi
    movq 15456(%rbp), %rsi
    movdqu 15440(%rbp), %xmm6
    movdqu 15424(%rbp), %xmm7
    movdqu 15408(%rbp), %xmm8
    movdqu 15392(%rbp), %xmm9
    movdqu 15376(%rbp), %xmm10
    movdqu 15360(%rbp), %xmm11
    movdqu 15344(%rbp), %xmm12
    movdqu 15328(%rbp), %xmm13
    movdqu 15312(%rbp), %xmm14
    movdqu 15296(%rbp), %xmm15
    movq 15280(%rbp), %rbx
    movq 15272(%rbp), %r12
    movq 15264(%rbp), %r13
    movq 15256(%rbp), %r14
    movq 15248(%rbp), %r15
    leaq 15472(%rbp), %rsp
    popq %rbp
    ret
.L62_51:
    movq 144(%rbp), %r10
    movq %r15, (%r10)
    leaq 15208(%rbp), %rbx
    movq 144(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq 360(%rbp), %r12
    movq 72(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_243(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %r13
    movq 80(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq 40(%rbp), %r10
    movq (%r10), %r13
    movq 40(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L62_56
    jmp .L62_55
.L62_56:
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
.L62_55:
    movq %rbx, %rsi
    movq 15288(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 15288(%rbp), %rax
    movq 15464(%rbp), %rdi
    movq 15456(%rbp), %rsi
    movdqu 15440(%rbp), %xmm6
    movdqu 15424(%rbp), %xmm7
    movdqu 15408(%rbp), %xmm8
    movdqu 15392(%rbp), %xmm9
    movdqu 15376(%rbp), %xmm10
    movdqu 15360(%rbp), %xmm11
    movdqu 15344(%rbp), %xmm12
    movdqu 15328(%rbp), %xmm13
    movdqu 15312(%rbp), %xmm14
    movdqu 15296(%rbp), %xmm15
    movq 15280(%rbp), %rbx
    movq 15272(%rbp), %r12
    movq 15264(%rbp), %r13
    movq 15256(%rbp), %r14
    movq 15248(%rbp), %r15
    leaq 15472(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_window_8win_size
lb_window_8win_size:
    .seh_proc lb_window_8win_size
    pushq %rbp
    .seh_pushreg %rbp
    subq $384, %rsp
    .seh_stackalloc 384
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 200(%rbp)
    movq %rdi, 376(%rbp)
    .seh_savereg %rdi, 376
    movq %rsi, 368(%rbp)
    .seh_savereg %rsi, 368
    movdqu %xmm6, 352(%rbp)
    .seh_savexmm %xmm6, 352
    movdqu %xmm7, 336(%rbp)
    .seh_savexmm %xmm7, 336
    movdqu %xmm8, 320(%rbp)
    .seh_savexmm %xmm8, 320
    movdqu %xmm9, 304(%rbp)
    .seh_savexmm %xmm9, 304
    movdqu %xmm10, 288(%rbp)
    .seh_savexmm %xmm10, 288
    movdqu %xmm11, 272(%rbp)
    .seh_savexmm %xmm11, 272
    movdqu %xmm12, 256(%rbp)
    .seh_savexmm %xmm12, 256
    movdqu %xmm13, 240(%rbp)
    .seh_savexmm %xmm13, 240
    movdqu %xmm14, 224(%rbp)
    .seh_savexmm %xmm14, 224
    movdqu %xmm15, 208(%rbp)
    .seh_savexmm %xmm15, 208
    movq %rbx, 192(%rbp)
    .seh_savereg %rbx, 192
    movq %r12, 184(%rbp)
    .seh_savereg %r12, 184
    movq %r13, 176(%rbp)
    .seh_savereg %r13, 176
    movq %r14, 168(%rbp)
    .seh_savereg %r14, 168
    .seh_endprologue
    movq %rcx, 400(%rbp)
    movq %rdx, 408(%rbp)
    movq %r8, 416(%rbp)
    movq %r9, 424(%rbp)
    movq 408(%rbp), %rax
    movq %rax, 112(%rbp)
    leaq 112(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 40(%rbp), %r10
    movq %rbx, (%r10)
    testq %rbx, %rbx
    jne .L63_5
    jmp .L63_6
.L63_5:
    jmp .L63_7
.L63_6:
    leaq .Ltext_39(%rip), %rbx
    leaq 24(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
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
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L63_7:
    jmp .L63_9
.L63_8:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
.L63_9:
    leaq 96(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq %r12, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call GetClientRect
    addq $32, %rsp
    movl %eax, %r13d
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GetDpiForWindow
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jbe .L63_2
.L63_1:
    movl %r13d, %ebx
    movq %rbx, %rcx
    testq %rcx, %rcx
    js 1f
    cvtsi2sdq %rcx, %xmm8
    jmp 2f
1:
    movq %rcx, %rax
    shrq $1, %rax
    andl $1, %ecx
    orq %rcx, %rax
    cvtsi2sdq %rax, %xmm8
    addsd %xmm8, %xmm8
2:
    movapd %xmm8, %xmm12
    movabsq $4636455816377925632, %rax
    movq %rax, %xmm13
    movaps %xmm12, %xmm8
    divsd %xmm13, %xmm8
    movapd %xmm8, %xmm12
    movaps %xmm12, %xmm8
    movsd %xmm8, 0(%rbp)
    jmp .L63_3
.L63_2:
    movabsq $4607182418800017408, %rax
    movq %rax, %xmm12
    movaps %xmm12, %xmm8
    movsd %xmm8, 0(%rbp)
.L63_3:
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movq %r12, %r10
    movslq (%r10), %r13
    movl %ebx, %eax
    movl %r13d, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_244(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %ebx
    movslq %ebx, %rbx
    cvtsi2sdq %rbx, %xmm8
    movsd %xmm8, 16(%rbp)
    movq $12, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movq $4, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movslq (%r10), %r13
    movl %ebx, %eax
    movl %r13d, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_245(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %ebx
    movslq %ebx, %rbx
    cvtsi2sdq %rbx, %xmm8
    movsd %xmm8, 8(%rbp)
    leaq 56(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    movsd 16(%rbp), %xmm8
    movsd 0(%rbp), %xmm9
    divsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    movq %rbx, %r10
    movsd %xmm12, (%r10)
    movsd 8(%rbp), %xmm8
    movsd 0(%rbp), %xmm9
    divsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movsd %xmm12, (%r10)
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movsd 16(%rbp), %xmm8
    movq %r13, %r10
    movsd %xmm8, (%r10)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movsd 8(%rbp), %xmm8
    movq %r13, %r10
    movsd %xmm8, (%r10)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movsd 0(%rbp), %xmm8
    movq %r13, %r10
    movsd %xmm8, (%r10)
    leaq 128(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq %r13, %rsi
    movq 200(%rbp), %rdi
    movq $40, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 200(%rbp), %rax
    movq 376(%rbp), %rdi
    movq 368(%rbp), %rsi
    movdqu 352(%rbp), %xmm6
    movdqu 336(%rbp), %xmm7
    movdqu 320(%rbp), %xmm8
    movdqu 304(%rbp), %xmm9
    movdqu 288(%rbp), %xmm10
    movdqu 272(%rbp), %xmm11
    movdqu 256(%rbp), %xmm12
    movdqu 240(%rbp), %xmm13
    movdqu 224(%rbp), %xmm14
    movdqu 208(%rbp), %xmm15
    movq 192(%rbp), %rbx
    movq 184(%rbp), %r12
    movq 176(%rbp), %r13
    movq 168(%rbp), %r14
    leaq 384(%rbp), %rsp
    popq %rbp
    ret
.L63_4:
    leaq .Ltext_246(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_window_11win_destroy
lb_window_11win_destroy:
    .seh_proc lb_window_11win_destroy
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
    leaq 0(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $14379, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L64_4
    jmp .L64_2
.L64_4:
.L64_1:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movl $0, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call ShowWindow
    addq $32, %rsp
    movl %eax, %r12d
    jmp .L64_3
.L64_2:
.L64_3:
    movq $14378, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L64_6
.L64_5:
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_8win_free
    addq $32, %rsp
    jmp .L64_7
.L64_6:
.L64_7:
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
    .seh_endproc

    .p2align 4
    .globl lb_window_8win_free
lb_window_8win_free:
    .seh_proc lb_window_8win_free
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
    movq %rbx, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L65_4
    jmp .L65_2
.L65_4:
.L65_1:
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movl $4294967275, %eax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call SetWindowLongPtrW
    addq $32, %rsp
    movq %rax, %r13
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call DestroyWindow
    addq $32, %rsp
    movl %eax, %r12d
    jmp .L65_3
.L65_2:
.L65_3:
    leaq lb_memory_heap(%rip), %r12
    leaq 0(%rbp), %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq $14432, %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq %r12, %r10
    movq (%r10), %r14
    movq $8, %rcx
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L65_6
    jmp .L65_5
.L65_6:
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
.L65_5:
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
    .globl lb_window_13win_modifiers
lb_window_13win_modifiers:
    .seh_proc lb_window_13win_modifiers
    pushq %rbp
    .seh_pushreg %rbp
    subq $240, %rsp
    .seh_stackalloc 240
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rcx, 56(%rbp)
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
    movq %rbx, 48(%rbp)
    .seh_savereg %rbx, 48
    movq %r12, 40(%rbp)
    .seh_savereg %r12, 40
    movq %r13, 32(%rbp)
    .seh_savereg %r13, 32
    movq %r14, 24(%rbp)
    .seh_savereg %r14, 24
    .seh_endprologue
    movq %rcx, 256(%rbp)
    movq %rdx, 264(%rbp)
    movq %r8, 272(%rbp)
    movq %r9, 280(%rbp)
    leaq 14(%rbp), %r13
    movq %r13, %r11
    movl $0, 0(%r11)
    movb $0, 4(%r11)
    subq $32, %rsp
    movl $16, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GetKeyState
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    setl %al
    movzbl %al, %ebx
    movq %r13, %r10
    movb %bl, (%r10)
    subq $32, %rsp
    movl $17, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GetKeyState
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    setl %al
    movzbl %al, %ebx
    movq $1, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movb %bl, (%r10)
    subq $32, %rsp
    movl $18, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GetKeyState
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    setl %al
    movzbl %al, %ebx
    movq $2, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movb %bl, (%r10)
    subq $32, %rsp
    movl $91, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GetKeyState
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    setl %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L66_4
    jmp .L66_1
.L66_4:
    movl %ebx, %r12d
    jmp .L66_2
.L66_1:
    subq $32, %rsp
    movl $92, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GetKeyState
    addq $32, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    setl %al
    movzbl %al, %r12d
.L66_2:
    movzbl %r12b, %ebx
    movq $3, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movb %bl, (%r10)
    subq $32, %rsp
    movl $20, %eax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GetKeyState
    addq $32, %rsp
    movl %eax, %ebx
    movl $1, %ecx
    andl %ecx, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movq $4, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movb %bl, (%r10)
    leaq 19(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movl 0(%r10), %eax
    movl %eax, 0(%r11)
    movzbl 4(%r10), %eax
    movb %al, 4(%r11)
    movq %rbx, %rsi
    movq 56(%rbp), %rdi
    movq $5, %rdx
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call memcpy
    addq $32, %rsp
    movq 56(%rbp), %rax
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
    movq 48(%rbp), %rbx
    movq 40(%rbp), %r12
    movq 32(%rbp), %r13
    movq 24(%rbp), %r14
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
.L66_3:
    leaq .Ltext_251(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_window_11signed_half
lb_window_11signed_half:
    .seh_proc lb_window_11signed_half
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
    leaq 0(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $65535, %rcx
    andq %rcx, %rbx
    movl $32768, %ecx
    cmpl %ecx, %ebx
    jl .L67_2
.L67_1:
    movl %ebx, %eax
    movl $65536, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_252(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r12d
    jmp .L67_3
.L67_2:
    movl %ebx, %r12d
.L67_3:
    movl %r12d, %eax
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
.L67_4:
    leaq .Ltext_252(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
    .seh_endproc

    .p2align 4
    .globl lb_window_7win_key
lb_window_7win_key:
    .seh_proc lb_window_7win_key
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
    .seh_endprologue
    movq %rcx, 256(%rbp)
    movq %rdx, 264(%rbp)
    movq %r8, 272(%rbp)
    movq %r9, 280(%rbp)
    movq 256(%rbp), %rax
    movq %rax, 24(%rbp)
    leaq 24(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
.L68_2:
    movq $16, %rcx
    movq %rbx, %r12
    sarq %cl, %r12
    movq $255, %rcx
    andq %rcx, %r12
    movq $16777216, %rcx
    movq %rbx, %r13
    andq %rcx, %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movzbl %r13b, %r13d
    testl %r13d, %r13d
    jne .L68_3
    jmp .L68_4
.L68_3:
    leaq 16(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq 8(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $29, %rcx
    cmpq %rcx, %r12
    je .L68_7
.L68_9:
    jmp .L68_8
.L68_7:
    movl $228, %eax
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
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
.L68_8:
    movq $56, %rcx
    cmpq %rcx, %r12
    je .L68_11
.L68_13:
    jmp .L68_12
.L68_11:
    movl $230, %eax
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
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
.L68_12:
    movq $71, %rcx
    cmpq %rcx, %r12
    je .L68_15
.L68_17:
    jmp .L68_16
.L68_15:
    movl $74, %eax
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
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
.L68_16:
    movq $72, %rcx
    cmpq %rcx, %r12
    je .L68_19
.L68_21:
    jmp .L68_20
.L68_19:
    movl $82, %eax
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
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
.L68_20:
    movq $73, %rcx
    cmpq %rcx, %r12
    je .L68_23
.L68_25:
    jmp .L68_24
.L68_23:
    movl $75, %eax
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
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
.L68_24:
    movq $75, %rcx
    cmpq %rcx, %r12
    je .L68_27
.L68_29:
    jmp .L68_28
.L68_27:
    movl $80, %eax
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
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
.L68_28:
    movq $77, %rcx
    cmpq %rcx, %r12
    je .L68_31
.L68_33:
    jmp .L68_32
.L68_31:
    movl $79, %eax
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
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
.L68_32:
    movq $79, %rcx
    cmpq %rcx, %r12
    je .L68_35
.L68_37:
    jmp .L68_36
.L68_35:
    movl $77, %eax
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
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
.L68_36:
    movq $80, %rcx
    cmpq %rcx, %r12
    je .L68_39
.L68_41:
    jmp .L68_40
.L68_39:
    movl $81, %eax
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
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
.L68_40:
    movq $81, %rcx
    cmpq %rcx, %r12
    je .L68_43
.L68_45:
    jmp .L68_44
.L68_43:
    movl $78, %eax
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
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
.L68_44:
    movq $83, %rcx
    cmpq %rcx, %r12
    je .L68_47
.L68_49:
    jmp .L68_48
.L68_47:
    movl $76, %eax
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
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
.L68_48:
    movq $91, %rcx
    cmpq %rcx, %r12
    je .L68_51
.L68_53:
    jmp .L68_52
.L68_51:
    movl $227, %eax
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
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
.L68_52:
    movq $92, %rcx
    cmpq %rcx, %r12
    je .L68_55
.L68_57:
    jmp .L68_56
.L68_55:
    movl $231, %eax
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
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
.L68_56:
.L68_59:
    movl $0, %eax
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
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
.L68_4:
.L68_5:
    movq $64, %rcx
    cmpq %rcx, %r12
    jae .L68_64
.L68_63:
    leaq lb_window_13win_scan_keys(%rip), %rbx
    movq $2, %rcx
    movq %r12, %r13
    imulq %rcx, %r13
    addq %r13, %rbx
    movq %rbx, %r10
    movzwl (%r10), %ebx
    movl %ebx, %ebx
    movzwl %bx, %ebx
    movzwl %bx, %ebx
    movl %ebx, %eax
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
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
.L68_64:
.L68_65:
    movq $64, %rcx
    cmpq %rcx, %r12
    setae %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L68_70
    jmp .L68_82
.L68_82:
    movl %ebx, %r13d
    jmp .L68_71
.L68_70:
    movq $68, %rcx
    cmpq %rcx, %r12
    setbe %al
    movzbl %al, %r13d
.L68_71:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L68_67
    jmp .L68_68
.L68_67:
    movq $64, %rcx
    movq %r12, %rbx
    subq %rcx, %rbx
    movq %rbx, %rax
    movq $63, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_255(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movq %rax, %rbx
    movzwl %bx, %ebx
    movl %ebx, %ebx
    movzwl %bx, %ebx
    movzwl %bx, %ebx
    movl %ebx, %eax
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
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
.L68_68:
.L68_69:
    movq $87, %rcx
    cmpq %rcx, %r12
    jne .L68_74
.L68_73:
    movl $68, %eax
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
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
.L68_74:
.L68_75:
    movq $88, %rcx
    cmpq %rcx, %r12
    jne .L68_78
.L68_77:
    movl $69, %eax
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
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
.L68_78:
.L68_79:
    movl $0, %eax
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
    leaq 240(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_window_12win_callback
lb_window_12win_callback:
    .seh_proc lb_window_12win_callback
    pushq %rbp
    .seh_pushreg %rbp
    subq $960, %rsp
    .seh_stackalloc 960
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 952(%rbp)
    .seh_savereg %rdi, 952
    movq %rsi, 944(%rbp)
    .seh_savereg %rsi, 944
    movdqu %xmm6, 928(%rbp)
    .seh_savexmm %xmm6, 928
    movdqu %xmm7, 912(%rbp)
    .seh_savexmm %xmm7, 912
    movdqu %xmm8, 896(%rbp)
    .seh_savexmm %xmm8, 896
    movdqu %xmm9, 880(%rbp)
    .seh_savexmm %xmm9, 880
    movdqu %xmm10, 864(%rbp)
    .seh_savexmm %xmm10, 864
    movdqu %xmm11, 848(%rbp)
    .seh_savexmm %xmm11, 848
    movdqu %xmm12, 832(%rbp)
    .seh_savexmm %xmm12, 832
    movdqu %xmm13, 816(%rbp)
    .seh_savexmm %xmm13, 816
    movdqu %xmm14, 800(%rbp)
    .seh_savexmm %xmm14, 800
    movdqu %xmm15, 784(%rbp)
    .seh_savexmm %xmm15, 784
    movq %rbx, 776(%rbp)
    .seh_savereg %rbx, 776
    movq %r12, 768(%rbp)
    .seh_savereg %r12, 768
    movq %r13, 760(%rbp)
    .seh_savereg %r13, 760
    movq %r14, 752(%rbp)
    .seh_savereg %r14, 752
    movq %r15, 744(%rbp)
    .seh_savereg %r15, 744
    .seh_endprologue
    movq %rcx, 976(%rbp)
    movq %rdx, 984(%rbp)
    movq %r8, 992(%rbp)
    movq %r9, 1000(%rbp)
    movq 976(%rbp), %rax
    movq %rax, 728(%rbp)
    movq 984(%rbp), %rax
    movl %eax, 712(%rbp)
    movq 992(%rbp), %rax
    movq %rax, 696(%rbp)
    movq 1000(%rbp), %rax
    movq %rax, 680(%rbp)
    leaq 712(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %eax
    movl %eax, 80(%rbp)
    movl 80(%rbp), %eax
    movl $129, %ecx
    cmpl %ecx, %eax
    jne .L69_2
.L69_1:
    leaq 680(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %r10
    movq (%r10), %r13
    leaq 728(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r13, %r10
    movq %r14, (%r10)
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movl $4294967275, %eax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    call SetWindowLongPtrW
    addq $32, %rsp
    movq %rax, %r13
    leaq 696(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    subq $32, %rsp
    movq %r14, %rax
    movq %rax, 0(%rsp)
    movl 80(%rbp), %eax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq %r12, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call DefWindowProcW
    addq $32, %rsp
    movq %rax, %r12
    movq %r12, %rax
    movq 952(%rbp), %rdi
    movq 944(%rbp), %rsi
    movdqu 928(%rbp), %xmm6
    movdqu 912(%rbp), %xmm7
    movdqu 896(%rbp), %xmm8
    movdqu 880(%rbp), %xmm9
    movdqu 864(%rbp), %xmm10
    movdqu 848(%rbp), %xmm11
    movdqu 832(%rbp), %xmm12
    movdqu 816(%rbp), %xmm13
    movdqu 800(%rbp), %xmm14
    movdqu 784(%rbp), %xmm15
    movq 776(%rbp), %rbx
    movq 768(%rbp), %r12
    movq 760(%rbp), %r13
    movq 752(%rbp), %r14
    movq 744(%rbp), %r15
    leaq 960(%rbp), %rsp
    popq %rbp
    ret
.L69_2:
.L69_3:
    leaq 728(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, 72(%rbp)
    subq $32, %rsp
    movq 72(%rbp), %rax
    movq %rax, 0(%rsp)
    movl $4294967275, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call GetWindowLongPtrW
    addq $32, %rsp
    movq %rax, 64(%rbp)
    movq 64(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jne .L69_6
.L69_5:
    leaq 696(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq 680(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq 72(%rbp), %rax
    movq %rax, 0(%rsp)
    movl 80(%rbp), %eax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq %r14, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call DefWindowProcW
    addq $32, %rsp
    movq %rax, %r13
    movq %r13, %rax
    movq 952(%rbp), %rdi
    movq 944(%rbp), %rsi
    movdqu 928(%rbp), %xmm6
    movdqu 912(%rbp), %xmm7
    movdqu 896(%rbp), %xmm8
    movdqu 880(%rbp), %xmm9
    movdqu 864(%rbp), %xmm10
    movdqu 848(%rbp), %xmm11
    movdqu 832(%rbp), %xmm12
    movdqu 816(%rbp), %xmm13
    movdqu 800(%rbp), %xmm14
    movdqu 784(%rbp), %xmm15
    movq 776(%rbp), %rbx
    movq 768(%rbp), %r12
    movq 760(%rbp), %r13
    movq 752(%rbp), %r14
    movq 744(%rbp), %r15
    leaq 960(%rbp), %rsp
    popq %rbp
    ret
.L69_6:
.L69_7:
    movq 64(%rbp), %rax
    movq $14379, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L69_9
    jmp .L69_10
.L69_9:
    leaq 696(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq 680(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    subq $32, %rsp
    movq 72(%rbp), %rax
    movq %rax, 0(%rsp)
    movl 80(%rbp), %eax
    movq %rax, 8(%rsp)
    movq %r13, %rax
    movq %rax, 16(%rsp)
    movq %r14, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call DefWindowProcW
    addq $32, %rsp
    movq %rax, %r13
    movq %r13, %rax
    movq 952(%rbp), %rdi
    movq 944(%rbp), %rsi
    movdqu 928(%rbp), %xmm6
    movdqu 912(%rbp), %xmm7
    movdqu 896(%rbp), %xmm8
    movdqu 880(%rbp), %xmm9
    movdqu 864(%rbp), %xmm10
    movdqu 848(%rbp), %xmm11
    movdqu 832(%rbp), %xmm12
    movdqu 816(%rbp), %xmm13
    movdqu 800(%rbp), %xmm14
    movdqu 784(%rbp), %xmm15
    movq 776(%rbp), %rbx
    movq 768(%rbp), %r12
    movq 760(%rbp), %r13
    movq 752(%rbp), %r14
    movq 744(%rbp), %r15
    leaq 960(%rbp), %rsp
    popq %rbp
    ret
.L69_10:
.L69_11:
    movl 80(%rbp), %eax
    movl $32, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L69_16
    jmp .L69_157
.L69_157:
    movl %r14d, %r15d
    jmp .L69_17
.L69_16:
    leaq 680(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq $65535, %rcx
    andq %rcx, %r14
    movq $1, %rcx
    cmpq %rcx, %r14
    sete %al
    movzbl %al, %r15d
.L69_17:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L69_13
    jmp .L69_14
.L69_13:
    movq 64(%rbp), %rax
    movq $14392, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq %rbx, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call SetCursor
    addq $32, %rsp
    movq %rax, %rbx
    movq $1, %rax
    movq 952(%rbp), %rdi
    movq 944(%rbp), %rsi
    movdqu 928(%rbp), %xmm6
    movdqu 912(%rbp), %xmm7
    movdqu 896(%rbp), %xmm8
    movdqu 880(%rbp), %xmm9
    movdqu 864(%rbp), %xmm10
    movdqu 848(%rbp), %xmm11
    movdqu 832(%rbp), %xmm12
    movdqu 816(%rbp), %xmm13
    movdqu 800(%rbp), %xmm14
    movdqu 784(%rbp), %xmm15
    movq 776(%rbp), %rbx
    movq 768(%rbp), %r12
    movq 760(%rbp), %r13
    movq 752(%rbp), %r14
    movq 744(%rbp), %r15
    leaq 960(%rbp), %rsp
    popq %rbp
    ret
.L69_14:
.L69_15:
    movl 80(%rbp), %eax
    movl $16, %ecx
    cmpl %ecx, %eax
    jne .L69_20
.L69_19:
    movq 64(%rbp), %rax
    movq $14377, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $0, %rax
    movq 952(%rbp), %rdi
    movq 944(%rbp), %rsi
    movdqu 928(%rbp), %xmm6
    movdqu 912(%rbp), %xmm7
    movdqu 896(%rbp), %xmm8
    movdqu 880(%rbp), %xmm9
    movdqu 864(%rbp), %xmm10
    movdqu 848(%rbp), %xmm11
    movdqu 832(%rbp), %xmm12
    movdqu 816(%rbp), %xmm13
    movdqu 800(%rbp), %xmm14
    movdqu 784(%rbp), %xmm15
    movq 776(%rbp), %rbx
    movq 768(%rbp), %r12
    movq 760(%rbp), %r13
    movq 752(%rbp), %r14
    movq 744(%rbp), %r15
    leaq 960(%rbp), %rsp
    popq %rbp
    ret
.L69_20:
.L69_21:
    movl 80(%rbp), %eax
    movl $5, %ecx
    cmpl %ecx, %eax
    jne .L69_24
.L69_23:
    leaq 624(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movl $2, %eax
    movq %r14, %r10
    movb %al, (%r10)
    subq $96, %rsp
    movq 64(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r14, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_10push_event
    addq $96, %rsp
    jmp .L69_25
.L69_24:
    movl 80(%rbp), %eax
    movl $7, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L69_158
    jmp .L69_29
.L69_158:
    movl %r14d, %r15d
    jmp .L69_30
.L69_29:
    movl 80(%rbp), %eax
    movl $8, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r15d
.L69_30:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L69_26
    jmp .L69_27
.L69_26:
    movq 64(%rbp), %rax
    movq $14382, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    leaq 568(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    testl %r14d, %r14d
    jne .L69_31
    jmp .L69_32
.L69_31:
    movl $3, %eax
    movl %eax, %r14d
    jmp .L69_33
.L69_32:
    movl $4, %eax
    movl %eax, %r14d
.L69_33:
    movzbl %r14b, %r15d
    movq %r12, %r10
    movb %r15b, (%r10)
    subq $96, %rsp
    movq 64(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r12, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_10push_event
    addq $96, %rsp
    jmp .L69_28
.L69_27:
    movl 80(%rbp), %eax
    movl $258, %ecx
    cmpl %ecx, %eax
    jne .L69_35
.L69_34:
    movq 64(%rbp), %rax
    movq $14380, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L69_37
    jmp .L69_38
.L69_37:
    leaq 696(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movzwl %bx, %ebx
    subq $32, %rsp
    movq 64(%rbp), %rax
    movq %rax, 0(%rsp)
    movl %ebx, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_10push_utf16
    addq $32, %rsp
    jmp .L69_39
.L69_38:
.L69_39:
    movq $0, %rax
    movq 952(%rbp), %rdi
    movq 944(%rbp), %rsi
    movdqu 928(%rbp), %xmm6
    movdqu 912(%rbp), %xmm7
    movdqu 896(%rbp), %xmm8
    movdqu 880(%rbp), %xmm9
    movdqu 864(%rbp), %xmm10
    movdqu 848(%rbp), %xmm11
    movdqu 832(%rbp), %xmm12
    movdqu 816(%rbp), %xmm13
    movdqu 800(%rbp), %xmm14
    movdqu 784(%rbp), %xmm15
    movq 776(%rbp), %rbx
    movq 768(%rbp), %r12
    movq 760(%rbp), %r13
    movq 752(%rbp), %r14
    movq 744(%rbp), %r15
    leaq 960(%rbp), %rsp
    popq %rbp
    ret
.L69_35:
    movl 80(%rbp), %eax
    movl $265, %ecx
    cmpl %ecx, %eax
    jne .L69_42
.L69_41:
    leaq 696(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $65535, %rcx
    cmpq %rcx, %rbx
    jne .L69_45
.L69_44:
    movq $1, %rax
    movq 952(%rbp), %rdi
    movq 944(%rbp), %rsi
    movdqu 928(%rbp), %xmm6
    movdqu 912(%rbp), %xmm7
    movdqu 896(%rbp), %xmm8
    movdqu 880(%rbp), %xmm9
    movdqu 864(%rbp), %xmm10
    movdqu 848(%rbp), %xmm11
    movdqu 832(%rbp), %xmm12
    movdqu 816(%rbp), %xmm13
    movdqu 800(%rbp), %xmm14
    movdqu 784(%rbp), %xmm15
    movq 776(%rbp), %rbx
    movq 768(%rbp), %r12
    movq 760(%rbp), %r13
    movq 752(%rbp), %r14
    movq 744(%rbp), %r15
    leaq 960(%rbp), %rsp
    popq %rbp
    ret
.L69_45:
.L69_46:
    movq 64(%rbp), %rax
    movq $14380, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L69_51
    jmp .L69_159
.L69_159:
    movl %r12d, %r14d
    jmp .L69_52
.L69_51:
    movq $1114111, %rcx
    cmpq %rcx, %rbx
    setbe %al
    movzbl %al, %r14d
.L69_52:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L69_48
    jmp .L69_49
.L69_48:
    subq $32, %rsp
    movq 64(%rbp), %rax
    movq %rax, 0(%rsp)
    movl %ebx, %eax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_11push_scalar
    addq $32, %rsp
    jmp .L69_50
.L69_49:
.L69_50:
    movq $0, %rax
    movq 952(%rbp), %rdi
    movq 944(%rbp), %rsi
    movdqu 928(%rbp), %xmm6
    movdqu 912(%rbp), %xmm7
    movdqu 896(%rbp), %xmm8
    movdqu 880(%rbp), %xmm9
    movdqu 864(%rbp), %xmm10
    movdqu 848(%rbp), %xmm11
    movdqu 832(%rbp), %xmm12
    movdqu 816(%rbp), %xmm13
    movdqu 800(%rbp), %xmm14
    movdqu 784(%rbp), %xmm15
    movq 776(%rbp), %rbx
    movq 768(%rbp), %r12
    movq 760(%rbp), %r13
    movq 752(%rbp), %r14
    movq 744(%rbp), %r15
    leaq 960(%rbp), %rsp
    popq %rbp
    ret
.L69_42:
    movl 80(%rbp), %eax
    movl $736, %ecx
    cmpl %ecx, %eax
    jne .L69_55
.L69_54:
    leaq 680(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movslq (%r10), %r12
    movq $4, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movslq (%r10), %r14
    movq $8, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movslq (%r10), %r15
    movl %r15d, %eax
    movl %r12d, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_257(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r15d
    movq $12, %rcx
    addq %rcx, %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movl %ebx, %eax
    movl %r14d, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_257(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %ebx
    subq $64, %rsp
    movq 72(%rbp), %rax
    movq %rax, 0(%rsp)
    movq $0, %rax
    movq %rax, 8(%rsp)
    movl %r12d, %eax
    movq %rax, 16(%rsp)
    movl %r14d, %eax
    movq %rax, 24(%rsp)
    movl %r15d, %eax
    movq %rax, 32(%rsp)
    movl %ebx, %eax
    movq %rax, 40(%rsp)
    movl $20, %eax
    movq %rax, 48(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call SetWindowPos
    addq $64, %rsp
    movl %eax, %ebx
    leaq 512(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movl $2, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    subq $96, %rsp
    movq 64(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_10push_event
    addq $96, %rsp
    movq $0, %rax
    movq 952(%rbp), %rdi
    movq 944(%rbp), %rsi
    movdqu 928(%rbp), %xmm6
    movdqu 912(%rbp), %xmm7
    movdqu 896(%rbp), %xmm8
    movdqu 880(%rbp), %xmm9
    movdqu 864(%rbp), %xmm10
    movdqu 848(%rbp), %xmm11
    movdqu 832(%rbp), %xmm12
    movdqu 816(%rbp), %xmm13
    movdqu 800(%rbp), %xmm14
    movdqu 784(%rbp), %xmm15
    movq 776(%rbp), %rbx
    movq 768(%rbp), %r12
    movq 760(%rbp), %r13
    movq 752(%rbp), %r14
    movq 744(%rbp), %r15
    leaq 960(%rbp), %rsp
    popq %rbp
    ret
.L69_55:
    movl 80(%rbp), %eax
    movl $256, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L69_160
    jmp .L69_61
.L69_160:
    movl %r12d, %r14d
    jmp .L69_62
.L69_61:
    movl 80(%rbp), %eax
    movl $257, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r14d
.L69_62:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L69_161
    jmp .L69_63
.L69_161:
    movl %r15d, %r14d
    jmp .L69_64
.L69_63:
    movl 80(%rbp), %eax
    movl $260, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r14d
.L69_64:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L69_162
    jmp .L69_65
.L69_162:
    movl %r15d, %r14d
    jmp .L69_66
.L69_65:
    movl 80(%rbp), %eax
    movl $261, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r14d
.L69_66:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L69_58
    jmp .L69_59
.L69_58:
    leaq 507(%rbp), %rax
    movq %rax, 56(%rbp)
    subq $32, %rsp
    leaq 502(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_window_13win_modifiers
    addq $32, %rsp
    leaq 502(%rbp), %r15
    movq %r15, %r10
    movq 56(%rbp), %r11
    movl 0(%r10), %eax
    movl %eax, 0(%r11)
    movzbl 4(%r10), %eax
    movb %al, 4(%r11)
    leaq 680(%rbp), %r15
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, 48(%rbp)
    subq $32, %rsp
    movq 48(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_7win_key
    addq $32, %rsp
    movl %eax, %r13d
    testl %r12d, %r12d
    jne .L69_163
    jmp .L69_67
.L69_163:
    movl %r12d, %r15d
    jmp .L69_68
.L69_67:
    movl 80(%rbp), %eax
    movl $260, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r15d
.L69_68:
    movzbl %r15b, %r12d
    leaq 440(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movzbl %r12b, %eax
    movl %eax, 40(%rbp)
    movl 40(%rbp), %eax
    testl %eax, %eax
    jne .L69_69
    jmp .L69_70
.L69_69:
    movl $5, %eax
    movl %eax, %r15d
    jmp .L69_71
.L69_70:
    movl $6, %eax
    movl %eax, %r15d
.L69_71:
    movzbl %r15b, %r12d
    movq %rbx, %r10
    movb %r12b, (%r10)
    movzwl %r13w, %r12d
    movq $2, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movw %r12w, (%r10)
    movq $4, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq 56(%rbp), %r10
    movq %r14, %r11
    movl 0(%r10), %eax
    movl %eax, 0(%r11)
    movzbl 4(%r10), %eax
    movb %al, 4(%r11)
    movl 40(%rbp), %eax
    testl %eax, %eax
    jne .L69_72
    jmp .L69_164
.L69_164:
    movl 40(%rbp), %eax
    movl %eax, %r13d
    jmp .L69_73
.L69_72:
    movq 48(%rbp), %rax
    movq $1073741824, %rcx
    movq %rax, %r13
    andq %rcx, %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
.L69_73:
    movzbl %r13b, %r14d
    movq $9, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movb %r14b, (%r10)
    subq $96, %rsp
    movq 64(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_10push_event
    addq $96, %rsp
    movl %r12d, %r14d
    movzwl %r14w, %r14d
    movl $224, %ecx
    cmpl %ecx, %r14d
    setae %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L69_165
    jmp .L69_77
.L69_165:
    movl %r14d, %ebx
    jmp .L69_78
.L69_77:
    movl $57, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %ebx
.L69_78:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L69_74
    jmp .L69_75
.L69_74:
    leaq 384(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movl $7, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $4, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq 56(%rbp), %r10
    movq %r12, %r11
    movl 0(%r10), %eax
    movl %eax, 0(%r11)
    movzbl 4(%r10), %eax
    movb %al, 4(%r11)
    subq $96, %rsp
    movq 64(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_10push_event
    addq $96, %rsp
    jmp .L69_76
.L69_75:
.L69_76:
    jmp .L69_60
.L69_59:
    movl 80(%rbp), %eax
    movl $675, %ecx
    cmpl %ecx, %eax
    jne .L69_80
.L69_79:
    movq 64(%rbp), %rax
    movq $14384, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq 328(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movl $15, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    subq $96, %rsp
    movq 64(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %rbx, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_10push_event
    addq $96, %rsp
    movq $0, %rax
    movq 952(%rbp), %rdi
    movq 944(%rbp), %rsi
    movdqu 928(%rbp), %xmm6
    movdqu 912(%rbp), %xmm7
    movdqu 896(%rbp), %xmm8
    movdqu 880(%rbp), %xmm9
    movdqu 864(%rbp), %xmm10
    movdqu 848(%rbp), %xmm11
    movdqu 832(%rbp), %xmm12
    movdqu 816(%rbp), %xmm13
    movdqu 800(%rbp), %xmm14
    movdqu 784(%rbp), %xmm15
    movq 776(%rbp), %rbx
    movq 768(%rbp), %r12
    movq 760(%rbp), %r13
    movq 752(%rbp), %r14
    movq 744(%rbp), %r15
    leaq 960(%rbp), %rsp
    popq %rbp
    ret
.L69_80:
    movl 80(%rbp), %eax
    movl $512, %ecx
    cmpl %ecx, %eax
    setae %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L69_86
    jmp .L69_166
.L69_166:
    movl %ebx, %r12d
    jmp .L69_87
.L69_86:
    movl 80(%rbp), %eax
    movl $526, %ecx
    cmpl %ecx, %eax
    setbe %al
    movzbl %al, %r12d
.L69_87:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L69_83
    jmp .L69_84
.L69_83:
    leaq 320(%rbp), %r13
    leaq 312(%rbp), %r14
    movq %r14, %r11
    movq $0, 0(%r11)
    leaq 680(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, 32(%rbp)
    subq $32, %rsp
    movq 32(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_11signed_half
    addq $32, %rsp
    movl %eax, %r12d
    movq %r14, %r10
    movl %r12d, (%r10)
.L69_89:
    movq $16, %rcx
    movq 32(%rbp), %rax
    movq %rax, %r12
    sarq %cl, %r12
    subq $32, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_11signed_half
    addq $32, %rsp
    movl %eax, %r12d
    movq $4, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movl %r12d, (%r10)
    movq %r14, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movl 80(%rbp), %eax
    movl $522, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %eax
    movl %eax, 24(%rbp)
    movl 24(%rbp), %eax
    testl %eax, %eax
    jne .L69_167
    jmp .L69_90
.L69_167:
    movl 24(%rbp), %eax
    movl %eax, %r14d
    jmp .L69_91
.L69_90:
    movl 80(%rbp), %eax
    movl $526, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r14d
.L69_91:
    movzbl %r14b, %r15d
    movzbl %r15b, %eax
    movl %eax, 16(%rbp)
    movl 16(%rbp), %eax
    testl %eax, %eax
    jne .L69_92
    jmp .L69_93
.L69_92:
    subq $32, %rsp
    movq 72(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call ScreenToClient
    addq $32, %rsp
    movl %eax, %r14d
    jmp .L69_94
.L69_93:
.L69_94:
    subq $32, %rsp
    movq 72(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call GetDpiForWindow
    addq $32, %rsp
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jbe .L69_96
.L69_95:
    movl %r14d, %ebx
    movq %rbx, %rcx
    testq %rcx, %rcx
    js 1f
    cvtsi2sdq %rcx, %xmm8
    jmp 2f
1:
    movq %rcx, %rax
    shrq $1, %rax
    andl $1, %ecx
    orq %rcx, %rax
    cvtsi2sdq %rax, %xmm8
    addsd %xmm8, %xmm8
2:
    movapd %xmm8, %xmm12
    movabsq $4636455816377925632, %rax
    movq %rax, %xmm13
    movaps %xmm12, %xmm8
    divsd %xmm13, %xmm8
    movapd %xmm8, %xmm12
    movaps %xmm12, %xmm8
    movsd %xmm8, 0(%rbp)
    jmp .L69_97
.L69_96:
    movabsq $4607182418800017408, %rax
    movq %rax, %xmm12
    movaps %xmm12, %xmm8
    movsd %xmm8, 0(%rbp)
.L69_97:
    leaq 256(%rbp), %rax
    movq %rax, 8(%rbp)
    leaq 200(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movl $8, %eax
    movq %r14, %r10
    movb %al, (%r10)
    subq $32, %rsp
    leaq 195(%rbp), %rax
    movq %rax, (%rsp)
    movq 0(%rsp), %rcx
    call lb_window_13win_modifiers
    addq $32, %rsp
    leaq 195(%rbp), %r12
    movq $4, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r12, %r10
    movq %r15, %r11
    movl 0(%r10), %eax
    movl %eax, 0(%r11)
    movzbl 4(%r10), %eax
    movb %al, 4(%r11)
    movq %r13, %r10
    movslq (%r10), %r12
    movslq %r12d, %r12
    cvtsi2sdq %r12, %xmm8
    movapd %xmm8, %xmm12
    movsd 0(%rbp), %xmm9
    movaps %xmm12, %xmm8
    divsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    movq $16, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movsd %xmm12, (%r10)
    movq $4, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movslq %r12d, %r12
    cvtsi2sdq %r12, %xmm8
    movapd %xmm8, %xmm12
    movsd 0(%rbp), %xmm9
    movaps %xmm12, %xmm8
    divsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movsd %xmm12, (%r10)
    movq %r14, %r10
    movq 8(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movl 80(%rbp), %eax
    movl $512, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L69_101
    jmp .L69_168
.L69_168:
    movl %r12d, %r13d
    jmp .L69_102
.L69_101:
    movq 64(%rbp), %rax
    movq $14384, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
.L69_102:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L69_98
    jmp .L69_99
.L69_98:
    leaq 168(%rbp), %r13
    leaq 144(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, 16(%r11)
    movl $24, %eax
    movq %r14, %r10
    movl %eax, (%r10)
    movq $4, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movl $2, %eax
    movq %r15, %r10
    movl %eax, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq 72(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq 64(%rbp), %rax
    movq $14384, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call TrackMouseEvent
    addq $32, %rsp
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movq %r14, %r10
    movb %r13b, (%r10)
    leaq 88(%rbp), %r13
    movq 8(%rbp), %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movl $14, %eax
    movq %r13, %r10
    movb %al, (%r10)
    subq $96, %rsp
    movq 64(%rbp), %rax
    movq %rax, 0(%rsp)
    movq %r13, %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_10push_event
    addq $96, %rsp
    jmp .L69_100
.L69_99:
.L69_100:
    movl 16(%rbp), %eax
    testl %eax, %eax
    jne .L69_103
    jmp .L69_104
.L69_103:
    movl $11, %eax
    movq 8(%rbp), %r10
    movb %al, (%r10)
    leaq 696(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
.L69_107:
    movq $16, %rcx
    movq %r12, %r13
    shrq %cl, %r13
    subq $32, %rsp
    movq %r13, %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call lb_window_11signed_half
    addq $32, %rsp
    movl %eax, %r13d
    movslq %r13d, %r13
    cvtsi2sdq %r13, %xmm8
    movapd %xmm8, %xmm12
    movabsq $4638144666238189568, %rax
    movq %rax, %xmm13
    movaps %xmm12, %xmm8
    divsd %xmm13, %xmm8
    movapd %xmm8, %xmm12
    movq 8(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movl 80(%rbp), %eax
    movl $526, %ecx
    cmpl %ecx, %eax
    jne .L69_109
.L69_108:
    movq %xmm12, %rax
    btcq $63, %rax
    movq %rax, %xmm13
    jmp .L69_110
.L69_109:
    movq $0, %rax
    movq %rax, %xmm13
.L69_110:
    movq %r14, %r10
    movsd %xmm13, (%r10)
    movq 8(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl 24(%rbp), %eax
    testl %eax, %eax
    jne .L69_111
    jmp .L69_112
.L69_111:
    movaps %xmm12, %xmm13
    jmp .L69_113
.L69_112:
    movq $0, %rax
    movq %rax, %xmm13
.L69_113:
    movq %r12, %r10
    movsd %xmm13, (%r10)
    movq 8(%rbp), %rax
    movq $48, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    jmp .L69_105
.L69_104:
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L69_115
.L69_114:
    movl 80(%rbp), %eax
    movl $513, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L69_169
    jmp .L69_117
.L69_169:
    movl %r12d, %r13d
    jmp .L69_118
.L69_117:
    movl 80(%rbp), %eax
    movl $516, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r13d
.L69_118:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L69_170
    jmp .L69_119
.L69_170:
    movl %r12d, %r13d
    jmp .L69_120
.L69_119:
    movl 80(%rbp), %eax
    movl $519, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r13d
.L69_120:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L69_171
    jmp .L69_121
.L69_171:
    movl %r12d, %r13d
    jmp .L69_122
.L69_121:
    movl 80(%rbp), %eax
    movl $523, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r13d
.L69_122:
    movzbl %r13b, %r12d
    movl 80(%rbp), %eax
    movl $514, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L69_172
    jmp .L69_123
.L69_172:
    movl %r14d, %r13d
    jmp .L69_124
.L69_123:
    movl 80(%rbp), %eax
    movl $517, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r13d
.L69_124:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L69_173
    jmp .L69_125
.L69_173:
    movl %r14d, %r13d
    jmp .L69_126
.L69_125:
    movl 80(%rbp), %eax
    movl $520, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r13d
.L69_126:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L69_174
    jmp .L69_127
.L69_174:
    movl %r14d, %r13d
    jmp .L69_128
.L69_127:
    movl 80(%rbp), %eax
    movl $524, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r13d
.L69_128:
    movzbl %r13b, %r14d
    movzbl %r12b, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L69_132
    jmp .L69_175
.L69_175:
    movl %ebx, %r12d
    jmp .L69_133
.L69_132:
    movzbl %r14b, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L69_133:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L69_129
    jmp .L69_130
.L69_129:
    leaq 696(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    subq $32, %rsp
    movq 72(%rbp), %rax
    movq %rax, 0(%rsp)
    movl 80(%rbp), %eax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq 32(%rbp), %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call DefWindowProcW
    addq $32, %rsp
    movq %rax, %rbx
    movq %rbx, %rax
    movq 952(%rbp), %rdi
    movq 944(%rbp), %rsi
    movdqu 928(%rbp), %xmm6
    movdqu 912(%rbp), %xmm7
    movdqu 896(%rbp), %xmm8
    movdqu 880(%rbp), %xmm9
    movdqu 864(%rbp), %xmm10
    movdqu 848(%rbp), %xmm11
    movdqu 832(%rbp), %xmm12
    movdqu 816(%rbp), %xmm13
    movdqu 800(%rbp), %xmm14
    movdqu 784(%rbp), %xmm15
    movq 776(%rbp), %rbx
    movq 768(%rbp), %r12
    movq 760(%rbp), %r13
    movq 752(%rbp), %r14
    movq 744(%rbp), %r15
    leaq 960(%rbp), %rsp
    popq %rbp
    ret
.L69_130:
.L69_131:
    testl %r15d, %r15d
    jne .L69_135
    jmp .L69_136
.L69_135:
    movl $9, %eax
    movl %eax, %ebx
    jmp .L69_137
.L69_136:
    movl $10, %eax
    movl %eax, %ebx
.L69_137:
    movzbl %bl, %r12d
    movq 8(%rbp), %r10
    movb %r12b, (%r10)
    movq 8(%rbp), %rax
    movq $12, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl 80(%rbp), %eax
    movl $514, %ecx
    cmpl %ecx, %eax
    ja .L69_139
.L69_138:
    movl $0, %eax
    movl %eax, %ebx
    jmp .L69_140
.L69_139:
    movl 80(%rbp), %eax
    movl $517, %ecx
    cmpl %ecx, %eax
    ja .L69_142
.L69_141:
    movl $1, %eax
    movl %eax, %ebx
    jmp .L69_143
.L69_142:
    movl 80(%rbp), %eax
    movl $520, %ecx
    cmpl %ecx, %eax
    ja .L69_145
.L69_144:
    movl $2, %eax
    movl %eax, %ebx
    jmp .L69_146
.L69_145:
    leaq 696(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
.L69_148:
    movq $16, %rcx
    movq %rbx, %r12
    shrq %cl, %r12
    movl %r12d, %eax
    movl $2, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_260(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    movq %rdx, %r8
    movq %rsi, %rdx
    movq %rdi, %rcx
    subq $32, %rsp
    call lb_core_7trap_at
    addq $32, %rsp
1:
    movl %eax, %r12d
    movl %r12d, %ebx
.L69_146:
.L69_143:
.L69_140:
    movq %r13, %r10
    movl %ebx, (%r10)
    testl %r15d, %r15d
    jne .L69_149
    jmp .L69_150
.L69_149:
    subq $32, %rsp
    movq 72(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 0(%rsp), %rcx
    call SetCapture
    addq $32, %rsp
    movq %rax, %rbx
    jmp .L69_151
.L69_150:
    leaq 696(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $115, %rcx
    andq %rcx, %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L69_153
.L69_152:
    subq $32, %rsp
    call ReleaseCapture
    addq $32, %rsp
    movl %eax, %ebx
    jmp .L69_154
.L69_153:
.L69_154:
.L69_151:
    jmp .L69_116
.L69_115:
.L69_116:
.L69_105:
    subq $96, %rsp
    movq 64(%rbp), %rax
    movq %rax, 0(%rsp)
    movq 8(%rbp), %r10
    leaq 32(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq 32(%rsp), %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call lb_window_10push_event
    addq $96, %rsp
    movq $0, %rax
    movq 952(%rbp), %rdi
    movq 944(%rbp), %rsi
    movdqu 928(%rbp), %xmm6
    movdqu 912(%rbp), %xmm7
    movdqu 896(%rbp), %xmm8
    movdqu 880(%rbp), %xmm9
    movdqu 864(%rbp), %xmm10
    movdqu 848(%rbp), %xmm11
    movdqu 832(%rbp), %xmm12
    movdqu 816(%rbp), %xmm13
    movdqu 800(%rbp), %xmm14
    movdqu 784(%rbp), %xmm15
    movq 776(%rbp), %rbx
    movq 768(%rbp), %r12
    movq 760(%rbp), %r13
    movq 752(%rbp), %r14
    movq 744(%rbp), %r15
    leaq 960(%rbp), %rsp
    popq %rbp
    ret
.L69_84:
.L69_85:
.L69_81:
.L69_60:
.L69_56:
.L69_43:
.L69_36:
.L69_28:
.L69_25:
    leaq 696(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq 680(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    subq $32, %rsp
    movq 72(%rbp), %rax
    movq %rax, 0(%rsp)
    movl 80(%rbp), %eax
    movq %rax, 8(%rsp)
    movq %rbx, %rax
    movq %rax, 16(%rsp)
    movq %r12, %rax
    movq %rax, 24(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    movq 16(%rsp), %r8
    movq 24(%rsp), %r9
    call DefWindowProcW
    addq $32, %rsp
    movq %rax, %rbx
    movq %rbx, %rax
    movq 952(%rbp), %rdi
    movq 944(%rbp), %rsi
    movdqu 928(%rbp), %xmm6
    movdqu 912(%rbp), %xmm7
    movdqu 896(%rbp), %xmm8
    movdqu 880(%rbp), %xmm9
    movdqu 864(%rbp), %xmm10
    movdqu 848(%rbp), %xmm11
    movdqu 832(%rbp), %xmm12
    movdqu 816(%rbp), %xmm13
    movdqu 800(%rbp), %xmm14
    movdqu 784(%rbp), %xmm15
    movq 776(%rbp), %rbx
    movq 768(%rbp), %r12
    movq 760(%rbp), %r13
    movq 752(%rbp), %r14
    movq 744(%rbp), %r15
    leaq 960(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .p2align 4
    .globl lb_window_10win_cursor
lb_window_10win_cursor:
    .seh_proc lb_window_10win_cursor
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
    .seh_endprologue
    movq %rcx, 320(%rbp)
    movq %rdx, 328(%rbp)
    movq %r8, 336(%rbp)
    movq %r9, 344(%rbp)
    movq 328(%rbp), %rax
    movl %eax, 32(%rbp)
    leaq 32(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    leaq 31(%rbp), %r12
    movq %r12, %r10
    movb %bl, (%r10)
    leaq 30(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movzbl 0(%r10), %eax
    movb %al, 0(%r11)
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $1, %ecx
    cmpl %ecx, %ebx
    je .L70_2
.L70_4:
    jmp .L70_3
.L70_2:
    movq $32513, %rax
    movq %rax, %rbx
    jmp .L70_1
.L70_3:
    movl $2, %ecx
    cmpl %ecx, %ebx
    je .L70_5
.L70_7:
    jmp .L70_6
.L70_5:
    movq $32649, %rax
    movq %rax, %rbx
    jmp .L70_1
.L70_6:
    movl $3, %ecx
    cmpl %ecx, %ebx
    je .L70_8
.L70_10:
    jmp .L70_9
.L70_8:
    movq $32644, %rax
    movq %rax, %rbx
    jmp .L70_1
.L70_9:
    movl $4, %ecx
    cmpl %ecx, %ebx
    je .L70_11
.L70_13:
    jmp .L70_12
.L70_11:
    movq $32645, %rax
    movq %rax, %rbx
    jmp .L70_1
.L70_12:
    movl $5, %ecx
    cmpl %ecx, %ebx
    je .L70_14
.L70_16:
    jmp .L70_15
.L70_14:
    movq $32646, %rax
    movq %rax, %rbx
    jmp .L70_1
.L70_15:
    movl $6, %ecx
    cmpl %ecx, %ebx
    je .L70_17
.L70_19:
    jmp .L70_18
.L70_17:
    movq $32646, %rax
    movq %rax, %rbx
    jmp .L70_1
.L70_18:
    movl $7, %ecx
    cmpl %ecx, %ebx
    je .L70_20
.L70_22:
    jmp .L70_21
.L70_20:
    movq $32648, %rax
    movq %rax, %rbx
    jmp .L70_1
.L70_21:
    jmp .L70_23
.L70_25:
    jmp .L70_24
.L70_23:
    movq $32512, %rax
    movq %rax, %rbx
    jmp .L70_1
.L70_24:
.L70_1:
    subq $32, %rsp
    movq $0, %rax
    movq %rax, 0(%rsp)
    movq %rbx, %rax
    movq %rax, 8(%rsp)
    movq 0(%rsp), %rcx
    movq 8(%rsp), %rdx
    call LoadCursorW
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L70_26
    jmp .L70_27
.L70_26:
    jmp .L70_28
.L70_27:
    leaq 48(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_262(%rip), %r13
    leaq 8(%rbp), %r14
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
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 120(%rbp), %rdi
    movq $40, %rdx
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
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
.L70_29:
.L70_28:
    leaq 48(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq 120(%rbp), %rdi
    movq $40, %rdx
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
    leaq 304(%rbp), %rsp
    popq %rbp
    ret
.L70_30:
    leaq .Ltext_263(%rip), %rdi
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
    .quad lb_window_0init
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
    .asciz "src/std/window/module.lucb:19:5"
.Ltext_2:
    .asciz "the window title is not valid UTF-8"
.Ltext_3:
    .asciz "src/std/window/module.lucb:54:13"
.Ltext_4:
    .asciz "src/std/window/module.lucb:69:13"
.Ltext_5:
    .asciz "unknown system cursor"
.Ltext_6:
    .asciz "src/std/window/module.lucb:104:9"
.Ltext_7:
    .asciz "the window already has a presentation surface"
.Ltext_8:
    .asciz "src/std/window/module.lucb:113:9"
.Ltext_9:
    .asciz "src/std/window/module.lucb:133:9"
.Ltext_10:
    .asciz "window destruction requires the main thread"
.Ltext_11:
    .asciz "src/std/window/module.lucb:141:13"
.Ltext_12:
    .asciz "the window is closed"
.Ltext_13:
    .asciz "src/std/window/module.lucb:150:9"
.Ltext_14:
    .asciz "native windows are not implemented for this target"
.Ltext_15:
    .asciz "window operations require the main thread"
.Ltext_16:
    .asciz "window dimensions must be between 1 and 10000 points"
.Ltext_17:
    .asciz "src/std/window/queue.lucb:41:9"
.Ltext_18:
    .asciz "src/std/window/queue.lucb:53:5"
.Ltext_19:
    .asciz "division by zero"
.Ltext_20:
    .asciz "src/std/window/queue.lucb:54:5"
.Ltext_21:
    .asciz "src/std/window/queue.lucb:65:5"
.Ltext_22:
    .asciz "src/std/window/queue.lucb:66:5"
.Ltext_23:
    .asciz "src/std/window/queue.lucb:67:5"
.Ltext_24:
    .asciz "src/std/window/queue.lucb:68:5"
.Ltext_25:
    .asciz "src/std/window/presentation.lucb:13:13"
.Ltext_26:
    .asciz "src/std/window/presentation.lucb:25:13"
.Ltext_27:
    .asciz "this window has no macOS view"
.Ltext_28:
    .asciz "src/std/window/presentation.lucb:36:9"
.Ltext_29:
    .asciz "src/std/window/presentation.lucb:42:13"
.Ltext_30:
    .asciz "presentation lease destruction requires the main thread"
.Ltext_31:
    .asciz "src/std/window/presentation.lucb:49:13"
.Ltext_32:
    .asciz "the presentation lease is closed"
.Ltext_33:
    .asciz "the presentation window is closed"
.Ltext_34:
    .asciz "src/std/window/presentation.lucb:63:9"
.Ltext_35:
    .asciz "null_foreign"
.Ltext_36:
    .asciz "src/std/window/macos/objc.lucb:65:5"
.Ltext_37:
    .asciz "a required AppKit class is unavailable; link AppKit and Foundation"
.Ltext_38:
    .asciz "src/std/window/macos/objc.lucb:68:5"
.Ltext_39:
    .asciz "the native window lost an owned object"
.Ltext_40:
    .asciz "src/std/window/macos/objc.lucb:71:5"
.Ltext_41:
    .asciz "luceState"
.Ltext_42:
    .asciz "src/std/window/macos/objc.lucb:77:5"
.Ltext_43:
    .asciz "could not register a native window callback"
.Ltext_44:
    .asciz "src/std/window/macos/events.lucb:9:5"
.Ltext_45:
    .asciz "windowDidBecomeKey:"
.Ltext_46:
    .asciz "src/std/window/macos/events.lucb:30:5"
.Ltext_47:
    .asciz "shift count out of range"
.Ltext_48:
    .asciz "src/std/window/macos/events.lucb:33:5"
.Ltext_49:
    .asciz "type"
.Ltext_50:
    .asciz "modifierFlags"
.Ltext_51:
    .asciz "keyCode"
.Ltext_52:
    .asciz "isARepeat"
.Ltext_53:
    .asciz "NSArray"
.Ltext_54:
    .asciz "arrayWithObject:"
.Ltext_55:
    .asciz "interpretKeyEvents:"
.Ltext_56:
    .asciz "convertPoint:fromView:"
.Ltext_57:
    .asciz "locationInWindow"
.Ltext_58:
    .asciz "buttonNumber"
.Ltext_59:
    .asciz "scrollingDeltaX"
.Ltext_60:
    .asciz "scrollingDeltaY"
.Ltext_61:
    .asciz "hasPreciseScrollingDeltas"
.Ltext_62:
    .asciz "bounds"
.Ltext_63:
    .asciz "src/std/window/macos/events.lucb:101:5"
.Ltext_64:
    .asciz "arrowCursor"
.Ltext_65:
    .asciz "IBeamCursor"
.Ltext_66:
    .asciz "pointingHandCursor"
.Ltext_67:
    .asciz "resizeLeftRightCursor"
.Ltext_68:
    .asciz "resizeUpDownCursor"
.Ltext_69:
    .asciz "openHandCursor"
.Ltext_70:
    .asciz "closedHandCursor"
.Ltext_71:
    .asciz "operationNotAllowedCursor"
.Ltext_72:
    .asciz "NSCursor"
.Ltext_73:
    .asciz "AppKit could not load a system cursor"
.Ltext_74:
    .asciz "src/std/window/macos/cursor.lucb:14:5"
.Ltext_75:
    .asciz "src/std/window/macos/cursor.lucb:18:5"
.Ltext_76:
    .asciz "isKeyWindow"
.Ltext_77:
    .asciz "set"
.Ltext_78:
    .asciz "NSTextInputClient"
.Ltext_79:
    .asciz "AppKit text input is unavailable"
.Ltext_80:
    .asciz "could not register the native text input client"
.Ltext_81:
    .asciz "insertText:replacementRange:"
.Ltext_82:
    .asciz "v@:@{_NSRange=QQ}"
.Ltext_83:
    .asciz "setMarkedText:selectedRange:replacementRange:"
.Ltext_84:
    .asciz "v@:@{_NSRange=QQ}{_NSRange=QQ}"
.Ltext_85:
    .asciz "unmarkText"
.Ltext_86:
    .asciz "v@:"
.Ltext_87:
    .asciz "hasMarkedText"
.Ltext_88:
    .asciz "B@:"
.Ltext_89:
    .asciz "markedRange"
.Ltext_90:
    .asciz "{_NSRange=QQ}@:"
.Ltext_91:
    .asciz "selectedRange"
.Ltext_92:
    .asciz "validAttributesForMarkedText"
.Ltext_93:
    .asciz "@@:"
.Ltext_94:
    .asciz "attributedSubstringForProposedRange:actualRange:"
.Ltext_95:
    .asciz "@@:{_NSRange=QQ}^{_NSRange=QQ}"
.Ltext_96:
    .asciz "characterIndexForPoint:"
.Ltext_97:
    .asciz "Q@:{CGPoint=dd}"
.Ltext_98:
    .asciz "firstRectForCharacterRange:actualRange:"
.Ltext_99:
    .asciz "{CGRect={CGPoint=dd}{CGSize=dd}}@:{_NSRange=QQ}^{_NSRange=QQ}"
.Ltext_100:
    .asciz "doCommandBySelector:"
.Ltext_101:
    .asciz "v@::"
.Ltext_102:
    .asciz "NSString"
.Ltext_103:
    .asciz "isKindOfClass:"
.Ltext_104:
    .asciz "string"
.Ltext_105:
    .asciz "src/std/window/macos/text.lucb:25:5"
.Ltext_106:
    .asciz "release"
.Ltext_107:
    .asciz "length"
.Ltext_108:
    .asciz "src/std/window/macos/text.lucb:42:5"
.Ltext_109:
    .asciz "characterAtIndex:"
.Ltext_110:
    .asciz "copy"
.Ltext_111:
    .asciz "src/std/window/macos/text.lucb:68:5"
.Ltext_112:
    .asciz "src/std/window/macos/text.lucb:73:5"
.Ltext_113:
    .asciz "src/std/window/macos/text.lucb:77:5"
.Ltext_114:
    .asciz "array"
.Ltext_115:
    .asciz "src/std/window/macos/text.lucb:81:5"
.Ltext_116:
    .asciz "src/std/window/macos/text.lucb:86:5"
.Ltext_117:
    .asciz "src/std/window/macos/text.lucb:89:5"
.Ltext_118:
    .asciz "convertRectToScreen:"
.Ltext_119:
    .asciz "src/std/window/macos/text.lucb:96:5"
.Ltext_120:
    .asciz "inputContext"
.Ltext_121:
    .asciz "discardMarkedText"
.Ltext_122:
    .asciz "could not allocate a native window class"
.Ltext_123:
    .asciz "^v"
.Ltext_124:
    .asciz "could not register native window state"
.Ltext_125:
    .asciz "src/std/window/macos/lifecycle.lucb:14:5"
.Ltext_126:
    .asciz "NSObject"
.Ltext_127:
    .asciz "LuceBaseWindowDelegateV1"
.Ltext_128:
    .asciz "windowShouldClose:"
.Ltext_129:
    .asciz "B@:@"
.Ltext_130:
    .asciz "windowDidResize:"
.Ltext_131:
    .asciz "v@:@"
.Ltext_132:
    .asciz "windowDidChangeBackingProperties:"
.Ltext_133:
    .asciz "windowDidResignKey:"
.Ltext_134:
    .asciz "luceDidFinishLaunching:"
.Ltext_135:
    .asciz "NSView"
.Ltext_136:
    .asciz "LuceBaseWindowViewV1"
.Ltext_137:
    .asciz "acceptsFirstResponder"
.Ltext_138:
    .asciz "isFlipped"
.Ltext_139:
    .asciz "cursorUpdate:"
.Ltext_140:
    .asciz "keyDown:"
.Ltext_141:
    .asciz "keyUp:"
.Ltext_142:
    .asciz "flagsChanged:"
.Ltext_143:
    .asciz "mouseDown:"
.Ltext_144:
    .asciz "mouseUp:"
.Ltext_145:
    .asciz "rightMouseDown:"
.Ltext_146:
    .asciz "rightMouseUp:"
.Ltext_147:
    .asciz "otherMouseDown:"
.Ltext_148:
    .asciz "otherMouseUp:"
.Ltext_149:
    .asciz "mouseMoved:"
.Ltext_150:
    .asciz "mouseDragged:"
.Ltext_151:
    .asciz "rightMouseDragged:"
.Ltext_152:
    .asciz "otherMouseDragged:"
.Ltext_153:
    .asciz "scrollWheel:"
.Ltext_154:
    .asciz "mouseEntered:"
.Ltext_155:
    .asciz "mouseExited:"
.Ltext_156:
    .asciz "src/std/window/macos/lifecycle.lucb:45:5"
.Ltext_157:
    .asciz "NSApplication"
.Ltext_158:
    .asciz "sharedApplication"
.Ltext_159:
    .asciz "AppKit could not initialize an application"
.Ltext_160:
    .asciz "setActivationPolicy:"
.Ltext_161:
    .asciz "AppKit refused the application's window activation policy"
.Ltext_162:
    .asciz "memory.unset"
.Ltext_163:
    .asciz "src/std/window/macos/lifecycle.lucb:54:5"
.Ltext_164:
    .asciz "memory.exhausted"
.Ltext_165:
    .asciz "NSWindow"
.Ltext_166:
    .asciz "alloc"
.Ltext_167:
    .asciz "could not allocate a native window"
.Ltext_168:
    .asciz "initWithContentRect:styleMask:backing:defer:"
.Ltext_169:
    .asciz "could not initialize a native window"
.Ltext_170:
    .asciz "setReleasedWhenClosed:"
.Ltext_171:
    .asciz "could not allocate a native view"
.Ltext_172:
    .asciz "initWithFrame:"
.Ltext_173:
    .asciz "could not initialize a native view"
.Ltext_174:
    .asciz "setContentView:"
.Ltext_175:
    .asciz "NSTrackingArea"
.Ltext_176:
    .asciz "could not allocate pointer tracking"
.Ltext_177:
    .asciz "initWithRect:options:owner:userInfo:"
.Ltext_178:
    .asciz "could not initialize pointer tracking"
.Ltext_179:
    .asciz "addTrackingArea:"
.Ltext_180:
    .asciz "new"
.Ltext_181:
    .asciz "could not allocate a window delegate"
.Ltext_182:
    .asciz "setDelegate:"
.Ltext_183:
    .asciz "setAcceptsMouseMovedEvents:"
.Ltext_184:
    .asciz "makeFirstResponder:"
.Ltext_185:
    .asciz "could not allocate a title"
.Ltext_186:
    .asciz "initWithBytes:length:encoding:"
.Ltext_187:
    .asciz "could not initialize the title"
.Ltext_188:
    .asciz "setTitle:"
.Ltext_189:
    .asciz "center"
.Ltext_190:
    .asciz "src/std/window/macos/lifecycle.lucb:85:5"
.Ltext_191:
    .asciz "NSRunningApplication"
.Ltext_192:
    .asciz "currentApplication"
.Ltext_193:
    .asciz "isFinishedLaunching"
.Ltext_194:
    .asciz "could not allocate a launch observer"
.Ltext_195:
    .asciz "NSNotificationCenter"
.Ltext_196:
    .asciz "defaultCenter"
.Ltext_197:
    .asciz "addObserver:selector:name:object:"
.Ltext_198:
    .asciz "run"
.Ltext_199:
    .asciz "removeObserver:"
.Ltext_200:
    .asciz "object"
.Ltext_201:
    .asciz "NSEvent"
.Ltext_202:
    .asciz "AppKit has no NSEvent class"
.Ltext_203:
    .asciz "src/std/window/macos/lifecycle.lucb:106:5"
.Ltext_204:
    .asciz "otherEventWithType:location:modifierFlags:timestamp:windowNumber:context:subtype:data1:data2:"
.Ltext_205:
    .asciz "postEvent:atStart:"
.Ltext_206:
    .asciz "stop:"
.Ltext_207:
    .asciz "src/std/window/macos/lifecycle.lucb:112:5"
.Ltext_208:
    .asciz "activateIgnoringOtherApps:"
.Ltext_209:
    .asciz "makeKeyAndOrderFront:"
.Ltext_210:
    .asciz "src/std/window/macos/lifecycle.lucb:118:5"
.Ltext_211:
    .asciz "convertRectToBacking:"
.Ltext_212:
    .asciz "backingScaleFactor"
.Ltext_213:
    .asciz "src/std/window/macos/lifecycle.lucb:123:5"
.Ltext_214:
    .asciz "src/std/window/macos/lifecycle.lucb:126:5"
.Ltext_215:
    .asciz "setContentSize:"
.Ltext_216:
    .asciz "src/std/window/macos/lifecycle.lucb:132:5"
.Ltext_217:
    .asciz "NSDate"
.Ltext_218:
    .asciz "AppKit has no NSDate class"
.Ltext_219:
    .asciz "src/std/window/macos/lifecycle.lucb:134:5"
.Ltext_220:
    .asciz "distantPast"
.Ltext_221:
    .asciz "nextEventMatchingMask:untilDate:inMode:dequeue:"
.Ltext_222:
    .asciz "sendEvent:"
.Ltext_223:
    .asciz "src/std/window/macos/lifecycle.lucb:140:9"
.Ltext_224:
    .asciz "updateWindows"
.Ltext_225:
    .asciz "src/std/window/macos/lifecycle.lucb:147:5"
.Ltext_226:
    .asciz "orderOut:"
.Ltext_227:
    .asciz "close"
.Ltext_228:
    .asciz "src/std/window/macos/lifecycle.lucb:165:5"
.Ltext_229:
    .asciz "src/std/window/windows/native.lucb:63:5"
.Ltext_230:
    .asciz "the native window class could not be registered"
.Ltext_231:
    .asciz "src/std/window/windows/native.lucb:72:5"
.Ltext_232:
    .asciz "src/std/window/windows/native.lucb:75:5"
.Ltext_233:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_234:
    .asciz "src/std/window/windows/native.lucb:79:9"
.Ltext_235:
    .asciz "the window title could not be converted to UTF-16"
.Ltext_236:
    .asciz "src/std/window/windows/native.lucb:81:13"
.Ltext_237:
    .asciz "src/std/window/windows/native.lucb:82:5"
.Ltext_238:
    .asciz "src/std/window/windows/native.lucb:85:5"
.Ltext_239:
    .asciz "the native window dimensions could not be calculated"
.Ltext_240:
    .asciz "src/std/window/windows/native.lucb:87:9"
.Ltext_241:
    .asciz "src/std/window/windows/native.lucb:88:5"
.Ltext_242:
    .asciz "the native window could not be created"
.Ltext_243:
    .asciz "src/std/window/windows/native.lucb:91:5"
.Ltext_244:
    .asciz "src/std/window/windows/native.lucb:99:5"
.Ltext_245:
    .asciz "src/std/window/windows/native.lucb:100:5"
.Ltext_246:
    .asciz "src/std/window/windows/native.lucb:101:5"
.Ltext_247:
    .asciz "src/std/window/windows/native.lucb:107:5"
.Ltext_248:
    .asciz "src/std/window/windows/native.lucb:108:5"
.Ltext_249:
    .asciz "the native window could not be resized"
.Ltext_250:
    .asciz "src/std/window/windows/native.lucb:117:9"
.Ltext_251:
    .asciz "src/std/window/windows/events.lucb:16:5"
.Ltext_252:
    .asciz "src/std/window/windows/events.lucb:22:5"
.Ltext_253:
    .asciz "src/std/window/windows/events.lucb:31:5"
.Ltext_254:
    .asciz "src/std/window/windows/events.lucb:50:9"
.Ltext_255:
    .asciz "src/std/window/windows/events.lucb:52:9"
.Ltext_256:
    .asciz "src/std/window/windows/events.lucb:55:5"
.Ltext_257:
    .asciz "src/std/window/windows/events.lucb:95:9"
.Ltext_258:
    .asciz "src/std/window/windows/events.lucb:113:9"
.Ltext_259:
    .asciz "src/std/window/windows/events.lucb:128:13"
.Ltext_260:
    .asciz "src/std/window/windows/events.lucb:140:13"
.Ltext_261:
    .asciz "src/std/window/windows/events.lucb:147:5"
.Ltext_262:
    .asciz "Windows could not load a system cursor"
.Ltext_263:
    .asciz "src/std/window/windows/cursor.lucb:19:5"
.Ltext_264:
    .asciz "integer overflow"
.Ltext_265:
    .asciz "index out of bounds"

    .section .rdata,"dr"
    .p2align 3

    .bss
    .globl lb_window_unsupported
    .p2align 2
lb_window_unsupported:
    .zero 4

    .bss
    .globl lb_window_12wrong_thread
    .p2align 2
lb_window_12wrong_thread:
    .zero 4

    .bss
    .globl lb_window_15invalid_options
    .p2align 2
lb_window_15invalid_options:
    .zero 4

    .bss
    .globl lb_window_failed
    .p2align 2
lb_window_failed:
    .zero 4

    .bss
    .globl lb_window_closed
    .p2align 2
lb_window_closed:
    .zero 4

    .bss
    .globl lb_window_19presentation_in_use
    .p2align 2
lb_window_19presentation_in_use:
    .zero 4

    .bss
    .globl lb_window_13key_positions
    .p2align 1
lb_window_13key_positions:
    .zero 256

    .bss
    .globl lb_window_13mac_not_found
    .p2align 3
lb_window_13mac_not_found:
    .zero 8

    .bss
    .globl lb_window_10view_class
    .p2align 3
lb_window_10view_class:
    .zero 8

    .bss
    .globl lb_window_14delegate_class
    .p2align 3
lb_window_14delegate_class:
    .zero 8

    .bss
    .globl lb_window_application
    .p2align 3
lb_window_application:
    .zero 8

    .bss
    .globl lb_window_14win_class_atom
    .p2align 1
lb_window_14win_class_atom:
    .zero 2

    .bss
    .globl lb_window_14win_class_name
    .p2align 1
lb_window_14win_class_name:
    .zero 22

    .bss
    .globl lb_window_13win_scan_keys
    .p2align 1
lb_window_13win_scan_keys:
    .zero 128
