    .text

    .p2align 2
    .globl lb_net_options_0init
    .type lb_net_options_0init, %function
lb_net_options_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, lb_net_16nonblocking_flag
    add x14, x14, :lo12:lb_net_16nonblocking_flag
    movz x9, #2048
    str w9, [x14]
    adrp x14, lb_net_21receive_buffer_option
    add x14, x14, :lo12:lb_net_21receive_buffer_option
    movz x9, #8
    str w9, [x14]
    adrp x14, lb_net_18send_buffer_option
    add x14, x14, :lo12:lb_net_18send_buffer_option
    movz x9, #7
    str w9, [x14]
    adrp x14, lb_net_16keepalive_option
    add x14, x14, :lo12:lb_net_16keepalive_option
    movz x9, #9
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_options_0init, .-lb_net_options_0init

    .p2align 2
    .globl lb_net_19socket_status_flags
    .type lb_net_19socket_status_flags, %function
lb_net_19socket_status_flags:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    str x20, [sp, #88]
    str x21, [sp, #80]
    sub x16, x29, #104
    str w0, [x16]
    sub x14, x29, #104
    ldrsw x19, [x14]
    mov x0, x19
    movz x1, #3
    bl fcntl
    mov w14, w0
    mov w20, w14
.L1_1:
    mov x10, #0
    cmp w20, w10
    cset w21, lt
    cbnz w21, .L1_4
    b .L1_11
.L1_11:
    mov w14, w21
    b .L1_5
.L1_4:
    bl lb_net_12socket_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    cset w14, eq
.L1_5:
    and w15, w14, #255
    cbnz w15, .L1_2
    b .L1_3
.L1_2:
    mov x0, x19
    movz x1, #3
    bl fcntl
    mov w20, w0
    b .L1_1
.L1_3:
    cbnz w21, .L1_6
    b .L1_7
.L1_6:
    sub x19, x29, #88
    add x20, x19, #8
    bl lb_net_12socket_errno
    mov w14, w0
    mov x0, x14
    bl lb_net_12socket_error
    mov w14, w0
    str w14, [x20]
    adrp x14, .Ltext_0
    add x14, x14, :lo12:.Ltext_0
    sub x15, x29, #120
    str x14, [x15]
    add x14, x15, #8
    movz x9, #40
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    ldr x21, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_9:
    b .L1_8
.L1_7:
.L1_8:
    sub x14, x29, #88
    str w20, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    ldr x21, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_10:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_net_19socket_status_flags, .-lb_net_19socket_status_flags

    .p2align 2
    .globl lb_net_15set_nonblocking
    .type lb_net_15set_nonblocking, %function
lb_net_15set_nonblocking:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #144]
    str x20, [sp, #136]
    str x21, [sp, #128]
    sub x16, x29, #96
    str w0, [x16]
    sub x16, x29, #112
    str w1, [x16]
    sub x14, x29, #96
    ldrsw x19, [x14]
    mov x0, x19
    sub x8, x29, #152
    bl lb_net_19socket_status_flags
    sub x15, x29, #152
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L2_2
    b .L2_1
.L2_2:
    add x14, x15, #8
    sub x19, x29, #80
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    ldr x21, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_3:
.L2_1:
    ldrsw x14, [x15]
    sub x12, x29, #112
    ldrb w12, [x12]
    cbnz w12, .L2_4
    b .L2_5
.L2_4:
    movz x10, #2048
    orr w15, w14, w10
    mov w20, w15
    b .L2_6
.L2_5:
    movn x10, #2048
    and w20, w14, w10
.L2_6:
    cmp w14, w20
    b.ne .L2_8
.L2_7:
    sub x14, x29, #80
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    ldr x21, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_10:
    b .L2_9
.L2_8:
.L2_9:
    mov x0, x19
    movz x1, #4
    mov x2, x20
    bl fcntl
    mov w14, w0
.L2_11:
    mov x10, #0
    cmp w14, w10
    cset w21, lt
    cbnz w21, .L2_14
    b .L2_20
.L2_20:
    mov w14, w21
    b .L2_15
.L2_14:
    bl lb_net_12socket_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    cset w14, eq
.L2_15:
    and w15, w14, #255
    cbnz w15, .L2_12
    b .L2_13
.L2_12:
    mov x0, x19
    movz x1, #4
    mov x2, x20
    bl fcntl
    mov w14, w0
    b .L2_11
.L2_13:
    cbnz w21, .L2_16
    b .L2_17
.L2_16:
    sub x19, x29, #80
    bl lb_net_12socket_errno
    mov w14, w0
    mov x0, x14
    bl lb_net_12socket_error
    mov w14, w0
    str w14, [x19]
    adrp x14, .Ltext_3
    add x14, x14, :lo12:.Ltext_3
    sub x15, x29, #168
    str x14, [x15]
    add x14, x15, #8
    movz x9, #44
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    ldr x21, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_19:
    b .L2_18
.L2_17:
.L2_18:
    sub x14, x29, #80
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    ldr x21, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_15set_nonblocking, .-lb_net_15set_nonblocking

    .p2align 2
    .globl lb_net_18get_socket_integer
    .type lb_net_18get_socket_integer, %function
lb_net_18get_socket_integer:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #176]
    str x20, [sp, #168]
    str x21, [sp, #160]
    str x22, [sp, #152]
    str x23, [sp, #144]
    str x24, [sp, #136]
    sub x16, x29, #128
    str w0, [x16]
    sub x16, x29, #144
    str w1, [x16]
    sub x16, x29, #160
    str w2, [x16]
    sub x19, x29, #164
    mov x9, #0
    str w9, [x19]
    sub x20, x29, #168
    movz x9, #4
    str w9, [x20]
    sub x14, x29, #128
    ldrsw x21, [x14]
    sub x14, x29, #144
    ldrsw x22, [x14]
    sub x14, x29, #160
    ldrsw x23, [x14]
    mov x0, x21
    mov x1, x22
    mov x2, x23
    mov x3, x19
    mov x4, x20
    bl getsockopt
    mov w14, w0
    mov w24, w14
.L3_1:
    mov x10, #0
    cmp w24, w10
    cset w14, lt
    cbnz w14, .L3_4
    b .L3_15
.L3_15:
    mov w15, w14
    b .L3_5
.L3_4:
    bl lb_net_12socket_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    cset w15, eq
.L3_5:
    and w14, w15, #255
    cbnz w14, .L3_2
    b .L3_3
.L3_2:
    movz x9, #4
    str w9, [x20]
    mov x0, x21
    mov x1, x22
    mov x2, x23
    mov x3, x19
    mov x4, x20
    bl getsockopt
    mov w24, w0
    b .L3_1
.L3_3:
    mov x10, #0
    cmp w24, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L3_7
.L3_6:
    sub x19, x29, #112
    add x20, x19, #8
    bl lb_net_12socket_errno
    mov w14, w0
    mov x0, x14
    bl lb_net_12socket_error
    mov w14, w0
    str w14, [x20]
    adrp x14, .Ltext_4
    add x14, x14, :lo12:.Ltext_4
    sub x15, x29, #184
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    ldr x23, [sp, #144]
    ldr x24, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_9:
    b .L3_8
.L3_7:
.L3_8:
    ldr w14, [x20]
    movz x10, #4
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L3_11
.L3_10:
    sub x19, x29, #112
    add x14, x19, #8
    adrp x15, lb_net_failed
    add x15, x15, :lo12:lb_net_failed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_5
    add x15, x15, :lo12:.Ltext_5
    sub x12, x29, #200
    str x15, [x12]
    add x15, x12, #8
    movz x9, #46
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    ldr x23, [sp, #144]
    ldr x24, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_13:
    b .L3_12
.L3_11:
.L3_12:
    ldrsw x14, [x19]
    sub x15, x29, #112
    str w14, [x15]
    add x14, x15, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    ldr x23, [sp, #144]
    ldr x24, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_14:
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_net_18get_socket_integer, .-lb_net_18get_socket_integer

    .p2align 2
    .globl lb_net_17set_socket_buffer
    .type lb_net_17set_socket_buffer, %function
lb_net_17set_socket_buffer:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    sub x16, x29, #80
    str w0, [x16]
    sub x16, x29, #96
    str w1, [x16]
    sub x16, x29, #112
    str w2, [x16]
    sub x14, x29, #112
    ldrsw x14, [x14]
    mov x10, #0
    cmp w14, w10
    b.gt .L4_2
.L4_1:
    sub x19, x29, #64
    adrp x14, lb_net_15invalid_options
    add x14, x14, :lo12:lb_net_15invalid_options
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_7
    add x14, x14, :lo12:.Ltext_7
    sub x15, x29, #128
    str x14, [x15]
    add x14, x15, #8
    movz x9, #37
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_4:
    b .L4_3
.L4_2:
.L4_3:
    sub x15, x29, #80
    ldrsw x15, [x15]
    sub x12, x29, #96
    ldrsw x12, [x12]
    mov x0, x15
    movz x1, #1
    mov x2, x12
    mov x3, x14
    sub x8, x29, #160
    bl lb_net_18set_socket_integer
    sub x12, x29, #160
    add x15, x12, #24
    ldrb w15, [x15]
    cbnz w15, .L4_6
    b .L4_5
.L4_6:
    sub x19, x29, #64
    mov x10, x12
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_7:
.L4_5:
    sub x14, x29, #64
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_17set_socket_buffer, .-lb_net_17set_socket_buffer

    .section .init_array,"aw"
    .p2align 3
    .quad lb_net_options_0init

    .section .rodata
.Ltext_0:
    .asciz "socket status flags could not be queried"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/net/options.lucb:13:5"
.Ltext_3:
    .asciz "socket nonblocking mode could not be changed"
.Ltext_4:
    .asciz "the socket option could not be queried"
.Ltext_5:
    .asciz "the socket option has an invalid result layout"
.Ltext_6:
    .asciz "src/std/net/options.lucb:45:5"
.Ltext_7:
    .asciz "a socket buffer size must be positive"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_net_16nonblocking_flag
    .type lb_net_16nonblocking_flag, %object
    .p2align 2
lb_net_16nonblocking_flag:
    .zero 4

    .bss
    .globl lb_net_21receive_buffer_option
    .type lb_net_21receive_buffer_option, %object
    .p2align 2
lb_net_21receive_buffer_option:
    .zero 4

    .bss
    .globl lb_net_18send_buffer_option
    .type lb_net_18send_buffer_option, %object
    .p2align 2
lb_net_18send_buffer_option:
    .zero 4

    .bss
    .globl lb_net_16keepalive_option
    .type lb_net_16keepalive_option, %object
    .p2align 2
lb_net_16keepalive_option:
    .zero 4


    .section .note.GNU-stack,"",%progbits
