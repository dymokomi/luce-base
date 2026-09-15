    .text

    .p2align 4
    .globl lb_window_0init
    .type lb_window_0init, @function
lb_window_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $432, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
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
    leaq -272(%rbp), %rbx
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
    call memcpy@PLT
    leaq lb_window_13mac_not_found(%rip), %rbx
    movabsq $9223372036854775807, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq -294(%rbp), %rbx
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
    leaq -422(%rbp), %rbx
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
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_Window_open
    .type lb_window_Window_open, @function
lb_window_Window_open:
    pushq %rbp
    movq %rsp, %rbp
    subq $208, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    leaq 16(%rbp), %r10
    leaq -112(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq -144(%rbp), %rdi
    call lb_window_12check_thread@PLT
    leaq -144(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_2
    jmp .L1_1
.L1_2:
    leaq -80(%rbp), %rbx
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
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_3:
.L1_1:
    leaq -112(%rbp), %rbx
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
    movl %r12d, %esi
    movl %r13d, %edx
    leaq -176(%rbp), %rdi
    call lb_window_12check_extent@PLT
    leaq -176(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L1_5
    jmp .L1_4
.L1_5:
    leaq -80(%rbp), %rbx
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
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_6:
.L1_4:
    movq %rbx, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_utf8_valid@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L1_8
.L1_7:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_15invalid_options(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_2(%rip), %r13
    leaq -192(%rbp), %r14
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
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_10:
    jmp .L1_9
.L1_8:
.L1_9:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_unsupported(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_3(%rip), %r13
    leaq -208(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $50, %rax
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
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L1_11:
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_Window_show
    .type lb_window_Window_show, @function
lb_window_Window_show:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %rsi, -72(%rbp)
    leaq -72(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -112(%rbp), %rdi
    call lb_window_Window_checked@PLT
    leaq -112(%rbp), %r12
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
    leaq -64(%rbp), %r13
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
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L2_3:
.L2_1:
    leaq -64(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_Window_size
    .type lb_window_Window_size, @function
lb_window_Window_size:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -120(%rbp)
    leaq -120(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -160(%rbp), %rdi
    call lb_window_Window_checked@PLT
    leaq -160(%rbp), %r12
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
    leaq -112(%rbp), %r13
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
    movq -8(%rbp), %rdi
    movq $72, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_3:
.L3_1:
    leaq -112(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_unsupported(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_3(%rip), %r13
    leaq -176(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $50, %rax
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
    movq -8(%rbp), %rdi
    movq $72, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_4:
    leaq .Ltext_5(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_Window_resize
    .type lb_window_Window_resize, @function
lb_window_Window_resize:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %rsi, -72(%rbp)
    movl %edx, -88(%rbp)
    movl %ecx, -104(%rbp)
    leaq -72(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -144(%rbp), %rdi
    call lb_window_Window_checked@PLT
    leaq -144(%rbp), %r12
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
    leaq -64(%rbp), %r13
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
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_3:
.L4_1:
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movl %ebx, %esi
    movl %r12d, %edx
    leaq -176(%rbp), %rdi
    call lb_window_12check_extent@PLT
    leaq -176(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L4_5
    jmp .L4_4
.L4_5:
    leaq -64(%rbp), %rbx
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
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L4_6:
.L4_4:
    leaq -64(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_Window_14set_text_input
    .type lb_window_Window_14set_text_input, @function
lb_window_Window_14set_text_input:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -88(%rbp)
    movl %edx, -104(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -144(%rbp), %rdi
    call lb_window_Window_checked@PLT
    leaq -144(%rbp), %r12
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
    leaq -80(%rbp), %r13
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
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
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
    leaq -104(%rbp), %r15
    movq %r15, %r10
    movzbl (%r10), %r15d
    cmpl %r15d, %r14d
    jne .L5_5
.L5_4:
    leaq -80(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
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
    leaq -80(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_Window_10set_cursor
    .type lb_window_Window_10set_cursor, @function
lb_window_Window_10set_cursor:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %rsi, -72(%rbp)
    movl %edx, -88(%rbp)
    leaq -72(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -128(%rbp), %rdi
    call lb_window_Window_checked@PLT
    leaq -128(%rbp), %r12
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
    leaq -64(%rbp), %r13
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
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_3:
.L6_1:
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl %ebx, %ebx
    movzbl %bl, %ebx
    movl $7, %ecx
    cmpl %ecx, %ebx
    jbe .L6_5
.L6_4:
    leaq -64(%rbp), %rbx
    leaq lb_window_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_6(%rip), %r12
    leaq -144(%rbp), %r13
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
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L6_7:
    jmp .L6_6
.L6_5:
.L6_6:
    leaq -64(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_Window_cursor
    .type lb_window_Window_cursor, @function
lb_window_Window_cursor:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -88(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -128(%rbp), %rdi
    call lb_window_Window_checked@PLT
    leaq -128(%rbp), %r12
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
    leaq -80(%rbp), %r13
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
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
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
    leaq -80(%rbp), %r13
    movq %r13, %r10
    movb %bl, (%r10)
    movq $32, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L7_4:
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_Window_20acquire_presentation
    .type lb_window_Window_20acquire_presentation, @function
lb_window_Window_20acquire_presentation:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -88(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -128(%rbp), %rdi
    call lb_window_Window_checked@PLT
    leaq -128(%rbp), %r12
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
    leaq -80(%rbp), %r13
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
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
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
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_19presentation_in_use(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_8(%rip), %r13
    leaq -144(%rbp), %r14
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
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L8_7:
    jmp .L8_6
.L8_5:
.L8_6:
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    leaq -152(%rbp), %r12
    movq %r12, %r11
    movq $0, 0(%r11)
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq -80(%rbp), %r14
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
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L8_8:
    leaq .Ltext_9(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_Window_13request_close
    .type lb_window_Window_13request_close, @function
lb_window_Window_13request_close:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %rsi, -72(%rbp)
    leaq -72(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -112(%rbp), %rdi
    call lb_window_Window_checked@PLT
    leaq -112(%rbp), %r12
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
    leaq -64(%rbp), %r13
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
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq %rbp, %rsp
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
    leaq -64(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_Window_poll
    .type lb_window_Window_poll, @function
lb_window_Window_poll:
    pushq %rbp
    movq %rsp, %rbp
    subq $432, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -144(%rbp)
    leaq -144(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -184(%rbp), %rdi
    call lb_window_Window_checked@PLT
    leaq -184(%rbp), %r12
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
    leaq -136(%rbp), %r13
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
    movq -8(%rbp), %rdi
    movq $96, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L10_3:
.L10_1:
    movq %r12, %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -248(%rbp), %rdi
    call lb_window_9pop_event@PLT
    leaq -248(%rbp), %r14
    movq $56, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L10_7
    jmp .L10_5
.L10_7:
    leaq -304(%rbp), %rbx
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
    leaq -368(%rbp), %r12
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
    leaq -136(%rbp), %r13
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
    movq -8(%rbp), %rdi
    movq $96, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L10_8:
    jmp .L10_6
.L10_5:
.L10_6:
    movq %rbx, %rsi
    leaq -432(%rbp), %rdi
    call lb_window_9pop_event@PLT
    leaq -432(%rbp), %r12
    leaq -136(%rbp), %r13
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
    movq -8(%rbp), %rdi
    movq $96, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L10_9:
    leaq .Ltext_10(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_Window_destroy
    .type lb_window_Window_destroy, @function
lb_window_Window_destroy:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -32(%rbp)
    leaq -32(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L11_1
    jmp .L11_2
.L11_1:
    jmp .L11_3
.L11_2:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L11_4:
.L11_3:
    leaq -88(%rbp), %rdi
    call lb_window_12check_thread@PLT
    leaq -88(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L11_8
    jmp .L11_7
.L11_8:
    leaq -56(%rbp), %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L11_5
.L11_7:
    jmp .L11_6
.L11_5:
    leaq .Ltext_11(%rip), %r12
    leaq -104(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $43, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq .Ltext_12(%rip), %r12
    movq %r12, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
.L11_6:
    movq $0, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_Window_checked
    .type lb_window_Window_checked, @function
lb_window_Window_checked:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -88(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %r12
    leaq -120(%rbp), %rdi
    call lb_window_12check_thread@PLT
    leaq -120(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L12_2
    jmp .L12_1
.L12_2:
    leaq -80(%rbp), %rbx
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
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
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
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_13(%rip), %r13
    leaq -136(%rbp), %r14
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
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L12_7:
.L12_6:
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L12_8:
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_12check_thread
    .type lb_window_12check_thread, @function
lb_window_12check_thread:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    leaq lb_platform_macos(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L13_5
    jmp .L13_13
.L13_13:
    movl %ebx, %r12d
    jmp .L13_6
.L13_5:
    leaq lb_platform_arm64(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %r12d
.L13_6:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L13_14
    jmp .L13_7
.L13_14:
    movl %ebx, %r12d
    jmp .L13_8
.L13_7:
    leaq lb_platform_windows(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L13_9
    jmp .L13_15
.L13_15:
    movl %ebx, %r12d
    jmp .L13_10
.L13_9:
    leaq lb_platform_6x86_64(%rip), %rbx
    movq %rbx, %r10
    movzbl (%r10), %r12d
.L13_10:
    movzbl %r12b, %ebx
    movl %ebx, %r12d
.L13_8:
    movzbl %r12b, %ebx
    movzbl %bl, %ebx
    leaq -88(%rbp), %r10
    movl %ebx, (%r10)
    jmp .L13_12
.L13_11:
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L13_12:
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L13_2
.L13_1:
    leaq -64(%rbp), %rbx
    leaq lb_window_unsupported(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_3(%rip), %r12
    leaq -80(%rbp), %r13
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
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L13_4:
    jmp .L13_3
.L13_2:
.L13_3:
    leaq -64(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_12check_extent
    .type lb_window_12check_extent, @function
lb_window_12check_extent:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movl %esi, -80(%rbp)
    movl %edx, -96(%rbp)
    leaq -80(%rbp), %rbx
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
    leaq -96(%rbp), %r12
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
    leaq -96(%rbp), %rbx
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
    leaq -64(%rbp), %rbx
    leaq lb_window_15invalid_options(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_15(%rip), %r12
    leaq -112(%rbp), %r13
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
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L14_10:
    jmp .L14_3
.L14_2:
.L14_3:
    leaq -64(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_11push_scalar
    .type lb_window_11push_scalar, @function
lb_window_11push_scalar:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -48(%rbp)
    movl %esi, -64(%rbp)
    leaq -64(%rbp), %rbx
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
    leaq -48(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -120(%rbp), %r13
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
    subq $64, %rsp
    movq %r13, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq %r12, %rdi
    call lb_window_10push_event@PLT
    addq $64, %rsp
    jmp .L15_3
.L15_2:
.L15_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_10push_utf16
    .type lb_window_10push_utf16, @function
lb_window_10push_utf16:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    movl %esi, -72(%rbp)
    leaq -72(%rbp), %rbx
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
    leaq -56(%rbp), %r12
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
    movq %r12, %rdi
    movl $65533, %esi
    call lb_window_11push_scalar@PLT
    jmp .L16_8
.L16_7:
.L16_8:
    movq %r13, %r10
    movw %bx, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
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
    leaq -56(%rbp), %r12
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
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r14d
    movl %r14d, %eax
    movl $1024, %ecx
    mull %ecx
    jnc 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r14d
    movl %r14d, %eax
    movl $65536, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r14d
    movl %ebx, %r15d
    movl %r14d, %eax
    movl %r15d, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r14d
    movl %r14d, %eax
    movl $56320, %ecx
    subl %ecx, %eax
    jnc 1f
    leaq .Ltext_16(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r14d
    jmp .L16_17
.L16_16:
    movl $65533, %eax
    movl %eax, %r14d
.L16_17:
    movq %r12, %rdi
    movl %r14d, %esi
    call lb_window_11push_scalar@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L16_18:
    jmp .L16_12
.L16_11:
.L16_12:
    leaq -56(%rbp), %r12
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
    movq %r12, %rdi
    movl $65533, %esi
    call lb_window_11push_scalar@PLT
    jmp .L16_21
.L16_20:
.L16_21:
    movl %ebx, %r13d
    movq %r12, %rdi
    movl %r13d, %esi
    call lb_window_11push_scalar@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_10push_event
    .type lb_window_10push_event, @function
lb_window_10push_event:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    leaq 16(%rbp), %r10
    leaq -112(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    leaq -56(%rbp), %rbx
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
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    call lb_core_7trap_at@PLT
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
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_265(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $56, %rcx
    imulq %rcx, %r14
    movq %r14, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    leaq -112(%rbp), %r15
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
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq %r12, %r10
    movq %r14, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_9pop_event
    .type lb_window_9pop_event, @function
lb_window_9pop_event:
    pushq %rbp
    movq %rsp, %rbp
    subq $560, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -128(%rbp)
    leaq -128(%rbp), %rbx
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
    leaq -184(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -248(%rbp), %r13
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
    leaq -112(%rbp), %rbx
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
    movq -8(%rbp), %rdi
    movq $64, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
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
    leaq -304(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movl $12, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -368(%rbp), %r13
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
    leaq -112(%rbp), %rbx
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
    movq -8(%rbp), %rdi
    movq $64, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L18_6:
.L18_7:
    movq $14368, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -560(%rbp)
    movq -560(%rbp), %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    jne .L18_10
.L18_9:
    leaq -432(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    leaq -112(%rbp), %r12
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
    movq -8(%rbp), %rdi
    movq $64, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L18_10:
.L18_11:
    leaq -488(%rbp), %r13
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
    leaq .Ltext_20(%rip), %rdi
    leaq .Ltext_265(%rip), %rsi
    call lb_core_7trap_at@PLT
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
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    call lb_core_7trap_at@PLT
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
    movq -560(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -560(%rbp), %r10
    movq %rbx, (%r10)
    leaq -552(%rbp), %rbx
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
    leaq -112(%rbp), %r15
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
    movq -8(%rbp), %rdi
    movq $64, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_Presentation_size
    .type lb_window_Presentation_size, @function
lb_window_Presentation_size:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -120(%rbp)
    leaq -120(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -160(%rbp), %rdi
    call lb_window_Presentation_checked@PLT
    leaq -160(%rbp), %r12
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
    leaq -112(%rbp), %r13
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
    movq -8(%rbp), %rdi
    movq $72, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L19_3:
.L19_1:
    leaq -112(%rbp), %rbx
    movq $40, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_unsupported(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_3(%rip), %r13
    leaq -176(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $50, %rax
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
    movq -8(%rbp), %rdi
    movq $72, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L19_4:
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_Presentation_visible
    .type lb_window_Presentation_visible, @function
lb_window_Presentation_visible:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -88(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -128(%rbp), %rdi
    call lb_window_Presentation_checked@PLT
    leaq -128(%rbp), %r12
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
    leaq -80(%rbp), %r13
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
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L20_3:
.L20_1:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_unsupported(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_3(%rip), %r13
    leaq -144(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $50, %rax
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
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L20_4:
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_Presentation_10macos_view
    .type lb_window_Presentation_10macos_view, @function
lb_window_Presentation_10macos_view:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -88(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -128(%rbp), %rdi
    call lb_window_Presentation_checked@PLT
    leaq -128(%rbp), %r12
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
    leaq -80(%rbp), %r13
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
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L21_3:
.L21_1:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_unsupported(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_26(%rip), %r13
    leaq -144(%rbp), %r14
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
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L21_4:
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_Presentation_14windows_handle
    .type lb_window_Presentation_14windows_handle, @function
lb_window_Presentation_14windows_handle:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -88(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -128(%rbp), %rdi
    call lb_window_Presentation_checked@PLT
    leaq -128(%rbp), %r12
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
    leaq -80(%rbp), %r13
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
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L22_3:
.L22_1:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_unsupported(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_28(%rip), %r13
    leaq -144(%rbp), %r14
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
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L22_4:
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_Presentation_destroy
    .type lb_window_Presentation_destroy, @function
lb_window_Presentation_destroy:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -40(%rbp)
    leaq -40(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L23_1
    jmp .L23_2
.L23_1:
    jmp .L23_3
.L23_2:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L23_4:
.L23_3:
    leaq -96(%rbp), %rdi
    call lb_window_12check_thread@PLT
    leaq -96(%rbp), %r14
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L23_8
    jmp .L23_7
.L23_8:
    leaq -64(%rbp), %r13
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
    leaq -112(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $55, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_31(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
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
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_Presentation_checked
    .type lb_window_Presentation_checked, @function
lb_window_Presentation_checked:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -88(%rbp)
    leaq -88(%rbp), %r10
    movq (%r10), %r12
    leaq -120(%rbp), %rdi
    call lb_window_12check_thread@PLT
    leaq -120(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L24_2
    jmp .L24_1
.L24_2:
    leaq -80(%rbp), %rbx
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
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
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
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_32(%rip), %r13
    leaq -136(%rbp), %r14
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
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
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
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_closed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_33(%rip), %r13
    leaq -152(%rbp), %r14
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
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L24_11:
    jmp .L24_10
.L24_9:
.L24_10:
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L24_12:
    leaq .Ltext_34(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_12native_class
    .type lb_window_12native_class, @function
lb_window_12native_class:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -96(%rbp)
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call objc_getClass@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L25_1
    jmp .L25_2
.L25_1:
    jmp .L25_3
.L25_2:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_37(%rip), %r13
    leaq -112(%rbp), %r14
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
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L25_4:
.L25_3:
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L25_5:
    leaq .Ltext_38(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_9get_state
    .type lb_window_9get_state, @function
lb_window_9get_state:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    leaq -48(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    leaq -40(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq .Ltext_41(%rip), %r13
    movq %r12, %rdi
    movq %r13, %rsi
    movq %rbx, %rdx
    call object_getInstanceVariable@PLT
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
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L26_4:
.L26_3:
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L26_5:
    leaq .Ltext_42(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_10add_method
    .type lb_window_10add_method, @function
lb_window_10add_method:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -88(%rbp)
    movq %rdx, -104(%rbp)
    movq %rcx, -120(%rbp)
    movq %r8, -136(%rbp)
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -168(%rbp), %r10
    movq %r12, (%r10)
    movq %r12, %rdi
    call sel_registerName@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L27_5
    jmp .L27_6
.L27_6:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L27_5:
    jmp .L27_8
.L27_7:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L27_8:
    leaq -120(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq -136(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %rbx, %rdi
    movq %r12, %rsi
    movq %r13, %rdx
    movq %r14, %rcx
    call class_addMethod@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L27_2
.L27_1:
    leaq -72(%rbp), %rbx
    leaq lb_window_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_43(%rip), %r12
    leaq -152(%rbp), %r13
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
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L27_4:
    jmp .L27_3
.L27_2:
.L27_3:
    leaq -72(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_14close_callback
    .type lb_window_14close_callback, @function
lb_window_14close_callback:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    movq %rsi, -48(%rbp)
    movq %rdx, -64(%rbp)
    leaq -48(%rbp), %rbx
    leaq -64(%rbp), %rbx
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_window_9get_state@PLT
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
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L28_5:
    leaq .Ltext_44(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_15resize_callback
    .type lb_window_15resize_callback, @function
lb_window_15resize_callback:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    movq %rsi, -48(%rbp)
    movq %rdx, -64(%rbp)
    leaq -48(%rbp), %rbx
    leaq -64(%rbp), %rbx
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_window_9get_state@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L29_4
    jmp .L29_2
.L29_4:
.L29_1:
    leaq -120(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movl $2, %eax
    movq %r12, %r10
    movb %al, (%r10)
    subq $64, %rsp
    movq %r12, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq %rbx, %rdi
    call lb_window_10push_event@PLT
    addq $64, %rsp
    jmp .L29_3
.L29_2:
.L29_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_14focus_callback
    .type lb_window_14focus_callback, @function
lb_window_14focus_callback:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    movq %rsi, -72(%rbp)
    movq %rdx, -88(%rbp)
    leaq -88(%rbp), %rbx
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_window_9get_state@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L30_4
    jmp .L30_2
.L30_4:
.L30_1:
    leaq -72(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r13
    leaq .Ltext_45(%rip), %r12
    leaq -160(%rbp), %r10
    movq %r12, (%r10)
    movq %r12, %rdi
    call sel_registerName@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L30_11
    jmp .L30_12
.L30_12:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L30_11:
    jmp .L30_14
.L30_13:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L30_14:
    cmpq %r12, %r13
    sete %al
    movzbl %al, %r14d
    movzbl %r14b, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jne .L30_6
.L30_5:
    movq %rbx, %rdi
    call lb_window_16mac_clear_marked@PLT
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
    leaq -144(%rbp), %r12
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
    subq $64, %rsp
    movq %r12, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq %rbx, %rdi
    call lb_window_10push_event@PLT
    addq $64, %rsp
    jmp .L30_3
.L30_2:
.L30_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_12view_accepts
    .type lb_window_12view_accepts, @function
lb_window_12view_accepts:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -24(%rbp)
    movq %rsi, -40(%rbp)
    leaq -24(%rbp), %rbx
    leaq -40(%rbp), %rbx
    movl $1, %eax
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L31_1:
    leaq .Ltext_46(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_modifiers
    .type lb_window_modifiers, @function
lb_window_modifiers:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -56(%rbp)
    leaq -61(%rbp), %r12
    movq %r12, %r11
    movl $0, 0(%r11)
    movb $0, 4(%r11)
    leaq -56(%rbp), %rbx
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
    leaq -37(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movl 0(%r10), %eax
    movl %eax, 0(%r11)
    movzbl 4(%r10), %eax
    movb %al, 4(%r11)
    movq %r13, %r10
    movzbl 4(%r10), %r11d
    movl 0(%r10), %eax
    shlq $32, %r11
    orq %r11, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_12key_callback
    .type lb_window_12key_callback, @function
lb_window_12key_callback:
    pushq %rbp
    movq %rsp, %rbp
    subq $304, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    movq %rsi, -72(%rbp)
    movq %rdx, -88(%rbp)
    leaq -72(%rbp), %rbx
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -256(%rbp)
    movq -256(%rbp), %rdi
    call lb_window_9get_state@PLT
    movq %rax, -280(%rbp)
    movq -280(%rbp), %rax
    testq %rax, %rax
    jne .L33_1
    jmp .L33_2
.L33_1:
    jmp .L33_3
.L33_2:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L33_4:
.L33_3:
    leaq -88(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq .Ltext_49(%rip), %r14
    leaq -224(%rbp), %r10
    movq %r14, (%r10)
    movq %r14, %rdi
    call sel_registerName@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L33_33
    jmp .L33_34
.L33_34:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L33_33:
    jmp .L33_36
.L33_35:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L33_36:
    movq %r13, %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    movq %rax, -264(%rbp)
    leaq -144(%rbp), %rbx
    leaq -200(%rbp), %r12
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
    movq %rax, -288(%rbp)
    leaq .Ltext_50(%rip), %r12
    leaq -224(%rbp), %r10
    movq %r12, (%r10)
    movq %r12, %rdi
    call sel_registerName@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L33_37
    jmp .L33_38
.L33_38:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L33_37:
    jmp .L33_40
.L33_39:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L33_40:
    movq %r13, %rdi
    movq %r12, %rsi
    call objc_msgSend@PLT
    movq %rax, %r14
    movq %r14, %rdi
    call lb_window_modifiers@PLT
    leaq -205(%rbp), %r10
    movl %eax, 0(%r10)
    shrq $32, %rax
    movb %al, 4(%r10)
    leaq -205(%rbp), %r14
    movq %r14, %r10
    movq -288(%rbp), %r11
    movl 0(%r10), %eax
    movl %eax, 0(%r11)
    movzbl 4(%r10), %eax
    movb %al, 4(%r11)
    movq $2, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -296(%rbp)
    leaq .Ltext_51(%rip), %r14
    leaq -224(%rbp), %r10
    movq %r14, (%r10)
    movq %r14, %rdi
    call sel_registerName@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L33_41
    jmp .L33_42
.L33_42:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L33_41:
    jmp .L33_44
.L33_43:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L33_44:
    movq %r13, %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    movl %eax, %r12d
    leaq -240(%rbp), %r10
    movl %r12d, (%r10)
    leaq -240(%rbp), %r12
    movq %r12, %r10
    movzwl (%r10), %r12d
    movl $128, %ecx
    cmpl %ecx, %r12d
    jb .L33_46
.L33_45:
    movl $0, %eax
    leaq -248(%rbp), %r10
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
    leaq -248(%rbp), %r10
    movl %r14d, (%r10)
    movl %r14d, %r12d
    jmp .L33_50
.L33_49:
    leaq .Ltext_63(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L33_50:
    movq -296(%rbp), %r10
    movw %r12w, (%r10)
    movq -264(%rbp), %rax
    movq $10, %rcx
    cmpq %rcx, %rax
    sete %al
    movzbl %al, %eax
    movl %eax, -272(%rbp)
    movl -272(%rbp), %eax
    testl %eax, %eax
    jne .L33_63
    jmp .L33_8
.L33_63:
    movl -272(%rbp), %eax
    movl %eax, %r12d
    jmp .L33_9
.L33_8:
    movq -264(%rbp), %rax
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
    movl -272(%rbp), %eax
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
    leaq -224(%rbp), %r10
    movq %r15, (%r10)
    movq %r15, %rdi
    call sel_registerName@PLT
    movq %rax, %r15
    testq %r15, %r15
    jne .L33_51
    jmp .L33_52
.L33_52:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L33_51:
    jmp .L33_54
.L33_53:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L33_54:
    movq %r13, %rdi
    movq %r15, %rsi
    call objc_msgSend@PLT
    movl %eax, %r12d
    movq %r14, %r10
    movb %r12b, (%r10)
    jmp .L33_7
.L33_6:
.L33_7:
    movq -280(%rbp), %rax
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
    subq $64, %rsp
    movq %rbx, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq -280(%rbp), %rdi
    call lb_window_10push_event@PLT
    addq $64, %rsp
    jmp .L33_15
.L33_14:
.L33_15:
    movl -272(%rbp), %eax
    testl %eax, %eax
    jne .L33_19
    jmp .L33_64
.L33_64:
    movl -272(%rbp), %eax
    movl %eax, %ebx
    jmp .L33_20
.L33_19:
    movq -280(%rbp), %rax
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
    movq -288(%rbp), %rax
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
    movq -288(%rbp), %rax
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
    movq %rbx, %rdi
    call objc_getClass@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L33_25
    jmp .L33_26
.L33_25:
    jmp .L33_27
.L33_26:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L33_28:
.L33_27:
    leaq .Ltext_54(%rip), %r12
    leaq -224(%rbp), %r10
    movq %r12, (%r10)
    movq %r12, %rdi
    call sel_registerName@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L33_55
    jmp .L33_56
.L33_56:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L33_55:
    jmp .L33_58
.L33_57:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L33_58:
    movq %rbx, %rdi
    movq %r12, %rsi
    movq %r13, %rdx
    call objc_msgSend@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L33_29
    jmp .L33_30
.L33_29:
    jmp .L33_31
.L33_30:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L33_32:
.L33_31:
    leaq .Ltext_55(%rip), %rbx
    leaq -224(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %rdi
    call sel_registerName@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L33_59
    jmp .L33_60
.L33_60:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L33_59:
    jmp .L33_62
.L33_61:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L33_62:
    movq -256(%rbp), %rdi
    movq %rbx, %rsi
    movq %r14, %rdx
    call objc_msgSend@PLT
    jmp .L33_18
.L33_17:
.L33_18:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_16pointer_callback
    .type lb_window_16pointer_callback, @function
lb_window_16pointer_callback:
    pushq %rbp
    movq %rsp, %rbp
    subq $480, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    movq %rsi, -72(%rbp)
    movq %rdx, -88(%rbp)
    leaq -72(%rbp), %rbx
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -400(%rbp)
    movq -400(%rbp), %rdi
    call lb_window_9get_state@PLT
    movq %rax, -464(%rbp)
    movq -464(%rbp), %rax
    testq %rax, %rax
    jne .L34_1
    jmp .L34_2
.L34_1:
    jmp .L34_3
.L34_2:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L34_4:
.L34_3:
    leaq -88(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq .Ltext_49(%rip), %r14
    leaq -392(%rbp), %r10
    movq %r14, (%r10)
    movq %r14, %rdi
    call sel_registerName@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L34_47
    jmp .L34_48
.L34_48:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L34_47:
    jmp .L34_50
.L34_49:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L34_50:
    movq %r13, %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    movq %rax, -408(%rbp)
    leaq -104(%rbp), %rax
    movq %rax, -472(%rbp)
    leaq .Ltext_56(%rip), %r12
    leaq -392(%rbp), %r10
    movq %r12, (%r10)
    movq %r12, %rdi
    call sel_registerName@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L34_51
    jmp .L34_52
.L34_52:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L34_51:
    jmp .L34_54
.L34_53:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L34_54:
    leaq .Ltext_57(%rip), %r14
    leaq -392(%rbp), %r10
    movq %r14, (%r10)
    movq %r14, %rdi
    call sel_registerName@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L34_55
    jmp .L34_56
.L34_56:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L34_55:
    jmp .L34_58
.L34_57:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L34_58:
    movq %r13, %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    leaq -120(%rbp), %r10
    movq %xmm0, 0(%r10)
    movq %xmm1, 8(%r10)
    leaq -120(%rbp), %rax
    movq %rax, -416(%rbp)
    movq -416(%rbp), %r10
    movq 0(%r10), %xmm0
    movq 8(%r10), %xmm1
    movq -400(%rbp), %rdi
    movq %r12, %rsi
    movq -416(%rbp), %r10
    movq $0, %rdx
    call objc_msgSend@PLT
    leaq -136(%rbp), %r10
    movq %xmm0, 0(%r10)
    movq %xmm1, 8(%r10)
    leaq -136(%rbp), %rax
    movq %rax, -424(%rbp)
    movq -424(%rbp), %r10
    movq -472(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -192(%rbp), %rax
    movq %rax, -432(%rbp)
    leaq -248(%rbp), %rax
    movq %rax, -440(%rbp)
    movq -440(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movl $8, %eax
    movq -440(%rbp), %r10
    movb %al, (%r10)
    movq -472(%rbp), %r10
    movsd (%r10), %xmm8
    movsd %xmm8, -448(%rbp)
    movq -440(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movsd -448(%rbp), %xmm8
    movq %r15, %r10
    movsd %xmm8, (%r10)
    movq -472(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movsd (%r10), %xmm8
    movsd %xmm8, -456(%rbp)
    movq -440(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movsd -456(%rbp), %xmm8
    movq %r15, %r10
    movsd %xmm8, (%r10)
    movq -440(%rbp), %r10
    movq -432(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq -432(%rbp), %rax
    movq $4, %rcx
    addq %rcx, %rax
    movq %rax, -480(%rbp)
    leaq .Ltext_50(%rip), %r15
    leaq -392(%rbp), %r10
    movq %r15, (%r10)
    movq %r15, %rdi
    call sel_registerName@PLT
    movq %rax, %r15
    testq %r15, %r15
    jne .L34_59
    jmp .L34_60
.L34_60:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L34_59:
    jmp .L34_62
.L34_61:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L34_62:
    movq %r13, %rdi
    movq %r15, %rsi
    call objc_msgSend@PLT
    movq %rax, %r12
    movq %r12, %rdi
    call lb_window_modifiers@PLT
    leaq -253(%rbp), %r10
    movl %eax, 0(%r10)
    shrq $32, %rax
    movb %al, 4(%r10)
    leaq -253(%rbp), %r12
    movq %r12, %r10
    movq -480(%rbp), %r11
    movl 0(%r10), %eax
    movl %eax, 0(%r11)
    movzbl 4(%r10), %eax
    movb %al, 4(%r11)
    movq -408(%rbp), %rax
    movq $8, %rcx
    cmpq %rcx, %rax
    jne .L34_6
.L34_5:
    movl $14, %eax
    movq -432(%rbp), %r10
    movb %al, (%r10)
    jmp .L34_7
.L34_6:
    movq -408(%rbp), %rax
    movq $9, %rcx
    cmpq %rcx, %rax
    jne .L34_9
.L34_8:
    movq -464(%rbp), %rax
    movq $14400, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -312(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movl $15, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    subq $64, %rsp
    movq %rbx, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq -464(%rbp), %rdi
    call lb_window_10push_event@PLT
    addq $64, %rsp
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L34_11:
    jmp .L34_10
.L34_9:
    movq -408(%rbp), %rax
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
    movq -408(%rbp), %rax
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
    movq -408(%rbp), %rax
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
    movq -432(%rbp), %r10
    movb %al, (%r10)
    movq -432(%rbp), %rax
    movq $12, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    leaq .Ltext_58(%rip), %r12
    leaq -392(%rbp), %r10
    movq %r12, (%r10)
    movq %r12, %rdi
    call sel_registerName@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L34_63
    jmp .L34_64
.L34_64:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L34_63:
    jmp .L34_66
.L34_65:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L34_66:
    movq %r13, %rdi
    movq %r12, %rsi
    call objc_msgSend@PLT
    movq %rax, %r15
    movq %r14, %r10
    movl %r15d, (%r10)
    jmp .L34_14
.L34_13:
    movq -408(%rbp), %rax
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
    movq -408(%rbp), %rax
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
    movq -408(%rbp), %rax
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
    movq -432(%rbp), %r10
    movb %al, (%r10)
    movq -432(%rbp), %rax
    movq $12, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    leaq .Ltext_58(%rip), %r12
    leaq -392(%rbp), %r10
    movq %r12, (%r10)
    movq %r12, %rdi
    call sel_registerName@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L34_67
    jmp .L34_68
.L34_68:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L34_67:
    jmp .L34_70
.L34_69:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L34_70:
    movq %r13, %rdi
    movq %r12, %rsi
    call objc_msgSend@PLT
    movq %rax, %r15
    movq %r14, %r10
    movl %r15d, (%r10)
    jmp .L34_21
.L34_20:
    movq -408(%rbp), %rax
    movq $22, %rcx
    cmpq %rcx, %rax
    jne .L34_27
.L34_26:
    movl $11, %eax
    movq -432(%rbp), %r10
    movb %al, (%r10)
    movq -432(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    leaq .Ltext_59(%rip), %r12
    leaq -392(%rbp), %r10
    movq %r12, (%r10)
    movq %r12, %rdi
    call sel_registerName@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L34_71
    jmp .L34_72
.L34_72:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L34_71:
    jmp .L34_74
.L34_73:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L34_74:
    movq %r13, %rdi
    movq %r12, %rsi
    call objc_msgSend@PLT
    movapd %xmm0, %xmm12
    movq %r14, %r10
    movsd %xmm12, (%r10)
    movq -432(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq .Ltext_60(%rip), %r15
    leaq -392(%rbp), %r10
    movq %r15, (%r10)
    movq %r15, %rdi
    call sel_registerName@PLT
    movq %rax, %r15
    testq %r15, %r15
    jne .L34_75
    jmp .L34_76
.L34_76:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L34_75:
    jmp .L34_78
.L34_77:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L34_78:
    movq %r13, %rdi
    movq %r15, %rsi
    call objc_msgSend@PLT
    movapd %xmm0, %xmm12
    movq %rbx, %r10
    movsd %xmm12, (%r10)
    movq -432(%rbp), %rax
    movq $48, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    leaq .Ltext_61(%rip), %r12
    leaq -392(%rbp), %r10
    movq %r12, (%r10)
    movq %r12, %rdi
    call sel_registerName@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L34_79
    jmp .L34_80
.L34_80:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L34_79:
    jmp .L34_82
.L34_81:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L34_82:
    movq %r13, %rdi
    movq %r12, %rsi
    call objc_msgSend@PLT
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
    leaq -344(%rbp), %r12
    leaq .Ltext_62(%rip), %rbx
    leaq -392(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %rdi
    call sel_registerName@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L34_83
    jmp .L34_84
.L34_84:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L34_83:
    jmp .L34_86
.L34_85:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L34_86:
    movq -400(%rbp), %rsi
    movq %rbx, %rdx
    leaq -376(%rbp), %rdi
    call objc_msgSend@PLT
    leaq -376(%rbp), %r13
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq -464(%rbp), %rax
    movq $14400, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq $0, %rax
    movq %rax, %xmm12
    movsd -448(%rbp), %xmm8
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
    movsd -456(%rbp), %xmm8
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
    movsd -448(%rbp), %xmm8
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
    movsd -456(%rbp), %xmm8
    ucomisd %xmm8, %xmm12
    seta %al
    movzbl %al, %ebx
.L34_37:
    movzbl %bl, %r12d
    movq %r14, %r10
    movb %r12b, (%r10)
    movq -432(%rbp), %rax
    movq $12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L34_39
.L34_38:
    movq -432(%rbp), %r10
    movzbl (%r10), %ebx
    movl $9, %ecx
    cmpl %ecx, %ebx
    jne .L34_42
.L34_41:
    movq -464(%rbp), %rax
    movq $14401, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L34_43
.L34_42:
.L34_43:
    movq -432(%rbp), %r10
    movzbl (%r10), %ebx
    movl $10, %ecx
    cmpl %ecx, %ebx
    jne .L34_45
.L34_44:
    movq -464(%rbp), %rax
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
    subq $64, %rsp
    movq -432(%rbp), %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq -464(%rbp), %rdi
    call lb_window_10push_event@PLT
    addq $64, %rsp
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_10mac_cursor
    .type lb_window_10mac_cursor, @function
lb_window_10mac_cursor:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movl %esi, -96(%rbp)
    leaq .Ltext_64(%rip), %rbx
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    leaq -97(%rbp), %r13
    movq %r13, %r10
    movb %r12b, (%r10)
    leaq -98(%rbp), %r12
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
    movq %r12, %rsi
    leaq -144(%rbp), %rdi
    call lb_window_12native_class@PLT
    leaq -144(%rbp), %r13
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
    leaq -80(%rbp), %r12
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
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L35_28:
.L35_26:
    movq %r13, %r10
    movq (%r10), %r12
    leaq -176(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %rdi
    call sel_registerName@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L35_34
    jmp .L35_35
.L35_35:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L35_34:
    jmp .L35_37
.L35_36:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L35_37:
    movq %r12, %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L35_29
    jmp .L35_30
.L35_29:
    jmp .L35_31
.L35_30:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_73(%rip), %r13
    leaq -160(%rbp), %r14
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
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L35_32:
.L35_31:
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L35_33:
    leaq .Ltext_74(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_14mac_set_cursor
    .type lb_window_14mac_set_cursor, @function
lb_window_14mac_set_cursor:
    pushq %rbp
    movq %rsp, %rbp
    subq $224, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -96(%rbp)
    movl %edx, -112(%rbp)
    leaq -96(%rbp), %rbx
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
    leaq -112(%rbp), %r14
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
    leaq -80(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L36_6:
    jmp .L36_3
.L36_2:
.L36_3:
    call objc_autoreleasePoolPush@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L36_7
    jmp .L36_8
.L36_8:
    leaq .Ltext_75(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
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
    leaq -112(%rbp), %r15
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
    leaq -112(%rbp), %rax
    movq %rax, -208(%rbp)
    movq -208(%rbp), %r10
    movzbl (%r10), %eax
    movl %eax, -216(%rbp)
    movl -216(%rbp), %esi
    leaq -152(%rbp), %rdi
    call lb_window_10mac_cursor@PLT
    leaq -152(%rbp), %r14
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
    leaq -80(%rbp), %r12
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
    movq %r13, %rdi
    call objc_autoreleasePoolPop@PLT
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
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
    movl -216(%rbp), %eax
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
    leaq -168(%rbp), %r10
    movq %r14, (%r10)
    testq %r14, %r14
    jne .L36_24
    jmp .L36_25
.L36_24:
    jmp .L36_26
.L36_25:
    leaq .Ltext_39(%rip), %rbx
    leaq -184(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L36_26:
    jmp .L36_28
.L36_27:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L36_28:
    leaq .Ltext_76(%rip), %rbx
    leaq -200(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %rdi
    call sel_registerName@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L36_29
    jmp .L36_30
.L36_30:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L36_29:
    jmp .L36_32
.L36_31:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L36_32:
    movq %r14, %rdi
    movq %rbx, %rsi
    call objc_msgSend@PLT
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
    leaq -168(%rbp), %r10
    movq %rbx, (%r10)
    testq %rbx, %rbx
    jne .L36_33
    jmp .L36_34
.L36_33:
    jmp .L36_35
.L36_34:
    leaq .Ltext_39(%rip), %rbx
    leaq -184(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L36_35:
    jmp .L36_37
.L36_36:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L36_37:
    leaq .Ltext_77(%rip), %r12
    leaq -200(%rbp), %r10
    movq %r12, (%r10)
    movq %r12, %rdi
    call sel_registerName@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L36_38
    jmp .L36_39
.L36_39:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L36_38:
    jmp .L36_41
.L36_40:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L36_41:
    movq %rbx, %rdi
    movq %r12, %rsi
    call objc_msgSend@PLT
    jmp .L36_19
.L36_18:
.L36_19:
    movq %r13, %rdi
    call objc_autoreleasePoolPop@PLT
    leaq -80(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_15cursor_callback
    .type lb_window_15cursor_callback, @function
lb_window_15cursor_callback:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    movq %rsi, -48(%rbp)
    movq %rdx, -64(%rbp)
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_window_9get_state@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L37_1
    jmp .L37_2
.L37_1:
    jmp .L37_3
.L37_2:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
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
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L37_8:
.L37_7:
    leaq .Ltext_77(%rip), %rbx
    leaq -80(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %rdi
    call sel_registerName@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L37_9
    jmp .L37_10
.L37_10:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L37_9:
    jmp .L37_12
.L37_11:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L37_12:
    movq %r12, %rdi
    movq %rbx, %rsi
    call objc_msgSend@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_14mac_plain_text
    .type lb_window_14mac_plain_text, @function
lb_window_14mac_plain_text:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -48(%rbp)
    leaq .Ltext_102(%rip), %rbx
    movq %rbx, %rdi
    call objc_getClass@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L38_1
    jmp .L38_2
.L38_1:
    jmp .L38_3
.L38_2:
    movq $0, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L38_4:
.L38_3:
    leaq -48(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq .Ltext_103(%rip), %r13
    leaq -64(%rbp), %r10
    movq %r13, (%r10)
    movq %r13, %rdi
    call sel_registerName@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L38_10
    jmp .L38_11
.L38_11:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L38_10:
    jmp .L38_13
.L38_12:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L38_13:
    movq %r12, %rdi
    movq %r13, %rsi
    movq %rbx, %rdx
    call objc_msgSend@PLT
    movl %eax, %r14d
    testl %r14d, %r14d
    jne .L38_5
    jmp .L38_6
.L38_5:
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L38_8:
    jmp .L38_7
.L38_6:
.L38_7:
    leaq .Ltext_104(%rip), %rbx
    leaq -64(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %rdi
    call sel_registerName@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L38_14
    jmp .L38_15
.L38_15:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L38_14:
    jmp .L38_17
.L38_16:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L38_17:
    movq %r12, %rdi
    movq %rbx, %rsi
    call objc_msgSend@PLT
    movq %rax, %r13
    movq %r13, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L38_9:
    leaq .Ltext_105(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_16mac_clear_marked
    .type lb_window_16mac_clear_marked, @function
lb_window_16mac_clear_marked:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -48(%rbp)
    leaq -48(%rbp), %rbx
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
    leaq -64(%rbp), %r10
    movq %r14, (%r10)
    movq %r14, %rdi
    call sel_registerName@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L39_5
    jmp .L39_6
.L39_6:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L39_5:
    jmp .L39_8
.L39_7:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L39_8:
    movq %r13, %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
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
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_15mac_insert_text
    .type lb_window_15mac_insert_text, @function
lb_window_15mac_insert_text:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    movq %rsi, -72(%rbp)
    movq %rdx, -88(%rbp)
    leaq -104(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_window_9get_state@PLT
    movq %rax, -136(%rbp)
    movq -136(%rbp), %rax
    testq %rax, %rax
    jne .L40_1
    jmp .L40_2
.L40_1:
    jmp .L40_3
.L40_2:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L40_4:
.L40_3:
    movq -136(%rbp), %rdi
    call lb_window_16mac_clear_marked@PLT
    movq -136(%rbp), %rax
    movq $14380, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L40_6
.L40_5:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L40_8:
    jmp .L40_7
.L40_6:
.L40_7:
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    call lb_window_14mac_plain_text@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L40_9
    jmp .L40_10
.L40_9:
    jmp .L40_11
.L40_10:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L40_12:
.L40_11:
    leaq .Ltext_107(%rip), %r13
    leaq -120(%rbp), %r10
    movq %r13, (%r10)
    movq %r13, %rdi
    call sel_registerName@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L40_24
    jmp .L40_25
.L40_25:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L40_24:
    jmp .L40_27
.L40_26:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L40_27:
    movq %r12, %rdi
    movq %r13, %rsi
    call objc_msgSend@PLT
    movq %rax, %r14
    movq -136(%rbp), %rax
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
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    cmpq %r15, %r14
    jbe .L40_14
.L40_13:
    movq -136(%rbp), %rax
    movq $14376, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L40_16:
    jmp .L40_15
.L40_14:
.L40_15:
    leaq .Ltext_109(%rip), %rax
    movq %rax, -128(%rbp)
    movq $0, %rax
    movq %rax, %r15
.L40_17:
    cmpq %r14, %r15
    jae .L40_20
.L40_18:
    movq -128(%rbp), %rax
    leaq -120(%rbp), %r10
    movq %rax, (%r10)
    movq -128(%rbp), %rdi
    call sel_registerName@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L40_28
    jmp .L40_29
.L40_29:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L40_28:
    jmp .L40_31
.L40_30:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L40_31:
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r15, %rdx
    call objc_msgSend@PLT
    movl %eax, %r13d
    movq -136(%rbp), %rdi
    movl %r13d, %esi
    call lb_window_10push_utf16@PLT
.L40_19:
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r15
    jmp .L40_17
.L40_20:
    movq -136(%rbp), %rax
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
    movq -136(%rbp), %rdi
    movl $65533, %esi
    call lb_window_11push_scalar@PLT
    jmp .L40_23
.L40_22:
.L40_23:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_14mac_set_marked
    .type lb_window_14mac_set_marked, @function
lb_window_14mac_set_marked:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    movq %rsi, -72(%rbp)
    movq %rdx, -88(%rbp)
    leaq -104(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    leaq 16(%rbp), %r10
    leaq -120(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_window_9get_state@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L41_1
    jmp .L41_2
.L41_1:
    jmp .L41_3
.L41_2:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L41_4:
.L41_3:
    movq %rbx, %rdi
    call lb_window_16mac_clear_marked@PLT
    movq $14380, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L41_6
.L41_5:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L41_8:
    jmp .L41_7
.L41_6:
.L41_7:
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rdi
    call lb_window_14mac_plain_text@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L41_9
    jmp .L41_10
.L41_9:
    jmp .L41_11
.L41_10:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L41_12:
.L41_11:
    leaq .Ltext_107(%rip), %r13
    leaq -136(%rbp), %r10
    movq %r13, (%r10)
    movq %r13, %rdi
    call sel_registerName@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L41_16
    jmp .L41_17
.L41_17:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L41_16:
    jmp .L41_19
.L41_18:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L41_19:
    movq %r12, %rdi
    movq %r13, %rsi
    call objc_msgSend@PLT
    movq %rax, %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    jbe .L41_14
.L41_13:
    movq $14408, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    leaq .Ltext_110(%rip), %r13
    leaq -136(%rbp), %r10
    movq %r13, (%r10)
    movq %r13, %rdi
    call sel_registerName@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L41_20
    jmp .L41_21
.L41_21:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L41_20:
    jmp .L41_23
.L41_22:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L41_23:
    movq %r12, %rdi
    movq %r13, %rsi
    call objc_msgSend@PLT
    movq %rax, -144(%rbp)
    movq -144(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $14416, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -152(%rbp)
    leaq -104(%rbp), %rax
    movq %rax, -160(%rbp)
    movq -160(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -168(%rbp)
    movq -168(%rbp), %rax
    movq -152(%rbp), %r10
    movq %rax, (%r10)
    movq $14424, %rcx
    movq %rbx, %rax
    addq %rcx, %rax
    movq %rax, -176(%rbp)
    movq -160(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq -176(%rbp), %r10
    movq %r15, (%r10)
    jmp .L41_15
.L41_14:
.L41_15:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_10mac_unmark
    .type lb_window_10mac_unmark, @function
lb_window_10mac_unmark:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -24(%rbp)
    movq %rsi, -40(%rbp)
    leaq -24(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_window_9get_state@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L42_4
    jmp .L42_2
.L42_4:
.L42_1:
    movq %rbx, %rdi
    call lb_window_16mac_clear_marked@PLT
    jmp .L42_3
.L42_2:
.L42_3:
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_14mac_has_marked
    .type lb_window_14mac_has_marked, @function
lb_window_14mac_has_marked:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    movq %rsi, -48(%rbp)
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_window_9get_state@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L43_1
    jmp .L43_2
.L43_1:
    jmp .L43_3
.L43_2:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
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
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L43_5:
    leaq .Ltext_111(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_16mac_marked_range
    .type lb_window_16mac_marked_range, @function
lb_window_16mac_marked_range:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -72(%rbp)
    movq %rsi, -88(%rbp)
    leaq -72(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_window_9get_state@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L44_1
    jmp .L44_2
.L44_1:
    jmp .L44_3
.L44_2:
    leaq -104(%rbp), %rbx
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
    leaq -56(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
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
    leaq -120(%rbp), %rbx
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
    leaq -56(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L44_8:
.L44_7:
    leaq -136(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_107(%rip), %rbx
    leaq -152(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %rdi
    call sel_registerName@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L44_10
    jmp .L44_11
.L44_11:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L44_10:
    jmp .L44_13
.L44_12:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L44_13:
    movq %r12, %rdi
    movq %rbx, %rsi
    call objc_msgSend@PLT
    movq %rax, %r14
    movq $8, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    leaq -56(%rbp), %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r14, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L44_9:
    leaq .Ltext_112(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_18mac_selected_range
    .type lb_window_18mac_selected_range, @function
lb_window_18mac_selected_range:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -64(%rbp)
    movq %rsi, -80(%rbp)
    leaq -64(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_window_9get_state@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L45_1
    jmp .L45_2
.L45_1:
    jmp .L45_3
.L45_2:
    leaq -96(%rbp), %rbx
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
    leaq -48(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r12, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L45_4:
.L45_3:
    leaq -112(%rbp), %r12
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
    leaq -48(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %r10
    movq 0(%r10), %rax
    movq 8(%r10), %rdx
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L45_5:
    leaq .Ltext_113(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_21mac_marked_attributes
    .type lb_window_21mac_marked_attributes, @function
lb_window_21mac_marked_attributes:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    movq %rsi, -56(%rbp)
    leaq .Ltext_53(%rip), %rbx
    movq %rbx, %rdi
    call objc_getClass@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L46_1
    jmp .L46_2
.L46_1:
    jmp .L46_3
.L46_2:
    movq $0, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L46_4:
.L46_3:
    leaq .Ltext_114(%rip), %r12
    leaq -72(%rbp), %r10
    movq %r12, (%r10)
    movq %r12, %rdi
    call sel_registerName@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L46_6
    jmp .L46_7
.L46_7:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L46_6:
    jmp .L46_9
.L46_8:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L46_9:
    movq %rbx, %rdi
    movq %r12, %rsi
    call objc_msgSend@PLT
    movq %rax, %r13
    movq %r13, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L46_5:
    leaq .Ltext_115(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_18mac_text_substring
    .type lb_window_18mac_text_substring, @function
lb_window_18mac_text_substring:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    movq %rsi, -56(%rbp)
    leaq -72(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    movq %r8, -88(%rbp)
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L47_4
    jmp .L47_2
.L47_4:
.L47_1:
    leaq -104(%rbp), %r12
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
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L47_5:
    leaq .Ltext_116(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_14mac_text_index
    .type lb_window_14mac_text_index, @function
lb_window_14mac_text_index:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -24(%rbp)
    movq %rsi, -40(%rbp)
    leaq -56(%rbp), %r10
    movq %xmm0, 0(%r10)
    movq %xmm1, 8(%r10)
    leaq lb_window_13mac_not_found(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L48_1:
    leaq .Ltext_117(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_13mac_text_rect
    .type lb_window_13mac_text_rect, @function
lb_window_13mac_text_rect:
    pushq %rbp
    movq %rsp, %rbp
    subq $304, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -96(%rbp)
    movq %rdx, -112(%rbp)
    leaq -128(%rbp), %r10
    movq %rcx, 0(%r10)
    movq %r8, 8(%r10)
    movq %r9, -144(%rbp)
    leaq -144(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L49_4
    jmp .L49_2
.L49_4:
.L49_1:
    leaq -128(%rbp), %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L49_3
.L49_2:
.L49_3:
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_window_9get_state@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L49_5
    jmp .L49_6
.L49_5:
    jmp .L49_7
.L49_6:
    leaq -176(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    leaq -80(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
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
    leaq -208(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    leaq -80(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L49_12:
.L49_11:
    leaq .Ltext_118(%rip), %rbx
    leaq -304(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %rdi
    call sel_registerName@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L49_14
    jmp .L49_15
.L49_15:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L49_14:
    jmp .L49_17
.L49_16:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L49_17:
    leaq -240(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    leaq -256(%rbp), %r14
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
    subq $32, %rsp
    movq %r13, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq %r12, %rsi
    movq %rbx, %rdx
    leaq -288(%rbp), %rdi
    call objc_msgSend@PLT
    addq $32, %rsp
    leaq -288(%rbp), %r13
    leaq -80(%rbp), %r14
    movq %r13, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq %r14, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L49_13:
    leaq .Ltext_119(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_16mac_text_command
    .type lb_window_16mac_text_command, @function
lb_window_16mac_text_command:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %rdi, -24(%rbp)
    movq %rsi, -40(%rbp)
    movq %rdx, -56(%rbp)
    leaq -56(%rbp), %rbx
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_21mac_cancel_text_input
    .type lb_window_21mac_cancel_text_input, @function
lb_window_21mac_cancel_text_input:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call lb_window_16mac_clear_marked@PLT
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
    leaq -56(%rbp), %r10
    movq %r12, (%r10)
    movq %r12, %rdi
    call sel_registerName@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L51_9
    jmp .L51_10
.L51_10:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L51_9:
    jmp .L51_12
.L51_11:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L51_12:
    movq %rbx, %rdi
    movq %r12, %rsi
    call objc_msgSend@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L51_8
    jmp .L51_6
.L51_8:
.L51_5:
    leaq .Ltext_121(%rip), %rbx
    leaq -56(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %rdi
    call sel_registerName@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L51_13
    jmp .L51_14
.L51_14:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L51_13:
    jmp .L51_16
.L51_15:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L51_16:
    movq %r13, %rdi
    movq %rbx, %rsi
    call objc_msgSend@PLT
    jmp .L51_7
.L51_6:
.L51_7:
    jmp .L51_3
.L51_2:
.L51_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_10make_class
    .type lb_window_10make_class, @function
lb_window_10make_class:
    pushq %rbp
    movq %rsp, %rbp
    subq $192, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -104(%rbp)
    movq %rdx, -120(%rbp)
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rsi
    leaq -160(%rbp), %rdi
    call lb_window_12native_class@PLT
    leaq -160(%rbp), %r12
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
    leaq -88(%rbp), %r13
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
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L52_3:
.L52_1:
    movq %r12, %r10
    movq (%r10), %rbx
    leaq -120(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %rdi
    movq %r13, %rsi
    movq $0, %rdx
    call objc_allocateClassPair@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L52_4
    jmp .L52_5
.L52_4:
    jmp .L52_6
.L52_5:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_122(%rip), %r13
    leaq -176(%rbp), %r14
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
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L52_7:
.L52_6:
    leaq .Ltext_41(%rip), %r12
    leaq .Ltext_123(%rip), %r13
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $8, %rdx
    movl $3, %ecx
    movq %r13, %r8
    call class_addIvar@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L52_9
.L52_8:
    leaq -88(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    leaq lb_window_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_124(%rip), %r14
    leaq -192(%rbp), %r15
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
    movq %rbx, %rdi
    call objc_disposeClassPair@PLT
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L52_11:
    jmp .L52_10
.L52_9:
.L52_10:
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $32, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L52_12:
    leaq .Ltext_125(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_13setup_classes
    .type lb_window_13setup_classes, @function
lb_window_13setup_classes:
    pushq %rbp
    movq %rsp, %rbp
    subq $1408, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq lb_window_14delegate_class(%rip), %rax
    movq %rax, -1240(%rbp)
    movq -1240(%rbp), %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L53_2
.L53_1:
    leaq .Ltext_126(%rip), %r12
    leaq .Ltext_127(%rip), %r13
    movq %r12, %rsi
    movq %r13, %rdx
    leaq -120(%rbp), %rdi
    call lb_window_10make_class@PLT
    leaq -120(%rbp), %r13
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
    leaq -80(%rbp), %r12
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
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L53_6:
.L53_4:
    movq %r13, %r10
    movq (%r10), %r12
    leaq .Ltext_128(%rip), %r14
    movq lb_window_14close_callback@GOTPCREL(%rip), %r15
    leaq .Ltext_129(%rip), %rbx
    movq %r12, %rsi
    movq %r14, %rdx
    movq %r15, %rcx
    movq %rbx, %r8
    leaq -152(%rbp), %rdi
    call lb_window_10add_method@PLT
    leaq -152(%rbp), %r14
    movq $24, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_8
    jmp .L53_7
.L53_8:
    leaq -80(%rbp), %rbx
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
    movq %r12, %rdi
    call objc_disposeClassPair@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L53_9:
.L53_7:
    leaq .Ltext_130(%rip), %rbx
    movq lb_window_15resize_callback@GOTPCREL(%rip), %r13
    leaq .Ltext_131(%rip), %r14
    movq %r12, %rsi
    movq %rbx, %rdx
    movq %r13, %rcx
    movq %r14, %r8
    leaq -184(%rbp), %rdi
    call lb_window_10add_method@PLT
    leaq -184(%rbp), %r15
    movq $24, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_11
    jmp .L53_10
.L53_11:
    leaq -80(%rbp), %rbx
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
    movq %r12, %rdi
    call objc_disposeClassPair@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L53_12:
.L53_10:
    leaq .Ltext_132(%rip), %rbx
    movq %r12, %rsi
    movq %rbx, %rdx
    movq %r13, %rcx
    movq %r14, %r8
    leaq -216(%rbp), %rdi
    call lb_window_10add_method@PLT
    leaq -216(%rbp), %r15
    movq $24, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_14
    jmp .L53_13
.L53_14:
    leaq -80(%rbp), %rbx
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
    movq %r12, %rdi
    call objc_disposeClassPair@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L53_15:
.L53_13:
    leaq .Ltext_45(%rip), %rbx
    movq lb_window_14focus_callback@GOTPCREL(%rip), %r13
    movq %r12, %rsi
    movq %rbx, %rdx
    movq %r13, %rcx
    movq %r14, %r8
    leaq -248(%rbp), %rdi
    call lb_window_10add_method@PLT
    leaq -248(%rbp), %r15
    movq $24, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_17
    jmp .L53_16
.L53_17:
    leaq -80(%rbp), %rbx
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
    movq %r12, %rdi
    call objc_disposeClassPair@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L53_18:
.L53_16:
    leaq .Ltext_133(%rip), %rbx
    movq %r12, %rsi
    movq %rbx, %rdx
    movq %r13, %rcx
    movq %r14, %r8
    leaq -280(%rbp), %rdi
    call lb_window_10add_method@PLT
    leaq -280(%rbp), %r15
    movq $24, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_20
    jmp .L53_19
.L53_20:
    leaq -80(%rbp), %rbx
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
    movq %r12, %rdi
    call objc_disposeClassPair@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L53_21:
.L53_19:
    leaq .Ltext_134(%rip), %rbx
    movq lb_window_15launch_callback@GOTPCREL(%rip), %r13
    movq %r12, %rsi
    movq %rbx, %rdx
    movq %r13, %rcx
    movq %r14, %r8
    leaq -312(%rbp), %rdi
    call lb_window_10add_method@PLT
    leaq -312(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_23
    jmp .L53_22
.L53_23:
    leaq -80(%rbp), %rbx
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
    movq %r12, %rdi
    call objc_disposeClassPair@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L53_24:
.L53_22:
    movq %r12, %rdi
    call objc_registerClassPair@PLT
    movq -1240(%rbp), %r10
    movq %r12, (%r10)
    jmp .L53_3
.L53_2:
.L53_3:
    leaq lb_window_10view_class(%rip), %rax
    movq %rax, -1248(%rbp)
    movq -1248(%rbp), %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jne .L53_26
.L53_25:
    leaq .Ltext_135(%rip), %r12
    leaq .Ltext_136(%rip), %r13
    movq %r12, %rsi
    movq %r13, %rdx
    leaq -352(%rbp), %rdi
    call lb_window_10make_class@PLT
    leaq -352(%rbp), %r13
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
    leaq -80(%rbp), %r12
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
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L53_30:
.L53_28:
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -1256(%rbp)
    leaq .Ltext_137(%rip), %r14
    movq lb_window_12view_accepts@GOTPCREL(%rip), %r15
    leaq .Ltext_88(%rip), %rax
    movq %rax, -1264(%rbp)
    movq -1256(%rbp), %rsi
    movq %r14, %rdx
    movq %r15, %rcx
    movq -1264(%rbp), %r8
    leaq -384(%rbp), %rdi
    call lb_window_10add_method@PLT
    leaq -384(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L53_32
    jmp .L53_31
.L53_32:
    leaq -80(%rbp), %r13
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
    movq -1256(%rbp), %rdi
    call objc_disposeClassPair@PLT
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L53_33:
.L53_31:
    leaq .Ltext_138(%rip), %rbx
    movq -1256(%rbp), %rsi
    movq %rbx, %rdx
    movq %r15, %rcx
    movq -1264(%rbp), %r8
    leaq -416(%rbp), %rdi
    call lb_window_10add_method@PLT
    leaq -416(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_35
    jmp .L53_34
.L53_35:
    leaq -80(%rbp), %rbx
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
    movq -1256(%rbp), %rdi
    call objc_disposeClassPair@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L53_36:
.L53_34:
    leaq .Ltext_139(%rip), %rbx
    movq lb_window_15cursor_callback@GOTPCREL(%rip), %r13
    leaq .Ltext_131(%rip), %r14
    movq -1256(%rbp), %rsi
    movq %rbx, %rdx
    movq %r13, %rcx
    movq %r14, %r8
    leaq -448(%rbp), %rdi
    call lb_window_10add_method@PLT
    leaq -448(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_38
    jmp .L53_37
.L53_38:
    leaq -80(%rbp), %rbx
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
    movq -1256(%rbp), %rdi
    call objc_disposeClassPair@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L53_39:
.L53_37:
    movq -1256(%rbp), %rax
    leaq -848(%rbp), %r10
    movq %rax, (%r10)
    leaq .Ltext_78(%rip), %rbx
    movq %rbx, %rdi
    call objc_getProtocol@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L53_57
    jmp .L53_58
.L53_57:
    jmp .L53_59
.L53_58:
    leaq -832(%rbp), %rbx
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq .Ltext_79(%rip), %r13
    leaq -864(%rbp), %r15
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
    leaq -480(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L53_98
.L53_60:
.L53_59:
    movq -1256(%rbp), %rdi
    movq %rbx, %rsi
    call class_addProtocol@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L53_62
.L53_61:
    leaq -832(%rbp), %rbx
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq .Ltext_80(%rip), %r13
    leaq -880(%rbp), %r15
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
    leaq -480(%rbp), %r11
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
    movq lb_window_15mac_insert_text@GOTPCREL(%rip), %r13
    leaq .Ltext_82(%rip), %r15
    movq -1256(%rbp), %rsi
    movq %rbx, %rdx
    movq %r13, %rcx
    movq %r15, %r8
    leaq -912(%rbp), %rdi
    call lb_window_10add_method@PLT
    leaq -912(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_66
    jmp .L53_65
.L53_66:
    leaq -832(%rbp), %rbx
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
    leaq -480(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L53_98
.L53_67:
.L53_65:
    leaq .Ltext_83(%rip), %rbx
    movq lb_window_14mac_set_marked@GOTPCREL(%rip), %r13
    leaq .Ltext_84(%rip), %r15
    movq -1256(%rbp), %rsi
    movq %rbx, %rdx
    movq %r13, %rcx
    movq %r15, %r8
    leaq -944(%rbp), %rdi
    call lb_window_10add_method@PLT
    leaq -944(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_69
    jmp .L53_68
.L53_69:
    leaq -832(%rbp), %rbx
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
    leaq -480(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L53_98
.L53_70:
.L53_68:
    leaq .Ltext_85(%rip), %rbx
    movq lb_window_10mac_unmark@GOTPCREL(%rip), %r13
    leaq .Ltext_86(%rip), %r15
    movq -1256(%rbp), %rsi
    movq %rbx, %rdx
    movq %r13, %rcx
    movq %r15, %r8
    leaq -976(%rbp), %rdi
    call lb_window_10add_method@PLT
    leaq -976(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_72
    jmp .L53_71
.L53_72:
    leaq -832(%rbp), %rbx
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
    leaq -480(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L53_98
.L53_73:
.L53_71:
    leaq .Ltext_87(%rip), %rbx
    movq lb_window_14mac_has_marked@GOTPCREL(%rip), %r13
    movq -1256(%rbp), %rsi
    movq %rbx, %rdx
    movq %r13, %rcx
    movq -1264(%rbp), %r8
    leaq -1008(%rbp), %rdi
    call lb_window_10add_method@PLT
    leaq -1008(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_75
    jmp .L53_74
.L53_75:
    leaq -832(%rbp), %rbx
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
    leaq -480(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L53_98
.L53_76:
.L53_74:
    leaq .Ltext_89(%rip), %rbx
    movq lb_window_16mac_marked_range@GOTPCREL(%rip), %r13
    leaq .Ltext_90(%rip), %r15
    movq -1256(%rbp), %rsi
    movq %rbx, %rdx
    movq %r13, %rcx
    movq %r15, %r8
    leaq -1040(%rbp), %rdi
    call lb_window_10add_method@PLT
    leaq -1040(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_78
    jmp .L53_77
.L53_78:
    leaq -832(%rbp), %rbx
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
    leaq -480(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L53_98
.L53_79:
.L53_77:
    leaq .Ltext_91(%rip), %rbx
    movq lb_window_18mac_selected_range@GOTPCREL(%rip), %r13
    movq -1256(%rbp), %rsi
    movq %rbx, %rdx
    movq %r13, %rcx
    movq %r15, %r8
    leaq -1072(%rbp), %rdi
    call lb_window_10add_method@PLT
    leaq -1072(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_81
    jmp .L53_80
.L53_81:
    leaq -832(%rbp), %rbx
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
    leaq -480(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L53_98
.L53_82:
.L53_80:
    leaq .Ltext_92(%rip), %rbx
    movq lb_window_21mac_marked_attributes@GOTPCREL(%rip), %r13
    leaq .Ltext_93(%rip), %r15
    movq -1256(%rbp), %rsi
    movq %rbx, %rdx
    movq %r13, %rcx
    movq %r15, %r8
    leaq -1104(%rbp), %rdi
    call lb_window_10add_method@PLT
    leaq -1104(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_84
    jmp .L53_83
.L53_84:
    leaq -832(%rbp), %rbx
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
    leaq -480(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L53_98
.L53_85:
.L53_83:
    leaq .Ltext_94(%rip), %rbx
    movq lb_window_18mac_text_substring@GOTPCREL(%rip), %r13
    leaq .Ltext_95(%rip), %r15
    movq -1256(%rbp), %rsi
    movq %rbx, %rdx
    movq %r13, %rcx
    movq %r15, %r8
    leaq -1136(%rbp), %rdi
    call lb_window_10add_method@PLT
    leaq -1136(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_87
    jmp .L53_86
.L53_87:
    leaq -832(%rbp), %rbx
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
    leaq -480(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L53_98
.L53_88:
.L53_86:
    leaq .Ltext_96(%rip), %rbx
    movq lb_window_14mac_text_index@GOTPCREL(%rip), %r13
    leaq .Ltext_97(%rip), %r15
    movq -1256(%rbp), %rsi
    movq %rbx, %rdx
    movq %r13, %rcx
    movq %r15, %r8
    leaq -1168(%rbp), %rdi
    call lb_window_10add_method@PLT
    leaq -1168(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_90
    jmp .L53_89
.L53_90:
    leaq -832(%rbp), %rbx
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
    leaq -480(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L53_98
.L53_91:
.L53_89:
    leaq .Ltext_98(%rip), %rbx
    movq lb_window_13mac_text_rect@GOTPCREL(%rip), %r13
    leaq .Ltext_99(%rip), %r15
    movq -1256(%rbp), %rsi
    movq %rbx, %rdx
    movq %r13, %rcx
    movq %r15, %r8
    leaq -1200(%rbp), %rdi
    call lb_window_10add_method@PLT
    leaq -1200(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_93
    jmp .L53_92
.L53_93:
    leaq -832(%rbp), %rbx
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
    leaq -480(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L53_98
.L53_94:
.L53_92:
    leaq .Ltext_100(%rip), %rbx
    movq lb_window_16mac_text_command@GOTPCREL(%rip), %r13
    leaq .Ltext_101(%rip), %r15
    movq -1256(%rbp), %rsi
    movq %rbx, %rdx
    movq %r13, %rcx
    movq %r15, %r8
    leaq -1232(%rbp), %rdi
    call lb_window_10add_method@PLT
    leaq -1232(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_96
    jmp .L53_95
.L53_96:
    leaq -832(%rbp), %rbx
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
    leaq -480(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L53_98
.L53_97:
.L53_95:
    leaq -832(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -480(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L53_98:
    leaq -480(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L53_41
    jmp .L53_40
.L53_41:
    leaq -80(%rbp), %rbx
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
    movq -1256(%rbp), %rdi
    call objc_disposeClassPair@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L53_42:
.L53_40:
    leaq -504(%rbp), %rbx
    leaq -528(%rbp), %rax
    movq %rax, -1272(%rbp)
    leaq .Ltext_140(%rip), %r15
    movq -1272(%rbp), %r10
    movq %r15, (%r10)
    leaq .Ltext_141(%rip), %r15
    movq -1272(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq %r15, (%r10)
    leaq .Ltext_142(%rip), %r12
    movq -1272(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r12, (%r10)
    movq -1272(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq lb_window_12key_callback@GOTPCREL(%rip), %r12
    leaq -560(%rbp), %rax
    movq %rax, -1408(%rbp)
    movq -1408(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -1280(%rbp)
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
    movq -1256(%rbp), %rsi
    movq %r13, %rdx
    movq %r12, %rcx
    movq %r14, %r8
    leaq -560(%rbp), %rdi
    call lb_window_10add_method@PLT
    movq -1280(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L53_48
    jmp .L53_47
.L53_48:
    leaq -80(%rbp), %rbx
    movq -1408(%rbp), %r10
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
    movq -1256(%rbp), %rdi
    call objc_disposeClassPair@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
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
    leaq -664(%rbp), %rbx
    leaq -768(%rbp), %r12
    leaq .Ltext_143(%rip), %rax
    movq %rax, -1288(%rbp)
    movq -1288(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    leaq .Ltext_144(%rip), %rax
    movq %rax, -1296(%rbp)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq -1296(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq .Ltext_145(%rip), %rax
    movq %rax, -1304(%rbp)
    movq $16, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq -1304(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq .Ltext_146(%rip), %rax
    movq %rax, -1312(%rbp)
    movq $24, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq -1312(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq .Ltext_147(%rip), %rax
    movq %rax, -1320(%rbp)
    movq $32, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq -1320(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq .Ltext_148(%rip), %rax
    movq %rax, -1328(%rbp)
    movq $40, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq -1328(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq .Ltext_149(%rip), %rax
    movq %rax, -1336(%rbp)
    movq $48, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq -1336(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq .Ltext_150(%rip), %rax
    movq %rax, -1344(%rbp)
    movq $56, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq -1344(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq .Ltext_151(%rip), %rax
    movq %rax, -1352(%rbp)
    movq $64, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq -1352(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq .Ltext_152(%rip), %rax
    movq %rax, -1360(%rbp)
    movq $72, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq -1360(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq .Ltext_153(%rip), %rax
    movq %rax, -1368(%rbp)
    movq $80, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq -1368(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq .Ltext_154(%rip), %rax
    movq %rax, -1376(%rbp)
    movq $88, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq -1376(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    leaq .Ltext_155(%rip), %rax
    movq %rax, -1384(%rbp)
    movq $96, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq -1384(%rbp), %rax
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
    movq lb_window_16pointer_callback@GOTPCREL(%rip), %r12
    leaq -800(%rbp), %rax
    movq %rax, -1400(%rbp)
    movq -1400(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -1392(%rbp)
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
    movq -1256(%rbp), %rsi
    movq %r13, %rdx
    movq %r12, %rcx
    movq %r14, %r8
    leaq -800(%rbp), %rdi
    call lb_window_10add_method@PLT
    movq -1392(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L53_55
    jmp .L53_54
.L53_55:
    leaq -80(%rbp), %rbx
    movq -1400(%rbp), %r10
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
    movq -1256(%rbp), %rdi
    call objc_disposeClassPair@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
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
    movq -1256(%rbp), %rdi
    call objc_registerClassPair@PLT
    movq -1256(%rbp), %rax
    movq -1248(%rbp), %r10
    movq %rax, (%r10)
    jmp .L53_27
.L53_26:
.L53_27:
    leaq -80(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_8mac_open
    .type lb_window_8mac_open, @function
lb_window_8mac_open:
    pushq %rbp
    movq %rsp, %rbp
    subq $15296, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq 16(%rbp), %r10
    leaq -120(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    call objc_autoreleasePoolPush@PLT
    movq %rax, -15296(%rbp)
    movq -15296(%rbp), %rax
    testq %rax, %rax
    jne .L54_1
    jmp .L54_2
.L54_2:
    leaq .Ltext_156(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_1:
    leaq -152(%rbp), %rdi
    call lb_window_13setup_classes@PLT
    leaq -152(%rbp), %r13
    movq $24, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L54_4
    jmp .L54_3
.L54_4:
    leaq -88(%rbp), %r12
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
    movq -15296(%rbp), %rdi
    call objc_autoreleasePoolPop@PLT
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
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
    movq %r13, %rsi
    leaq -192(%rbp), %rdi
    call lb_window_12native_class@PLT
    leaq -192(%rbp), %r14
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
    leaq -88(%rbp), %r13
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
    movq -15296(%rbp), %rdi
    call objc_autoreleasePoolPop@PLT
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L54_11:
.L54_9:
    movq %r14, %r10
    movq (%r10), %r13
    leaq .Ltext_158(%rip), %r15
    leaq -15168(%rbp), %r10
    movq %r15, (%r10)
    movq %r15, %rdi
    call sel_registerName@PLT
    movq %rax, %r15
    testq %r15, %r15
    jne .L54_83
    jmp .L54_84
.L54_84:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_83:
    jmp .L54_86
.L54_85:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_86:
    movq %r13, %rdi
    movq %r15, %rsi
    call objc_msgSend@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L54_12
    jmp .L54_13
.L54_12:
    jmp .L54_14
.L54_13:
    leaq -88(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    leaq lb_window_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_159(%rip), %r14
    leaq -208(%rbp), %r15
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
    movq -15296(%rbp), %rdi
    call objc_autoreleasePoolPop@PLT
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L54_15:
.L54_14:
    movq %r14, %rsi
    leaq -240(%rbp), %rdi
    call lb_window_13finish_launch@PLT
    leaq -240(%rbp), %r15
    movq $24, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L54_17
    jmp .L54_16
.L54_17:
    leaq -88(%rbp), %r12
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
    movq -15296(%rbp), %rdi
    call objc_autoreleasePoolPop@PLT
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L54_18:
.L54_16:
    leaq .Ltext_160(%rip), %r13
    leaq -15168(%rbp), %r10
    movq %r13, (%r10)
    movq %r13, %rdi
    call sel_registerName@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L54_87
    jmp .L54_88
.L54_88:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_87:
    jmp .L54_90
.L54_89:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_90:
    movq %r14, %rdi
    movq %r13, %rsi
    movq $0, %rdx
    call objc_msgSend@PLT
    movl %eax, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    jne .L54_20
.L54_19:
    leaq -88(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    leaq lb_window_failed(%rip), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movq %r13, %r10
    movl %r14d, (%r10)
    leaq .Ltext_161(%rip), %r14
    leaq -256(%rbp), %r15
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
    movq -15296(%rbp), %rdi
    call objc_autoreleasePoolPop@PLT
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
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
    leaq -272(%rbp), %r13
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -312(%rbp), %r14
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
    call lb_core_7trap_at@PLT
.L54_23:
    movq %r13, %r10
    movq (%r10), %r15
    movq %r12, %rsi
    movq $14432, %rdx
    movq $8, %rcx
    leaq -336(%rbp), %rdi
    movq %r15, %r11
    call *%r11
    leaq -336(%rbp), %rbx
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
    leaq -14768(%rbp), %r13
    movq %r13, %rdi
    xorl %esi, %esi
    movq $14432, %rdx
    call memset@PLT
    movq %r12, %rdi
    movq %r13, %rsi
    movq $14432, %rdx
    call memcpy@PLT
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
    leaq -88(%rbp), %r12
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
    movq -15296(%rbp), %rdi
    call objc_autoreleasePoolPop@PLT
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L54_30:
.L54_28:
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, -15240(%rbp)
    movq -15240(%rbp), %rax
    movq $14392, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $0, %esi
    leaq -14808(%rbp), %rdi
    call lb_window_10mac_cursor@PLT
    leaq -14808(%rbp), %r15
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
    leaq -88(%rbp), %r13
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
    movq -15240(%rbp), %rdi
    call lb_window_11mac_destroy@PLT
    movq -15296(%rbp), %rdi
    call objc_autoreleasePoolPop@PLT
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L54_33:
.L54_31:
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, -15248(%rbp)
    movq -15248(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq -14840(%rbp), %rax
    movq %rax, -15256(%rbp)
    leaq -14872(%rbp), %rax
    movq %rax, -15264(%rbp)
    movq -15264(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    leaq -14888(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq -120(%rbp), %rax
    movq %rax, -15272(%rbp)
    movq -15272(%rbp), %rax
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
    movq -15272(%rbp), %rax
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
    movq -15264(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -15264(%rbp), %r10
    movq -15256(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq .Ltext_165(%rip), %rbx
    movq %rbx, %rsi
    leaq -14928(%rbp), %rdi
    call lb_window_12native_class@PLT
    leaq -14928(%rbp), %r14
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
    leaq -88(%rbp), %r12
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
    movq -15240(%rbp), %rdi
    call lb_window_11mac_destroy@PLT
    movq -15296(%rbp), %rdi
    call objc_autoreleasePoolPop@PLT
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L54_36:
.L54_34:
    movq %r14, %r10
    movq (%r10), %rbx
    leaq .Ltext_166(%rip), %rax
    movq %rax, -15280(%rbp)
    movq -15280(%rbp), %rax
    leaq -15168(%rbp), %r10
    movq %rax, (%r10)
    movq -15280(%rbp), %rdi
    call sel_registerName@PLT
    movq %rax, %r15
    testq %r15, %r15
    jne .L54_91
    jmp .L54_92
.L54_92:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_91:
    jmp .L54_94
.L54_93:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_94:
    movq %rbx, %rdi
    movq %r15, %rsi
    call objc_msgSend@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L54_37
    jmp .L54_38
.L54_37:
    jmp .L54_39
.L54_38:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_167(%rip), %r13
    leaq -14944(%rbp), %r14
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
    movq -15240(%rbp), %rdi
    call lb_window_11mac_destroy@PLT
    movq -15296(%rbp), %rdi
    call objc_autoreleasePoolPop@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L54_40:
.L54_39:
    leaq .Ltext_168(%rip), %rbx
    leaq -15168(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %rdi
    call sel_registerName@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L54_95
    jmp .L54_96
.L54_96:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_95:
    jmp .L54_98
.L54_97:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_98:
    movq -15272(%rbp), %rax
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
    subq $32, %rsp
    movq -15256(%rbp), %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq %r14, %rdi
    movq %rbx, %rsi
    movq %r15, %rdx
    movq $2, %rcx
    movl $0, %r8d
    call objc_msgSend@PLT
    addq $32, %rsp
    movq %rax, %r12
    testq %r12, %r12
    jne .L54_44
    jmp .L54_45
.L54_44:
    jmp .L54_46
.L54_45:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_169(%rip), %r13
    leaq -14960(%rbp), %r14
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
    movq -15240(%rbp), %rdi
    call lb_window_11mac_destroy@PLT
    movq -15296(%rbp), %rdi
    call objc_autoreleasePoolPop@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L54_47:
.L54_46:
    movq -15240(%rbp), %r10
    movq %r12, (%r10)
    leaq .Ltext_170(%rip), %rbx
    leaq -15168(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %rdi
    call sel_registerName@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L54_99
    jmp .L54_100
.L54_100:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_99:
    jmp .L54_102
.L54_101:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_102:
    movq %r12, %rdi
    movq %rbx, %rsi
    movl $0, %edx
    call objc_msgSend@PLT
    leaq lb_window_10view_class(%rip), %r14
    movq %r14, %r10
    movq (%r10), %r14
    leaq -15184(%rbp), %r10
    movq %r14, (%r10)
    testq %r14, %r14
    jne .L54_103
    jmp .L54_104
.L54_103:
    jmp .L54_105
.L54_104:
    leaq .Ltext_39(%rip), %rbx
    leaq -15200(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_105:
    jmp .L54_107
.L54_106:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_107:
    movq -15280(%rbp), %rax
    leaq -15168(%rbp), %r10
    movq %rax, (%r10)
    movq -15280(%rbp), %rdi
    call sel_registerName@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L54_108
    jmp .L54_109
.L54_109:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_108:
    jmp .L54_111
.L54_110:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_111:
    movq %r14, %rdi
    movq %rbx, %rsi
    call objc_msgSend@PLT
    movq %rax, %r15
    testq %r15, %r15
    jne .L54_48
    jmp .L54_49
.L54_48:
    jmp .L54_50
.L54_49:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_171(%rip), %r13
    leaq -14976(%rbp), %r14
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
    movq -15240(%rbp), %rdi
    call lb_window_11mac_destroy@PLT
    movq -15296(%rbp), %rdi
    call objc_autoreleasePoolPop@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L54_51:
.L54_50:
    leaq .Ltext_172(%rip), %rbx
    leaq -15168(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %rdi
    call sel_registerName@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L54_112
    jmp .L54_113
.L54_113:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_112:
    jmp .L54_115
.L54_114:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_115:
    subq $32, %rsp
    movq -15256(%rbp), %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq %r15, %rdi
    movq %rbx, %rsi
    call objc_msgSend@PLT
    addq $32, %rsp
    movq %rax, %r14
    testq %r14, %r14
    jne .L54_52
    jmp .L54_53
.L54_52:
    jmp .L54_54
.L54_53:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_173(%rip), %r13
    leaq -14992(%rbp), %r14
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
    movq -15240(%rbp), %rdi
    call lb_window_11mac_destroy@PLT
    movq -15296(%rbp), %rdi
    call objc_autoreleasePoolPop@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L54_55:
.L54_54:
    movq -15240(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r14, (%r10)
    leaq -15216(%rbp), %r10
    movq %r14, (%r10)
    movq -15240(%rbp), %rax
    leaq -15232(%rbp), %r10
    movq %rax, (%r10)
    movq -15240(%rbp), %rax
    testq %rax, %rax
    jne .L54_119
    jmp .L54_117
.L54_119:
.L54_116:
    leaq .Ltext_41(%rip), %rbx
    movq %r14, %rdi
    movq %rbx, %rsi
    movq -15240(%rbp), %rdx
    call object_setInstanceVariable@PLT
    movq %rax, %rbx
    jmp .L54_118
.L54_117:
    leaq .Ltext_41(%rip), %rbx
    movq %r14, %rdi
    movq %rbx, %rsi
    movq $0, %rdx
    call object_setInstanceVariable@PLT
    movq %rax, %rbx
.L54_118:
.L54_120:
    leaq .Ltext_174(%rip), %rbx
    leaq -15168(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %rdi
    call sel_registerName@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L54_121
    jmp .L54_122
.L54_122:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_121:
    jmp .L54_124
.L54_123:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_124:
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r14, %rdx
    call objc_msgSend@PLT
    leaq .Ltext_175(%rip), %r15
    movq %r15, %rsi
    leaq -15032(%rbp), %rdi
    call lb_window_12native_class@PLT
    leaq -15032(%rbp), %r13
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
    leaq -88(%rbp), %r12
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
    movq -15240(%rbp), %rdi
    call lb_window_11mac_destroy@PLT
    movq -15296(%rbp), %rdi
    call objc_autoreleasePoolPop@PLT
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L54_58:
.L54_56:
    movq %r13, %r10
    movq (%r10), %rbx
    movq -15280(%rbp), %rax
    leaq -15168(%rbp), %r10
    movq %rax, (%r10)
    movq -15280(%rbp), %rdi
    call sel_registerName@PLT
    movq %rax, %r15
    testq %r15, %r15
    jne .L54_125
    jmp .L54_126
.L54_126:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_125:
    jmp .L54_128
.L54_127:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_128:
    movq %rbx, %rdi
    movq %r15, %rsi
    call objc_msgSend@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L54_59
    jmp .L54_60
.L54_59:
    jmp .L54_61
.L54_60:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_176(%rip), %r13
    leaq -15048(%rbp), %r14
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
    movq -15240(%rbp), %rdi
    call lb_window_11mac_destroy@PLT
    movq -15296(%rbp), %rdi
    call objc_autoreleasePoolPop@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L54_62:
.L54_61:
    leaq .Ltext_177(%rip), %rbx
    leaq -15168(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %rdi
    call sel_registerName@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L54_129
    jmp .L54_130
.L54_130:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_129:
    jmp .L54_132
.L54_131:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_132:
    subq $32, %rsp
    movq -15256(%rbp), %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq %r13, %rdi
    movq %rbx, %rsi
    movq $1573, %rdx
    movq %r14, %rcx
    movq $0, %r8
    call objc_msgSend@PLT
    addq $32, %rsp
    movq %rax, %r15
    testq %r15, %r15
    jne .L54_63
    jmp .L54_64
.L54_63:
    jmp .L54_65
.L54_64:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_178(%rip), %r13
    leaq -15064(%rbp), %r14
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
    movq -15240(%rbp), %rdi
    call lb_window_11mac_destroy@PLT
    movq -15296(%rbp), %rdi
    call objc_autoreleasePoolPop@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L54_66:
.L54_65:
    leaq .Ltext_179(%rip), %rbx
    leaq -15168(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %rdi
    call sel_registerName@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L54_133
    jmp .L54_134
.L54_134:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_133:
    jmp .L54_136
.L54_135:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_136:
    movq %r14, %rdi
    movq %rbx, %rsi
    movq %r15, %rdx
    call objc_msgSend@PLT
    leaq .Ltext_106(%rip), %rax
    movq %rax, -15288(%rbp)
    movq -15288(%rbp), %rax
    leaq -15168(%rbp), %r10
    movq %rax, (%r10)
    movq -15288(%rbp), %rdi
    call sel_registerName@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L54_137
    jmp .L54_138
.L54_138:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_137:
    jmp .L54_140
.L54_139:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_140:
    movq %r15, %rdi
    movq %r13, %rsi
    call objc_msgSend@PLT
    leaq lb_window_14delegate_class(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -15184(%rbp), %r10
    movq %rbx, (%r10)
    testq %rbx, %rbx
    jne .L54_141
    jmp .L54_142
.L54_141:
    jmp .L54_143
.L54_142:
    leaq .Ltext_39(%rip), %rbx
    leaq -15200(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_143:
    jmp .L54_145
.L54_144:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_145:
    leaq .Ltext_180(%rip), %r13
    leaq -15168(%rbp), %r10
    movq %r13, (%r10)
    movq %r13, %rdi
    call sel_registerName@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L54_146
    jmp .L54_147
.L54_147:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_146:
    jmp .L54_149
.L54_148:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_149:
    movq %rbx, %rdi
    movq %r13, %rsi
    call objc_msgSend@PLT
    movq %rax, %r15
    testq %r15, %r15
    jne .L54_67
    jmp .L54_68
.L54_67:
    jmp .L54_69
.L54_68:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_181(%rip), %r13
    leaq -15080(%rbp), %r14
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
    movq -15240(%rbp), %rdi
    call lb_window_11mac_destroy@PLT
    movq -15296(%rbp), %rdi
    call objc_autoreleasePoolPop@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L54_70:
.L54_69:
    movq -15240(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq %r15, (%r10)
    leaq -15216(%rbp), %r10
    movq %r15, (%r10)
    movq -15240(%rbp), %rax
    leaq -15232(%rbp), %r10
    movq %rax, (%r10)
    movq -15240(%rbp), %rax
    testq %rax, %rax
    jne .L54_153
    jmp .L54_151
.L54_153:
.L54_150:
    leaq .Ltext_41(%rip), %rbx
    movq %r15, %rdi
    movq %rbx, %rsi
    movq -15240(%rbp), %rdx
    call object_setInstanceVariable@PLT
    movq %rax, %rbx
    jmp .L54_152
.L54_151:
    leaq .Ltext_41(%rip), %rbx
    movq %r15, %rdi
    movq %rbx, %rsi
    movq $0, %rdx
    call object_setInstanceVariable@PLT
    movq %rax, %rbx
.L54_152:
.L54_154:
    leaq .Ltext_182(%rip), %rbx
    leaq -15168(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %rdi
    call sel_registerName@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L54_155
    jmp .L54_156
.L54_156:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_155:
    jmp .L54_158
.L54_157:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_158:
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r15, %rdx
    call objc_msgSend@PLT
    leaq .Ltext_183(%rip), %r13
    leaq -15168(%rbp), %r10
    movq %r13, (%r10)
    movq %r13, %rdi
    call sel_registerName@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L54_159
    jmp .L54_160
.L54_160:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_159:
    jmp .L54_162
.L54_161:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_162:
    movq %r12, %rdi
    movq %r13, %rsi
    movl $1, %edx
    call objc_msgSend@PLT
    leaq .Ltext_184(%rip), %rbx
    leaq -15168(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %rdi
    call sel_registerName@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L54_163
    jmp .L54_164
.L54_164:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_163:
    jmp .L54_166
.L54_165:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_166:
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r14, %rdx
    call objc_msgSend@PLT
    movl %eax, %ebx
    leaq .Ltext_102(%rip), %r13
    movq %r13, %rsi
    leaq -15120(%rbp), %rdi
    call lb_window_12native_class@PLT
    leaq -15120(%rbp), %r15
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
    leaq -88(%rbp), %r12
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
    movq -15240(%rbp), %rdi
    call lb_window_11mac_destroy@PLT
    movq -15296(%rbp), %rdi
    call objc_autoreleasePoolPop@PLT
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L54_73:
.L54_71:
    movq %r15, %r10
    movq (%r10), %rbx
    movq -15280(%rbp), %rax
    leaq -15168(%rbp), %r10
    movq %rax, (%r10)
    movq -15280(%rbp), %rdi
    call sel_registerName@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L54_167
    jmp .L54_168
.L54_168:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_167:
    jmp .L54_170
.L54_169:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_170:
    movq %rbx, %rdi
    movq %r13, %rsi
    call objc_msgSend@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L54_74
    jmp .L54_75
.L54_74:
    jmp .L54_76
.L54_75:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_185(%rip), %r13
    leaq -15136(%rbp), %r14
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
    movq -15240(%rbp), %rdi
    call lb_window_11mac_destroy@PLT
    movq -15296(%rbp), %rdi
    call objc_autoreleasePoolPop@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L54_77:
.L54_76:
    leaq .Ltext_186(%rip), %rbx
    leaq -15168(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %rdi
    call sel_registerName@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L54_171
    jmp .L54_172
.L54_172:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_171:
    jmp .L54_174
.L54_173:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_174:
    movq -15272(%rbp), %r10
    movq (%r10), %r13
    movq -15272(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    movq %r14, %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    movq %r15, %rcx
    movq $4, %r8
    call objc_msgSend@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L54_78
    jmp .L54_79
.L54_78:
    jmp .L54_80
.L54_79:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_187(%rip), %r13
    leaq -15152(%rbp), %r14
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
    movq -15240(%rbp), %rdi
    call lb_window_11mac_destroy@PLT
    movq -15296(%rbp), %rdi
    call objc_autoreleasePoolPop@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L54_81:
.L54_80:
    leaq .Ltext_188(%rip), %rbx
    leaq -15168(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %rdi
    call sel_registerName@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L54_175
    jmp .L54_176
.L54_176:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_175:
    jmp .L54_178
.L54_177:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_178:
    movq %r12, %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    call objc_msgSend@PLT
    leaq .Ltext_189(%rip), %r14
    leaq -15168(%rbp), %r10
    movq %r14, (%r10)
    movq %r14, %rdi
    call sel_registerName@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L54_179
    jmp .L54_180
.L54_180:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_179:
    jmp .L54_182
.L54_181:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_182:
    movq %r12, %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    leaq -88(%rbp), %rbx
    movq -15240(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movl $0, %eax
    movq %r15, %r10
    movb %al, (%r10)
    movq -15288(%rbp), %rax
    leaq -15168(%rbp), %r10
    movq %rax, (%r10)
    movq -15288(%rbp), %rdi
    call sel_registerName@PLT
    movq %rax, %r15
    testq %r15, %r15
    jne .L54_183
    jmp .L54_184
.L54_184:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_183:
    jmp .L54_186
.L54_185:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_186:
    movq %r13, %rdi
    movq %r15, %rsi
    call objc_msgSend@PLT
    movq -15296(%rbp), %rdi
    call objc_autoreleasePoolPop@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L54_82:
    leaq .Ltext_106(%rip), %rbx
    leaq -15168(%rbp), %r10
    movq %rbx, (%r10)
    leaq -15168(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call sel_registerName@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L54_187
    jmp .L54_188
.L54_188:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_187:
    movq %rbx, %r12
    jmp .L54_190
.L54_189:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L54_190:
    movq %r12, %r13
    movq %rbx, %rdi
    movq %r13, %rsi
    call objc_msgSend@PLT
    movq %r14, %r13
    movq %r13, %rdi
    call objc_autoreleasePoolPop@PLT
    leaq .Ltext_190(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_13finish_launch
    .type lb_window_13finish_launch, @function
lb_window_13finish_launch:
    pushq %rbp
    movq %rsp, %rbp
    subq $256, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -96(%rbp)
    leaq .Ltext_191(%rip), %rbx
    movq %rbx, %rsi
    leaq -136(%rbp), %rdi
    call lb_window_12native_class@PLT
    leaq -136(%rbp), %r12
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
    leaq -80(%rbp), %r13
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
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L55_3:
.L55_1:
    movq %r12, %r10
    movq (%r10), %rbx
    leaq .Ltext_192(%rip), %r13
    leaq -208(%rbp), %r10
    movq %r13, (%r10)
    movq %r13, %rdi
    call sel_registerName@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L55_15
    jmp .L55_16
.L55_16:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L55_15:
    jmp .L55_18
.L55_17:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L55_18:
    movq %rbx, %rdi
    movq %r13, %rsi
    call objc_msgSend@PLT
    movq %rax, %r12
    leaq -224(%rbp), %r10
    movq %r12, (%r10)
    testq %r12, %r12
    jne .L55_19
    jmp .L55_20
.L55_19:
    jmp .L55_21
.L55_20:
    leaq .Ltext_39(%rip), %rbx
    leaq -240(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L55_21:
    jmp .L55_23
.L55_22:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L55_23:
    leaq .Ltext_193(%rip), %rbx
    leaq -208(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %rdi
    call sel_registerName@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L55_24
    jmp .L55_25
.L55_25:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L55_24:
    jmp .L55_27
.L55_26:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L55_27:
    movq %r12, %rdi
    movq %rbx, %rsi
    call objc_msgSend@PLT
    movl %eax, %r13d
    testl %r13d, %r13d
    jne .L55_4
    jmp .L55_5
.L55_4:
    leaq -80(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L55_7:
    jmp .L55_6
.L55_5:
.L55_6:
    leaq lb_window_14delegate_class(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -224(%rbp), %r10
    movq %rbx, (%r10)
    testq %rbx, %rbx
    jne .L55_28
    jmp .L55_29
.L55_28:
    jmp .L55_30
.L55_29:
    leaq .Ltext_39(%rip), %rbx
    leaq -240(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L55_30:
    jmp .L55_32
.L55_31:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L55_32:
    leaq .Ltext_180(%rip), %r12
    leaq -208(%rbp), %r10
    movq %r12, (%r10)
    movq %r12, %rdi
    call sel_registerName@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L55_33
    jmp .L55_34
.L55_34:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L55_33:
    jmp .L55_36
.L55_35:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L55_36:
    movq %rbx, %rdi
    movq %r12, %rsi
    call objc_msgSend@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L55_8
    jmp .L55_9
.L55_8:
    jmp .L55_10
.L55_9:
    leaq -80(%rbp), %rbx
    leaq lb_window_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_194(%rip), %r12
    leaq -152(%rbp), %r13
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
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L55_11:
.L55_10:
    leaq .Ltext_195(%rip), %rbx
    movq %rbx, %rsi
    leaq -192(%rbp), %rdi
    call lb_window_12native_class@PLT
    leaq -192(%rbp), %r12
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
    leaq -80(%rbp), %r14
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
    leaq -208(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %rdi
    call sel_registerName@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L55_37
    jmp .L55_38
.L55_38:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L55_37:
    jmp .L55_40
.L55_39:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L55_40:
    movq %r13, %rdi
    movq %rbx, %rsi
    call objc_msgSend@PLT
    movq %r14, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L55_14:
.L55_12:
    movq %r12, %r10
    movq (%r10), %rbx
    leaq .Ltext_196(%rip), %r14
    leaq -208(%rbp), %r10
    movq %r14, (%r10)
    movq %r14, %rdi
    call sel_registerName@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L55_41
    jmp .L55_42
.L55_42:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L55_41:
    jmp .L55_44
.L55_43:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L55_44:
    movq %rbx, %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    movq %rax, %r12
    leaq -224(%rbp), %r10
    movq %r12, (%r10)
    testq %r12, %r12
    jne .L55_45
    jmp .L55_46
.L55_45:
    jmp .L55_47
.L55_46:
    leaq .Ltext_39(%rip), %rbx
    leaq -240(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L55_47:
    jmp .L55_49
.L55_48:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L55_49:
    leaq .Ltext_197(%rip), %rbx
    leaq -208(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %rdi
    call sel_registerName@PLT
    movq %rax, -248(%rbp)
    movq -248(%rbp), %rax
    testq %rax, %rax
    jne .L55_50
    jmp .L55_51
.L55_51:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L55_50:
    jmp .L55_53
.L55_52:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L55_53:
    leaq .Ltext_134(%rip), %r14
    leaq -208(%rbp), %r10
    movq %r14, (%r10)
    movq %r14, %rdi
    call sel_registerName@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L55_54
    jmp .L55_55
.L55_55:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L55_54:
    jmp .L55_57
.L55_56:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L55_57:
    movq NSApplicationDidFinishLaunchingNotification@GOTPCREL(%rip), %r15
    movq %r15, %r10
    movq (%r10), %r15
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r12, %rdi
    movq -248(%rbp), %rsi
    movq %r13, %rdx
    movq %r14, %rcx
    movq %r15, %r8
    movq %rbx, %r9
    call objc_msgSend@PLT
    leaq .Ltext_198(%rip), %r15
    leaq -208(%rbp), %r10
    movq %r15, (%r10)
    movq %r15, %rdi
    call sel_registerName@PLT
    movq %rax, %r15
    testq %r15, %r15
    jne .L55_58
    jmp .L55_59
.L55_59:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L55_58:
    jmp .L55_61
.L55_60:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L55_61:
    movq %rbx, %rdi
    movq %r15, %rsi
    call objc_msgSend@PLT
    leaq .Ltext_199(%rip), %r14
    leaq -208(%rbp), %r10
    movq %r14, (%r10)
    movq %r14, %rdi
    call sel_registerName@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L55_62
    jmp .L55_63
.L55_63:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L55_62:
    jmp .L55_65
.L55_64:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L55_65:
    movq %r12, %rdi
    movq %r14, %rsi
    movq %r13, %rdx
    call objc_msgSend@PLT
    leaq .Ltext_106(%rip), %rbx
    leaq -208(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %rdi
    call sel_registerName@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L55_66
    jmp .L55_67
.L55_67:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L55_66:
    jmp .L55_69
.L55_68:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L55_69:
    movq %r13, %rdi
    movq %rbx, %rsi
    call objc_msgSend@PLT
    leaq -80(%rbp), %r12
    movq $24, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movl $0, %eax
    movq %r14, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_15launch_callback
    .type lb_window_15launch_callback, @function
lb_window_15launch_callback:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -48(%rbp)
    movq %rsi, -64(%rbp)
    movq %rdx, -80(%rbp)
    leaq -48(%rbp), %rbx
    leaq -64(%rbp), %rbx
    leaq -80(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq .Ltext_200(%rip), %r12
    leaq -128(%rbp), %r10
    movq %r12, (%r10)
    movq %r12, %rdi
    call sel_registerName@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L56_4
    jmp .L56_5
.L56_5:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L56_4:
    jmp .L56_7
.L56_6:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L56_7:
    movq %rbx, %rdi
    movq %r12, %rsi
    call objc_msgSend@PLT
    movq %rax, %r13
    leaq -144(%rbp), %r10
    movq %r13, (%r10)
    testq %r13, %r13
    jne .L56_8
    jmp .L56_9
.L56_8:
    jmp .L56_10
.L56_9:
    leaq .Ltext_39(%rip), %rbx
    leaq -160(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L56_10:
    jmp .L56_12
.L56_11:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L56_12:
    leaq .Ltext_201(%rip), %rbx
    movq %rbx, %rdi
    call objc_getClass@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L56_1
    jmp .L56_2
.L56_1:
    jmp .L56_3
.L56_2:
    leaq .Ltext_202(%rip), %rbx
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $27, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_203(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_203(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L56_3:
    leaq .Ltext_204(%rip), %r12
    leaq -128(%rbp), %r10
    movq %r12, (%r10)
    movq %r12, %rdi
    call sel_registerName@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L56_13
    jmp .L56_14
.L56_14:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L56_13:
    jmp .L56_16
.L56_15:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L56_16:
    leaq -112(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq $0, %rax
    movq %rax, %xmm12
    subq $32, %rsp
    movq $0, %rax
    movq %rax, 0(%rsp)
    movq $0, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq %r14, %r10
    movq 0(%r10), %xmm0
    movq 8(%r10), %xmm1
    movapd %xmm12, %xmm2
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $15, %rdx
    movq %r14, %r10
    movq $0, %rcx
    movq $0, %r8
    movq $0, %r9
    call objc_msgSend@PLT
    addq $32, %rsp
    movq %rax, %r14
    leaq -144(%rbp), %r10
    movq %r14, (%r10)
    testq %r14, %r14
    jne .L56_17
    jmp .L56_18
.L56_17:
    jmp .L56_19
.L56_18:
    leaq .Ltext_39(%rip), %rbx
    leaq -160(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L56_19:
    jmp .L56_21
.L56_20:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L56_21:
    leaq .Ltext_205(%rip), %rbx
    leaq -128(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %rdi
    call sel_registerName@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L56_22
    jmp .L56_23
.L56_23:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L56_22:
    jmp .L56_25
.L56_24:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L56_25:
    movq %r13, %rdi
    movq %rbx, %rsi
    movq %r14, %rdx
    movl $1, %ecx
    call objc_msgSend@PLT
    leaq .Ltext_206(%rip), %r12
    leaq -128(%rbp), %r10
    movq %r12, (%r10)
    movq %r12, %rdi
    call sel_registerName@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L56_26
    jmp .L56_27
.L56_27:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L56_26:
    jmp .L56_29
.L56_28:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L56_29:
    movq %r13, %rdi
    movq %r12, %rsi
    movq $0, %rdx
    call objc_msgSend@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_8mac_show
    .type lb_window_8mac_show, @function
lb_window_8mac_show:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -48(%rbp)
    call objc_autoreleasePoolPush@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L57_1
    jmp .L57_2
.L57_2:
    leaq .Ltext_207(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L57_1:
    leaq lb_window_application(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -64(%rbp), %r10
    movq %r12, (%r10)
    testq %r12, %r12
    jne .L57_3
    jmp .L57_4
.L57_3:
    jmp .L57_5
.L57_4:
    leaq .Ltext_39(%rip), %rbx
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L57_5:
    jmp .L57_7
.L57_6:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L57_7:
    leaq .Ltext_208(%rip), %r13
    leaq -96(%rbp), %r10
    movq %r13, (%r10)
    movq %r13, %rdi
    call sel_registerName@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L57_8
    jmp .L57_9
.L57_9:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L57_8:
    jmp .L57_11
.L57_10:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L57_11:
    movq %r12, %rdi
    movq %r13, %rsi
    movl $1, %edx
    call objc_msgSend@PLT
    leaq -48(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r14, %r10
    movq (%r10), %r14
    leaq -64(%rbp), %r10
    movq %r14, (%r10)
    testq %r14, %r14
    jne .L57_12
    jmp .L57_13
.L57_12:
    jmp .L57_14
.L57_13:
    leaq .Ltext_39(%rip), %rbx
    leaq -80(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L57_14:
    jmp .L57_16
.L57_15:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L57_16:
    leaq .Ltext_209(%rip), %r12
    leaq -96(%rbp), %r10
    movq %r12, (%r10)
    movq %r12, %rdi
    call sel_registerName@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L57_17
    jmp .L57_18
.L57_18:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L57_17:
    jmp .L57_20
.L57_19:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L57_20:
    movq %r14, %rdi
    movq %r12, %rsi
    movq $0, %rdx
    call objc_msgSend@PLT
    movq %rbx, %rdi
    call objc_autoreleasePoolPop@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_8mac_size
    .type lb_window_8mac_size, @function
lb_window_8mac_size:
    pushq %rbp
    movq %rsp, %rbp
    subq $416, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -104(%rbp)
    call objc_autoreleasePoolPush@PLT
    movq %rax, -408(%rbp)
    movq -408(%rbp), %rax
    testq %rax, %rax
    jne .L58_1
    jmp .L58_2
.L58_2:
    leaq .Ltext_210(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L58_1:
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -328(%rbp)
    movq -328(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq -288(%rbp), %r10
    movq %r13, (%r10)
    testq %r13, %r13
    jne .L58_4
    jmp .L58_5
.L58_4:
    jmp .L58_6
.L58_5:
    leaq .Ltext_39(%rip), %rbx
    leaq -304(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L58_6:
    jmp .L58_8
.L58_7:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L58_8:
    leaq -136(%rbp), %r15
    leaq .Ltext_62(%rip), %r14
    leaq -320(%rbp), %r10
    movq %r14, (%r10)
    movq %r14, %rdi
    call sel_registerName@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L58_9
    jmp .L58_10
.L58_10:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L58_9:
    jmp .L58_12
.L58_11:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L58_12:
    movq %r13, %rsi
    movq %r14, %rdx
    leaq -168(%rbp), %rdi
    call objc_msgSend@PLT
    leaq -168(%rbp), %rbx
    movq %rbx, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq -200(%rbp), %r12
    leaq .Ltext_211(%rip), %rbx
    leaq -320(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %rdi
    call sel_registerName@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L58_13
    jmp .L58_14
.L58_14:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L58_13:
    jmp .L58_16
.L58_15:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L58_16:
    subq $32, %rsp
    movq %r15, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq %r13, %rsi
    movq %rbx, %rdx
    leaq -232(%rbp), %rdi
    call objc_msgSend@PLT
    addq $32, %rsp
    leaq -232(%rbp), %rax
    movq %rax, -336(%rbp)
    movq -336(%rbp), %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq -272(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    movq $16, %rcx
    movq %r15, %rax
    addq %rcx, %rax
    movq %rax, -344(%rbp)
    movq -344(%rbp), %r10
    movsd (%r10), %xmm12
    movq %r14, %r10
    movsd %xmm12, (%r10)
    movq -344(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -352(%rbp)
    movq -352(%rbp), %r10
    movsd (%r10), %xmm12
    movq $8, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, -360(%rbp)
    movq -360(%rbp), %r10
    movsd %xmm12, (%r10)
    movq $16, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -368(%rbp)
    movq -368(%rbp), %r10
    movsd (%r10), %xmm12
    movq $16, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, -376(%rbp)
    movq -376(%rbp), %r10
    movsd %xmm12, (%r10)
    movq -368(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -384(%rbp)
    movq -384(%rbp), %r10
    movsd (%r10), %xmm12
    movq $24, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, -392(%rbp)
    movq -392(%rbp), %r10
    movsd %xmm12, (%r10)
    movq -328(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -400(%rbp)
    movq -400(%rbp), %rax
    leaq -288(%rbp), %r10
    movq %rax, (%r10)
    movq -400(%rbp), %rax
    testq %rax, %rax
    jne .L58_17
    jmp .L58_18
.L58_17:
    jmp .L58_19
.L58_18:
    leaq .Ltext_39(%rip), %rbx
    leaq -304(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L58_19:
    jmp .L58_21
.L58_20:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L58_21:
    leaq .Ltext_212(%rip), %rbx
    leaq -320(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %rdi
    call sel_registerName@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L58_22
    jmp .L58_23
.L58_23:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L58_22:
    jmp .L58_25
.L58_24:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L58_25:
    movq -400(%rbp), %rdi
    movq %rbx, %rsi
    call objc_msgSend@PLT
    movapd %xmm0, %xmm12
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movsd %xmm12, (%r10)
    leaq -88(%rbp), %r12
    movq %r14, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq -408(%rbp), %rdi
    call objc_autoreleasePoolPop@PLT
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L58_3:
    movq %rbx, %rdi
    call objc_autoreleasePoolPop@PLT
    leaq .Ltext_213(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_10mac_resize
    .type lb_window_10mac_resize, @function
lb_window_10mac_resize:
    pushq %rbp
    movq %rsp, %rbp
    subq $160, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    movl %esi, -72(%rbp)
    movl %edx, -88(%rbp)
    call objc_autoreleasePoolPush@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L59_1
    jmp .L59_2
.L59_2:
    leaq .Ltext_214(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L59_1:
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %r10
    movq (%r10), %r12
    leaq -120(%rbp), %r10
    movq %r12, (%r10)
    testq %r12, %r12
    jne .L59_3
    jmp .L59_4
.L59_3:
    jmp .L59_5
.L59_4:
    leaq .Ltext_39(%rip), %rbx
    leaq -136(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L59_5:
    jmp .L59_7
.L59_6:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L59_7:
    leaq .Ltext_215(%rip), %r13
    leaq -152(%rbp), %r10
    movq %r13, (%r10)
    movq %r13, %rdi
    call sel_registerName@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L59_8
    jmp .L59_9
.L59_9:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L59_8:
    jmp .L59_11
.L59_10:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L59_11:
    leaq -104(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq -72(%rbp), %r15
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
    leaq -88(%rbp), %r15
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
    movq %r14, %r10
    movq 0(%r10), %xmm0
    movq 8(%r10), %xmm1
    movq %r12, %rdi
    movq %r13, %rsi
    movq %r14, %r10
    call objc_msgSend@PLT
    movq %rbx, %rdi
    call objc_autoreleasePoolPop@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_8mac_pump
    .type lb_window_8mac_pump, @function
lb_window_8mac_pump:
    pushq %rbp
    movq %rsp, %rbp
    subq $192, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    leaq lb_window_application(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -176(%rbp)
    movq -176(%rbp), %rax
    testq %rax, %rax
    jne .L60_1
    jmp .L60_2
.L60_1:
    jmp .L60_3
.L60_2:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L60_4:
.L60_3:
    call objc_autoreleasePoolPush@PLT
    movq %rax, -184(%rbp)
    movq -184(%rbp), %rax
    testq %rax, %rax
    jne .L60_5
    jmp .L60_6
.L60_6:
    leaq .Ltext_216(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L60_5:
    leaq .Ltext_217(%rip), %r13
    movq %r13, %rdi
    call objc_getClass@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L60_7
    jmp .L60_8
.L60_7:
    jmp .L60_9
.L60_8:
    leaq .Ltext_218(%rip), %rbx
    leaq -72(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $26, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_219(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_219(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L60_9:
    leaq .Ltext_220(%rip), %r14
    leaq -88(%rbp), %r10
    movq %r14, (%r10)
    movq %r14, %rdi
    call sel_registerName@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L60_25
    jmp .L60_26
.L60_26:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L60_25:
    jmp .L60_28
.L60_27:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L60_28:
    movq %r13, %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    movq %rax, -128(%rbp)
    movq -128(%rbp), %rax
    leaq -104(%rbp), %r10
    movq %rax, (%r10)
    movq -128(%rbp), %rax
    testq %rax, %rax
    jne .L60_29
    jmp .L60_30
.L60_29:
    jmp .L60_31
.L60_30:
    leaq .Ltext_39(%rip), %rbx
    leaq -120(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L60_31:
    jmp .L60_33
.L60_32:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L60_33:
    leaq .Ltext_221(%rip), %rax
    movq %rax, -136(%rbp)
    movq NSDefaultRunLoopMode@GOTPCREL(%rip), %rax
    movq %rax, -144(%rbp)
    leaq .Ltext_222(%rip), %rax
    movq %rax, -152(%rbp)
    leaq -56(%rbp), %rax
    movq %rax, -168(%rbp)
    movq $0, %rax
    movq %rax, %r12
.L60_10:
    movq $256, %rcx
    cmpq %rcx, %r12
    jae .L60_12
.L60_11:
    movq -136(%rbp), %rax
    leaq -88(%rbp), %r10
    movq %rax, (%r10)
    movq -136(%rbp), %rdi
    call sel_registerName@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L60_34
    jmp .L60_35
.L60_35:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L60_34:
    jmp .L60_37
.L60_36:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L60_37:
    movq -144(%rbp), %r10
    movq (%r10), %r13
    movq -176(%rbp), %rdi
    movq %rbx, %rsi
    movq $-1, %rdx
    movq -128(%rbp), %rcx
    movq %r13, %r8
    movl $1, %r9d
    call objc_msgSend@PLT
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
    movq -152(%rbp), %rax
    leaq -88(%rbp), %r10
    movq %rax, (%r10)
    movq -152(%rbp), %rdi
    call sel_registerName@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L60_38
    jmp .L60_39
.L60_39:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L60_38:
    jmp .L60_41
.L60_40:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L60_41:
    movq -176(%rbp), %rdi
    movq %rbx, %rsi
    movq %r13, %rdx
    call objc_msgSend@PLT
    movq $1, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -160(%rbp)
    movq -168(%rbp), %r10
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
    movq -160(%rbp), %rax
    movq %rax, %r12
    jmp .L60_10
.L60_12:
    leaq .Ltext_224(%rip), %rbx
    leaq -88(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %rdi
    call sel_registerName@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L60_42
    jmp .L60_43
.L60_43:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L60_42:
    jmp .L60_45
.L60_44:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L60_45:
    movq -176(%rbp), %rdi
    movq %rbx, %rsi
    call objc_msgSend@PLT
    movq -184(%rbp), %rdi
    call objc_autoreleasePoolPop@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_11mac_destroy
    .type lb_window_11mac_destroy, @function
lb_window_11mac_destroy:
    pushq %rbp
    movq %rsp, %rbp
    subq $176, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    call objc_autoreleasePoolPush@PLT
    movq %rax, -168(%rbp)
    movq -168(%rbp), %rax
    testq %rax, %rax
    jne .L61_1
    jmp .L61_2
.L61_2:
    leaq .Ltext_225(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L61_1:
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $14379, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movl $1, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %r12, %rdi
    call lb_window_16mac_clear_marked@PLT
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
    leaq -72(%rbp), %r10
    movq %r14, (%r10)
    movq $0, %rax
    leaq -88(%rbp), %r10
    movq %rax, (%r10)
.L61_19:
    leaq .Ltext_41(%rip), %r15
    movq %r14, %rdi
    movq %r15, %rsi
    movq $0, %rdx
    call object_setInstanceVariable@PLT
    movq %rax, %r14
.L61_20:
.L61_22:
    jmp .L61_5
.L61_4:
.L61_5:
    movq $16, %rcx
    movq %r12, %rax
    addq %rcx, %rax
    movq %rax, -160(%rbp)
    movq -160(%rbp), %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L61_10
    jmp .L61_8
.L61_10:
.L61_7:
    leaq -72(%rbp), %r10
    movq %r15, (%r10)
    movq $0, %rax
    leaq -88(%rbp), %r10
    movq %rax, (%r10)
.L61_24:
    leaq .Ltext_41(%rip), %rbx
    movq %r15, %rdi
    movq %rbx, %rsi
    movq $0, %rdx
    call object_setInstanceVariable@PLT
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
    leaq -104(%rbp), %r10
    movq %r15, (%r10)
    movq %r15, %rdi
    call sel_registerName@PLT
    movq %rax, %r15
    testq %r15, %r15
    jne .L61_28
    jmp .L61_29
.L61_29:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L61_28:
.L61_31:
    movq %rbx, %rdi
    movq %r15, %rsi
    movq $0, %rdx
    call objc_msgSend@PLT
    leaq .Ltext_226(%rip), %r14
    leaq -104(%rbp), %r10
    movq %r14, (%r10)
    movq %r14, %rdi
    call sel_registerName@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L61_32
    jmp .L61_33
.L61_33:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L61_32:
.L61_35:
    movq %rbx, %rdi
    movq %r14, %rsi
    movq $0, %rdx
    call objc_msgSend@PLT
    leaq .Ltext_227(%rip), %r15
    leaq -104(%rbp), %r10
    movq %r15, (%r10)
    movq %r15, %rdi
    call sel_registerName@PLT
    movq %rax, %r15
    testq %r15, %r15
    jne .L61_36
    jmp .L61_37
.L61_37:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L61_36:
.L61_39:
    movq %rbx, %rdi
    movq %r15, %rsi
    call objc_msgSend@PLT
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
    leaq -120(%rbp), %r10
    movq %r12, (%r10)
    call objc_autoreleasePoolPush@PLT
    movq %rax, %rbx
    testq %rbx, %rbx
    jne .L61_40
    jmp .L61_41
.L61_41:
    leaq .Ltext_228(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L61_40:
    movq %r12, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L61_45
    jmp .L61_43
.L61_45:
.L61_42:
    leaq .Ltext_106(%rip), %r15
    leaq -152(%rbp), %r10
    movq %r15, (%r10)
    movq %r15, %rdi
    call sel_registerName@PLT
    movq %rax, %r15
    testq %r15, %r15
    jne .L61_56
    jmp .L61_57
.L61_57:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L61_56:
.L61_59:
    movq %r14, %rdi
    movq %r15, %rsi
    call objc_msgSend@PLT
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
    leaq -152(%rbp), %r10
    movq %r13, (%r10)
    movq %r13, %rdi
    call sel_registerName@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L61_60
    jmp .L61_61
.L61_61:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L61_60:
.L61_63:
    movq %r14, %rdi
    movq %r13, %rsi
    call objc_msgSend@PLT
    jmp .L61_48
.L61_47:
.L61_48:
    movq -160(%rbp), %r10
    movq (%r10), %r13
    testq %r13, %r13
    jne .L61_53
    jmp .L61_51
.L61_53:
.L61_50:
    leaq .Ltext_106(%rip), %r14
    leaq -152(%rbp), %r10
    movq %r14, (%r10)
    movq %r14, %rdi
    call sel_registerName@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L61_64
    jmp .L61_65
.L61_65:
    leaq .Ltext_36(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L61_64:
.L61_67:
    movq %r13, %rdi
    movq %r14, %rsi
    call objc_msgSend@PLT
    jmp .L61_52
.L61_51:
.L61_52:
    leaq lb_memory_heap(%rip), %r13
    leaq -136(%rbp), %r14
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
    movq %r15, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r12, %r11
    call *%r11
.L61_54:
    movq %rbx, %rdi
    call objc_autoreleasePoolPop@PLT
.L61_68:
    jmp .L61_17
.L61_16:
.L61_17:
    movq -168(%rbp), %rdi
    call objc_autoreleasePoolPop@PLT
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_8win_open
    .type lb_window_8win_open, @function
lb_window_8win_open:
    pushq %rbp
    movq %rsp, %rbp
    subq $15296, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    leaq 16(%rbp), %r10
    leaq -120(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq lb_window_14win_class_atom(%rip), %rax
    movq %rax, -15240(%rbp)
    movq -15240(%rbp), %r10
    movzwl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L62_61
.L62_60:
    leaq -14968(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -152(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L62_70
.L62_61:
.L62_62:
    movq $-4, %rdi
    call SetProcessDpiAwarenessContext@PLT
    movl %eax, %r12d
    leaq -15048(%rbp), %r14
    leaq -15128(%rbp), %r15
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
    movq lb_window_12win_callback@GOTPCREL(%rip), %r12
    movq $8, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $0, %rdi
    call GetModuleHandleW@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L62_64
    jmp .L62_65
.L62_65:
    leaq .Ltext_229(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L62_64:
    movq $24, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $0, %rdi
    movq $32512, %rsi
    call LoadCursorW@PLT
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
    movq %r14, %rdi
    call RegisterClassExW@PLT
    movl %eax, %ebx
    movq -15240(%rbp), %r10
    movw %bx, (%r10)
    movq -15240(%rbp), %r10
    movzwl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L62_67
.L62_66:
    leaq -14968(%rbp), %rbx
    leaq lb_window_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_230(%rip), %r12
    leaq -15144(%rbp), %r13
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
    leaq -152(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L62_70
.L62_67:
.L62_68:
    leaq -14968(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -152(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L62_70:
    leaq -152(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L62_2
    jmp .L62_1
.L62_2:
    leaq -88(%rbp), %rbx
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
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L62_1:
    leaq lb_memory_heap(%rip), %rbx
    leaq -168(%rbp), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -208(%rbp), %r13
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
    call lb_core_7trap_at@PLT
.L62_4:
    movq %r12, %r10
    movq (%r10), %r14
    movq %rbx, %rsi
    movq $14432, %rdx
    movq $8, %rcx
    leaq -232(%rbp), %rdi
    movq %r14, %r11
    call *%r11
    leaq -232(%rbp), %r15
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
    leaq -14664(%rbp), %r12
    movq %r12, %rdi
    xorl %esi, %esi
    movq $14432, %rdx
    call memset@PLT
    movq %rbx, %rdi
    movq %r12, %rsi
    movq $14432, %rdx
    call memcpy@PLT
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
    leaq -88(%rbp), %r12
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
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L62_9:
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -15152(%rbp)
    movq -15152(%rbp), %rax
    movq $14392, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movl $0, %esi
    leaq -14704(%rbp), %rdi
    call lb_window_10win_cursor@PLT
    leaq -14704(%rbp), %r15
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
    leaq -88(%rbp), %r13
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
    movq -15152(%rbp), %rdi
    call lb_window_11win_destroy@PLT
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L62_12:
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, -15160(%rbp)
    movq -15160(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    leaq -14720(%rbp), %rax
    movq %rax, -15248(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -15256(%rbp)
    leaq -120(%rbp), %rax
    movq %rax, -15168(%rbp)
    movq -15168(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -15176(%rbp)
    movq -15176(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -15184(%rbp)
    movq -15184(%rbp), %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_232(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -15264(%rbp)
    leaq -14768(%rbp), %rax
    movq %rax, -15272(%rbp)
    movq -15264(%rbp), %rax
    movabsq $2305843009213693952, %rcx
    cmpq %rcx, %rax
    jbe .L62_16
.L62_15:
    movq -15272(%rbp), %rax
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
    movq -15272(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    jmp .L62_17
.L62_16:
    movq -15264(%rbp), %rax
    movq $2, %rcx
    movq %rax, %r15
    imulq %rcx, %r15
    movq -15256(%rbp), %r10
    movq (%r10), %r12
    movq -15256(%rbp), %rax
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
    call lb_core_7trap_at@PLT
.L62_18:
    movq %r14, %r10
    movq (%r10), %r13
    movq %r12, %rsi
    movq %r15, %rdx
    movq $2, %rcx
    leaq -14792(%rbp), %rdi
    movq %r13, %r11
    call *%r11
    leaq -14792(%rbp), %rbx
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movq $0, %rcx
    cmpq %rcx, %r15
    setne %al
    movzbl %al, %eax
    movl %eax, -15192(%rbp)
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    movl -15192(%rbp), %eax
    andl %r13d, %eax
    movl %eax, -15200(%rbp)
    movl -15200(%rbp), %eax
    testl %eax, %eax
    jne .L62_20
    jmp .L62_21
.L62_20:
    movq -15272(%rbp), %rax
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
    movq -15272(%rbp), %rax
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
    movq -15272(%rbp), %r10
    movq %r12, (%r10)
    movq -15272(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq -15264(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq -15272(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
.L62_17:
    movq -15272(%rbp), %rax
    movq $40, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L62_23
    jmp .L62_22
.L62_23:
    movq -15272(%rbp), %rax
    movq $16, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    leaq -88(%rbp), %r12
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
    movq -15152(%rbp), %rdi
    call lb_window_11win_destroy@PLT
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L62_22:
    movq -15272(%rbp), %r10
    movq -15248(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -15184(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jbe .L62_26
.L62_25:
    movq -15168(%rbp), %r10
    movq (%r10), %rbx
    movq -15248(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -15208(%rbp)
    movq -15248(%rbp), %rax
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
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r14d
    movl $65001, %edi
    movl $8, %esi
    movq %rbx, %rdx
    movl -15184(%rbp), %ecx
    movq -15208(%rbp), %r8
    movl %r14d, %r9d
    call MultiByteToWideChar@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L62_29
.L62_28:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    leaq lb_window_15invalid_options(%rip), %r15
    movq %r15, %r10
    movl (%r10), %r15d
    movq %r14, %r10
    movl %r15d, (%r10)
    leaq .Ltext_235(%rip), %r15
    leaq -14808(%rbp), %r12
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
    leaq -14824(%rbp), %r12
    movq %r13, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_236(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq -15208(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq -15256(%rbp), %r10
    movq (%r10), %r14
    movq -15256(%rbp), %rax
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
    movq %r14, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r11
    call *%r11
.L62_31:
    movq -15152(%rbp), %rdi
    call lb_window_11win_destroy@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
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
    movq -15248(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -15216(%rbp)
    movq -15248(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, -15224(%rbp)
    movq -15224(%rbp), %rcx
    cmpq %rcx, %rbx
    jb 1f
    leaq .Ltext_237(%rip), %rdi
    leaq .Ltext_265(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $2, %rcx
    imulq %rcx, %rbx
    movq -15216(%rbp), %rax
    movq %rbx, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movw %ax, (%r10)
    movq -15168(%rbp), %rax
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
    movl %eax, -15280(%rbp)
    jmp .L62_36
.L62_35:
    movl $13238272, %eax
    movl %eax, -15280(%rbp)
.L62_36:
    call GetDpiForSystem@PLT
    movl %eax, -15232(%rbp)
    leaq -14840(%rbp), %rax
    movq %rax, -15288(%rbp)
    leaq -14856(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq -15168(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movl (%r10), %r15d
    movl %r15d, %r15d
    movl -15232(%rbp), %eax
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
    movq -15168(%rbp), %rax
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
    movq -15288(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -15288(%rbp), %rdi
    movl -15280(%rbp), %esi
    movl $0, %edx
    movl $0, %ecx
    movl -15232(%rbp), %r8d
    call AdjustWindowRectExForDpi@PLT
    movl %eax, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L62_42
.L62_41:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_239(%rip), %r13
    leaq -14872(%rbp), %r14
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
    leaq -14888(%rbp), %r12
    movq -15224(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_240(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -15216(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq -15256(%rbp), %r10
    movq (%r10), %r13
    movq -15256(%rbp), %rax
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
    movq %r13, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r15, %r11
    call *%r11
.L62_44:
    movq -15152(%rbp), %rdi
    call lb_window_11win_destroy@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L62_42:
.L62_43:
    leaq lb_window_14win_class_name(%rip), %rbx
    movq -15288(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movq -15288(%rbp), %r10
    movslq (%r10), %r13
    movl %r12d, %eax
    movl %r13d, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_241(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r12d
    movq -15288(%rbp), %rax
    movq $12, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movslq (%r10), %r13
    movq -15288(%rbp), %rax
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
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r13d
    movq $0, %rdi
    call GetModuleHandleW@PLT
    movq %rax, %r14
    testq %r14, %r14
    jne .L62_47
    jmp .L62_48
.L62_48:
    leaq .Ltext_241(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
.L62_47:
    subq $48, %rsp
    movq %r12, %rax
    movq %rax, 0(%rsp)
    movq %r13, %rax
    movq %rax, 8(%rsp)
    movq $0, %rax
    movq %rax, 16(%rsp)
    movq $0, %rax
    movq %rax, 24(%rsp)
    movq %r14, %rax
    movq %rax, 32(%rsp)
    movq -15152(%rbp), %rax
    movq %rax, 40(%rsp)
    movl $0, %edi
    movq %rbx, %rsi
    movq -15216(%rbp), %rdx
    movl -15280(%rbp), %ecx
    movl $2147483648, %r8d
    movl $2147483648, %r9d
    call CreateWindowExW@PLT
    addq $48, %rsp
    movq %rax, %r15
    testq %r15, %r15
    jne .L62_49
    jmp .L62_50
.L62_49:
    jmp .L62_51
.L62_50:
    leaq -88(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_242(%rip), %r13
    leaq -14904(%rbp), %r14
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
    leaq -14920(%rbp), %r12
    movq -15224(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_241(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -15216(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq -15256(%rbp), %r10
    movq (%r10), %r13
    movq -15256(%rbp), %rax
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
    movq %r13, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r15, %r11
    call *%r11
.L62_52:
    movq -15152(%rbp), %rdi
    call lb_window_11win_destroy@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L62_51:
    movq -15152(%rbp), %r10
    movq %r15, (%r10)
    leaq -88(%rbp), %rbx
    movq -15152(%rbp), %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $32, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    leaq -14936(%rbp), %r12
    movq -15224(%rbp), %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_243(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -15216(%rbp), %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq -15256(%rbp), %r10
    movq (%r10), %r13
    movq -15256(%rbp), %rax
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
    movq %r13, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r15, %r11
    call *%r11
.L62_55:
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_8win_size
    .type lb_window_8win_size, @function
lb_window_8win_size:
    pushq %rbp
    movq %rsp, %rbp
    subq $208, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %rsi, -96(%rbp)
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -168(%rbp), %r10
    movq %rbx, (%r10)
    testq %rbx, %rbx
    jne .L63_5
    jmp .L63_6
.L63_5:
    jmp .L63_7
.L63_6:
    leaq .Ltext_39(%rip), %rbx
    leaq -184(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L63_7:
    jmp .L63_9
.L63_8:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L63_9:
    leaq -112(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %rdi
    movq %r12, %rsi
    call GetClientRect@PLT
    movl %eax, %r13d
    movq %rbx, %rdi
    call GetDpiForWindow@PLT
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
    movsd %xmm8, -208(%rbp)
    jmp .L63_3
.L63_2:
    movabsq $4607182418800017408, %rax
    movq %rax, %xmm12
    movaps %xmm12, %xmm8
    movsd %xmm8, -208(%rbp)
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
    call lb_core_7trap_at@PLT
1:
    movl %eax, %ebx
    movslq %ebx, %rbx
    cvtsi2sdq %rbx, %xmm8
    movsd %xmm8, -192(%rbp)
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
    call lb_core_7trap_at@PLT
1:
    movl %eax, %ebx
    movslq %ebx, %rbx
    cvtsi2sdq %rbx, %xmm8
    movsd %xmm8, -200(%rbp)
    leaq -152(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq $0, 32(%r11)
    movsd -192(%rbp), %xmm8
    movsd -208(%rbp), %xmm9
    divsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    movq %rbx, %r10
    movsd %xmm12, (%r10)
    movsd -200(%rbp), %xmm8
    movsd -208(%rbp), %xmm9
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
    movsd -192(%rbp), %xmm8
    movq %r13, %r10
    movsd %xmm8, (%r10)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movsd -200(%rbp), %xmm8
    movq %r13, %r10
    movsd %xmm8, (%r10)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movsd -208(%rbp), %xmm8
    movq %r13, %r10
    movsd %xmm8, (%r10)
    leaq -80(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L63_4:
    leaq .Ltext_246(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_10win_resize
    .type lb_window_10win_resize, @function
lb_window_10win_resize:
    pushq %rbp
    movq %rsp, %rbp
    subq $240, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -96(%rbp)
    movl %edx, -112(%rbp)
    movl %ecx, -128(%rbp)
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -216(%rbp)
    movq -216(%rbp), %rax
    leaq -192(%rbp), %r10
    movq %rax, (%r10)
    movq -216(%rbp), %rax
    testq %rax, %rax
    jne .L64_11
    jmp .L64_12
.L64_11:
    jmp .L64_13
.L64_12:
    leaq .Ltext_39(%rip), %rbx
    leaq -208(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L64_13:
.L64_15:
    movq -216(%rbp), %rdi
    call GetDpiForWindow@PLT
    movl %eax, -224(%rbp)
    movq -216(%rbp), %rdi
    movl $4294967280, %esi
    call GetWindowLongPtrW@PLT
    movq %rax, -232(%rbp)
    leaq -144(%rbp), %rax
    movq %rax, -240(%rbp)
    leaq -160(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    leaq -112(%rbp), %r14
    movq %r14, %r10
    movl (%r10), %r14d
    movl %r14d, %r14d
    movl -224(%rbp), %eax
    movl %eax, %r15d
    imulq %r15, %r14
.L64_2:
    movq $96, %rcx
    movq %r14, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, %rbx
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movl %ebx, (%r10)
    leaq -128(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %ebx
    movl %ebx, %ebx
    movq %rbx, %rcx
    movq %r15, %rbx
    imulq %rcx, %rbx
.L64_4:
    movq $96, %rcx
    movq %rbx, %rax
    xorl %edx, %edx
    divq %rcx
    movq %rax, %r12
    movq $12, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movl %r12d, (%r10)
    movq %r13, %r10
    movq -240(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -240(%rbp), %rdi
    movl -232(%rbp), %esi
    movl $0, %edx
    movl $0, %ecx
    movl -224(%rbp), %r8d
    call AdjustWindowRectExForDpi@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L64_16
    jmp .L64_8
.L64_16:
    movl %r12d, %ebx
    jmp .L64_9
.L64_8:
    movq -240(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movslq (%r10), %rbx
    movq -240(%rbp), %r10
    movslq (%r10), %r12
    movl %ebx, %eax
    movl %r12d, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_248(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %ebx
    movq -240(%rbp), %rax
    movq $12, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movslq (%r10), %r12
    movq -240(%rbp), %rax
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
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r12d
    subq $16, %rsp
    movq $22, %rax
    movq %rax, 0(%rsp)
    movq -216(%rbp), %rdi
    movq $0, %rsi
    movl $0, %edx
    movl $0, %ecx
    movl %ebx, %r8d
    movl %r12d, %r9d
    call SetWindowPos@PLT
    addq $16, %rsp
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L64_9:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L64_5
    jmp .L64_6
.L64_5:
    leaq -80(%rbp), %rbx
    leaq lb_window_failed(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_249(%rip), %r12
    leaq -176(%rbp), %r13
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
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L64_6:
.L64_7:
    leaq -80(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_8win_pump
    .type lb_window_8win_pump, @function
lb_window_8win_pump:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    leaq -104(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    leaq -56(%rbp), %r12
    movq $0, %rax
    movq %rax, %r13
.L65_1:
    movq $256, %rcx
    cmpq %rcx, %r13
    setb %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L65_4
    jmp .L65_14
.L65_14:
    movl %r14d, %r15d
    jmp .L65_5
.L65_4:
    movq %rbx, %rdi
    movq $0, %rsi
    movl $0, %edx
    movl $0, %ecx
    movl $1, %r8d
    call PeekMessageW@PLT
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r15d
.L65_5:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L65_2
    jmp .L65_3
.L65_2:
    movq %rbx, %rdi
    call TranslateMessage@PLT
    movl %eax, %r14d
    movq %rbx, %rdi
    call DispatchMessageW@PLT
    movq %rax, %r14
    movq %r13, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_250(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -112(%rbp)
    movq %r12, %r10
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
    jne .L65_15
    jmp .L65_9
.L65_15:
    movl %r14d, %r13d
    jmp .L65_10
.L65_9:
    movq $14377, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
.L65_10:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L65_16
    jmp .L65_11
.L65_16:
    movl %r14d, %r13d
    jmp .L65_12
.L65_11:
    movq $14376, %rcx
    movq %r15, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
.L65_12:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L65_6
    jmp .L65_7
.L65_6:
    jmp .L65_3
.L65_13:
    jmp .L65_8
.L65_7:
.L65_8:
    movq -112(%rbp), %rax
    movq %rax, %r13
    jmp .L65_1
.L65_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_11win_destroy
    .type lb_window_11win_destroy, @function
lb_window_11win_destroy:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -48(%rbp)
    leaq -48(%rbp), %rbx
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
    jne .L66_4
    jmp .L66_2
.L66_4:
.L66_1:
    movq %r12, %rdi
    movl $0, %esi
    call ShowWindow@PLT
    movl %eax, %r12d
    jmp .L66_3
.L66_2:
.L66_3:
    movq $14378, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L66_6
.L66_5:
    leaq -64(%rbp), %r10
    movq %rbx, (%r10)
    movq %rbx, %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L66_11
    jmp .L66_9
.L66_11:
.L66_8:
    movq %r12, %rdi
    movl $4294967275, %esi
    movq $0, %rdx
    call SetWindowLongPtrW@PLT
    movq %rax, %r13
    movq %r12, %rdi
    call DestroyWindow@PLT
    movl %eax, %r12d
    jmp .L66_10
.L66_9:
.L66_10:
    leaq lb_memory_heap(%rip), %r12
    leaq -80(%rbp), %r13
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
    jne .L66_13
    jmp .L66_12
.L66_13:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r14, %rdi
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L66_12:
.L66_14:
    jmp .L66_7
.L66_6:
.L66_7:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_13win_modifiers
    .type lb_window_13win_modifiers, @function
lb_window_13win_modifiers:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    leaq -42(%rbp), %r13
    movq %r13, %r11
    movl $0, 0(%r11)
    movb $0, 4(%r11)
    movl $16, %edi
    call GetKeyState@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    setl %al
    movzbl %al, %ebx
    movq %r13, %r10
    movb %bl, (%r10)
    movl $17, %edi
    call GetKeyState@PLT
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
    movl $18, %edi
    call GetKeyState@PLT
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
    movl $91, %edi
    call GetKeyState@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    setl %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L67_4
    jmp .L67_1
.L67_4:
    movl %ebx, %r12d
    jmp .L67_2
.L67_1:
    movl $92, %edi
    call GetKeyState@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    setl %al
    movzbl %al, %r12d
.L67_2:
    movzbl %r12b, %ebx
    movq $3, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movb %bl, (%r10)
    movl $20, %edi
    call GetKeyState@PLT
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
    leaq -37(%rbp), %rbx
    movq %r13, %r10
    movq %rbx, %r11
    movl 0(%r10), %eax
    movl %eax, 0(%r11)
    movzbl 4(%r10), %eax
    movb %al, 4(%r11)
    movq %rbx, %r10
    movzbl 4(%r10), %r11d
    movl 0(%r10), %eax
    shlq $32, %r11
    orq %r11, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L67_3:
    leaq .Ltext_251(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_11signed_half
    .type lb_window_11signed_half, @function
lb_window_11signed_half:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %rdi, -32(%rbp)
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $65535, %rcx
    andq %rcx, %rbx
    movl $32768, %ecx
    cmpl %ecx, %ebx
    jl .L68_2
.L68_1:
    movl %ebx, %eax
    movl $65536, %ecx
    subl %ecx, %eax
    jno 1f
    leaq .Ltext_252(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r12d
    jmp .L68_3
.L68_2:
    movl %ebx, %r12d
.L68_3:
    movl %r12d, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret
.L68_4:
    leaq .Ltext_252(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_7win_key
    .type lb_window_7win_key, @function
lb_window_7win_key:
    pushq %rbp
    movq %rsp, %rbp
    subq $64, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %rdi, -40(%rbp)
    leaq -40(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
.L69_2:
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
    jne .L69_3
    jmp .L69_4
.L69_3:
    leaq -48(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq -56(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $29, %rcx
    cmpq %rcx, %r12
    je .L69_7
.L69_9:
    jmp .L69_8
.L69_7:
    movl $228, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L69_8:
    movq $56, %rcx
    cmpq %rcx, %r12
    je .L69_11
.L69_13:
    jmp .L69_12
.L69_11:
    movl $230, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L69_12:
    movq $71, %rcx
    cmpq %rcx, %r12
    je .L69_15
.L69_17:
    jmp .L69_16
.L69_15:
    movl $74, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L69_16:
    movq $72, %rcx
    cmpq %rcx, %r12
    je .L69_19
.L69_21:
    jmp .L69_20
.L69_19:
    movl $82, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L69_20:
    movq $73, %rcx
    cmpq %rcx, %r12
    je .L69_23
.L69_25:
    jmp .L69_24
.L69_23:
    movl $75, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L69_24:
    movq $75, %rcx
    cmpq %rcx, %r12
    je .L69_27
.L69_29:
    jmp .L69_28
.L69_27:
    movl $80, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L69_28:
    movq $77, %rcx
    cmpq %rcx, %r12
    je .L69_31
.L69_33:
    jmp .L69_32
.L69_31:
    movl $79, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L69_32:
    movq $79, %rcx
    cmpq %rcx, %r12
    je .L69_35
.L69_37:
    jmp .L69_36
.L69_35:
    movl $77, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L69_36:
    movq $80, %rcx
    cmpq %rcx, %r12
    je .L69_39
.L69_41:
    jmp .L69_40
.L69_39:
    movl $81, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L69_40:
    movq $81, %rcx
    cmpq %rcx, %r12
    je .L69_43
.L69_45:
    jmp .L69_44
.L69_43:
    movl $78, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L69_44:
    movq $83, %rcx
    cmpq %rcx, %r12
    je .L69_47
.L69_49:
    jmp .L69_48
.L69_47:
    movl $76, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L69_48:
    movq $91, %rcx
    cmpq %rcx, %r12
    je .L69_51
.L69_53:
    jmp .L69_52
.L69_51:
    movl $227, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L69_52:
    movq $92, %rcx
    cmpq %rcx, %r12
    je .L69_55
.L69_57:
    jmp .L69_56
.L69_55:
    movl $231, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L69_56:
.L69_59:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L69_4:
.L69_5:
    movq $64, %rcx
    cmpq %rcx, %r12
    jae .L69_64
.L69_63:
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
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L69_64:
.L69_65:
    movq $64, %rcx
    cmpq %rcx, %r12
    setae %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L69_70
    jmp .L69_82
.L69_82:
    movl %ebx, %r13d
    jmp .L69_71
.L69_70:
    movq $68, %rcx
    cmpq %rcx, %r12
    setbe %al
    movzbl %al, %r13d
.L69_71:
    movzbl %r13b, %ebx
    testl %ebx, %ebx
    jne .L69_67
    jmp .L69_68
.L69_67:
    movq $64, %rcx
    movq %r12, %rbx
    subq %rcx, %rbx
    movq %rbx, %rax
    movq $63, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_255(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movzwl %bx, %ebx
    movl %ebx, %ebx
    movzwl %bx, %ebx
    movzwl %bx, %ebx
    movl %ebx, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L69_68:
.L69_69:
    movq $87, %rcx
    cmpq %rcx, %r12
    jne .L69_74
.L69_73:
    movl $68, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L69_74:
.L69_75:
    movq $88, %rcx
    cmpq %rcx, %r12
    jne .L69_78
.L69_77:
    movl $69, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret
.L69_78:
.L69_79:
    movl $0, %eax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_12win_callback
    .type lb_window_12win_callback, @function
lb_window_12win_callback:
    pushq %rbp
    movq %rsp, %rbp
    subq $784, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    movl %esi, -72(%rbp)
    movq %rdx, -88(%rbp)
    movq %rcx, -104(%rbp)
    leaq -72(%rbp), %rbx
    movq %rbx, %r10
    movl (%r10), %eax
    movl %eax, -704(%rbp)
    movl -704(%rbp), %eax
    movl $129, %ecx
    cmpl %ecx, %eax
    jne .L70_2
.L70_1:
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %r10
    movq (%r10), %r13
    leaq -56(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r13, %r10
    movq %r14, (%r10)
    movq %r14, %rdi
    movl $4294967275, %esi
    movq %r13, %rdx
    call SetWindowLongPtrW@PLT
    movq %rax, %r13
    leaq -88(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r14, %rdi
    movl -704(%rbp), %esi
    movq %r13, %rdx
    movq %r12, %rcx
    call DefWindowProcW@PLT
    movq %rax, %r12
    movq %r12, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L70_2:
.L70_3:
    leaq -56(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -712(%rbp)
    movq -712(%rbp), %rdi
    movl $4294967275, %esi
    call GetWindowLongPtrW@PLT
    movq %rax, -720(%rbp)
    movq -720(%rbp), %rax
    movq $0, %rcx
    cmpq %rcx, %rax
    jne .L70_6
.L70_5:
    leaq -88(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq -104(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq -712(%rbp), %rdi
    movl -704(%rbp), %esi
    movq %r13, %rdx
    movq %r14, %rcx
    call DefWindowProcW@PLT
    movq %rax, %r13
    movq %r13, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L70_6:
.L70_7:
    movq -720(%rbp), %rax
    movq $14379, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L70_9
    jmp .L70_10
.L70_9:
    leaq -88(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    leaq -104(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq -712(%rbp), %rdi
    movl -704(%rbp), %esi
    movq %r13, %rdx
    movq %r14, %rcx
    call DefWindowProcW@PLT
    movq %rax, %r13
    movq %r13, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L70_10:
.L70_11:
    movl -704(%rbp), %eax
    movl $32, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L70_16
    jmp .L70_157
.L70_157:
    movl %r14d, %r15d
    jmp .L70_17
.L70_16:
    leaq -104(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq $65535, %rcx
    andq %rcx, %r14
    movq $1, %rcx
    cmpq %rcx, %r14
    sete %al
    movzbl %al, %r15d
.L70_17:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L70_13
    jmp .L70_14
.L70_13:
    movq -720(%rbp), %rax
    movq $14392, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call SetCursor@PLT
    movq %rax, %rbx
    movq $1, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L70_14:
.L70_15:
    movl -704(%rbp), %eax
    movl $16, %ecx
    cmpl %ecx, %eax
    jne .L70_20
.L70_19:
    movq -720(%rbp), %rax
    movq $14377, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq $0, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L70_20:
.L70_21:
    movl -704(%rbp), %eax
    movl $5, %ecx
    cmpl %ecx, %eax
    jne .L70_24
.L70_23:
    leaq -160(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movl $2, %eax
    movq %r14, %r10
    movb %al, (%r10)
    subq $64, %rsp
    movq %r14, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq -720(%rbp), %rdi
    call lb_window_10push_event@PLT
    addq $64, %rsp
    jmp .L70_25
.L70_24:
    movl -704(%rbp), %eax
    movl $7, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L70_158
    jmp .L70_29
.L70_158:
    movl %r14d, %r15d
    jmp .L70_30
.L70_29:
    movl -704(%rbp), %eax
    movl $8, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r15d
.L70_30:
    movzbl %r15b, %r12d
    testl %r12d, %r12d
    jne .L70_26
    jmp .L70_27
.L70_26:
    movq -720(%rbp), %rax
    movq $14382, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movw %ax, (%r10)
    leaq -216(%rbp), %r12
    movq %r12, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    testl %r14d, %r14d
    jne .L70_31
    jmp .L70_32
.L70_31:
    movl $3, %eax
    movl %eax, %r14d
    jmp .L70_33
.L70_32:
    movl $4, %eax
    movl %eax, %r14d
.L70_33:
    movzbl %r14b, %r15d
    movq %r12, %r10
    movb %r15b, (%r10)
    subq $64, %rsp
    movq %r12, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq -720(%rbp), %rdi
    call lb_window_10push_event@PLT
    addq $64, %rsp
    jmp .L70_28
.L70_27:
    movl -704(%rbp), %eax
    movl $258, %ecx
    cmpl %ecx, %eax
    jne .L70_35
.L70_34:
    movq -720(%rbp), %rax
    movq $14380, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L70_37
    jmp .L70_38
.L70_37:
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movzwl %bx, %ebx
    movq -720(%rbp), %rdi
    movl %ebx, %esi
    call lb_window_10push_utf16@PLT
    jmp .L70_39
.L70_38:
.L70_39:
    movq $0, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L70_35:
    movl -704(%rbp), %eax
    movl $265, %ecx
    cmpl %ecx, %eax
    jne .L70_42
.L70_41:
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $65535, %rcx
    cmpq %rcx, %rbx
    jne .L70_45
.L70_44:
    movq $1, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L70_45:
.L70_46:
    movq -720(%rbp), %rax
    movq $14380, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L70_51
    jmp .L70_159
.L70_159:
    movl %r12d, %r14d
    jmp .L70_52
.L70_51:
    movq $1114111, %rcx
    cmpq %rcx, %rbx
    setbe %al
    movzbl %al, %r14d
.L70_52:
    movzbl %r14b, %r12d
    testl %r12d, %r12d
    jne .L70_48
    jmp .L70_49
.L70_48:
    movq -720(%rbp), %rdi
    movl %ebx, %esi
    call lb_window_11push_scalar@PLT
    jmp .L70_50
.L70_49:
.L70_50:
    movq $0, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L70_42:
    movl -704(%rbp), %eax
    movl $736, %ecx
    cmpl %ecx, %eax
    jne .L70_55
.L70_54:
    leaq -104(%rbp), %rbx
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
    call lb_core_7trap_at@PLT
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
    call lb_core_7trap_at@PLT
1:
    movl %eax, %ebx
    subq $16, %rsp
    movq $20, %rax
    movq %rax, 0(%rsp)
    movq -712(%rbp), %rdi
    movq $0, %rsi
    movl %r12d, %edx
    movl %r14d, %ecx
    movl %r15d, %r8d
    movl %ebx, %r9d
    call SetWindowPos@PLT
    addq $16, %rsp
    movl %eax, %ebx
    leaq -272(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movl $2, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    subq $64, %rsp
    movq %rbx, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq -720(%rbp), %rdi
    call lb_window_10push_event@PLT
    addq $64, %rsp
    movq $0, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L70_55:
    movl -704(%rbp), %eax
    movl $256, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L70_160
    jmp .L70_61
.L70_160:
    movl %r12d, %r14d
    jmp .L70_62
.L70_61:
    movl -704(%rbp), %eax
    movl $257, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r14d
.L70_62:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L70_161
    jmp .L70_63
.L70_161:
    movl %r15d, %r14d
    jmp .L70_64
.L70_63:
    movl -704(%rbp), %eax
    movl $260, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r14d
.L70_64:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L70_162
    jmp .L70_65
.L70_162:
    movl %r15d, %r14d
    jmp .L70_66
.L70_65:
    movl -704(%rbp), %eax
    movl $261, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r14d
.L70_66:
    movzbl %r14b, %r15d
    testl %r15d, %r15d
    jne .L70_58
    jmp .L70_59
.L70_58:
    leaq -277(%rbp), %rax
    movq %rax, -728(%rbp)
    call lb_window_13win_modifiers@PLT
    leaq -282(%rbp), %r10
    movl %eax, 0(%r10)
    shrq $32, %rax
    movb %al, 4(%r10)
    leaq -282(%rbp), %r15
    movq %r15, %r10
    movq -728(%rbp), %r11
    movl 0(%r10), %eax
    movl %eax, 0(%r11)
    movzbl 4(%r10), %eax
    movb %al, 4(%r11)
    leaq -104(%rbp), %r15
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, -736(%rbp)
    movq -736(%rbp), %rdi
    call lb_window_7win_key@PLT
    movl %eax, %r13d
    testl %r12d, %r12d
    jne .L70_163
    jmp .L70_67
.L70_163:
    movl %r12d, %r15d
    jmp .L70_68
.L70_67:
    movl -704(%rbp), %eax
    movl $260, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r15d
.L70_68:
    movzbl %r15b, %r12d
    leaq -344(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movzbl %r12b, %eax
    movl %eax, -744(%rbp)
    movl -744(%rbp), %eax
    testl %eax, %eax
    jne .L70_69
    jmp .L70_70
.L70_69:
    movl $5, %eax
    movl %eax, %r15d
    jmp .L70_71
.L70_70:
    movl $6, %eax
    movl %eax, %r15d
.L70_71:
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
    movq -728(%rbp), %r10
    movq %r14, %r11
    movl 0(%r10), %eax
    movl %eax, 0(%r11)
    movzbl 4(%r10), %eax
    movb %al, 4(%r11)
    movl -744(%rbp), %eax
    testl %eax, %eax
    jne .L70_72
    jmp .L70_164
.L70_164:
    movl -744(%rbp), %eax
    movl %eax, %r13d
    jmp .L70_73
.L70_72:
    movq -736(%rbp), %rax
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
.L70_73:
    movzbl %r13b, %r14d
    movq $9, %rcx
    movq %rbx, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movb %r14b, (%r10)
    subq $64, %rsp
    movq %rbx, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq -720(%rbp), %rdi
    call lb_window_10push_event@PLT
    addq $64, %rsp
    movl %r12d, %r14d
    movzwl %r14w, %r14d
    movl $224, %ecx
    cmpl %ecx, %r14d
    setae %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L70_165
    jmp .L70_77
.L70_165:
    movl %r14d, %ebx
    jmp .L70_78
.L70_77:
    movl $57, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %ebx
.L70_78:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L70_74
    jmp .L70_75
.L70_74:
    leaq -400(%rbp), %rbx
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
    movq -728(%rbp), %r10
    movq %r12, %r11
    movl 0(%r10), %eax
    movl %eax, 0(%r11)
    movzbl 4(%r10), %eax
    movb %al, 4(%r11)
    subq $64, %rsp
    movq %rbx, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq -720(%rbp), %rdi
    call lb_window_10push_event@PLT
    addq $64, %rsp
    jmp .L70_76
.L70_75:
.L70_76:
    jmp .L70_60
.L70_59:
    movl -704(%rbp), %eax
    movl $675, %ecx
    cmpl %ecx, %eax
    jne .L70_80
.L70_79:
    movq -720(%rbp), %rax
    movq $14384, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    leaq -456(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movl $15, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    subq $64, %rsp
    movq %rbx, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq -720(%rbp), %rdi
    call lb_window_10push_event@PLT
    addq $64, %rsp
    movq $0, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L70_80:
    movl -704(%rbp), %eax
    movl $512, %ecx
    cmpl %ecx, %eax
    setae %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L70_86
    jmp .L70_166
.L70_166:
    movl %ebx, %r12d
    jmp .L70_87
.L70_86:
    movl -704(%rbp), %eax
    movl $526, %ecx
    cmpl %ecx, %eax
    setbe %al
    movzbl %al, %r12d
.L70_87:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L70_83
    jmp .L70_84
.L70_83:
    leaq -464(%rbp), %r13
    leaq -472(%rbp), %r14
    movq %r14, %r11
    movq $0, 0(%r11)
    leaq -104(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -752(%rbp)
    movq -752(%rbp), %rdi
    call lb_window_11signed_half@PLT
    movl %eax, %r12d
    movq %r14, %r10
    movl %r12d, (%r10)
.L70_89:
    movq $16, %rcx
    movq -752(%rbp), %rax
    movq %rax, %r12
    sarq %cl, %r12
    movq %r12, %rdi
    call lb_window_11signed_half@PLT
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
    movl -704(%rbp), %eax
    movl $522, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %eax
    movl %eax, -760(%rbp)
    movl -760(%rbp), %eax
    testl %eax, %eax
    jne .L70_167
    jmp .L70_90
.L70_167:
    movl -760(%rbp), %eax
    movl %eax, %r14d
    jmp .L70_91
.L70_90:
    movl -704(%rbp), %eax
    movl $526, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r14d
.L70_91:
    movzbl %r14b, %r15d
    movzbl %r15b, %eax
    movl %eax, -768(%rbp)
    movl -768(%rbp), %eax
    testl %eax, %eax
    jne .L70_92
    jmp .L70_93
.L70_92:
    movq -712(%rbp), %rdi
    movq %r13, %rsi
    call ScreenToClient@PLT
    movl %eax, %r14d
    jmp .L70_94
.L70_93:
.L70_94:
    movq -712(%rbp), %rdi
    call GetDpiForWindow@PLT
    movl %eax, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    jbe .L70_96
.L70_95:
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
    movsd %xmm8, -784(%rbp)
    jmp .L70_97
.L70_96:
    movabsq $4607182418800017408, %rax
    movq %rax, %xmm12
    movaps %xmm12, %xmm8
    movsd %xmm8, -784(%rbp)
.L70_97:
    leaq -528(%rbp), %rax
    movq %rax, -776(%rbp)
    leaq -584(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movq $0, 48(%r11)
    movl $8, %eax
    movq %r14, %r10
    movb %al, (%r10)
    call lb_window_13win_modifiers@PLT
    leaq -589(%rbp), %r10
    movl %eax, 0(%r10)
    shrq $32, %rax
    movb %al, 4(%r10)
    leaq -589(%rbp), %r12
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
    movsd -784(%rbp), %xmm9
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
    movsd -784(%rbp), %xmm9
    movaps %xmm12, %xmm8
    divsd %xmm9, %xmm8
    movapd %xmm8, %xmm12
    movq $24, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movsd %xmm12, (%r10)
    movq %r14, %r10
    movq -776(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movl -704(%rbp), %eax
    movl $512, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L70_101
    jmp .L70_168
.L70_168:
    movl %r12d, %r13d
    jmp .L70_102
.L70_101:
    movq -720(%rbp), %rax
    movq $14384, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
.L70_102:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L70_98
    jmp .L70_99
.L70_98:
    leaq -616(%rbp), %r13
    leaq -640(%rbp), %r14
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
    movq -712(%rbp), %rax
    movq %r15, %r10
    movq %rax, (%r10)
    movq %r14, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -720(%rbp), %rax
    movq $14384, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r13, %rdi
    call TrackMouseEvent@PLT
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
    leaq -696(%rbp), %r13
    movq -776(%rbp), %r10
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
    subq $64, %rsp
    movq %r13, %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq -720(%rbp), %rdi
    call lb_window_10push_event@PLT
    addq $64, %rsp
    jmp .L70_100
.L70_99:
.L70_100:
    movl -768(%rbp), %eax
    testl %eax, %eax
    jne .L70_103
    jmp .L70_104
.L70_103:
    movl $11, %eax
    movq -776(%rbp), %r10
    movb %al, (%r10)
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
.L70_107:
    movq $16, %rcx
    movq %r12, %r13
    shrq %cl, %r13
    movq %r13, %rdi
    call lb_window_11signed_half@PLT
    movl %eax, %r13d
    movslq %r13d, %r13
    cvtsi2sdq %r13, %xmm8
    movapd %xmm8, %xmm12
    movabsq $4638144666238189568, %rax
    movq %rax, %xmm13
    movaps %xmm12, %xmm8
    divsd %xmm13, %xmm8
    movapd %xmm8, %xmm12
    movq -776(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movl -704(%rbp), %eax
    movl $526, %ecx
    cmpl %ecx, %eax
    jne .L70_109
.L70_108:
    movq %xmm12, %rax
    btcq $63, %rax
    movq %rax, %xmm13
    jmp .L70_110
.L70_109:
    movq $0, %rax
    movq %rax, %xmm13
.L70_110:
    movq %r14, %r10
    movsd %xmm13, (%r10)
    movq -776(%rbp), %rax
    movq $40, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movl -760(%rbp), %eax
    testl %eax, %eax
    jne .L70_111
    jmp .L70_112
.L70_111:
    movaps %xmm12, %xmm13
    jmp .L70_113
.L70_112:
    movq $0, %rax
    movq %rax, %xmm13
.L70_113:
    movq %r12, %r10
    movsd %xmm13, (%r10)
    movq -776(%rbp), %rax
    movq $48, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    jmp .L70_105
.L70_104:
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L70_115
.L70_114:
    movl -704(%rbp), %eax
    movl $513, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L70_169
    jmp .L70_117
.L70_169:
    movl %r12d, %r13d
    jmp .L70_118
.L70_117:
    movl -704(%rbp), %eax
    movl $516, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r13d
.L70_118:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L70_170
    jmp .L70_119
.L70_170:
    movl %r12d, %r13d
    jmp .L70_120
.L70_119:
    movl -704(%rbp), %eax
    movl $519, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r13d
.L70_120:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L70_171
    jmp .L70_121
.L70_171:
    movl %r12d, %r13d
    jmp .L70_122
.L70_121:
    movl -704(%rbp), %eax
    movl $523, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r13d
.L70_122:
    movzbl %r13b, %r12d
    movl -704(%rbp), %eax
    movl $514, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L70_172
    jmp .L70_123
.L70_172:
    movl %r14d, %r13d
    jmp .L70_124
.L70_123:
    movl -704(%rbp), %eax
    movl $517, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r13d
.L70_124:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L70_173
    jmp .L70_125
.L70_173:
    movl %r14d, %r13d
    jmp .L70_126
.L70_125:
    movl -704(%rbp), %eax
    movl $520, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r13d
.L70_126:
    movzbl %r13b, %r14d
    testl %r14d, %r14d
    jne .L70_174
    jmp .L70_127
.L70_174:
    movl %r14d, %r13d
    jmp .L70_128
.L70_127:
    movl -704(%rbp), %eax
    movl $524, %ecx
    cmpl %ecx, %eax
    sete %al
    movzbl %al, %r13d
.L70_128:
    movzbl %r13b, %r14d
    movzbl %r12b, %r15d
    movl $0, %ecx
    cmpl %ecx, %r15d
    sete %al
    movzbl %al, %ebx
    testl %ebx, %ebx
    jne .L70_132
    jmp .L70_175
.L70_175:
    movl %ebx, %r12d
    jmp .L70_133
.L70_132:
    movzbl %r14b, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r12d
.L70_133:
    movzbl %r12b, %ebx
    testl %ebx, %ebx
    jne .L70_129
    jmp .L70_130
.L70_129:
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq -712(%rbp), %rdi
    movl -704(%rbp), %esi
    movq %rbx, %rdx
    movq -752(%rbp), %rcx
    call DefWindowProcW@PLT
    movq %rax, %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L70_130:
.L70_131:
    testl %r15d, %r15d
    jne .L70_135
    jmp .L70_136
.L70_135:
    movl $9, %eax
    movl %eax, %ebx
    jmp .L70_137
.L70_136:
    movl $10, %eax
    movl %eax, %ebx
.L70_137:
    movzbl %bl, %r12d
    movq -776(%rbp), %r10
    movb %r12b, (%r10)
    movq -776(%rbp), %rax
    movq $12, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movl -704(%rbp), %eax
    movl $514, %ecx
    cmpl %ecx, %eax
    ja .L70_139
.L70_138:
    movl $0, %eax
    movl %eax, %ebx
    jmp .L70_140
.L70_139:
    movl -704(%rbp), %eax
    movl $517, %ecx
    cmpl %ecx, %eax
    ja .L70_142
.L70_141:
    movl $1, %eax
    movl %eax, %ebx
    jmp .L70_143
.L70_142:
    movl -704(%rbp), %eax
    movl $520, %ecx
    cmpl %ecx, %eax
    ja .L70_145
.L70_144:
    movl $2, %eax
    movl %eax, %ebx
    jmp .L70_146
.L70_145:
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
.L70_148:
    movq $16, %rcx
    movq %rbx, %r12
    shrq %cl, %r12
    movl %r12d, %eax
    movl $2, %ecx
    addl %ecx, %eax
    jnc 1f
    leaq .Ltext_260(%rip), %rdi
    leaq .Ltext_264(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movl %eax, %r12d
    movl %r12d, %ebx
.L70_146:
.L70_143:
.L70_140:
    movq %r13, %r10
    movl %ebx, (%r10)
    testl %r15d, %r15d
    jne .L70_149
    jmp .L70_150
.L70_149:
    movq -712(%rbp), %rdi
    call SetCapture@PLT
    movq %rax, %rbx
    jmp .L70_151
.L70_150:
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $115, %rcx
    andq %rcx, %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jne .L70_153
.L70_152:
    call ReleaseCapture@PLT
    movl %eax, %ebx
    jmp .L70_154
.L70_153:
.L70_154:
.L70_151:
    jmp .L70_116
.L70_115:
.L70_116:
.L70_105:
    subq $64, %rsp
    movq -776(%rbp), %r10
    leaq 0(%rsp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movups 32(%r10), %xmm8
    movups %xmm8, 32(%r11)
    movq 48(%r10), %rax
    movq %rax, 48(%r11)
    movq -720(%rbp), %rdi
    call lb_window_10push_event@PLT
    addq $64, %rsp
    movq $0, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L70_84:
.L70_85:
.L70_81:
.L70_60:
.L70_56:
.L70_43:
.L70_36:
.L70_28:
.L70_25:
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq -712(%rbp), %rdi
    movl -704(%rbp), %esi
    movq %rbx, %rdx
    movq %r12, %rcx
    call DefWindowProcW@PLT
    movq %rax, %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_window_10win_cursor
    .type lb_window_10win_cursor, @function
lb_window_10win_cursor:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movl %esi, -96(%rbp)
    leaq -96(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    leaq -97(%rbp), %r12
    movq %r12, %r10
    movb %bl, (%r10)
    leaq -98(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movzbl 0(%r10), %eax
    movb %al, 0(%r11)
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $1, %ecx
    cmpl %ecx, %ebx
    je .L71_2
.L71_4:
    jmp .L71_3
.L71_2:
    movq $32513, %rax
    movq %rax, %rbx
    jmp .L71_1
.L71_3:
    movl $2, %ecx
    cmpl %ecx, %ebx
    je .L71_5
.L71_7:
    jmp .L71_6
.L71_5:
    movq $32649, %rax
    movq %rax, %rbx
    jmp .L71_1
.L71_6:
    movl $3, %ecx
    cmpl %ecx, %ebx
    je .L71_8
.L71_10:
    jmp .L71_9
.L71_8:
    movq $32644, %rax
    movq %rax, %rbx
    jmp .L71_1
.L71_9:
    movl $4, %ecx
    cmpl %ecx, %ebx
    je .L71_11
.L71_13:
    jmp .L71_12
.L71_11:
    movq $32645, %rax
    movq %rax, %rbx
    jmp .L71_1
.L71_12:
    movl $5, %ecx
    cmpl %ecx, %ebx
    je .L71_14
.L71_16:
    jmp .L71_15
.L71_14:
    movq $32646, %rax
    movq %rax, %rbx
    jmp .L71_1
.L71_15:
    movl $6, %ecx
    cmpl %ecx, %ebx
    je .L71_17
.L71_19:
    jmp .L71_18
.L71_17:
    movq $32646, %rax
    movq %rax, %rbx
    jmp .L71_1
.L71_18:
    movl $7, %ecx
    cmpl %ecx, %ebx
    je .L71_20
.L71_22:
    jmp .L71_21
.L71_20:
    movq $32648, %rax
    movq %rax, %rbx
    jmp .L71_1
.L71_21:
    jmp .L71_23
.L71_25:
    jmp .L71_24
.L71_23:
    movq $32512, %rax
    movq %rax, %rbx
    jmp .L71_1
.L71_24:
.L71_1:
    movq $0, %rdi
    movq %rbx, %rsi
    call LoadCursorW@PLT
    movq %rax, %r12
    testq %r12, %r12
    jne .L71_26
    jmp .L71_27
.L71_26:
    jmp .L71_28
.L71_27:
    leaq -80(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_window_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_262(%rip), %r13
    leaq -120(%rbp), %r14
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
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L71_29:
.L71_28:
    leaq -80(%rbp), %rbx
    movq %rbx, %r10
    movq %r12, (%r10)
    movq $32, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movl $0, %eax
    movq %r13, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $40, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret
.L71_30:
    leaq .Ltext_263(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_window_14win_set_cursor
    .type lb_window_14win_set_cursor, @function
lb_window_14win_set_cursor:
    pushq %rbp
    movq %rsp, %rbp
    subq $208, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -96(%rbp)
    movl %edx, -112(%rbp)
    leaq -96(%rbp), %rbx
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
    jne .L72_4
    jmp .L72_39
.L72_39:
    movl %r13d, %r14d
    jmp .L72_5
.L72_4:
    movq $14385, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    leaq -112(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    cmpl %r14d, %r13d
    sete %al
    movzbl %al, %r14d
.L72_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L72_1
    jmp .L72_2
.L72_1:
    leaq -80(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L72_6:
    jmp .L72_3
.L72_2:
.L72_3:
    movq %r12, %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L72_40
    jmp .L72_10
.L72_40:
    movl %r13d, %r14d
    jmp .L72_11
.L72_10:
    movq $14385, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    leaq -112(%rbp), %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    cmpl %r14d, %r13d
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
.L72_11:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L72_7
    jmp .L72_8
.L72_7:
    leaq -112(%rbp), %r13
    movq %r13, %r10
    movzbl (%r10), %r13d
    movl %r13d, %esi
    leaq -152(%rbp), %rdi
    call lb_window_10win_cursor@PLT
    leaq -152(%rbp), %r15
    movq $32, %rcx
    movq %r15, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L72_13
    jmp .L72_12
.L72_13:
    movq $8, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    leaq -80(%rbp), %r12
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
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret
.L72_14:
.L72_12:
    movq %r15, %r10
    movq (%r10), %r14
    movq %r12, %r10
    movq %r14, (%r10)
    movq $14385, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movb %r13b, (%r10)
    jmp .L72_9
.L72_8:
.L72_9:
    movq %rbx, %r10
    movq (%r10), %r13
    leaq -192(%rbp), %r10
    movq %r13, (%r10)
    testq %r13, %r13
    jne .L72_34
    jmp .L72_35
.L72_34:
    jmp .L72_36
.L72_35:
    leaq .Ltext_39(%rip), %rbx
    leaq -208(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $38, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_40(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L72_36:
    jmp .L72_38
.L72_37:
    leaq .Ltext_40(%rip), %rdi
    leaq .Ltext_0(%rip), %rsi
    call lb_core_7trap_at@PLT
.L72_38:
    leaq -160(%rbp), %rbx
    movq %rbx, %r11
    movq $0, 0(%r11)
    call GetCapture@PLT
    movq %rax, %r14
    cmpq %r14, %r13
    jne .L72_16
.L72_15:
    movq %r12, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call SetCursor@PLT
    movq %rax, %rbx
    jmp .L72_17
.L72_16:
    movq %rbx, %rdi
    call GetCursorPos@PLT
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
    jne .L72_21
    jmp .L72_41
.L72_41:
    movl %r14d, %r15d
    jmp .L72_22
.L72_21:
    movq %rbx, %r10
    movq 0(%r10), %rdi
    call WindowFromPoint@PLT
    movq %rax, %r14
    cmpq %r14, %r13
    sete %al
    movzbl %al, %r15d
.L72_22:
    movzbl %r15b, %r14d
    testl %r14d, %r14d
    jne .L72_18
    jmp .L72_19
.L72_18:
    movq %r13, %rdi
    movq %rbx, %rsi
    call ScreenToClient@PLT
    movl %eax, %r14d
    leaq -176(%rbp), %r14
    movq %r14, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %rdi
    movq %r14, %rsi
    call GetClientRect@PLT
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
    jne .L72_26
    jmp .L72_42
.L72_42:
    movl %r15d, %r13d
    jmp .L72_27
.L72_26:
    movq %rbx, %r10
    movslq (%r10), %r13
    movl $0, %ecx
    cmpl %ecx, %r13d
    setge %al
    movzbl %al, %r13d
.L72_27:
    movzbl %r13b, %r15d
    testl %r15d, %r15d
    jne .L72_28
    jmp .L72_43
.L72_43:
    movl %r15d, %r13d
    jmp .L72_29
.L72_28:
    movq $4, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movslq (%r10), %r13
    movl $0, %ecx
    cmpl %ecx, %r13d
    setge %al
    movzbl %al, %r13d
.L72_29:
    movzbl %r13b, %r15d
    testl %r15d, %r15d
    jne .L72_30
    jmp .L72_44
.L72_44:
    movl %r15d, %r13d
    jmp .L72_31
.L72_30:
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
.L72_31:
    movzbl %r13b, %r15d
    testl %r15d, %r15d
    jne .L72_32
    jmp .L72_45
.L72_45:
    movl %r15d, %ebx
    jmp .L72_33
.L72_32:
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
.L72_33:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L72_23
    jmp .L72_24
.L72_23:
    movq %r12, %r10
    movq (%r10), %rbx
    movq %rbx, %rdi
    call SetCursor@PLT
    movq %rax, %rbx
    jmp .L72_25
.L72_24:
.L72_25:
    jmp .L72_20
.L72_19:
.L72_20:
.L72_17:
    leaq -80(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $32, %rdx
    call memcpy@PLT
    movq -8(%rbp), %rax
    movq -16(%rbp), %rbx
    movq -24(%rbp), %r12
    movq -32(%rbp), %r13
    movq -40(%rbp), %r14
    movq -48(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_window_0init
    .text

    .section .rodata
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
    .asciz "native windows are not implemented for this target"
.Ltext_4:
    .asciz "src/std/window/module.lucb:55:9"
.Ltext_5:
    .asciz "src/std/window/module.lucb:70:9"
.Ltext_6:
    .asciz "unknown system cursor"
.Ltext_7:
    .asciz "src/std/window/module.lucb:104:9"
.Ltext_8:
    .asciz "the window already has a presentation surface"
.Ltext_9:
    .asciz "src/std/window/module.lucb:113:9"
.Ltext_10:
    .asciz "src/std/window/module.lucb:133:9"
.Ltext_11:
    .asciz "window destruction requires the main thread"
.Ltext_12:
    .asciz "src/std/window/module.lucb:141:13"
.Ltext_13:
    .asciz "the window is closed"
.Ltext_14:
    .asciz "src/std/window/module.lucb:150:9"
.Ltext_15:
    .asciz "window dimensions must be between 1 and 10000 points"
.Ltext_16:
    .asciz "src/std/window/queue.lucb:41:9"
.Ltext_17:
    .asciz "src/std/window/queue.lucb:53:5"
.Ltext_18:
    .asciz "division by zero"
.Ltext_19:
    .asciz "src/std/window/queue.lucb:54:5"
.Ltext_20:
    .asciz "src/std/window/queue.lucb:65:5"
.Ltext_21:
    .asciz "src/std/window/queue.lucb:66:5"
.Ltext_22:
    .asciz "src/std/window/queue.lucb:67:5"
.Ltext_23:
    .asciz "src/std/window/queue.lucb:68:5"
.Ltext_24:
    .asciz "src/std/window/presentation.lucb:14:9"
.Ltext_25:
    .asciz "src/std/window/presentation.lucb:26:9"
.Ltext_26:
    .asciz "this window has no macOS view"
.Ltext_27:
    .asciz "src/std/window/presentation.lucb:36:9"
.Ltext_28:
    .asciz "this window has no Windows handle"
.Ltext_29:
    .asciz "src/std/window/presentation.lucb:43:9"
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

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_window_unsupported
    .type lb_window_unsupported, @object
    .p2align 2
lb_window_unsupported:
    .zero 4

    .bss
    .globl lb_window_12wrong_thread
    .type lb_window_12wrong_thread, @object
    .p2align 2
lb_window_12wrong_thread:
    .zero 4

    .bss
    .globl lb_window_15invalid_options
    .type lb_window_15invalid_options, @object
    .p2align 2
lb_window_15invalid_options:
    .zero 4

    .bss
    .globl lb_window_failed
    .type lb_window_failed, @object
    .p2align 2
lb_window_failed:
    .zero 4

    .bss
    .globl lb_window_closed
    .type lb_window_closed, @object
    .p2align 2
lb_window_closed:
    .zero 4

    .bss
    .globl lb_window_19presentation_in_use
    .type lb_window_19presentation_in_use, @object
    .p2align 2
lb_window_19presentation_in_use:
    .zero 4

    .bss
    .globl lb_window_13key_positions
    .type lb_window_13key_positions, @object
    .p2align 1
lb_window_13key_positions:
    .zero 256

    .bss
    .globl lb_window_13mac_not_found
    .type lb_window_13mac_not_found, @object
    .p2align 3
lb_window_13mac_not_found:
    .zero 8

    .bss
    .globl lb_window_10view_class
    .type lb_window_10view_class, @object
    .p2align 3
lb_window_10view_class:
    .zero 8

    .bss
    .globl lb_window_14delegate_class
    .type lb_window_14delegate_class, @object
    .p2align 3
lb_window_14delegate_class:
    .zero 8

    .bss
    .globl lb_window_application
    .type lb_window_application, @object
    .p2align 3
lb_window_application:
    .zero 8

    .bss
    .globl lb_window_14win_class_atom
    .type lb_window_14win_class_atom, @object
    .p2align 1
lb_window_14win_class_atom:
    .zero 2

    .bss
    .globl lb_window_14win_class_name
    .type lb_window_14win_class_name, @object
    .p2align 1
lb_window_14win_class_name:
    .zero 22

    .bss
    .globl lb_window_13win_scan_keys
    .type lb_window_13win_scan_keys, @object
    .p2align 1
lb_window_13win_scan_keys:
    .zero 128

    .section .note.GNU-stack,"",@progbits
