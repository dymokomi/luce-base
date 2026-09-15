    .text

    .p2align 4
    .globl lb_files_walk_0init
    .type lb_files_walk_0init, @function
lb_files_walk_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    leaq lb_files_15directory_cycle(%rip), %rbx
    movl $208273441, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq lb_files_11depth_limit(%rip), %rbx
    movl $208273442, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_files_walk
    .type lb_files_walk, @function
lb_files_walk:
    pushq %rbp
    movq %rsp, %rbp
    subq $3344, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -96(%rbp)
    leaq -112(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    movq %r8, -128(%rbp)
    leaq -144(%rbp), %rax
    movq %rax, -2328(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -2336(%rbp)
    movq -2336(%rbp), %r10
    movq -2328(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -272(%rbp), %r15
    leaq -96(%rbp), %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r13, %rsi
    movl $1, %edx
    leaq -432(%rbp), %rdi
    call lb_files_metadata@PLT
    leaq -432(%rbp), %r12
    movq $152, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L1_2
    jmp .L1_1
.L1_2:
    movq $128, %rcx
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
.L1_3:
.L1_1:
    movq %r12, %r10
    movq %r15, %r11
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
    leaq -112(%rbp), %rax
    movq %rax, -2344(%rbp)
    movq -2344(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -2352(%rbp)
    movq -2344(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2360(%rbp)
    movq -2360(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -2368(%rbp)
    movq -2368(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -2376(%rbp)
    movq %r13, %rdi
    call strlen@PLT
    movq %rax, %rbx
    leaq -448(%rbp), %rax
    movq %rax, -2384(%rbp)
    movq -2384(%rbp), %r10
    movq %r13, (%r10)
    movq -2384(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    subq $128, %rsp
    movq %r15, %r10
    leaq 0(%rsp), %r11
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
    movq -2352(%rbp), %rsi
    movq -2384(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq $0, %r8
    leaq -488(%rbp), %rdi
    movq -2376(%rbp), %r11
    call *%r11
    addq $128, %rsp
    leaq -488(%rbp), %r14
    movq $32, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_5
    jmp .L1_4
.L1_5:
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
.L1_6:
.L1_4:
    movq %r14, %r10
    movzbl (%r10), %ebx
    movq %r15, %r10
    movzbl (%r10), %r12d
    movl $2, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    testl %r12d, %r12d
    jne .L1_128
    jmp .L1_10
.L1_128:
    movl %r12d, %ebx
    jmp .L1_11
.L1_10:
    movzbl %bl, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ebx
.L1_11:
    movzbl %bl, %r12d
    testl %r12d, %r12d
    jne .L1_7
    jmp .L1_8
.L1_7:
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
.L1_12:
    jmp .L1_9
.L1_8:
.L1_9:
    leaq -568(%rbp), %rax
    movq %rax, -3160(%rbp)
    subq $128, %rsp
    movq %r15, %r10
    leaq 0(%rsp), %r11
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
    movq %r13, %rsi
    movq -2328(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -680(%rbp), %rdi
    call lb_files_WalkState_start@PLT
    addq $128, %rsp
    leaq -680(%rbp), %r14
    movq $104, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_14
    jmp .L1_13
.L1_14:
    movq $80, %rcx
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
.L1_15:
.L1_13:
    movq %r14, %r10
    movq -3160(%rbp), %r11
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
    movq -3160(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -2392(%rbp)
    leaq -704(%rbp), %rax
    movq %rax, -3168(%rbp)
    movq -3160(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2408(%rbp)
    leaq -760(%rbp), %rax
    movq %rax, -3176(%rbp)
    movq -3176(%rbp), %rax
    movq $48, %rcx
    addq %rcx, %rax
    movq %rax, -2424(%rbp)
    movq -3168(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -2432(%rbp)
    leaq -808(%rbp), %rax
    movq %rax, -3184(%rbp)
    leaq -824(%rbp), %rax
    movq %rax, -2448(%rbp)
    leaq -128(%rbp), %rax
    movq %rax, -2464(%rbp)
    leaq -968(%rbp), %rax
    movq %rax, -3192(%rbp)
    leaq -1128(%rbp), %rax
    movq %rax, -3200(%rbp)
    movq -3200(%rbp), %rax
    movq $152, %rcx
    addq %rcx, %rax
    movq %rax, -2472(%rbp)
    movq -3160(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -2480(%rbp)
    leaq -1144(%rbp), %rax
    movq %rax, -2488(%rbp)
    movq -2488(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2496(%rbp)
    leaq -1160(%rbp), %rax
    movq %rax, -2504(%rbp)
    movq -2504(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2512(%rbp)
    leaq .Ltext_5(%rip), %rax
    movq %rax, -2520(%rbp)
    leaq -1176(%rbp), %rax
    movq %rax, -2528(%rbp)
    movq -2528(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2536(%rbp)
    leaq -1208(%rbp), %rax
    movq %rax, -3208(%rbp)
    movq -3208(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -2544(%rbp)
    leaq -1240(%rbp), %rax
    movq %rax, -3216(%rbp)
    movq -3216(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -2552(%rbp)
    leaq -1256(%rbp), %rax
    movq %rax, -2560(%rbp)
    leaq -1296(%rbp), %rax
    movq %rax, -3224(%rbp)
    movq -3224(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -2568(%rbp)
    movq -3192(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -2584(%rbp)
    movq -3192(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -2600(%rbp)
    leaq -1896(%rbp), %rax
    movq %rax, -2768(%rbp)
    movq -2768(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2776(%rbp)
    leaq -1928(%rbp), %rax
    movq %rax, -2784(%rbp)
    movq -2784(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2792(%rbp)
    movq -2784(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -2800(%rbp)
    leaq -1352(%rbp), %rax
    movq %rax, -3240(%rbp)
    leaq -1392(%rbp), %rax
    movq %rax, -3248(%rbp)
    movq -3248(%rbp), %rax
    movq $32, %rcx
    addq %rcx, %rax
    movq %rax, -2616(%rbp)
    leaq -1520(%rbp), %rax
    movq %rax, -3256(%rbp)
    leaq -1680(%rbp), %rax
    movq %rax, -3264(%rbp)
    movq -3264(%rbp), %rax
    movq $152, %rcx
    addq %rcx, %rax
    movq %rax, -2624(%rbp)
    movq -3256(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -2632(%rbp)
    movq -3256(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -2648(%rbp)
    leaq -2120(%rbp), %rax
    movq %rax, -2808(%rbp)
    leaq -2136(%rbp), %rax
    movq %rax, -3272(%rbp)
    movq -3272(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2824(%rbp)
    leaq -1968(%rbp), %rax
    movq %rax, -2832(%rbp)
    leaq lb_memory_exhausted(%rip), %rax
    movq %rax, -2840(%rbp)
    leaq .Ltext_20(%rip), %rax
    movq %rax, -2848(%rbp)
    leaq -2152(%rbp), %rax
    movq %rax, -2856(%rbp)
    movq -2856(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2864(%rbp)
    movq -2832(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2872(%rbp)
    movq -2832(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -2880(%rbp)
    leaq -2168(%rbp), %rax
    movq %rax, -2888(%rbp)
    movq -3160(%rbp), %rax
    movq $64, %rcx
    addq %rcx, %rax
    movq %rax, -2896(%rbp)
    leaq -2184(%rbp), %rax
    movq %rax, -3280(%rbp)
    leaq -2232(%rbp), %rax
    movq %rax, -3288(%rbp)
    movq -2336(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2944(%rbp)
    leaq -2256(%rbp), %rax
    movq %rax, -3296(%rbp)
    movq -3296(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -2952(%rbp)
    movq -3288(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -3000(%rbp)
    movq -3288(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -3008(%rbp)
    movq -3288(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -2960(%rbp)
    leaq .Ltext_13(%rip), %rax
    movq %rax, -2968(%rbp)
    movq -2960(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2976(%rbp)
    movq -2960(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -2984(%rbp)
    movq -3288(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -2992(%rbp)
    movq -3288(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -2904(%rbp)
    leaq .Ltext_10(%rip), %rax
    movq %rax, -2912(%rbp)
    movq -2904(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2920(%rbp)
    movq -2904(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -2928(%rbp)
    movq -3288(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -2936(%rbp)
    movq -3288(%rbp), %rax
    movq $40, %rcx
    addq %rcx, %rax
    movq %rax, -3016(%rbp)
    leaq -2272(%rbp), %rax
    movq %rax, -3048(%rbp)
    movq -3048(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -3056(%rbp)
    movq -2336(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -3064(%rbp)
    leaq -2304(%rbp), %rax
    movq %rax, -3072(%rbp)
    leaq -1984(%rbp), %rax
    movq %rax, -3080(%rbp)
    leaq -2112(%rbp), %rax
    movq %rax, -3088(%rbp)
    movq -3072(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -3096(%rbp)
    movq -3088(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -3104(%rbp)
    movq -3072(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -3112(%rbp)
    leaq -2320(%rbp), %rax
    movq %rax, -3120(%rbp)
    movq -3120(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -3128(%rbp)
    movq -3072(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -3136(%rbp)
    leaq -1968(%rbp), %rax
    movq %rax, -3144(%rbp)
    movq -3144(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -3152(%rbp)
    movq -3288(%rbp), %rax
    movq $16, %rcx
    addq %rcx, %rax
    movq %rax, -3024(%rbp)
    leaq -1968(%rbp), %rax
    movq %rax, -3032(%rbp)
    movq -3032(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -3040(%rbp)
    leaq -1728(%rbp), %rax
    movq %rax, -3304(%rbp)
    movq -3304(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -2656(%rbp)
    leaq -1328(%rbp), %rax
    movq %rax, -3312(%rbp)
    movq -3312(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -2576(%rbp)
    leaq -1816(%rbp), %rax
    movq %rax, -3320(%rbp)
    movq -3320(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -2664(%rbp)
    movq -3160(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -2712(%rbp)
    leaq -1848(%rbp), %rax
    movq %rax, -3328(%rbp)
    movq -3328(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -2720(%rbp)
    leaq -1760(%rbp), %rax
    movq %rax, -2744(%rbp)
    movq -2744(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -2752(%rbp)
    leaq -1760(%rbp), %rax
    movq %rax, -2728(%rbp)
    movq -2728(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -2736(%rbp)
    leaq -1784(%rbp), %rax
    movq %rax, -2672(%rbp)
    leaq -1760(%rbp), %rax
    movq %rax, -2680(%rbp)
    movq -2672(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2688(%rbp)
    movq -2680(%rbp), %rax
    movq $8, %rcx
    addq %rcx, %rax
    movq %rax, -2696(%rbp)
    movq -2680(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -2704(%rbp)
    leaq -792(%rbp), %rax
    movq %rax, -3336(%rbp)
    movq -3336(%rbp), %rax
    movq $24, %rcx
    addq %rcx, %rax
    movq %rax, -2440(%rbp)
.L1_16:
    movq -2392(%rbp), %r10
    movq (%r10), %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    jbe .L1_18
.L1_17:
    movq %r14, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, -2400(%rbp)
    movq -3160(%rbp), %r10
    movq (%r10), %r13
    movq -2408(%rbp), %r10
    movq (%r10), %r15
    movq -2400(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_1(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -2400(%rbp), %rax
    movq $32, %rcx
    imulq %rcx, %rax
    movq %rax, -2416(%rbp)
    movq -2416(%rbp), %rcx
    addq %rcx, %r13
    movq %r13, %rsi
    leaq -760(%rbp), %rdi
    call lb_files_Directory_next@PLT
    movq -2424(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L1_20
    jmp .L1_19
.L1_20:
    movq -3176(%rbp), %rax
    movq $24, %rcx
    movq %rax, %rbx
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
    movq -3160(%rbp), %rdi
    call lb_files_WalkState_destroy@PLT
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
.L1_21:
.L1_19:
    movq -3176(%rbp), %r10
    movq -3168(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq -2432(%rbp), %r10
    movzbl (%r10), %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L1_23
.L1_22:
    movq -2392(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_25(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -3160(%rbp), %r10
    movq (%r10), %r13
    movq -2408(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %rbx
    jb 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $32, %rcx
    imulq %rcx, %rbx
    movq %rbx, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %rsi
    leaq -1816(%rbp), %rdi
    call lb_files_Directory_close@PLT
    movq -2664(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_85
    jmp .L1_84
.L1_85:
    movq -3320(%rbp), %r10
    movq -2672(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    jmp .L1_82
.L1_84:
    jmp .L1_83
.L1_82:
    movq -2392(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_27(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -2392(%rbp), %r10
    movq %rbx, (%r10)
    movq -2672(%rbp), %r10
    movl (%r10), %ebx
    movq -2680(%rbp), %r10
    movl %ebx, (%r10)
    movq -2688(%rbp), %r10
    movq -2696(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $1, %eax
    movq -2704(%rbp), %r10
    movb %al, (%r10)
    movq -2680(%rbp), %r10
    leaq -792(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L1_93
.L1_86:
.L1_83:
    movq -2392(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_26(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -2392(%rbp), %r10
    movq %rbx, (%r10)
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L1_88
.L1_87:
    movq %rbx, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq -3160(%rbp), %r10
    movq (%r10), %r14
    movq -2408(%rbp), %r10
    movq (%r10), %r15
    cmpq %r15, %r13
    jb 1f
    leaq .Ltext_28(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    call lb_core_7trap_at@PLT
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
    movq -2712(%rbp), %rsi
    movq %r13, %rdx
    leaq -1848(%rbp), %rdi
    call lb_strings_Builder_truncate@PLT
    movq -2720(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L1_91
    jmp .L1_90
.L1_91:
    movq -3328(%rbp), %r10
    movq -2728(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl $1, %eax
    movq -2736(%rbp), %r10
    movb %al, (%r10)
    movq -2728(%rbp), %r10
    leaq -792(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L1_93
.L1_92:
.L1_90:
    jmp .L1_89
.L1_88:
.L1_89:
    movl $0, %eax
    movq -2752(%rbp), %r10
    movb %al, (%r10)
    movq -2744(%rbp), %r10
    leaq -792(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L1_93:
    movq -2440(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_26
    jmp .L1_25
.L1_26:
    leaq -80(%rbp), %rbx
    movq -3336(%rbp), %r10
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
    movq -3160(%rbp), %rdi
    call lb_files_WalkState_destroy@PLT
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
.L1_27:
.L1_25:
    jmp .L1_16
.L1_28:
    jmp .L1_24
.L1_23:
.L1_24:
    testl %r13d, %r13d
    jne .L1_29
    jmp .L1_30
.L1_29:
    movq -3168(%rbp), %r10
    movq -2448(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L1_31
.L1_30:
    jmp .L1_16
.L1_32:
.L1_31:
    movq -2448(%rbp), %r10
    movq -3184(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -2392(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -2456(%rbp)
    movq -2464(%rbp), %r10
    movq (%r10), %r14
    movq -2456(%rbp), %rax
    cmpq %r14, %rax
    jbe .L1_34
.L1_33:
    leaq -80(%rbp), %rbx
    leaq lb_files_11depth_limit(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq .Ltext_2(%rip), %r13
    leaq -840(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $44, %rax
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
    movq -3160(%rbp), %rdi
    call lb_files_WalkState_destroy@PLT
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
.L1_36:
    jmp .L1_35
.L1_34:
.L1_35:
    movq -3160(%rbp), %r10
    movq (%r10), %r14
    movq -2408(%rbp), %r10
    movq (%r10), %r13
    movq -2400(%rbp), %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_3(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -2416(%rbp), %rax
    movq %rax, %r13
    addq %r14, %r13
    movq -3184(%rbp), %r10
    movq (%r10), %r14
    movq %r13, %rsi
    movq %r14, %rdx
    movl $0, %ecx
    leaq -1128(%rbp), %rdi
    call lb_files_Directory_14entry_metadata@PLT
    movq -2472(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L1_38
    jmp .L1_37
.L1_38:
    movq -3200(%rbp), %rax
    movq $128, %rcx
    movq %rax, %rbx
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
    movq -3160(%rbp), %rdi
    call lb_files_WalkState_destroy@PLT
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
.L1_39:
.L1_37:
    movq -3200(%rbp), %r10
    movq -3192(%rbp), %r11
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
    movq -2480(%rbp), %rdi
    call lb_strings_Builder_view@PLT
    leaq -1144(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    movq -2496(%rbp), %r10
    movq (%r10), %r13
    movq $0, %rcx
    cmpq %rcx, %r13
    seta %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L1_43
    jmp .L1_129
.L1_129:
    movl %r14d, %r15d
    jmp .L1_44
.L1_43:
    movq %r13, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r14
    movq -2480(%rbp), %rdi
    call lb_strings_Builder_view@PLT
    leaq -1160(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    movq -2504(%rbp), %r10
    movq (%r10), %r15
    movq -2512(%rbp), %r10
    movq (%r10), %rbx
    cmpq %rbx, %r14
    jb 1f
    leaq .Ltext_4(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %r14, %rbx
    addq %r15, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $47, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %r15d
.L1_44:
    movzbl %r15b, %ebx
    testl %ebx, %ebx
    jne .L1_40
    jmp .L1_41
.L1_40:
    movq -2520(%rbp), %rax
    movq -2528(%rbp), %r10
    movq %rax, (%r10)
    movq $1, %rax
    movq -2536(%rbp), %r10
    movq %rax, (%r10)
    movq -2480(%rbp), %rsi
    movq -2528(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -1208(%rbp), %rdi
    call lb_strings_Builder_put@PLT
    movq -2544(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_46
    jmp .L1_45
.L1_46:
    leaq -80(%rbp), %rbx
    movq -3208(%rbp), %r10
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
    movq -3160(%rbp), %rdi
    call lb_files_WalkState_destroy@PLT
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
.L1_47:
.L1_45:
    jmp .L1_42
.L1_41:
.L1_42:
    movq -2480(%rbp), %rsi
    movq -3184(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -1240(%rbp), %rdi
    call lb_strings_Builder_put@PLT
    movq -2552(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_49
    jmp .L1_48
.L1_49:
    leaq -80(%rbp), %rbx
    movq -3216(%rbp), %r10
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
    movq -3160(%rbp), %rdi
    call lb_files_WalkState_destroy@PLT
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
.L1_50:
.L1_48:
    movq -2368(%rbp), %r10
    movq (%r10), %rbx
    movq -2480(%rbp), %rdi
    call lb_strings_Builder_view@PLT
    leaq -1256(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    subq $128, %rsp
    movq -3192(%rbp), %r10
    leaq 0(%rsp), %r11
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
    movq -2352(%rbp), %rsi
    movq -2560(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq -2456(%rbp), %r8
    leaq -1296(%rbp), %rdi
    movq %rbx, %r11
    call *%r11
    addq $128, %rsp
    movq -2568(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_52
    jmp .L1_51
.L1_52:
    movq -3224(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
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
    movq -3160(%rbp), %rdi
    call lb_files_WalkState_destroy@PLT
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
.L1_53:
.L1_51:
    movq -3224(%rbp), %r10
    movzbl (%r10), %ebx
    movq -3192(%rbp), %r10
    movzbl (%r10), %r14d
    movl $2, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L1_130
    jmp .L1_57
.L1_130:
    movl %r14d, %ebx
    jmp .L1_58
.L1_57:
    movzbl %bl, %r14d
    movl $0, %ecx
    cmpl %ecx, %r14d
    sete %al
    movzbl %al, %r14d
    movl %r14d, %ebx
.L1_58:
    movzbl %bl, %r14d
    testl %r14d, %r14d
    jne .L1_54
    jmp .L1_55
.L1_54:
    movq -2480(%rbp), %rsi
    movq %r13, %rdx
    leaq -1328(%rbp), %rdi
    call lb_strings_Builder_truncate@PLT
    movq -2576(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_60
    jmp .L1_59
.L1_60:
    leaq -80(%rbp), %rbx
    movq -3312(%rbp), %r10
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
    movq -3160(%rbp), %rdi
    call lb_files_WalkState_destroy@PLT
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
.L1_61:
.L1_59:
    jmp .L1_16
.L1_62:
    jmp .L1_56
.L1_55:
.L1_56:
    movq -2584(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -2592(%rbp)
    movq -2600(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -2608(%rbp)
    movq -2592(%rbp), %rax
    leaq -1864(%rbp), %r10
    movq %rax, (%r10)
    movq -2608(%rbp), %rax
    leaq -1880(%rbp), %r10
    movq %rax, (%r10)
    movq -3160(%rbp), %r10
    movq (%r10), %r13
    movq -2408(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -2760(%rbp)
    movq -2392(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -3232(%rbp)
    movq -2760(%rbp), %rax
    movq $1, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq $0, %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -3232(%rbp), %rax
    cmpq %r15, %rax
    jb 1f
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $0, %rax
    movq -3232(%rbp), %rcx
    cmpq %rcx, %rax
    jbe .L1_98
.L1_99:
    leaq .Ltext_17(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_98:
    movq -2768(%rbp), %r10
    movq %r13, (%r10)
    movq -3232(%rbp), %rax
    movq -2776(%rbp), %r10
    movq %rax, (%r10)
    movq $0, %rax
    movq %rax, %r15
.L1_94:
    movq -3232(%rbp), %rcx
    cmpq %rcx, %r15
    jae .L1_97
.L1_95:
    movq $32, %rcx
    movq %r15, %r14
    imulq %rcx, %r14
    addq %r13, %r14
    movq %r14, %r10
    movq -2784(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq -2792(%rbp), %r10
    movq (%r10), %r14
    movq -2592(%rbp), %rax
    cmpq %r14, %rax
    sete %al
    movzbl %al, %r14d
    testl %r14d, %r14d
    jne .L1_103
    jmp .L1_131
.L1_131:
    movl %r14d, %ebx
    jmp .L1_104
.L1_103:
    movq -2800(%rbp), %r10
    movq (%r10), %rbx
    movq -2608(%rbp), %rax
    cmpq %rbx, %rax
    sete %al
    movzbl %al, %ebx
.L1_104:
    movzbl %bl, %r14d
    testl %r14d, %r14d
    jne .L1_100
    jmp .L1_101
.L1_100:
    movl $1, %eax
    leaq -1936(%rbp), %r10
    movl %eax, (%r10)
    movl $1, %eax
    movl %eax, %ebx
    jmp .L1_107
.L1_105:
    jmp .L1_102
.L1_101:
.L1_102:
.L1_96:
    movq $1, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r15
    jmp .L1_94
.L1_97:
    movl $0, %eax
    leaq -1936(%rbp), %r10
    movl %eax, (%r10)
    movl $0, %eax
    movl %eax, %ebx
    jmp .L1_107
.L1_106:
    leaq .Ltext_19(%rip), %rdi
    leaq .Ltext_15(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_107:
    testl %ebx, %ebx
    jne .L1_63
    jmp .L1_64
.L1_63:
    leaq -80(%rbp), %rbx
    leaq lb_files_15directory_cycle(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq .Ltext_6(%rip), %r13
    leaq -1344(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $49, %rax
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
    movq -3160(%rbp), %rdi
    call lb_files_WalkState_destroy@PLT
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
.L1_66:
    jmp .L1_65
.L1_64:
.L1_65:
    movq -2400(%rbp), %rax
    movq -2760(%rbp), %rcx
    cmpq %rcx, %rax
    jb 1f
    leaq .Ltext_7(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq -2416(%rbp), %rax
    movq %rax, %rbx
    addq %r13, %rbx
    movq -3184(%rbp), %r10
    movq (%r10), %r14
    movq %rbx, %rsi
    movq %r14, %rdx
    movl $0, %ecx
    leaq -1392(%rbp), %rdi
    call lb_files_Directory_14open_directory@PLT
    movq -2616(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_68
    jmp .L1_67
.L1_68:
    movq -3248(%rbp), %rax
    movq $8, %rcx
    movq %rax, %rbx
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
    movq -3160(%rbp), %rdi
    call lb_files_WalkState_destroy@PLT
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
.L1_69:
.L1_67:
    movq -3248(%rbp), %r10
    movq -3240(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq -3240(%rbp), %rsi
    leaq -1680(%rbp), %rdi
    call lb_files_Directory_metadata@PLT
    movq -2624(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_71
    jmp .L1_70
.L1_71:
    movq -3264(%rbp), %rax
    movq $128, %rcx
    movq %rax, %rbx
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
    movq -3240(%rbp), %rdi
    call lb_files_Directory_destroy@PLT
    movq -3160(%rbp), %rdi
    call lb_files_WalkState_destroy@PLT
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
.L1_72:
.L1_70:
    movq -3264(%rbp), %r10
    movq -3256(%rbp), %r11
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
    movq -2632(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -2640(%rbp)
    movq -2584(%rbp), %r10
    movq (%r10), %r13
    movq -2640(%rbp), %rax
    cmpq %r13, %rax
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L1_132
    jmp .L1_76
.L1_132:
    movl %r13d, %r14d
    jmp .L1_77
.L1_76:
    movq -2648(%rbp), %r10
    movq (%r10), %r13
    movq -2600(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r14d
.L1_77:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L1_73
    jmp .L1_74
.L1_73:
    leaq -80(%rbp), %rbx
    leaq lb_files_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %rbx, %r10
    movl %r13d, (%r10)
    leaq .Ltext_8(%rip), %r13
    leaq -1696(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $51, %rax
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
    movq -3240(%rbp), %rdi
    call lb_files_Directory_destroy@PLT
    movq -3160(%rbp), %rdi
    call lb_files_WalkState_destroy@PLT
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
.L1_78:
    jmp .L1_75
.L1_74:
.L1_75:
    movq -3240(%rbp), %r10
    leaq -1984(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq -3256(%rbp), %r10
    leaq -2112(%rbp), %r11
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
    movq -2392(%rbp), %r10
    movq (%r10), %r13
    movq -2408(%rbp), %r10
    movq (%r10), %r14
    cmpq %r14, %r13
    jne .L1_109
.L1_108:
    movq %r14, %rdi
    movq $2, %rsi
    movl $64, %edx
    movq -2808(%rbp), %rcx
    call lb_core_6qmul_u@PLT
    movl %eax, %r13d
    movq -2808(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -2816(%rbp)
    movq -2816(%rbp), %rax
    movq -3272(%rbp), %r10
    movq %rax, (%r10)
    movq -2824(%rbp), %r10
    movb %r13b, (%r10)
    movq -2824(%rbp), %r10
    movzbl (%r10), %r13d
    testl %r13d, %r13d
    jne .L1_111
    jmp .L1_112
.L1_111:
    jmp .L1_113
.L1_112:
    movq -2840(%rbp), %r10
    movl (%r10), %ebx
    movq -2832(%rbp), %r10
    movl %ebx, (%r10)
    movq -2848(%rbp), %rax
    movq -2856(%rbp), %r10
    movq %rax, (%r10)
    movq $32, %rax
    movq -2864(%rbp), %r10
    movq %rax, (%r10)
    movq -2856(%rbp), %r10
    movq -2872(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movl $1, %eax
    movq -2880(%rbp), %r10
    movb %al, (%r10)
    movq -2832(%rbp), %r10
    leaq -1728(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L1_127
.L1_114:
.L1_113:
    movq -2336(%rbp), %r10
    movq -2888(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -2896(%rbp), %r10
    movq -2336(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -2816(%rbp), %rax
    movabsq $144115188075855872, %rcx
    cmpq %rcx, %rax
    jbe .L1_116
.L1_115:
    movl $208273409, %eax
    movq -2904(%rbp), %r10
    movl %eax, (%r10)
    movq -2912(%rbp), %rax
    movq -2920(%rbp), %r10
    movq %rax, (%r10)
    movq $47, %rax
    movq -2928(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq -2936(%rbp), %r10
    movb %al, (%r10)
    jmp .L1_117
.L1_116:
    movq -2816(%rbp), %rax
    movq $32, %rcx
    movq %rax, %r14
    imulq %rcx, %r14
    movq -2336(%rbp), %r10
    movq (%r10), %r13
    movq -2944(%rbp), %r10
    movq (%r10), %rbx
    testq %rbx, %rbx
    jne .L1_118
    jmp .L1_119
.L1_119:
    leaq .Ltext_21(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_118:
    movq %rbx, %r10
    movq (%r10), %r12
    movq %r13, %rsi
    movq %r14, %rdx
    movq $8, %rcx
    leaq -2256(%rbp), %rdi
    movq %r12, %r11
    call *%r11
    movq -2952(%rbp), %r10
    movzbl (%r10), %r12d
    movq $0, %rcx
    cmpq %rcx, %r14
    setne %al
    movzbl %al, %r15d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
    movl %r12d, %ecx
    movl %r15d, %r12d
    andl %ecx, %r12d
    testl %r12d, %r12d
    jne .L1_120
    jmp .L1_121
.L1_120:
    movl $208273409, %eax
    movq -2960(%rbp), %r10
    movl %eax, (%r10)
    movq -2968(%rbp), %rax
    movq -2976(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rax
    movq -2984(%rbp), %r10
    movq %rax, (%r10)
    movl $1, %eax
    movq -2992(%rbp), %r10
    movb %al, (%r10)
    jmp .L1_117
.L1_121:
    movq -3296(%rbp), %r10
    movq (%r10), %rbx
    movq -3288(%rbp), %r10
    movq %rbx, (%r10)
    movq -2816(%rbp), %rax
    movq -3000(%rbp), %r10
    movq %rax, (%r10)
    movl $0, %eax
    movq -3008(%rbp), %r10
    movb %al, (%r10)
.L1_117:
    movq -3016(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_123
    jmp .L1_122
.L1_123:
    movq -3024(%rbp), %r10
    movq -3032(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movl $1, %eax
    movq -3040(%rbp), %r10
    movb %al, (%r10)
    movq -2888(%rbp), %r10
    movq -2336(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -3032(%rbp), %r10
    leaq -1728(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    jmp .L1_127
.L1_124:
.L1_122:
    movq -3288(%rbp), %r10
    movq -3280(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -2392(%rbp), %r10
    movq (%r10), %rbx
    movq -3280(%rbp), %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    movq -3160(%rbp), %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    movq %rbx, %r8
    call lb_memory_copy_0g1_files_WalkFrame@PLT
    movq -3160(%rbp), %r10
    movq (%r10), %rbx
    movq -2408(%rbp), %r10
    movq (%r10), %r12
    movq %r12, %rax
    movq $32, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_22(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq -3048(%rbp), %r10
    movq %rbx, (%r10)
    movq -3056(%rbp), %r10
    movq %r12, (%r10)
    movq -2336(%rbp), %r10
    movq (%r10), %rbx
    movq -3064(%rbp), %r10
    movq (%r10), %r12
    testq %r12, %r12
    jne .L1_126
    jmp .L1_125
.L1_126:
    movq $16, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %rbx, %rdi
    movq -3048(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %r13, %r11
    call *%r11
.L1_125:
    movq -3280(%rbp), %r10
    movq -3160(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -2888(%rbp), %r10
    movq -2336(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L1_110
.L1_109:
.L1_110:
    movq -2392(%rbp), %r10
    movq (%r10), %rbx
    movq -3160(%rbp), %r10
    movq (%r10), %r12
    movq -2408(%rbp), %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    jb 1f
    leaq .Ltext_23(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $32, %rcx
    imulq %rcx, %rbx
    movq %rbx, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq -3072(%rbp), %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq -3080(%rbp), %r10
    movq -3072(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq -2640(%rbp), %rax
    movq -3096(%rbp), %r10
    movq %rax, (%r10)
    movq -3104(%rbp), %r10
    movq (%r10), %r12
    movq -3112(%rbp), %r10
    movq %r12, (%r10)
    movq -2480(%rbp), %rdi
    call lb_strings_Builder_view@PLT
    leaq -2320(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    movq -3128(%rbp), %r10
    movq (%r10), %r12
    movq -3136(%rbp), %r10
    movq %r12, (%r10)
    movq -3072(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq -2392(%rbp), %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_24(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %rbx
    movq -2392(%rbp), %r10
    movq %rbx, (%r10)
    movl $0, %eax
    movq -3152(%rbp), %r10
    movb %al, (%r10)
    movq -3144(%rbp), %r10
    leaq -1728(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
.L1_127:
    movq -2656(%rbp), %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L1_80
    jmp .L1_79
.L1_80:
    leaq -80(%rbp), %rbx
    movq -3304(%rbp), %r10
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
    movq -3240(%rbp), %rdi
    call lb_files_Directory_destroy@PLT
    movq -3160(%rbp), %rdi
    call lb_files_WalkState_destroy@PLT
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
.L1_81:
.L1_79:
    jmp .L1_16
.L1_18:
    movq -3160(%rbp), %rdi
    call lb_files_WalkState_destroy@PLT
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
    .globl lb_files_WalkState_start
    .type lb_files_WalkState_start, @function
lb_files_WalkState_start:
    pushq %rbp
    movq %rsp, %rbp
    subq $1136, %rsp
    movq %rdi, -8(%rbp)
    movq %rbx, -16(%rbp)
    movq %r12, -24(%rbp)
    movq %r13, -32(%rbp)
    movq %r14, -40(%rbp)
    movq %r15, -48(%rbp)
    movq %rsi, -176(%rbp)
    leaq -320(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq 16(%rbp), %r10
    leaq -304(%rbp), %r11
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
    leaq -328(%rbp), %rax
    movq %rax, -1112(%rbp)
    leaq -176(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rax
    movq %rax, -1072(%rbp)
    movq -1072(%rbp), %rsi
    movl $1, %edx
    leaq -368(%rbp), %rdi
    call lb_files_Directory_open@PLT
    leaq -368(%rbp), %r14
    movq $32, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_2
    jmp .L2_1
.L2_2:
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    leaq -160(%rbp), %r12
    movq $80, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $104, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq %r12, %rsi
    movq -8(%rbp), %rdi
    movq $112, %rdx
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
.L2_1:
    movq %r14, %r10
    movq -1112(%rbp), %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    leaq -496(%rbp), %rax
    movq %rax, -1120(%rbp)
    movq -1112(%rbp), %rsi
    leaq -656(%rbp), %rdi
    call lb_files_Directory_metadata@PLT
    leaq -656(%rbp), %rbx
    movq $152, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movzbl (%r10), %r12d
    testl %r12d, %r12d
    jne .L2_5
    jmp .L2_4
.L2_5:
    movq $128, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq -160(%rbp), %r14
    movq $80, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r12, %r10
    movq %r15, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $104, %rcx
    movq %r14, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -1112(%rbp), %rdi
    call lb_files_Directory_destroy@PLT
    movq %r14, %rsi
    movq -8(%rbp), %rdi
    movq $112, %rdx
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
.L2_4:
    movq %rbx, %r10
    movq -1120(%rbp), %r11
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
    movq -1120(%rbp), %rax
    movq $16, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -1080(%rbp)
    leaq -304(%rbp), %r14
    movq $16, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq -1080(%rbp), %rax
    cmpq %r13, %rax
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L2_30
    jmp .L2_10
.L2_30:
    movl %r13d, %ebx
    jmp .L2_11
.L2_10:
    movq -1120(%rbp), %rax
    movq $24, %rcx
    movq %rax, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $24, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    sete %al
    movzbl %al, %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
.L2_11:
    movzbl %bl, %r13d
    testl %r13d, %r13d
    jne .L2_7
    jmp .L2_8
.L2_7:
    leaq -160(%rbp), %rbx
    movq $80, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    leaq lb_files_failed(%rip), %r13
    movq %r13, %r10
    movl (%r10), %r13d
    movq %r12, %r10
    movl %r13d, (%r10)
    leaq .Ltext_9(%rip), %r13
    leaq -672(%rbp), %r14
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
    movq $104, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -1112(%rbp), %rdi
    call lb_files_Directory_destroy@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $112, %rdx
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
.L2_8:
.L2_9:
    leaq -688(%rbp), %rax
    movq %rax, -1088(%rbp)
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -1096(%rbp)
    movq -1096(%rbp), %r10
    movq -1088(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -320(%rbp), %rax
    movq %rax, -1104(%rbp)
    movq -1104(%rbp), %r10
    movq -1096(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -728(%rbp), %rax
    movq %rax, -1128(%rbp)
    movq $64, %rsi
    leaq -800(%rbp), %rdi
    call lb_strings_Builder_create@PLT
    leaq -800(%rbp), %r12
    movq $64, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movzbl (%r10), %r14d
    testl %r14d, %r14d
    jne .L2_14
    jmp .L2_13
.L2_14:
    movq $40, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    leaq -160(%rbp), %r15
    movq $80, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %r14, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $104, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -1088(%rbp), %r10
    movq -1096(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1112(%rbp), %rdi
    call lb_files_Directory_destroy@PLT
    movq %r15, %rsi
    movq -8(%rbp), %rdi
    movq $112, %rdx
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
.L2_13:
    movq %r12, %r10
    movq -1128(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq -1072(%rbp), %rdi
    call strlen@PLT
    movq %rax, %rbx
    leaq -816(%rbp), %r14
    movq -1072(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %rbx, (%r10)
    movq -1128(%rbp), %rsi
    movq %r14, %r10
    movq 0(%r10), %rdx
    movq 8(%r10), %rcx
    leaq -848(%rbp), %rdi
    call lb_strings_Builder_put@PLT
    leaq -848(%rbp), %r13
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_17
    jmp .L2_16
.L2_17:
    leaq -160(%rbp), %rbx
    movq $80, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $104, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movl $1, %eax
    movq %r12, %r10
    movb %al, (%r10)
    movq -1128(%rbp), %rdi
    call lb_strings_Builder_destroy@PLT
    movq -1088(%rbp), %r10
    movq -1096(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1112(%rbp), %rdi
    call lb_files_Directory_destroy@PLT
    movq %rbx, %rsi
    movq -8(%rbp), %rdi
    movq $112, %rdx
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
.L2_16:
    leaq -864(%rbp), %rax
    movq %rax, -1136(%rbp)
    leaq -912(%rbp), %r12
.L2_20:
    movq -1096(%rbp), %r10
    movq (%r10), %r13
    movq -1096(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    testq %r14, %r14
    jne .L2_22
    jmp .L2_23
.L2_23:
    leaq .Ltext_12(%rip), %rdi
    leaq .Ltext_11(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_22:
    movq %r14, %r10
    movq (%r10), %rbx
    movq %r13, %rsi
    movq $256, %rdx
    movq $8, %rcx
    leaq -936(%rbp), %rdi
    movq %rbx, %r11
    call *%r11
    leaq -936(%rbp), %r15
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    sete %al
    movzbl %al, %ebx
    movl $1, %ecx
    andl %ecx, %ebx
    testl %ebx, %ebx
    jne .L2_24
    jmp .L2_25
.L2_24:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $208273409, %eax
    movq %rbx, %r10
    movl %eax, (%r10)
    leaq .Ltext_13(%rip), %r13
    movq $8, %rcx
    movq %rbx, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $16, %rcx
    addq %rcx, %rbx
    movq $16, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    jmp .L2_21
.L2_25:
    movq %r15, %r10
    movq (%r10), %rbx
    movq %r12, %r10
    movq %rbx, (%r10)
    movq $8, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq $8, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
.L2_21:
    movq $40, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    testl %ebx, %ebx
    jne .L2_27
    jmp .L2_26
.L2_27:
    movq $16, %rcx
    movq %r12, %rbx
    addq %rcx, %rbx
    leaq -160(%rbp), %r13
    movq $80, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq %rbx, %r10
    movq %r14, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    movq $104, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $1, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -1128(%rbp), %rdi
    call lb_strings_Builder_destroy@PLT
    movq -1088(%rbp), %r10
    movq -1096(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1112(%rbp), %rdi
    call lb_files_Directory_destroy@PLT
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $112, %rdx
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
.L2_26:
    movq %r12, %r10
    movq -1136(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -1136(%rbp), %r10
    movq (%r10), %rbx
    movq -1136(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq $0, %rax
    cmpq %r13, %rax
    jb 1f
    leaq .Ltext_14(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    leaq -968(%rbp), %r13
    movq %r13, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movq -1112(%rbp), %r10
    movq %r13, %r11
    movq 0(%r10), %rax
    movq %rax, 0(%r11)
    movq $8, %rcx
    movq %r13, %r14
    addq %rcx, %r14
    movq -1080(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq -1120(%rbp), %rax
    movq $24, %rcx
    movq %rax, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq $16, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq -1128(%rbp), %rdi
    call lb_strings_Builder_view@PLT
    leaq -984(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -984(%rbp), %r14
    movq $8, %rcx
    addq %rcx, %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq $24, %rcx
    movq %r13, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r14, (%r10)
    movq %r13, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    leaq -1064(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movups %xmm8, 16(%r11)
    movups %xmm8, 32(%r11)
    movups %xmm8, 48(%r11)
    movups %xmm8, 64(%r11)
    movq -1136(%rbp), %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq $16, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq $1, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $24, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq -1128(%rbp), %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movups 16(%r10), %xmm8
    movups %xmm8, 16(%r11)
    movq 32(%r10), %rax
    movq %rax, 32(%r11)
    movq $64, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq -1104(%rbp), %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -160(%rbp), %r13
    movq %rbx, %r10
    movq %r13, %r11
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
    movq $104, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movl $0, %eax
    movq %rbx, %r10
    movb %al, (%r10)
    movq -1088(%rbp), %r10
    movq -1096(%rbp), %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq %r13, %rsi
    movq -8(%rbp), %rdi
    movq $112, %rdx
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
    .globl lb_files_WalkState_destroy
    .type lb_files_WalkState_destroy, @function
lb_files_WalkState_destroy:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -48(%rbp)
    leaq -48(%rbp), %r10
    movq (%r10), %r13
    movq $16, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
.L3_1:
    movq %rbx, %r10
    movq (%r10), %r14
    movq $0, %rcx
    cmpq %rcx, %r14
    jbe .L3_3
.L3_2:
    movq %r14, %rax
    movq $1, %rcx
    subq %rcx, %rax
    jnc 1f
    leaq .Ltext_29(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %rbx, %r10
    movq %r15, (%r10)
    movq %r13, %r10
    movq (%r10), %rax
    movq %rax, -88(%rbp)
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -96(%rbp)
    movq -96(%rbp), %rcx
    cmpq %rcx, %r15
    jb 1f
    leaq .Ltext_30(%rip), %rdi
    leaq .Ltext_18(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq $32, %rcx
    imulq %rcx, %r15
    movq -88(%rbp), %rax
    movq %r15, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %rdi
    call lb_files_Directory_destroy@PLT
    jmp .L3_1
.L3_3:
    movq $24, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %rdi
    call lb_strings_Builder_destroy@PLT
    movq $8, %rcx
    movq %r13, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L3_5
.L3_4:
    movq $64, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -104(%rbp)
    leaq -64(%rbp), %r14
    movq %r13, %r10
    movq (%r10), %r15
    movq %rbx, %rax
    movq $32, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_31(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r14, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r12, (%r10)
    movq -104(%rbp), %r10
    movq (%r10), %r12
    movq -104(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L3_8
    jmp .L3_7
.L3_8:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r12, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L3_7:
    leaq -80(%rbp), %rbx
    movq %rbx, %r11
    pxor %xmm8, %xmm8
    movups %xmm8, 0(%r11)
    movq %rbx, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    jmp .L3_6
.L3_5:
.L3_6:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_memory_copy_0g1_files_WalkFrame
    .type lb_memory_copy_0g1_files_WalkFrame, @function
    .weak lb_memory_copy_0g1_files_WalkFrame
lb_memory_copy_0g1_files_WalkFrame:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -56(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -72(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    movq %r8, -88(%rbp)
    leaq -88(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -56(%rbp), %r12
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
    leaq -72(%rbp), %r13
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
    leaq .Ltext_18(%rip), %r13
    leaq -104(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_32(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L4_3
.L4_2:
.L4_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L4_7
.L4_6:
    movq %r12, %r10
    movq (%r10), %r13
    leaq -72(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %rbx, %rax
    movq $32, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_35(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %r13, %rdi
    movq %r14, %rsi
    movq %r15, %rdx
    call memcpy@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L4_9
    jmp .L4_10
.L4_10:
    leaq .Ltext_33(%rip), %rdi
    leaq .Ltext_34(%rip), %rsi
    call lb_core_7trap_at@PLT
.L4_9:
    jmp .L4_8
.L4_7:
.L4_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_files_walk_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/files/walk.lucb:30:9"
.Ltext_1:
    .asciz "src/std/files/walk.lucb:31:9"
.Ltext_2:
    .asciz "directory traversal exceeded its depth limit"
.Ltext_3:
    .asciz "src/std/files/walk.lucb:39:9"
.Ltext_4:
    .asciz "src/std/files/walk.lucb:41:9"
.Ltext_5:
    .asciz "/"
.Ltext_6:
    .asciz "directory traversal encountered an ancestor again"
.Ltext_7:
    .asciz "src/std/files/walk.lucb:50:9"
.Ltext_8:
    .asciz "a directory changed before traversal could enter it"
.Ltext_9:
    .asciz "the traversal root changed before it could be opened"
.Ltext_10:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_11:
    .asciz "memory.unset"
.Ltext_12:
    .asciz "src/std/files/walk.lucb:82:13"
.Ltext_13:
    .asciz "memory.exhausted"
.Ltext_14:
    .asciz "src/std/files/walk.lucb:83:13"
.Ltext_15:
    .asciz "unreachable"
.Ltext_16:
    .asciz "src/std/files/walk.lucb:85:13"
.Ltext_17:
    .asciz "src/std/files/walk.lucb:88:9"
.Ltext_18:
    .asciz "index out of bounds"
.Ltext_19:
    .asciz "src/std/files/walk.lucb:91:9"
.Ltext_20:
    .asciz "the traversal stack is too large"
.Ltext_21:
    .asciz "src/std/files/walk.lucb:99:17"
.Ltext_22:
    .asciz "src/std/files/walk.lucb:101:17"
.Ltext_23:
    .asciz "src/std/files/walk.lucb:103:9"
.Ltext_24:
    .asciz "src/std/files/walk.lucb:105:9"
.Ltext_25:
    .asciz "src/std/files/walk.lucb:108:9"
.Ltext_26:
    .asciz "src/std/files/walk.lucb:112:9"
.Ltext_27:
    .asciz "src/std/files/walk.lucb:110:13"
.Ltext_28:
    .asciz "src/std/files/walk.lucb:114:13"
.Ltext_29:
    .asciz "src/std/files/walk.lucb:118:13"
.Ltext_30:
    .asciz "src/std/files/walk.lucb:119:13"
.Ltext_31:
    .asciz "src/std/files/walk.lucb:122:13"
.Ltext_32:
    .asciz "src/std/memory.lucb:326:9"
.Ltext_33:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_34:
    .asciz "null_foreign"
.Ltext_35:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_files_15directory_cycle
    .type lb_files_15directory_cycle, @object
    .p2align 2
lb_files_15directory_cycle:
    .zero 4

    .bss
    .globl lb_files_11depth_limit
    .type lb_files_11depth_limit, @object
    .p2align 2
lb_files_11depth_limit:
    .zero 4

    .section .note.GNU-stack,"",@progbits
