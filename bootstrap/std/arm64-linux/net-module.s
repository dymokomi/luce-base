    .text

    .p2align 2
    .globl lb_net_module_0init
    .type lb_net_module_0init, %function
lb_net_module_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, lb_net_inet
    add x14, x14, :lo12:lb_net_inet
    movz x9, #2
    str w9, [x14]
    adrp x14, lb_platform_windows
    add x14, x14, :lo12:lb_platform_windows
    ldrb w15, [x14]
    cbnz w15, .L0_1
    b .L0_2
.L0_1:
    movz x9, #23
    mov w15, w9
    b .L0_3
.L0_2:
    adrp x15, lb_platform_macos
    add x15, x15, :lo12:lb_platform_macos
    ldrb w15, [x15]
    cbnz w15, .L0_4
    b .L0_5
.L0_4:
    movz x9, #30
    mov w15, w9
    b .L0_6
.L0_5:
    movz x9, #10
    mov w15, w9
.L0_6:
.L0_3:
    adrp x12, lb_net_inet6
    add x12, x12, :lo12:lb_net_inet6
    str w15, [x12]
    adrp x12, lb_net_stream
    add x12, x12, :lo12:lb_net_stream
    movz x9, #1
    str w9, [x12]
    adrp x12, lb_net_datagram
    add x12, x12, :lo12:lb_net_datagram
    movz x9, #2
    str w9, [x12]
    adrp x12, lb_net_20socket_close_on_exec
    add x12, x12, :lo12:lb_net_20socket_close_on_exec
    movz x9, #8, lsl #16
    str w9, [x12]
    adrp x12, lb_net_20get_descriptor_flags
    add x12, x12, :lo12:lb_net_20get_descriptor_flags
    movz x9, #1
    str w9, [x12]
    adrp x12, lb_net_20set_descriptor_flags
    add x12, x12, :lo12:lb_net_20set_descriptor_flags
    movz x9, #2
    str w9, [x12]
    adrp x12, lb_net_24descriptor_close_on_exec
    add x12, x12, :lo12:lb_net_24descriptor_close_on_exec
    movz x9, #1
    str w9, [x12]
    adrp x12, lb_platform_macos
    add x12, x12, :lo12:lb_platform_macos
    ldrb w13, [x12]
    cbnz w13, .L0_30
    b .L0_10
.L0_30:
    mov w15, w13
    b .L0_11
.L0_10:
    ldrb w15, [x14]
.L0_11:
    and w13, w15, #255
    cbnz w13, .L0_7
    b .L0_8
.L0_7:
    movz x9, #65535
    mov w15, w9
    b .L0_9
.L0_8:
    movz x9, #1
    mov w15, w9
.L0_9:
    adrp x13, lb_net_12socket_level
    add x13, x13, :lo12:lb_net_12socket_level
    str w15, [x13]
    ldrb w13, [x12]
    cbnz w13, .L0_31
    b .L0_15
.L0_31:
    mov w15, w13
    b .L0_16
.L0_15:
    ldrb w15, [x14]
.L0_16:
    and w13, w15, #255
    cbnz w13, .L0_12
    b .L0_13
.L0_12:
    movz x9, #4
    mov w15, w9
    b .L0_14
.L0_13:
    movz x9, #2
    mov w15, w9
.L0_14:
    adrp x13, lb_net_20reuse_address_option
    add x13, x13, :lo12:lb_net_20reuse_address_option
    str w15, [x13]
    adrp x13, lb_net_10ipv6_level
    add x13, x13, :lo12:lb_net_10ipv6_level
    movz x9, #41
    str w9, [x13]
    ldrb w13, [x12]
    cbnz w13, .L0_32
    b .L0_20
.L0_32:
    mov w15, w13
    b .L0_21
.L0_20:
    ldrb w15, [x14]
.L0_21:
    and w13, w15, #255
    cbnz w13, .L0_17
    b .L0_18
.L0_17:
    movz x9, #27
    mov w15, w9
    b .L0_19
.L0_18:
    movz x9, #26
    mov w15, w9
.L0_19:
    adrp x13, lb_net_16ipv6_only_option
    add x13, x13, :lo12:lb_net_16ipv6_only_option
    str w15, [x13]
    adrp x13, lb_net_17no_sigpipe_option
    add x13, x13, :lo12:lb_net_17no_sigpipe_option
    movz x9, #4130
    str w9, [x13]
    ldrb w13, [x12]
    cbnz w13, .L0_33
    b .L0_25
.L0_33:
    mov w15, w13
    b .L0_26
.L0_25:
    ldrb w15, [x14]
.L0_26:
    and w12, w15, #255
    cbnz w12, .L0_22
    b .L0_23
.L0_22:
    mov x9, #0
    mov w15, w9
    b .L0_24
.L0_23:
    movz x9, #16384
    mov w15, w9
.L0_24:
    adrp x12, lb_net_10send_flags
    add x12, x12, :lo12:lb_net_10send_flags
    str w15, [x12]
    ldrb w12, [x14]
    cbnz w12, .L0_27
    b .L0_28
.L0_27:
    movz x9, #10004
    mov w14, w9
    b .L0_29
.L0_28:
    adrp x14, lb_c_interrupted
    add x14, x14, :lo12:lb_c_interrupted
    ldrsw x14, [x14]
.L0_29:
    adrp x15, lb_net_18socket_interrupted
    add x15, x15, :lo12:lb_net_18socket_interrupted
    str w14, [x15]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_module_0init, .-lb_net_module_0init

    .p2align 2
    .globl lb_net_11family_word
    .type lb_net_11family_word, %function
lb_net_11family_word:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str w0, [x16]
    sub x16, x29, #48
    str w1, [x16]
    sub x14, x29, #32
    ldrsw x14, [x14]
    sxtw x14, w14
    and w14, w14, #65535
    and w14, w14, #65535
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_1:
    adrp x0, .Ltext_1
    add x0, x0, :lo12:.Ltext_1
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_net_11family_word, .-lb_net_11family_word

    .p2align 2
    .globl lb_net_12info_address
    .type lb_net_12info_address, %function
lb_net_12info_address:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str x0, [x16]
    adrp x14, lb_platform_macos
    add x14, x14, :lo12:lb_platform_macos
    ldrb w14, [x14]
    cbnz w14, .L2_7
    b .L2_4
.L2_7:
    mov w15, w14
    b .L2_5
.L2_4:
    adrp x14, lb_platform_windows
    add x14, x14, :lo12:lb_platform_windows
    ldrb w15, [x14]
.L2_5:
    and w14, w15, #255
    cbnz w14, .L2_1
    b .L2_2
.L2_1:
    sub x14, x29, #32
    ldr x14, [x14]
    add x14, x14, #32
    ldr x14, [x14]
    b .L2_3
.L2_2:
    sub x14, x29, #32
    ldr x14, [x14]
    add x14, x14, #24
    ldr x14, [x14]
.L2_3:
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_6:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_net_12info_address, .-lb_net_12info_address

    .p2align 2
    .globl lb_net_12socket_errno
    .type lb_net_12socket_errno, %function
lb_net_12socket_errno:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    bl lb_c_errno
    mov w14, w0
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_1:
    adrp x0, .Ltext_3
    add x0, x0, :lo12:.Ltext_3
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_net_12socket_errno, .-lb_net_12socket_errno

    .p2align 2
    .globl lb_net_close
    .type lb_net_close, %function
lb_net_close:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str w0, [x16]
    sub x14, x29, #32
    ldrsw x14, [x14]
    mov x0, x14
    bl close
    mov w14, w0
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_1:
    adrp x0, .Ltext_4
    add x0, x0, :lo12:.Ltext_4
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_net_close, .-lb_net_close

    .p2align 2
    .globl lb_net_send
    .type lb_net_send, %function
lb_net_send:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    sub x16, x29, #32
    str w0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x16, x29, #64
    str x2, [x16]
    sub x16, x29, #80
    str w3, [x16]
    sub x14, x29, #32
    ldrsw x14, [x14]
    sub x15, x29, #48
    ldr x15, [x15]
    sub x12, x29, #64
    ldr x12, [x12]
    sub x13, x29, #80
    ldrsw x13, [x13]
    mov x0, x14
    mov x1, x15
    mov x2, x12
    mov x3, x13
    bl send
    mov x14, x0
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_1:
    adrp x0, .Ltext_5
    add x0, x0, :lo12:.Ltext_5
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_net_send, .-lb_net_send

    .p2align 2
    .globl lb_net_recv
    .type lb_net_recv, %function
lb_net_recv:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    sub x16, x29, #32
    str w0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x16, x29, #64
    str x2, [x16]
    sub x16, x29, #80
    str w3, [x16]
    sub x14, x29, #32
    ldrsw x14, [x14]
    sub x15, x29, #48
    ldr x15, [x15]
    sub x12, x29, #64
    ldr x12, [x12]
    sub x13, x29, #80
    ldrsw x13, [x13]
    mov x0, x14
    mov x1, x15
    mov x2, x12
    mov x3, x13
    bl recv
    mov x14, x0
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_1:
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_net_recv, .-lb_net_recv

    .p2align 2
    .globl lb_net_sendto
    .type lb_net_sendto, %function
lb_net_sendto:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    sub x16, x29, #48
    str w0, [x16]
    sub x16, x29, #64
    str x1, [x16]
    sub x16, x29, #80
    str x2, [x16]
    sub x16, x29, #96
    str w3, [x16]
    sub x16, x29, #112
    str x4, [x16]
    sub x16, x29, #128
    str w5, [x16]
    sub x14, x29, #48
    ldrsw x14, [x14]
    sub x15, x29, #64
    ldr x15, [x15]
    sub x12, x29, #80
    ldr x12, [x12]
    sub x13, x29, #96
    ldrsw x13, [x13]
    sub x19, x29, #112
    ldr x19, [x19]
    sub x20, x29, #128
    ldr w20, [x20]
    mov x0, x14
    mov x1, x15
    mov x2, x12
    mov x3, x13
    mov x4, x19
    mov x5, x20
    bl sendto
    mov x14, x0
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_1:
    adrp x0, .Ltext_7
    add x0, x0, :lo12:.Ltext_7
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_net_sendto, .-lb_net_sendto

    .section .init_array,"aw"
    .p2align 3
    .quad lb_net_module_0init

    .section .rodata
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/net/module.lucb:88:5"
.Ltext_2:
    .asciz "src/std/net/module.lucb:102:5"
.Ltext_3:
    .asciz "src/std/net/module.lucb:128:5"
.Ltext_4:
    .asciz "src/std/net/module.lucb:133:5"
.Ltext_5:
    .asciz "src/std/net/module.lucb:138:5"
.Ltext_6:
    .asciz "src/std/net/module.lucb:143:5"
.Ltext_7:
    .asciz "src/std/net/module.lucb:148:5"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_net_inet
    .type lb_net_inet, %object
    .p2align 2
lb_net_inet:
    .zero 4

    .bss
    .globl lb_net_inet6
    .type lb_net_inet6, %object
    .p2align 2
lb_net_inet6:
    .zero 4

    .bss
    .globl lb_net_stream
    .type lb_net_stream, %object
    .p2align 2
lb_net_stream:
    .zero 4

    .bss
    .globl lb_net_datagram
    .type lb_net_datagram, %object
    .p2align 2
lb_net_datagram:
    .zero 4

    .bss
    .globl lb_net_20socket_close_on_exec
    .type lb_net_20socket_close_on_exec, %object
    .p2align 2
lb_net_20socket_close_on_exec:
    .zero 4

    .bss
    .globl lb_net_20get_descriptor_flags
    .type lb_net_20get_descriptor_flags, %object
    .p2align 2
lb_net_20get_descriptor_flags:
    .zero 4

    .bss
    .globl lb_net_20set_descriptor_flags
    .type lb_net_20set_descriptor_flags, %object
    .p2align 2
lb_net_20set_descriptor_flags:
    .zero 4

    .bss
    .globl lb_net_24descriptor_close_on_exec
    .type lb_net_24descriptor_close_on_exec, %object
    .p2align 2
lb_net_24descriptor_close_on_exec:
    .zero 4

    .bss
    .globl lb_net_12socket_level
    .type lb_net_12socket_level, %object
    .p2align 2
lb_net_12socket_level:
    .zero 4

    .bss
    .globl lb_net_20reuse_address_option
    .type lb_net_20reuse_address_option, %object
    .p2align 2
lb_net_20reuse_address_option:
    .zero 4

    .bss
    .globl lb_net_10ipv6_level
    .type lb_net_10ipv6_level, %object
    .p2align 2
lb_net_10ipv6_level:
    .zero 4

    .bss
    .globl lb_net_16ipv6_only_option
    .type lb_net_16ipv6_only_option, %object
    .p2align 2
lb_net_16ipv6_only_option:
    .zero 4

    .bss
    .globl lb_net_17no_sigpipe_option
    .type lb_net_17no_sigpipe_option, %object
    .p2align 2
lb_net_17no_sigpipe_option:
    .zero 4

    .bss
    .globl lb_net_10send_flags
    .type lb_net_10send_flags, %object
    .p2align 2
lb_net_10send_flags:
    .zero 4

    .bss
    .globl lb_net_18socket_interrupted
    .type lb_net_18socket_interrupted, %object
    .p2align 2
lb_net_18socket_interrupted:
    .zero 4


    .section .note.GNU-stack,"",%progbits
