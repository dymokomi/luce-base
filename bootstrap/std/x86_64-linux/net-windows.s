    .text

    .p2align 4
    .globl lb_net_windows_0init
    .type lb_net_windows_0init, @function
lb_net_windows_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_net_windows_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/net/windows.lucb:29:5"
.Ltext_1:
    .asciz "Winsock could not initialize"
.Ltext_2:
    .asciz "Winsock cleanup could not be registered"
.Ltext_3:
    .asciz "unreachable"
.Ltext_4:
    .asciz "src/std/net/windows.lucb:42:5"
.Ltext_5:
    .asciz "src/std/net/windows.lucb:47:5"
.Ltext_6:
    .asciz "the datagram could not be received"
.Ltext_7:
    .asciz "the receive buffer was too small for the datagram"
.Ltext_8:
    .asciz "src/std/net/windows.lucb:59:9"
.Ltext_9:
    .asciz "src/std/net/windows.lucb:62:5"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
