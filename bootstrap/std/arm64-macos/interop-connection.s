    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_interop_connection_0init
_lb_interop_connection_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    sub x19, x29, #64
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    adrp x14, l_text_0@PAGE
    add x14, x14, l_text_0@PAGEOFF
    sub x15, x29, #80
    str x14, [x15]
    add x14, x15, #8
    movz x9, #10
    str x9, [x14]
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, _lb_interop_Connection_destroy@GOTPAGE
    ldr x14, [x14, _lb_interop_Connection_destroy@GOTPAGEOFF]
    add x15, x19, #16
    str x14, [x15]
    adrp x14, _lb_interop_Connection_trace@GOTPAGE
    ldr x14, [x14, _lb_interop_Connection_trace@GOTPAGEOFF]
    add x15, x19, #24
    str x14, [x15]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    add x14, x19, #33
    mov x9, #0
    strb w9, [x14]
    adrp x14, _lb_interop_15connection_type@PAGE
    add x14, x14, _lb_interop_15connection_type@PAGEOFF
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Connection_init
    .no_dead_strip _lb_interop_Connection_init
_lb_interop_Connection_init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x16, x29, #72
    str x2, [x16]
    sub x16, x29, #88
    str x3, [x16]
    sub x16, x29, #104
    str x4, [x16]
    sub x9, x29, #40
    ldr x20, [x9]
    sub x14, x29, #56
    ldr x14, [x14]
    str x14, [x20]
    add x15, x20, #8
    sub x19, x29, #72
    ldr x19, [x19]
    str x19, [x15]
    add x15, x20, #16
    sub x19, x29, #88
    ldr x19, [x19]
    str x19, [x15]
    add x15, x20, #24
    sub x19, x29, #104
    ldr x19, [x19]
    str x19, [x15]
    mov x0, x14
    bl _lb_ownership_retain
    mov x14, x0
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Connection_disconnect
    .no_dead_strip _lb_interop_Connection_disconnect
_lb_interop_Connection_disconnect:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    str x20, [sp, #16]
    sub x16, x29, #40
    str x0, [x16]
    sub x9, x29, #40
    ldr x14, [x9]
    ldr x19, [x14]
    cbnz x19, L2_1
    b L2_2
L2_1:
    b L2_3
L2_2:
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_4:
L2_3:
    mov x9, #0
    str x9, [x14]
    add x15, x14, #16
    ldr x15, [x15]
    add x20, x14, #8
    ldr x20, [x20]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x19
    mov x1, x20
    ldr x17, [sp], #16
    blr x17
    mov x0, x19
    bl _lb_ownership_release
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Connection_12is_connected
    .no_dead_strip _lb_interop_Connection_12is_connected
_lb_interop_Connection_12is_connected:
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
    cbnz x20, L3_1
    b L3_2
L3_1:
    b L3_3
L3_2:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_4:
L3_3:
    mov x0, x20
    bl _lb_ownership_11check_alive
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
L3_5:
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_interop_Connection_destroy
_lb_interop_Connection_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    mov x0, x14
    bl _lb_interop_Connection_disconnect
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Connection_trace
_lb_interop_Connection_trace:
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
    cbnz x19, L5_4
    b L5_2
L5_4:
L5_1:
    mov x0, x19
    bl _lb_ownership_12check_thread
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
    b L5_3
L5_2:
L5_3:
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_interop_connection_0init

    .section __TEXT,__const
l_text_0:
    .asciz "Connection"
l_text_1:
    .asciz "unreachable"
l_text_2:
    .asciz "src/std/interop/connection.lucb:27:9"

    .section __DATA,__const
    .p2align 3
    .section __DATA,__data
    .p2align 3
    .globl _lb_interop_15connection_type
    .weak_definition _lb_interop_15connection_type
    .no_dead_strip _lb_interop_15connection_type
_lb_interop_15connection_type:
    .zero 40

.subsections_via_symbols
