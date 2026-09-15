    .text

    .p2align 4
    .globl lb_os_windows_0init
    .type lb_os_windows_0init, @function
lb_os_windows_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_os_windows_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/os/windows.lucb:30:5"
.Ltext_1:
    .asciz "src/std/os/windows.lucb:33:5"
.Ltext_2:
    .asciz "src/std/os/windows.lucb:38:9"
.Ltext_3:
    .asciz "src/std/os/windows.lucb:41:5"
.Ltext_4:
    .asciz "src/std/os/windows.lucb:42:5"
.Ltext_5:
    .asciz "index out of bounds"
.Ltext_6:
    .asciz "unreachable"
.Ltext_7:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_8:
    .asciz "memory.unset"
.Ltext_9:
    .asciz "src/std/os/windows.lucb:50:9"
.Ltext_10:
    .asciz "memory.exhausted"
.Ltext_11:
    .asciz "src/std/os/windows.lucb:54:13"
.Ltext_12:
    .asciz "src/std/os/windows.lucb:56:13"
.Ltext_13:
    .asciz "src/std/os/windows.lucb:57:9"
.Ltext_14:
    .asciz "the working directory cannot be read"
.Ltext_15:
    .asciz "src/std/os/windows.lucb:58:5"
.Ltext_16:
    .asciz "src/std/os/windows.lucb:65:9"
.Ltext_17:
    .asciz "src/std/os/windows.lucb:69:13"
.Ltext_18:
    .asciz "src/std/os/windows.lucb:71:13"
.Ltext_19:
    .asciz "src/std/os/windows.lucb:72:9"
.Ltext_20:
    .asciz "the executable path cannot be read"
.Ltext_21:
    .asciz "src/std/os/windows.lucb:73:5"
.Ltext_22:
    .asciz "null_foreign"
.Ltext_23:
    .asciz "src/std/os/windows.lucb:76:5"
.Ltext_24:
    .asciz "src/std/os/windows.lucb:88:5"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
