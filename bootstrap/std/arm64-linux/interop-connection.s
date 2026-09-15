    .text

    .p2align 2
    .globl lb_interop_connection_0init
    .type lb_interop_connection_0init, %function
lb_interop_connection_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    sub x19, x29, #64
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    adrp x14, .Ltext_0
    add x14, x14, :lo12:.Ltext_0
    sub x15, x29, #80
    str x14, [x15]
    add x14, x15, #8
    movz x9, #10
    str x9, [x14]
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x14, :got:lb_interop_Connection_destroy
    ldr x14, [x14, :got_lo12:lb_interop_Connection_destroy]
    add x15, x19, #16
    str x14, [x15]
    adrp x14, :got:lb_interop_Connection_trace
    ldr x14, [x14, :got_lo12:lb_interop_Connection_trace]
    add x15, x19, #24
    str x14, [x15]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    add x14, x19, #33
    mov x9, #0
    strb w9, [x14]
    adrp x14, lb_interop_15connection_type
    add x14, x14, :lo12:lb_interop_15connection_type
    mov x10, x19
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_interop_connection_0init, .-lb_interop_connection_0init

    .p2align 2
    .globl lb_interop_Connection_init
    .type lb_interop_Connection_init, %function
lb_interop_Connection_init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    sub x16, x29, #24
    str x0, [x16]
    sub x16, x29, #40
    str x1, [x16]
    sub x16, x29, #56
    str x2, [x16]
    sub x16, x29, #72
    str x3, [x16]
    sub x16, x29, #88
    str x4, [x16]
    sub x9, x29, #24
    ldr x13, [x9]
    sub x14, x29, #40
    ldr x14, [x14]
    str x14, [x13]
    add x15, x13, #8
    sub x12, x29, #56
    ldr x12, [x12]
    str x12, [x15]
    add x15, x13, #16
    sub x12, x29, #72
    ldr x12, [x12]
    str x12, [x15]
    add x15, x13, #24
    sub x12, x29, #88
    ldr x12, [x12]
    str x12, [x15]
    mov x0, x14
    bl lb_ownership_retain
    mov x14, x0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_interop_Connection_init, .-lb_interop_Connection_init

    .p2align 2
    .globl lb_interop_Connection_disconnect
    .type lb_interop_Connection_disconnect, %function
lb_interop_Connection_disconnect:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    str x19, [sp, #8]
    sub x16, x29, #32
    str x0, [x16]
    sub x9, x29, #32
    ldr x14, [x9]
    ldr x19, [x14]
    cbnz x19, .L2_1
    b .L2_2
.L2_1:
    b .L2_3
.L2_2:
    ldr x19, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_4:
.L2_3:
    mov x9, #0
    str x9, [x14]
    add x15, x14, #16
    ldr x15, [x15]
    add x12, x14, #8
    ldr x12, [x12]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x19
    mov x1, x12
    ldr x17, [sp], #16
    blr x17
    mov x0, x19
    bl lb_ownership_release
    ldr x19, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_interop_Connection_disconnect, .-lb_interop_Connection_disconnect

    .p2align 2
    .globl lb_interop_Connection_12is_connected
    .type lb_interop_Connection_12is_connected, %function
lb_interop_Connection_12is_connected:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    str x20, [sp, #16]
    sub x16, x29, #40
    str x0, [x16]
    sub x9, x29, #40
    ldr x19, [x9]
    ldr x20, [x19]
    cbnz x20, .L3_1
    b .L3_2
.L3_1:
    b .L3_3
.L3_2:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_4:
.L3_3:
    mov x0, x20
    bl lb_ownership_11check_alive
    add x14, x19, #24
    ldr x14, [x14]
    add x15, x19, #8
    ldr x15, [x15]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x20
    mov x1, x15
    ldr x17, [sp], #16
    blr x17
    mov w14, w0
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_5:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_interop_Connection_12is_connected, .-lb_interop_Connection_12is_connected

    .p2align 2
    .globl lb_interop_Connection_destroy
    .type lb_interop_Connection_destroy, %function
lb_interop_Connection_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    mov x0, x14
    bl lb_interop_Connection_disconnect
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_interop_Connection_destroy, .-lb_interop_Connection_destroy

    .p2align 2
    .globl lb_interop_Connection_trace
    .type lb_interop_Connection_trace, %function
lb_interop_Connection_trace:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x16, x29, #64
    str x2, [x16]
    sub x9, x29, #32
    ldr x14, [x9]
    ldr x19, [x14]
    cbnz x19, .L5_4
    b .L5_2
.L5_4:
.L5_1:
    mov x0, x19
    bl lb_ownership_12check_thread
    sub x14, x29, #48
    ldr x14, [x14]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x19
    mov x1, x15
    ldr x17, [sp], #16
    blr x17
    b .L5_3
.L5_2:
.L5_3:
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_interop_Connection_trace, .-lb_interop_Connection_trace

    .section .init_array,"aw"
    .p2align 3
    .quad lb_interop_connection_0init

    .section .rodata
.Ltext_0:
    .asciz "Connection"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/interop/connection.lucb:27:9"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_interop_15connection_type
    .type lb_interop_15connection_type, %object
    .p2align 3
lb_interop_15connection_type:
    .zero 40


    .section .note.GNU-stack,"",%progbits
