    .text

    .p2align 4
    .globl lb_gpu_13vulkan_render_0init
    .type lb_gpu_13vulkan_render_0init, @function
lb_gpu_13vulkan_render_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_memory_copy_0g1_u32
    .type lb_memory_copy_0g1_u32, @function
    .weak lb_memory_copy_0g1_u32
lb_memory_copy_0g1_u32:
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
    jne .L1_11
    jmp .L1_4
.L1_11:
    movl %r13d, %r14d
    jmp .L1_5
.L1_4:
    leaq -72(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L1_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L1_1
    jmp .L1_2
.L1_1:
    leaq .Ltext_26(%rip), %r13
    leaq -104(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_34(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L1_3
.L1_2:
.L1_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L1_7
.L1_6:
    movq %r12, %r10
    movq (%r10), %r13
    leaq -72(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %rbx, %rax
    movq $4, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_37(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r15
    movq %r13, %rdi
    movq %r14, %rsi
    movq %r15, %rdx
    call memcpy@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L1_9
    jmp .L1_10
.L1_10:
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    call lb_core_7trap_at@PLT
.L1_9:
    jmp .L1_8
.L1_7:
.L1_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_memory_copy_0g1_u8
    .type lb_memory_copy_0g1_u8, @function
    .weak lb_memory_copy_0g1_u8
lb_memory_copy_0g1_u8:
    pushq %rbp
    movq %rsp, %rbp
    subq $96, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    leaq -48(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -64(%rbp), %r10
    movq %rdx, 0(%r10)
    movq %rcx, 8(%r10)
    movq %r8, -80(%rbp)
    leaq -80(%rbp), %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    leaq -48(%rbp), %r12
    movq $8, %rcx
    movq %r12, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r13d
    testl %r13d, %r13d
    jne .L2_11
    jmp .L2_4
.L2_11:
    movl %r13d, %r14d
    jmp .L2_5
.L2_4:
    leaq -64(%rbp), %r13
    movq $8, %rcx
    addq %rcx, %r13
    movq %r13, %r10
    movq (%r10), %r13
    cmpq %r13, %rbx
    seta %al
    movzbl %al, %r14d
.L2_5:
    movzbl %r14b, %r13d
    testl %r13d, %r13d
    jne .L2_1
    jmp .L2_2
.L2_1:
    leaq .Ltext_26(%rip), %r13
    leaq -96(%rbp), %r14
    movq %r14, %r10
    movq %r13, (%r10)
    movq $8, %rcx
    movq %r14, %r13
    addq %rcx, %r13
    movq $19, %rax
    movq %r13, %r10
    movq %rax, (%r10)
    leaq .Ltext_34(%rip), %r13
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    call lb_core_12trap_text_at@PLT
    jmp .L2_3
.L2_2:
.L2_3:
    movq $0, %rcx
    cmpq %rcx, %rbx
    jbe .L2_7
.L2_6:
    movq %r12, %r10
    movq (%r10), %r13
    leaq -64(%rbp), %r14
    movq %r14, %r10
    movq (%r10), %r14
    movq %r13, %rdi
    movq %r14, %rsi
    movq %rbx, %rdx
    call memcpy@PLT
    movq %rax, %r13
    testq %r13, %r13
    jne .L2_9
    jmp .L2_10
.L2_10:
    leaq .Ltext_35(%rip), %rdi
    leaq .Ltext_36(%rip), %rsi
    call lb_core_7trap_at@PLT
.L2_9:
    jmp .L2_8
.L2_7:
.L2_8:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_gpu_13vulkan_render_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/gpu/vulkan/render.lucb:17:5"
.Ltext_1:
    .asciz "src/std/gpu/vulkan/render.lucb:20:5"
.Ltext_2:
    .asciz "src/std/gpu/vulkan/render.lucb:21:5"
.Ltext_3:
    .asciz "division by zero"
.Ltext_4:
    .asciz "src/std/gpu/vulkan/render.lucb:22:5"
.Ltext_5:
    .asciz "the Vulkan vertex buffer could not be created"
.Ltext_6:
    .asciz "Vulkan vertex memory could not be bound"
.Ltext_7:
    .asciz "Vulkan vertex memory could not be mapped"
.Ltext_8:
    .asciz "Vulkan returned an empty memory mapping"
.Ltext_9:
    .asciz "src/std/gpu/vulkan/render.lucb:33:5"
.Ltext_10:
    .asciz "Vulkan coverage descriptors could not be created"
.Ltext_11:
    .asciz "Vulkan coverage descriptor could not be allocated"
.Ltext_12:
    .asciz "unreachable"
.Ltext_13:
    .asciz "src/std/gpu/vulkan/render.lucb:47:5"
.Ltext_14:
    .asciz "a previous Vulkan submission failed; recreate the surface"
.Ltext_15:
    .asciz "Vulkan presentation supports at most 16384 pixels per dimension"
.Ltext_16:
    .asciz "src/std/gpu/vulkan/render.lucb:62:5"
.Ltext_17:
    .asciz "src/std/gpu/vulkan/render.lucb:63:5"
.Ltext_18:
    .asciz "the Vulkan command pool could not be reset"
.Ltext_19:
    .asciz "Vulkan could not acquire a presentation image"
.Ltext_20:
    .asciz "Vulkan command recording could not begin"
.Ltext_21:
    .asciz "src/std/gpu/vulkan/render.lucb:87:5"
.Ltext_22:
    .asciz "src/std/gpu/vulkan/render.lucb:88:5"
.Ltext_23:
    .asciz "src/std/gpu/vulkan/render.lucb:89:5"
.Ltext_24:
    .asciz "src/std/gpu/vulkan/render.lucb:97:9"
.Ltext_25:
    .asciz "src/std/gpu/vulkan/render.lucb:99:9"
.Ltext_26:
    .asciz "index out of bounds"
.Ltext_27:
    .asciz "src/std/gpu/vulkan/render.lucb:102:13"
.Ltext_28:
    .asciz "Vulkan command recording could not finish"
.Ltext_29:
    .asciz "src/std/gpu/vulkan/render.lucb:122:5"
.Ltext_30:
    .asciz "Vulkan command submission failed"
.Ltext_31:
    .asciz "Vulkan execution failed"
.Ltext_32:
    .asciz "Vulkan presentation failed"
.Ltext_33:
    .asciz "src/std/gpu/vulkan/render.lucb:135:5"
.Ltext_34:
    .asciz "src/std/memory.lucb:326:9"
.Ltext_35:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_36:
    .asciz "null_foreign"
.Ltext_37:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
