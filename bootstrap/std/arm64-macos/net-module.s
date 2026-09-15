    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_net_module_0init
_lb_net_module_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    str x19, [sp, #8]
    str x20, [sp, #0]
    adrp x14, _lb_net_inet@PAGE
    add x14, x14, _lb_net_inet@PAGEOFF
    movz x9, #2
    str w9, [x14]
    adrp x14, _lb_platform_windows@PAGE
    add x14, x14, _lb_platform_windows@PAGEOFF
    ldrb w15, [x14]
    cbnz w15, L0_1
    b L0_2
L0_1:
    movz x9, #23
    mov w15, w9
    b L0_3
L0_2:
    adrp x15, _lb_platform_macos@PAGE
    add x15, x15, _lb_platform_macos@PAGEOFF
    ldrb w15, [x15]
    cbnz w15, L0_4
    b L0_5
L0_4:
    movz x9, #30
    mov w15, w9
    b L0_6
L0_5:
    movz x9, #10
    mov w15, w9
L0_6:
L0_3:
    adrp x19, _lb_net_inet6@PAGE
    add x19, x19, _lb_net_inet6@PAGEOFF
    str w15, [x19]
    adrp x19, _lb_net_stream@PAGE
    add x19, x19, _lb_net_stream@PAGEOFF
    movz x9, #1
    str w9, [x19]
    adrp x19, _lb_net_datagram@PAGE
    add x19, x19, _lb_net_datagram@PAGEOFF
    movz x9, #2
    str w9, [x19]
    adrp x19, _lb_net_20socket_close_on_exec@PAGE
    add x19, x19, _lb_net_20socket_close_on_exec@PAGEOFF
    movz x9, #8, lsl #16
    str w9, [x19]
    adrp x19, _lb_net_20get_descriptor_flags@PAGE
    add x19, x19, _lb_net_20get_descriptor_flags@PAGEOFF
    movz x9, #1
    str w9, [x19]
    adrp x19, _lb_net_20set_descriptor_flags@PAGE
    add x19, x19, _lb_net_20set_descriptor_flags@PAGEOFF
    movz x9, #2
    str w9, [x19]
    adrp x19, _lb_net_24descriptor_close_on_exec@PAGE
    add x19, x19, _lb_net_24descriptor_close_on_exec@PAGEOFF
    movz x9, #1
    str w9, [x19]
    adrp x19, _lb_platform_macos@PAGE
    add x19, x19, _lb_platform_macos@PAGEOFF
    ldrb w20, [x19]
    cbnz w20, L0_30
    b L0_10
L0_30:
    mov w15, w20
    b L0_11
L0_10:
    ldrb w15, [x14]
L0_11:
    and w20, w15, #255
    cbnz w20, L0_7
    b L0_8
L0_7:
    movz x9, #65535
    mov w15, w9
    b L0_9
L0_8:
    movz x9, #1
    mov w15, w9
L0_9:
    adrp x20, _lb_net_12socket_level@PAGE
    add x20, x20, _lb_net_12socket_level@PAGEOFF
    str w15, [x20]
    ldrb w20, [x19]
    cbnz w20, L0_31
    b L0_15
L0_31:
    mov w15, w20
    b L0_16
L0_15:
    ldrb w15, [x14]
L0_16:
    and w20, w15, #255
    cbnz w20, L0_12
    b L0_13
L0_12:
    movz x9, #4
    mov w15, w9
    b L0_14
L0_13:
    movz x9, #2
    mov w15, w9
L0_14:
    adrp x20, _lb_net_20reuse_address_option@PAGE
    add x20, x20, _lb_net_20reuse_address_option@PAGEOFF
    str w15, [x20]
    adrp x20, _lb_net_10ipv6_level@PAGE
    add x20, x20, _lb_net_10ipv6_level@PAGEOFF
    movz x9, #41
    str w9, [x20]
    ldrb w20, [x19]
    cbnz w20, L0_32
    b L0_20
L0_32:
    mov w15, w20
    b L0_21
L0_20:
    ldrb w15, [x14]
L0_21:
    and w20, w15, #255
    cbnz w20, L0_17
    b L0_18
L0_17:
    movz x9, #27
    mov w15, w9
    b L0_19
L0_18:
    movz x9, #26
    mov w15, w9
L0_19:
    adrp x20, _lb_net_16ipv6_only_option@PAGE
    add x20, x20, _lb_net_16ipv6_only_option@PAGEOFF
    str w15, [x20]
    adrp x20, _lb_net_17no_sigpipe_option@PAGE
    add x20, x20, _lb_net_17no_sigpipe_option@PAGEOFF
    movz x9, #4130
    str w9, [x20]
    ldrb w20, [x19]
    cbnz w20, L0_33
    b L0_25
L0_33:
    mov w15, w20
    b L0_26
L0_25:
    ldrb w15, [x14]
L0_26:
    and w19, w15, #255
    cbnz w19, L0_22
    b L0_23
L0_22:
    mov x9, #0
    mov w15, w9
    b L0_24
L0_23:
    movz x9, #16384
    mov w15, w9
L0_24:
    adrp x19, _lb_net_10send_flags@PAGE
    add x19, x19, _lb_net_10send_flags@PAGEOFF
    str w15, [x19]
    ldrb w19, [x14]
    cbnz w19, L0_27
    b L0_28
L0_27:
    movz x9, #10004
    mov w14, w9
    b L0_29
L0_28:
    adrp x14, _lb_c_interrupted@PAGE
    add x14, x14, _lb_c_interrupted@PAGEOFF
    ldrsw x14, [x14]
L0_29:
    adrp x15, _lb_net_18socket_interrupted@PAGE
    add x15, x15, _lb_net_18socket_interrupted@PAGEOFF
    str w14, [x15]
    ldr x19, [sp, #8]
    ldr x20, [sp, #0]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_11family_word
    .no_dead_strip _lb_net_11family_word
_lb_net_11family_word:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    sub x16, x29, #40
    str w0, [x16]
    sub x16, x29, #56
    str w1, [x16]
    sub x14, x29, #56
    ldrb w14, [x14]
    mov w14, w14
    and w15, w14, #65535
    sub x14, x29, #40
    ldrsw x14, [x14]
    sxtw x14, w14
    and w14, w14, #65535
L1_2:
    lsl w19, w14, #8
    and w19, w19, #65535
    orr w19, w19, w15
    and w19, w19, #65535
    mov x9, x19
    mov x0, x9
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_12info_address
    .no_dead_strip _lb_net_12info_address
_lb_net_12info_address:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str x0, [x16]
    adrp x14, _lb_platform_macos@PAGE
    add x14, x14, _lb_platform_macos@PAGEOFF
    ldrb w14, [x14]
    cbnz w14, L2_7
    b L2_4
L2_7:
    mov w15, w14
    b L2_5
L2_4:
    adrp x14, _lb_platform_windows@PAGE
    add x14, x14, _lb_platform_windows@PAGEOFF
    ldrb w15, [x14]
L2_5:
    and w14, w15, #255
    cbnz w14, L2_1
    b L2_2
L2_1:
    sub x14, x29, #32
    ldr x14, [x14]
    add x14, x14, #32
    ldr x14, [x14]
    b L2_3
L2_2:
    sub x14, x29, #32
    ldr x14, [x14]
    add x14, x14, #24
    ldr x14, [x14]
L2_3:
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_6:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_12socket_errno
    .no_dead_strip _lb_net_12socket_errno
_lb_net_12socket_errno:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    bl _lb_c_errno
    mov w14, w0
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_1:
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_close
    .no_dead_strip _lb_net_close
_lb_net_close:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str w0, [x16]
    sub x14, x29, #32
    ldrsw x14, [x14]
    mov x0, x14
    bl _close
    mov w14, w0
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_1:
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_send
    .no_dead_strip _lb_net_send
_lb_net_send:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    sub x16, x29, #48
    str w0, [x16]
    sub x16, x29, #64
    str x1, [x16]
    sub x16, x29, #80
    str x2, [x16]
    sub x16, x29, #96
    str w3, [x16]
    sub x14, x29, #48
    ldrsw x14, [x14]
    sub x15, x29, #64
    ldr x15, [x15]
    sub x19, x29, #80
    ldr x19, [x19]
    sub x20, x29, #96
    ldrsw x20, [x20]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    mov x3, x20
    bl _send
    mov x14, x0
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_1:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_recv
    .no_dead_strip _lb_net_recv
_lb_net_recv:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    sub x16, x29, #48
    str w0, [x16]
    sub x16, x29, #64
    str x1, [x16]
    sub x16, x29, #80
    str x2, [x16]
    sub x16, x29, #96
    str w3, [x16]
    sub x14, x29, #48
    ldrsw x14, [x14]
    sub x15, x29, #64
    ldr x15, [x15]
    sub x19, x29, #80
    ldr x19, [x19]
    sub x20, x29, #96
    ldrsw x20, [x20]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    mov x3, x20
    bl _recv
    mov x14, x0
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_1:
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_sendto
    .no_dead_strip _lb_net_sendto
_lb_net_sendto:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    str x19, [sp, #120]
    str x20, [sp, #112]
    str x21, [sp, #104]
    str x22, [sp, #96]
    sub x16, x29, #64
    str w0, [x16]
    sub x16, x29, #80
    str x1, [x16]
    sub x16, x29, #96
    str x2, [x16]
    sub x16, x29, #112
    str w3, [x16]
    sub x16, x29, #128
    str x4, [x16]
    sub x16, x29, #144
    str w5, [x16]
    sub x14, x29, #64
    ldrsw x14, [x14]
    sub x15, x29, #80
    ldr x15, [x15]
    sub x19, x29, #96
    ldr x19, [x19]
    sub x20, x29, #112
    ldrsw x20, [x20]
    sub x21, x29, #128
    ldr x21, [x21]
    sub x22, x29, #144
    ldr w22, [x22]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    mov x3, x20
    mov x4, x21
    mov x5, x22
    bl _sendto
    mov x14, x0
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_1:
    adrp x0, l_text_8@PAGE
    add x0, x0, l_text_8@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_net_module_0init

    .section __TEXT,__const
l_text_0:
    .asciz "shift count out of range"
l_text_1:
    .asciz "src/std/net/module.lucb:88:9"
l_text_2:
    .asciz "unreachable"
l_text_3:
    .asciz "src/std/net/module.lucb:103:5"
l_text_4:
    .asciz "src/std/net/module.lucb:129:5"
l_text_5:
    .asciz "src/std/net/module.lucb:134:5"
l_text_6:
    .asciz "src/std/net/module.lucb:139:5"
l_text_7:
    .asciz "src/std/net/module.lucb:144:5"
l_text_8:
    .asciz "src/std/net/module.lucb:149:5"

    .section __DATA,__const
    .p2align 3
    .section __DATA,__data
    .p2align 2
    .globl _lb_net_inet
    .weak_definition _lb_net_inet
    .no_dead_strip _lb_net_inet
_lb_net_inet:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_net_inet6
    .weak_definition _lb_net_inet6
    .no_dead_strip _lb_net_inet6
_lb_net_inet6:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_net_stream
    .weak_definition _lb_net_stream
    .no_dead_strip _lb_net_stream
_lb_net_stream:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_net_datagram
    .weak_definition _lb_net_datagram
    .no_dead_strip _lb_net_datagram
_lb_net_datagram:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_net_20socket_close_on_exec
    .weak_definition _lb_net_20socket_close_on_exec
    .no_dead_strip _lb_net_20socket_close_on_exec
_lb_net_20socket_close_on_exec:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_net_20get_descriptor_flags
    .weak_definition _lb_net_20get_descriptor_flags
    .no_dead_strip _lb_net_20get_descriptor_flags
_lb_net_20get_descriptor_flags:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_net_20set_descriptor_flags
    .weak_definition _lb_net_20set_descriptor_flags
    .no_dead_strip _lb_net_20set_descriptor_flags
_lb_net_20set_descriptor_flags:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_net_24descriptor_close_on_exec
    .weak_definition _lb_net_24descriptor_close_on_exec
    .no_dead_strip _lb_net_24descriptor_close_on_exec
_lb_net_24descriptor_close_on_exec:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_net_12socket_level
    .weak_definition _lb_net_12socket_level
    .no_dead_strip _lb_net_12socket_level
_lb_net_12socket_level:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_net_20reuse_address_option
    .weak_definition _lb_net_20reuse_address_option
    .no_dead_strip _lb_net_20reuse_address_option
_lb_net_20reuse_address_option:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_net_10ipv6_level
    .weak_definition _lb_net_10ipv6_level
    .no_dead_strip _lb_net_10ipv6_level
_lb_net_10ipv6_level:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_net_16ipv6_only_option
    .weak_definition _lb_net_16ipv6_only_option
    .no_dead_strip _lb_net_16ipv6_only_option
_lb_net_16ipv6_only_option:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_net_17no_sigpipe_option
    .weak_definition _lb_net_17no_sigpipe_option
    .no_dead_strip _lb_net_17no_sigpipe_option
_lb_net_17no_sigpipe_option:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_net_10send_flags
    .weak_definition _lb_net_10send_flags
    .no_dead_strip _lb_net_10send_flags
_lb_net_10send_flags:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_net_18socket_interrupted
    .weak_definition _lb_net_18socket_interrupted
    .no_dead_strip _lb_net_18socket_interrupted
_lb_net_18socket_interrupted:
    .zero 4

.subsections_via_symbols
