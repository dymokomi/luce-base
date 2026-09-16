    .text

    .p2align 4
    .globl lb_gpu_module_0init
    .type lb_gpu_module_0init, @function
lb_gpu_module_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    leaq lb_gpu_unsupported(%rip), %rbx
    movl $208273499, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_unavailable(%rip), %rbx
    movl $208273500, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_12wrong_thread(%rip), %rbx
    movl $208273501, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_closed(%rip), %rbx
    movl $208273502, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_13invalid_color(%rip), %rbx
    movl $208273503, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_failed(%rip), %rbx
    movl $208273504, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_16execution_failed(%rip), %rbx
    movl $208273505, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_17surface_too_large(%rip), %rbx
    movl $208273506, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_16invalid_geometry(%rip), %rbx
    movl $208273507, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_13command_limit(%rip), %rbx
    movl $208273508, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_14frame_finished(%rip), %rbx
    movl $208273522, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_12frame_in_use(%rip), %rbx
    movl $208273523, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_gpu_13frame_resized(%rip), %rbx
    movl $208273524, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_gpu_supported
    .type lb_gpu_supported, @function
lb_gpu_supported:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movl %edi, -16(%rbp)
.L1_2:
.L1_4:
    movl $0, %eax
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_gpu_12check_thread
    .type lb_gpu_12check_thread, @function
lb_gpu_12check_thread:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movl $0, %edi
    call lb_gpu_supported@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L2_2
.L2_1:
    leaq -64(%rbp), %rbx
    leaq lb_gpu_unsupported(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_2(%rip), %r12
    leaq -80(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $45, %rax
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
.L2_4:
    jmp .L2_3
.L2_2:
.L2_3:
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
    .globl lb_gpu_14require_thread
    .type lb_gpu_14require_thread, @function
lb_gpu_14require_thread:
    pushq %rbp
    movq %rsp, %rbp
    subq $144, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movl $0, %edi
    call lb_gpu_supported@PLT
    movl %eax, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L3_6
.L3_5:
    leaq -128(%rbp), %rbx
    leaq lb_gpu_unsupported(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_2(%rip), %r12
    leaq -144(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $45, %rax
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
    leaq -80(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L3_9
.L3_8:
    jmp .L3_7
.L3_6:
.L3_7:
    leaq -128(%rbp), %rbx
    movq $24, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $0, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq %rbx, %r10
    leaq -80(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L3_9:
    leaq -80(%rbp), %r12
    movq $24, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L3_4
    jmp .L3_3
.L3_4:
    leaq -48(%rbp), %rbx
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L3_1
.L3_3:
    jmp .L3_2
.L3_1:
    leaq .Ltext_3(%rip), %rbx
    leaq -96(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $40, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    leaq .Ltext_4(%rip), %rbx
    movq %rbx, %rdi
    movq %r12, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
.L3_2:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_gpu_11check_color
    .type lb_gpu_11check_color, @function
lb_gpu_11check_color:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    leaq 16(%rbp), %r10
    leaq -88(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movsd (%r10), %xmm12
    movq $0, %rax
    movq %rax, %xmm13
    ucomisd %xmm13, %xmm12
    setae %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L4_4
    jmp .L4_15
.L4_15:
    movl %r12d, %r13d
    jmp .L4_5
.L4_4:
    movabsq $4607182418800017408, %rax
    movq %rax, %xmm14
    ucomisd %xmm12, %xmm14
    setae %al
    movzbl %al, %r13d
.L4_5:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L4_6
    jmp .L4_16
.L4_16:
    movl %r12d, %r13d
    jmp .L4_7
.L4_6:
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movsd (%r10), %xmm12
    ucomisd %xmm13, %xmm12
    setae %al
    movzbl %al, %r13d
.L4_7:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L4_8
    jmp .L4_17
.L4_17:
    movl %r12d, %r13d
    jmp .L4_9
.L4_8:
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movsd (%r10), %xmm12
    movabsq $4607182418800017408, %rax
    movq %rax, %xmm14
    ucomisd %xmm12, %xmm14
    setae %al
    movzbl %al, %r13d
.L4_9:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L4_10
    jmp .L4_18
.L4_18:
    movl %r12d, %r13d
    jmp .L4_11
.L4_10:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movsd (%r10), %xmm12
    ucomisd %xmm13, %xmm12
    setae %al
    movzbl %al, %r13d
.L4_11:
    movzbl %r13b, %r12d
    testl %r12d, %r12d
    jne .L4_12
    jmp .L4_19
.L4_19:
    movl %r12d, %ebx
    jmp .L4_13
.L4_12:
    movq $16, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movsd (%r10), %xmm12
    movabsq $4607182418800017408, %rax
    movq %rax, %xmm13
    ucomisd %xmm12, %xmm13
    setae %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L4_13:
    movzbl %bl, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    jne .L4_2
.L4_1:
    leaq -64(%rbp), %rbx
    leaq lb_gpu_13invalid_color(%rip), %r12
    movq %r12, %r10
    movl (%r10), %r12d
    movq %rbx, %r10
    movl %r12d, (%r10)
    leaq .Ltext_5(%rip), %r12
    leaq -104(%rbp), %r13
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
.L4_14:
    jmp .L4_3
.L4_2:
.L4_3:
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

    .section .init_array,"aw"
    .p2align 3
    .quad lb_gpu_module_0init
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
    .asciz "src/std/gpu/module.lucb:37:5"
.Ltext_2:
    .asciz "no GPU backend is implemented for this target"
.Ltext_3:
    .asciz "GPU destruction requires the main thread"
.Ltext_4:
    .asciz "src/std/gpu/module.lucb:66:9"
.Ltext_5:
    .asciz "GPU clear colors must be finite linear sRGB values in 0..1"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_gpu_unsupported
    .type lb_gpu_unsupported, @object
    .p2align 2
lb_gpu_unsupported:
    .zero 4

    .bss
    .globl lb_gpu_unavailable
    .type lb_gpu_unavailable, @object
    .p2align 2
lb_gpu_unavailable:
    .zero 4

    .bss
    .globl lb_gpu_12wrong_thread
    .type lb_gpu_12wrong_thread, @object
    .p2align 2
lb_gpu_12wrong_thread:
    .zero 4

    .bss
    .globl lb_gpu_closed
    .type lb_gpu_closed, @object
    .p2align 2
lb_gpu_closed:
    .zero 4

    .bss
    .globl lb_gpu_13invalid_color
    .type lb_gpu_13invalid_color, @object
    .p2align 2
lb_gpu_13invalid_color:
    .zero 4

    .bss
    .globl lb_gpu_failed
    .type lb_gpu_failed, @object
    .p2align 2
lb_gpu_failed:
    .zero 4

    .bss
    .globl lb_gpu_16execution_failed
    .type lb_gpu_16execution_failed, @object
    .p2align 2
lb_gpu_16execution_failed:
    .zero 4

    .bss
    .globl lb_gpu_17surface_too_large
    .type lb_gpu_17surface_too_large, @object
    .p2align 2
lb_gpu_17surface_too_large:
    .zero 4

    .bss
    .globl lb_gpu_16invalid_geometry
    .type lb_gpu_16invalid_geometry, @object
    .p2align 2
lb_gpu_16invalid_geometry:
    .zero 4

    .bss
    .globl lb_gpu_13command_limit
    .type lb_gpu_13command_limit, @object
    .p2align 2
lb_gpu_13command_limit:
    .zero 4

    .bss
    .globl lb_gpu_14frame_finished
    .type lb_gpu_14frame_finished, @object
    .p2align 2
lb_gpu_14frame_finished:
    .zero 4

    .bss
    .globl lb_gpu_12frame_in_use
    .type lb_gpu_12frame_in_use, @object
    .p2align 2
lb_gpu_12frame_in_use:
    .zero 4

    .bss
    .globl lb_gpu_13frame_resized
    .type lb_gpu_13frame_resized, @object
    .p2align 2
lb_gpu_13frame_resized:
    .zero 4

    .section .note.GNU-stack,"",@progbits
