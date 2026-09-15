    .text

    .p2align 4
    .globl lb_testing_0init
    .type lb_testing_0init, @function
lb_testing_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    leaq lb_testing_12current_seed(%rip), %rbx
    movq $1, %rax
    movq %rbx, %r10
    movq %rax, (%r10)
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_testing_begin
    .type lb_testing_begin, @function
lb_testing_begin:
    pushq %rbp
    movq %rsp, %rbp
    subq $112, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %rdi, -48(%rbp)
    leaq lb_testing_arena(%rip), %rbx
    leaq lb_testing_11arena_bytes(%rip), %r12
    leaq -64(%rbp), %r13
    movq %r13, %r10
    movq %r12, (%r10)
    movq $8, %rcx
    movq %r13, %r12
    addq %rcx, %r12
    movq $1048576, %rax
    movq %r12, %r10
    movq %rax, (%r10)
    movq %r13, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    leaq -88(%rbp), %rdi
    call lb_memory_FixedBuffer_over@PLT
    leaq -88(%rbp), %r12
    movq %r12, %r10
    movq %rbx, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq 16(%r10), %rax
    movq %rax, 16(%r11)
    leaq lb_testing_saved(%rip), %r12
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r13
    movq %r13, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq -104(%rbp), %r12
    movq %r12, %r10
    movq %rbx, (%r10)
    leaq lb_vt_memory_FixedBuffer_Allocator(%rip), %rbx
    movq $8, %rcx
    movq %r12, %r14
    addq %rcx, %r14
    movq %r14, %r10
    movq %rbx, (%r10)
    movq %r12, %r10
    movq %r13, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    leaq lb_testing_12current_seed(%rip), %rbx
    leaq -48(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r12, %rax
    movabsq $2654435761, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %r12, %rax
    movq $1, %rcx
    addq %rcx, %rax
    jnc 1f
    leaq .Ltext_0(%rip), %rdi
    leaq .Ltext_17(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_testing_end
    .type lb_testing_end, @function
lb_testing_end:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    leaq lb_testing_saved(%rip), %rbx
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_testing_seed
    .type lb_testing_seed, @function
lb_testing_seed:
    pushq %rbp
    movq %rsp, %rbp
    subq $16, %rsp
    movq %rbx, -8(%rbp)
    leaq lb_testing_12current_seed(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %rbx, %rax
    movq -8(%rbp), %rbx
    movq %rbp, %rsp
    popq %rbp
    ret
.L3_1:
    leaq .Ltext_2(%rip), %rdi
    leaq .Ltext_1(%rip), %rsi
    call lb_core_7trap_at@PLT

    .p2align 4
    .globl lb_testing_random
    .type lb_testing_random, @function
lb_testing_random:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    leaq lb_testing_12current_seed(%rip), %rbx
    movq %rbx, %r10
    movq (%r10), %r12
.L4_2:
    movq $13, %rcx
    movq %r12, %r13
    shlq %cl, %r13
    movq %r13, %rcx
    movq %r12, %r13
    xorq %rcx, %r13
.L4_4:
    movq $7, %rcx
    movq %r13, %r12
    shrq %cl, %r12
    movq %r12, %rcx
    movq %r13, %r12
    xorq %rcx, %r12
.L4_6:
    movq $17, %rcx
    movq %r12, %r13
    shlq %cl, %r13
    movq %r13, %rcx
    movq %r12, %r13
    xorq %rcx, %r13
    movq %rbx, %r10
    movq %r13, (%r10)
    movq %r13, %rax
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_testing_expect
    .type lb_testing_expect, @function
lb_testing_expect:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movl %edi, -32(%rbp)
    leaq -48(%rbp), %r10
    movq %rsi, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -32(%rbp), %rbx
    movq %rbx, %r10
    movzbl (%r10), %ebx
    movl $0, %ecx
    cmpl %ecx, %ebx
    jne .L5_2
.L5_1:
    leaq -48(%rbp), %rbx
    leaq .Ltext_8(%rip), %r12
    movq %r12, %rdi
    movq %rbx, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L5_3
.L5_2:
.L5_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_testing_12expect_equal
    .type lb_testing_12expect_equal, @function
lb_testing_12expect_equal:
    pushq %rbp
    movq %rsp, %rbp
    subq $1216, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    movq %rdi, -56(%rbp)
    movq %rsi, -72(%rbp)
    leaq -88(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    leaq -56(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -72(%rbp), %r12
    movq %r12, %r10
    movq (%r10), %r12
    cmpq %r12, %rbx
    sete %al
    movzbl %al, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L6_2
.L6_1:
    leaq -1112(%rbp), %rax
    movq %rax, -1160(%rbp)
    leaq -1136(%rbp), %r14
    movq -1160(%rbp), %rax
    movq %r14, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, -1168(%rbp)
    movq $1024, %rax
    movq -1168(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r14, %rax
    addq %rcx, %rax
    movq %rax, -1176(%rbp)
    movq $0, %rax
    movq -1176(%rbp), %r10
    movq %rax, (%r10)
    leaq .Ltext_9(%rip), %rax
    movq %rax, -1184(%rbp)
    movq %r14, %rdi
    movq -1184(%rbp), %rsi
    movq $9, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %r13d
    movq %r14, %rdi
    movq %r12, %rsi
    call lb_core_10format_i64@PLT
    movl %eax, %r12d
    leaq .Ltext_10(%rip), %rax
    movq %rax, -1192(%rbp)
    movq %r14, %rdi
    movq -1192(%rbp), %rsi
    movq $6, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %r12d
    movq %r14, %rdi
    movq %rbx, %rsi
    call lb_core_10format_i64@PLT
    movl %eax, %ebx
    leaq .Ltext_11(%rip), %rax
    movq %rax, -1200(%rbp)
    movq %r14, %rdi
    movq -1200(%rbp), %rsi
    movq $2, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq -88(%rbp), %rax
    movq %rax, -1208(%rbp)
    movq -1208(%rbp), %r10
    movq (%r10), %r15
    movq -1208(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    movq %r14, %rdi
    movq %r15, %rsi
    movq %r13, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq %r14, %rdi
    call lb_core_13format_finish@PLT
    leaq -1152(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -1152(%rbp), %r13
    movq %r13, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_9print_str@PLT
    leaq .Ltext_12(%rip), %r13
    movq %r13, %rdi
    movq -1208(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L6_3
.L6_2:
.L6_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_testing_11expect_text
    .type lb_testing_11expect_text, @function
lb_testing_11expect_text:
    pushq %rbp
    movq %rsp, %rbp
    subq $1248, %rsp
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
    leaq -88(%rbp), %r10
    movq %r8, 0(%r10)
    movq %r9, 8(%r10)
    leaq -56(%rbp), %r14
    leaq -72(%rbp), %r15
    movq $8, %rcx
    movq %r14, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq $8, %rcx
    movq %r15, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %rax
    movq %rax, -1160(%rbp)
    movq -1160(%rbp), %rcx
    cmpq %rcx, %rbx
    sete %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L7_4
    jmp .L7_6
.L7_6:
    movl %r13d, %r12d
    jmp .L7_5
.L7_4:
    movq %r14, %r10
    movq (%r10), %r12
    movq %r15, %r10
    movq (%r10), %r13
    movq %r12, %rdi
    movq %r13, %rsi
    movq %rbx, %rdx
    call memcmp@PLT
    movl %eax, %r12d
    movl $0, %ecx
    cmpl %ecx, %r12d
    sete %al
    movzbl %al, %r12d
.L7_5:
    movzbl %r12b, %r13d
    movl $0, %ecx
    cmpl %ecx, %r13d
    jne .L7_2
.L7_1:
    leaq -1112(%rbp), %rax
    movq %rax, -1168(%rbp)
    leaq -1136(%rbp), %r13
    movq -1168(%rbp), %rax
    movq %r13, %r10
    movq %rax, (%r10)
    movq $8, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -1176(%rbp)
    movq $1024, %rax
    movq -1176(%rbp), %r10
    movq %rax, (%r10)
    movq $16, %rcx
    movq %r13, %rax
    addq %rcx, %rax
    movq %rax, -1184(%rbp)
    movq $0, %rax
    movq -1184(%rbp), %r10
    movq %rax, (%r10)
    leaq .Ltext_13(%rip), %rax
    movq %rax, -1192(%rbp)
    movq %r13, %rdi
    movq -1192(%rbp), %rsi
    movq $10, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %r12d
    movq %r15, %r10
    movq (%r10), %rax
    movq %rax, -1200(%rbp)
    movq %r13, %rdi
    movq -1200(%rbp), %rsi
    movq -1160(%rbp), %rdx
    call lb_core_10format_put@PLT
    movl %eax, %r12d
    leaq .Ltext_14(%rip), %rax
    movq %rax, -1208(%rbp)
    movq %r13, %rdi
    movq -1208(%rbp), %rsi
    movq $8, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %r12d
    movq %r14, %r10
    movq (%r10), %rax
    movq %rax, -1216(%rbp)
    movq %r13, %rdi
    movq -1216(%rbp), %rsi
    movq %rbx, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq .Ltext_15(%rip), %rax
    movq %rax, -1224(%rbp)
    movq %r13, %rdi
    movq -1224(%rbp), %rsi
    movq $3, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    leaq -88(%rbp), %rax
    movq %rax, -1232(%rbp)
    movq -1232(%rbp), %r10
    movq (%r10), %rax
    movq %rax, -1240(%rbp)
    movq -1232(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %r13, %rdi
    movq -1240(%rbp), %rsi
    movq %r12, %rdx
    call lb_core_10format_put@PLT
    movl %eax, %ebx
    movq %r13, %rdi
    call lb_core_13format_finish@PLT
    leaq -1152(%rbp), %r10
    movq %rax, 0(%r10)
    movq %rdx, 8(%r10)
    leaq -1152(%rbp), %r12
    movq %r12, %r10
    movq 0(%r10), %rdi
    movq 8(%r10), %rsi
    call lb_core_9print_str@PLT
    leaq .Ltext_16(%rip), %r12
    movq %r12, %rdi
    movq -1232(%rbp), %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L7_3
.L7_2:
.L7_3:
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
    .quad lb_testing_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/testing.lucb:17:5"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/testing.lucb:25:5"
.Ltext_3:
    .asciz "shift count out of range"
.Ltext_4:
    .asciz "src/std/testing.lucb:30:5"
.Ltext_5:
    .asciz "src/std/testing.lucb:31:5"
.Ltext_6:
    .asciz "src/std/testing.lucb:32:5"
.Ltext_7:
    .asciz "src/std/testing.lucb:34:5"
.Ltext_8:
    .asciz "src/std/testing.lucb:38:9"
.Ltext_9:
    .asciz "expected "
.Ltext_10:
    .asciz ", got "
.Ltext_11:
    .asciz ": "
.Ltext_12:
    .asciz "src/std/testing.lucb:43:9"
.Ltext_13:
    .asciz "expected `"
.Ltext_14:
    .asciz "`, got `"
.Ltext_15:
    .asciz "`: "
.Ltext_16:
    .asciz "src/std/testing.lucb:48:9"
.Ltext_17:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3
    .globl lb_vt_memory_FixedBuffer_Allocator
    .weak lb_vt_memory_FixedBuffer_Allocator
lb_vt_memory_FixedBuffer_Allocator:
    .quad lb_memory_FixedBuffer_allocate
    .quad lb_memory_FixedBuffer_resize
    .quad lb_memory_FixedBuffer_release

    .bss
    .globl lb_testing_11arena_bytes
    .type lb_testing_11arena_bytes, @object
    .p2align 0
lb_testing_11arena_bytes:
    .zero 1048576

    .bss
    .globl lb_testing_arena
    .type lb_testing_arena, @object
    .p2align 3
lb_testing_arena:
    .zero 24

    .bss
    .globl lb_testing_saved
    .type lb_testing_saved, @object
    .p2align 3
lb_testing_saved:
    .zero 16

    .bss
    .globl lb_testing_12current_seed
    .type lb_testing_12current_seed, @object
    .p2align 3
lb_testing_12current_seed:
    .zero 8

    .section .note.GNU-stack,"",@progbits
