    .text

    .p2align 4
    .globl lb_window_14windows_native_0init
    .type lb_window_14windows_native_0init, @function
lb_window_14windows_native_0init:
    pushq %rbp
    movq %rsp, %rbp
    subq $48, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    leaq -38(%rbp), %rbx
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
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_window_14windows_native_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "null_foreign"
.Ltext_1:
    .asciz "src/std/window/windows/native.lucb:63:5"
.Ltext_2:
    .asciz "the native window class could not be registered"
.Ltext_3:
    .asciz "memory.unset"
.Ltext_4:
    .asciz "src/std/window/windows/native.lucb:72:5"
.Ltext_5:
    .asciz "memory.exhausted"
.Ltext_6:
    .asciz "src/std/window/windows/native.lucb:75:5"
.Ltext_7:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_8:
    .asciz "src/std/window/windows/native.lucb:79:9"
.Ltext_9:
    .asciz "the window title could not be converted to UTF-16"
.Ltext_10:
    .asciz "src/std/window/windows/native.lucb:81:13"
.Ltext_11:
    .asciz "src/std/window/windows/native.lucb:82:5"
.Ltext_12:
    .asciz "src/std/window/windows/native.lucb:85:5"
.Ltext_13:
    .asciz "division by zero"
.Ltext_14:
    .asciz "the native window dimensions could not be calculated"
.Ltext_15:
    .asciz "src/std/window/windows/native.lucb:87:9"
.Ltext_16:
    .asciz "src/std/window/windows/native.lucb:88:5"
.Ltext_17:
    .asciz "the native window could not be created"
.Ltext_18:
    .asciz "src/std/window/windows/native.lucb:91:5"
.Ltext_19:
    .asciz "unreachable"
.Ltext_20:
    .asciz "src/std/window/windows/native.lucb:99:5"
.Ltext_21:
    .asciz "src/std/window/windows/native.lucb:100:5"
.Ltext_22:
    .asciz "src/std/window/windows/native.lucb:101:5"
.Ltext_23:
    .asciz "src/std/window/windows/native.lucb:107:5"
.Ltext_24:
    .asciz "src/std/window/windows/native.lucb:108:5"
.Ltext_25:
    .asciz "the native window could not be resized"
.Ltext_26:
    .asciz "src/std/window/windows/native.lucb:117:9"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_window_14win_class_name
    .type lb_window_14win_class_name, @object
    .p2align 1
lb_window_14win_class_name:
    .zero 22

    .section .note.GNU-stack,"",@progbits
