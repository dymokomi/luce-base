    .text

    .p2align 4
    .globl lb_gpu_27vulkan_presentation_windows_0init
    .type lb_gpu_27vulkan_presentation_windows_0init, @function
lb_gpu_27vulkan_presentation_windows_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    leaq -40(%rbp), %rbx
    leaq lb_gpu_29VK_KHR_SURFACE_EXTENSION_NAME(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq %rbx, %r10
    movq %r12, (%r10)
    leaq lb_gpu_35VK_KHR_WIN32_SURFACE_EXTENSION_NAME(%rip), %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $8, %rcx
    movq %rbx, %r13
    addq %rcx, %r13
    movq %r13, %r10
    movq %r12, (%r10)
    leaq lb_gpu_25vulkan_windows_extensions(%rip), %r12
    movq %rbx, %r10
    movq %r12, %r11
    movups 0(%r10), %xmm8
    movups %xmm8, 0(%r11)
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_gpu_27vulkan_presentation_windows_0init
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
    .asciz "src/std/gpu/vulkan/presentation/windows.lucb:8:5"
.Ltext_2:
    .asciz "null_foreign"
.Ltext_3:
    .asciz "src/std/gpu/vulkan/presentation/windows.lucb:11:5"
.Ltext_4:
    .asciz "the Vulkan Windows surface could not be created"
.Ltext_5:
    .asciz "src/std/gpu/vulkan/presentation/windows.lucb:15:5"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_gpu_25vulkan_windows_extensions
    .type lb_gpu_25vulkan_windows_extensions, @object
    .p2align 3
lb_gpu_25vulkan_windows_extensions:
    .zero 16

    .section .note.GNU-stack,"",@progbits
