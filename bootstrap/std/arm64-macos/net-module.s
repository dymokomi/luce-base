    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_net_module_0init
_lb_net_module_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, _lb_net_inet@PAGE
    add x14, x14, _lb_net_inet@PAGEOFF
    movz x9, #2
    str w9, [x14]
    adrp x14, _lb_net_inet6@PAGE
    add x14, x14, _lb_net_inet6@PAGEOFF
    movz x9, #30
    str w9, [x14]
    adrp x14, _lb_net_stream@PAGE
    add x14, x14, _lb_net_stream@PAGEOFF
    movz x9, #1
    str w9, [x14]
    adrp x14, _lb_net_datagram@PAGE
    add x14, x14, _lb_net_datagram@PAGEOFF
    movz x9, #2
    str w9, [x14]
    adrp x14, _lb_net_20socket_close_on_exec@PAGE
    add x14, x14, _lb_net_20socket_close_on_exec@PAGEOFF
    movz x9, #8, lsl #16
    str w9, [x14]
    adrp x14, _lb_net_20get_descriptor_flags@PAGE
    add x14, x14, _lb_net_20get_descriptor_flags@PAGEOFF
    movz x9, #1
    str w9, [x14]
    adrp x14, _lb_net_20set_descriptor_flags@PAGE
    add x14, x14, _lb_net_20set_descriptor_flags@PAGEOFF
    movz x9, #2
    str w9, [x14]
    adrp x14, _lb_net_24descriptor_close_on_exec@PAGE
    add x14, x14, _lb_net_24descriptor_close_on_exec@PAGEOFF
    movz x9, #1
    str w9, [x14]
    adrp x14, _lb_net_12socket_level@PAGE
    add x14, x14, _lb_net_12socket_level@PAGEOFF
    movz x9, #65535
    str w9, [x14]
    adrp x14, _lb_net_20reuse_address_option@PAGE
    add x14, x14, _lb_net_20reuse_address_option@PAGEOFF
    movz x9, #4
    str w9, [x14]
    adrp x14, _lb_net_10ipv6_level@PAGE
    add x14, x14, _lb_net_10ipv6_level@PAGEOFF
    movz x9, #41
    str w9, [x14]
    adrp x14, _lb_net_16ipv6_only_option@PAGE
    add x14, x14, _lb_net_16ipv6_only_option@PAGEOFF
    movz x9, #27
    str w9, [x14]
    adrp x14, _lb_net_17no_sigpipe_option@PAGE
    add x14, x14, _lb_net_17no_sigpipe_option@PAGEOFF
    movz x9, #4130
    str w9, [x14]
    adrp x14, _lb_net_10send_flags@PAGE
    add x14, x14, _lb_net_10send_flags@PAGEOFF
    mov x9, #0
    str w9, [x14]
    adrp x14, _lb_net_18socket_interrupted@PAGE
    add x14, x14, _lb_net_18socket_interrupted@PAGEOFF
    movz x9, #4
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_11family_word
    .no_dead_strip _lb_net_11family_word
_lb_net_11family_word:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str w0, [x16]
    sub x16, x29, #48
    str w1, [x16]
    sub x14, x29, #48
    ldrb w14, [x14]
    mov w14, w14
    and w15, w14, #65535
    sub x14, x29, #32
    ldrsw x14, [x14]
    sxtw x14, w14
    and w14, w14, #65535
L1_2:
    lsl w12, w14, #8
    and w12, w12, #65535
    orr w12, w12, w15
    and w12, w12, #65535
    mov x9, x12
    mov x0, x9
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
    sub x14, x29, #32
    ldr x14, [x14]
    add x14, x14, #32
    ldr x14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_1:
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
    bl _send
    mov x14, x0
    mov x9, x14
    mov x0, x9
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
    bl _recv
    mov x14, x0
    mov x9, x14
    mov x0, x9
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
    bl _sendto
    mov x14, x0
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
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
    .asciz "src/std/net/module.lucb:87:9"
l_text_2:
    .asciz "unreachable"
l_text_3:
    .asciz "src/std/net/module.lucb:102:5"
l_text_4:
    .asciz "src/std/net/module.lucb:128:5"
l_text_5:
    .asciz "src/std/net/module.lucb:133:5"
l_text_6:
    .asciz "src/std/net/module.lucb:138:5"
l_text_7:
    .asciz "src/std/net/module.lucb:143:5"
l_text_8:
    .asciz "src/std/net/module.lucb:148:5"

    .section __DATA,__const
    .p2align 3
    .globl _lb_net_inet
    .no_dead_strip _lb_net_inet
    .zerofill __DATA,__bss,_lb_net_inet,4,2
    .globl _lb_net_inet6
    .no_dead_strip _lb_net_inet6
    .zerofill __DATA,__bss,_lb_net_inet6,4,2
    .globl _lb_net_stream
    .no_dead_strip _lb_net_stream
    .zerofill __DATA,__bss,_lb_net_stream,4,2
    .globl _lb_net_datagram
    .no_dead_strip _lb_net_datagram
    .zerofill __DATA,__bss,_lb_net_datagram,4,2
    .globl _lb_net_20socket_close_on_exec
    .no_dead_strip _lb_net_20socket_close_on_exec
    .zerofill __DATA,__bss,_lb_net_20socket_close_on_exec,4,2
    .globl _lb_net_20get_descriptor_flags
    .no_dead_strip _lb_net_20get_descriptor_flags
    .zerofill __DATA,__bss,_lb_net_20get_descriptor_flags,4,2
    .globl _lb_net_20set_descriptor_flags
    .no_dead_strip _lb_net_20set_descriptor_flags
    .zerofill __DATA,__bss,_lb_net_20set_descriptor_flags,4,2
    .globl _lb_net_24descriptor_close_on_exec
    .no_dead_strip _lb_net_24descriptor_close_on_exec
    .zerofill __DATA,__bss,_lb_net_24descriptor_close_on_exec,4,2
    .globl _lb_net_12socket_level
    .no_dead_strip _lb_net_12socket_level
    .zerofill __DATA,__bss,_lb_net_12socket_level,4,2
    .globl _lb_net_20reuse_address_option
    .no_dead_strip _lb_net_20reuse_address_option
    .zerofill __DATA,__bss,_lb_net_20reuse_address_option,4,2
    .globl _lb_net_10ipv6_level
    .no_dead_strip _lb_net_10ipv6_level
    .zerofill __DATA,__bss,_lb_net_10ipv6_level,4,2
    .globl _lb_net_16ipv6_only_option
    .no_dead_strip _lb_net_16ipv6_only_option
    .zerofill __DATA,__bss,_lb_net_16ipv6_only_option,4,2
    .globl _lb_net_17no_sigpipe_option
    .no_dead_strip _lb_net_17no_sigpipe_option
    .zerofill __DATA,__bss,_lb_net_17no_sigpipe_option,4,2
    .globl _lb_net_10send_flags
    .no_dead_strip _lb_net_10send_flags
    .zerofill __DATA,__bss,_lb_net_10send_flags,4,2
    .globl _lb_net_18socket_interrupted
    .no_dead_strip _lb_net_18socket_interrupted
    .zerofill __DATA,__bss,_lb_net_18socket_interrupted,4,2

.subsections_via_symbols
