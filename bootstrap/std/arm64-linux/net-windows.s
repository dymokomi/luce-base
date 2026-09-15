    .text

    .p2align 2
    .globl lb_net_windows_0init
    .type lb_net_windows_0init, %function
lb_net_windows_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_windows_0init, .-lb_net_windows_0init

    .section .init_array,"aw"
    .p2align 3
    .quad lb_net_windows_0init

    .section .rodata
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


    .section .note.GNU-stack,"",%progbits
