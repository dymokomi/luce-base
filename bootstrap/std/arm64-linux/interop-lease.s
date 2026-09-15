    .text

    .p2align 2
    .globl lb_interop_lease_0init
    .type lb_interop_lease_0init, %function
lb_interop_lease_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    sub x19, x29, #80
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    adrp x14, .Ltext_0
    add x14, x14, :lo12:.Ltext_0
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #12
    str x9, [x14]
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #16
    movz x9, #104
    str x9, [x14]
    add x14, x19, #24
    mov x9, #0
    str x9, [x14]
    adrp x14, :got:lb_interop_10drop_lease
    ldr x14, [x14, :got_lo12:lb_interop_10drop_lease]
    add x15, x19, #32
    str x14, [x15]
    adrp x14, :got:lb_interop_11trace_lease
    ldr x14, [x14, :got_lo12:lb_interop_11trace_lease]
    add x15, x19, #40
    str x14, [x15]
    add x14, x19, #48
    mov x9, #0
    str x9, [x14]
    adrp x14, lb_interop_10lease_info
    add x14, x14, :lo12:lb_interop_10lease_info
    mov x10, x19
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldr x16, [x10, #48]
    str x16, [x11, #48]
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_interop_lease_0init, .-lb_interop_lease_0init

    .p2align 2
    .globl lb_interop_10drop_lease
    .type lb_interop_10drop_lease, %function
lb_interop_10drop_lease:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str x0, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    add x14, x14, #64
    ldr x14, [x14]
    mov x0, x14
    bl lb_ownership_release
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_interop_10drop_lease, .-lb_interop_10drop_lease

    .p2align 2
    .globl lb_interop_11trace_lease
    .type lb_interop_11trace_lease, %function
lb_interop_11trace_lease:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x16, x29, #64
    str x2, [x16]
    sub x14, x29, #48
    ldr x14, [x14]
    sub x15, x29, #32
    ldr x15, [x15]
    add x15, x15, #64
    ldr x15, [x15]
    sub x12, x29, #64
    ldr x12, [x12]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x15
    mov x1, x12
    ldr x17, [sp], #16
    blr x17
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_interop_11trace_lease, .-lb_interop_11trace_lease

    .p2align 2
    .globl lb_interop_Lease_init
    .type lb_interop_Lease_init, %function
lb_interop_Lease_init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #192]
    str x20, [sp, #184]
    str x21, [sp, #176]
    str x22, [sp, #168]
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #112
    str x1, [x16]
    sub x16, x29, #128
    str x2, [x16]
    sub x16, x29, #144
    str x3, [x16]
    sub x16, x29, #160
    str x4, [x16]
    sub x9, x29, #96
    ldr x22, [x9]
    sub x14, x29, #112
    ldr x19, [x14]
    mov x0, x19
    bl lb_ownership_11check_alive
    adrp x20, lb_interop_10lease_info
    add x20, x20, :lo12:lb_interop_10lease_info
    sub x21, x29, #176
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    mov x0, x20
    movz x1, #104
    mov x9, x21
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #216
    bl lb_ownership_reserve
    sub x15, x29, #216
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L3_2
    b .L3_1
.L3_2:
    add x14, x15, #8
    sub x19, x29, #88
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
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_3:
.L3_1:
    ldr x20, [x15]
    add x21, x20, #64
    mov x0, x19
    bl lb_ownership_retain
    mov x14, x0
    str x14, [x21]
    add x14, x20, #72
    sub x12, x29, #128
    ldr x12, [x12]
    str x12, [x14]
    add x14, x20, #80
    sub x12, x29, #144
    ldr x12, [x12]
    str x12, [x14]
    add x14, x20, #88
    sub x12, x29, #160
    ldr x12, [x12]
    str x12, [x14]
    add x14, x20, #96
    movz x9, #1
    strb w9, [x14]
    str x20, [x22]
    add x14, x22, #8
    add x12, x20, #24
    ldr x12, [x12]
    str x12, [x14]
    sub x14, x29, #88
    add x12, x14, #24
    mov x9, #0
    strb w9, [x12]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_interop_Lease_init, .-lb_interop_Lease_init

    .p2align 2
    .globl lb_interop_Lease_alive
    .type lb_interop_Lease_alive, %function
lb_interop_Lease_alive:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #32
    str x0, [x16]
    sub x9, x29, #32
    ldr x19, [x9]
    ldr x14, [x19]
    mov x0, x14
    bl lb_ownership_11check_alive
    add x14, x19, #8
    ldr x14, [x14]
    ldr x15, [x19]
    add x15, x15, #24
    ldr x15, [x15]
    cmp x14, x15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L4_2
.L4_1:
    adrp x14, .Ltext_1
    add x14, x14, :lo12:.Ltext_1
    sub x15, x29, #48
    str x14, [x15]
    add x14, x15, #8
    movz x9, #37
    str x9, [x14]
    adrp x14, .Ltext_2
    add x14, x14, :lo12:.Ltext_2
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    b .L4_3
.L4_2:
.L4_3:
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_interop_Lease_alive, .-lb_interop_Lease_alive

    .p2align 2
    .globl lb_interop_Lease_clone
    .type lb_interop_Lease_clone, %function
lb_interop_Lease_clone:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    sub x16, x29, #56
    str x0, [x16]
    sub x9, x29, #56
    ldr x20, [x9]
    mov x0, x20
    bl lb_interop_Lease_alive
    ldr x14, [x20]
    mov x0, x14
    bl lb_ownership_retain
    mov x14, x0
    sub x19, x29, #48
    mov x10, x20
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_1:
    adrp x0, .Ltext_4
    add x0, x0, :lo12:.Ltext_4
    adrp x1, .Ltext_3
    add x1, x1, :lo12:.Ltext_3
    bl lb_core_7trap_at

    .size lb_interop_Lease_clone, .-lb_interop_Lease_clone

    .p2align 2
    .globl lb_interop_Lease_release
    .type lb_interop_Lease_release, %function
lb_interop_Lease_release:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    str x19, [sp, #8]
    sub x16, x29, #32
    str x0, [x16]
    sub x9, x29, #32
    ldr x19, [x9]
    mov x0, x19
    bl lb_interop_Lease_alive
    ldr x14, [x19]
    mov x0, x14
    bl lb_ownership_release
    ldr x19, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_interop_Lease_release, .-lb_interop_Lease_release

    .p2align 2
    .globl lb_interop_Lease_invalidate
    .type lb_interop_Lease_invalidate, %function
lb_interop_Lease_invalidate:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    str x19, [sp, #8]
    sub x16, x29, #32
    str x0, [x16]
    sub x9, x29, #32
    ldr x19, [x9]
    mov x0, x19
    bl lb_interop_Lease_alive
    ldr x14, [x19]
    add x14, x14, #96
    mov x9, #0
    strb w9, [x14]
    ldr x19, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_interop_Lease_invalidate, .-lb_interop_Lease_invalidate

    .p2align 2
    .globl lb_interop_Lease_8is_valid
    .type lb_interop_Lease_8is_valid, %function
lb_interop_Lease_8is_valid:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    str x19, [sp, #8]
    sub x16, x29, #32
    str x0, [x16]
    sub x9, x29, #32
    ldr x19, [x9]
    mov x0, x19
    bl lb_interop_Lease_alive
    ldr x14, [x19]
    add x15, x14, #96
    ldrb w15, [x15]
    cbnz w15, .L8_1
    b .L8_4
.L8_4:
    mov w14, w15
    b .L8_2
.L8_1:
    add x15, x14, #72
    ldr x15, [x15]
    add x12, x14, #64
    ldr x12, [x12]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x12
    ldr x17, [sp], #16
    blr x17
    mov w15, w0
    mov w14, w15
.L8_2:
    and w15, w14, #255
    and w15, w15, #255
    mov x9, x15
    mov x0, x9
    ldr x19, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_3:
    adrp x0, .Ltext_5
    add x0, x0, :lo12:.Ltext_5
    adrp x1, .Ltext_3
    add x1, x1, :lo12:.Ltext_3
    bl lb_core_7trap_at

    .size lb_interop_Lease_8is_valid, .-lb_interop_Lease_8is_valid

    .p2align 2
    .globl lb_interop_Lease_check
    .type lb_interop_Lease_check, %function
lb_interop_Lease_check:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #64]
    sub x16, x29, #72
    str x0, [x16]
    sub x9, x29, #72
    ldr x14, [x9]
    mov x0, x14
    bl lb_interop_Lease_8is_valid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne .L9_2
.L9_1:
    sub x19, x29, #64
    adrp x14, lb_interop_expired
    add x14, x14, :lo12:lb_interop_expired
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_6
    add x14, x14, :lo12:.Ltext_6
    sub x15, x29, #88
    str x14, [x15]
    add x14, x15, #8
    movz x9, #25
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
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_4:
    b .L9_3
.L9_2:
.L9_3:
    sub x14, x29, #64
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_interop_Lease_check, .-lb_interop_Lease_check

    .p2align 2
    .globl lb_interop_Lease_enter
    .type lb_interop_Lease_enter, %function
lb_interop_Lease_enter:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    sub x16, x29, #72
    str x0, [x16]
    sub x9, x29, #72
    ldr x19, [x9]
    mov x0, x19
    sub x8, x29, #104
    bl lb_interop_Lease_check
    sub x15, x29, #104
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L10_2
    b .L10_1
.L10_2:
    sub x19, x29, #64
    mov x10, x15
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
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L10_3:
.L10_1:
    ldr x14, [x19]
    mov x0, x14
    bl lb_ownership_retain
    mov x14, x0
    ldr x14, [x19]
    add x15, x14, #80
    ldr x15, [x15]
    add x14, x14, #64
    ldr x14, [x14]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    ldr x17, [sp], #16
    blr x17
    sub x14, x29, #64
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_interop_Lease_enter, .-lb_interop_Lease_enter

    .p2align 2
    .globl lb_interop_Lease_leave
    .type lb_interop_Lease_leave, %function
lb_interop_Lease_leave:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    str x19, [sp, #8]
    sub x16, x29, #32
    str x0, [x16]
    sub x9, x29, #32
    ldr x19, [x9]
    mov x0, x19
    bl lb_interop_Lease_alive
    ldr x14, [x19]
    add x15, x14, #88
    ldr x15, [x15]
    add x14, x14, #64
    ldr x14, [x14]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    ldr x17, [sp], #16
    blr x17
    ldr x14, [x19]
    mov x0, x14
    bl lb_ownership_release
    ldr x19, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_interop_Lease_leave, .-lb_interop_Lease_leave

    .p2align 2
    .globl lb_interop_Lease_trace
    .type lb_interop_Lease_trace, %function
lb_interop_Lease_trace:
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
    ldr x19, [x9]
    ldr x14, [x19]
    mov x0, x14
    bl lb_ownership_12check_thread
    sub x14, x29, #48
    ldr x14, [x14]
    ldr x15, [x19]
    sub x12, x29, #64
    ldr x12, [x12]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x15
    mov x1, x12
    ldr x17, [sp], #16
    blr x17
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_interop_Lease_trace, .-lb_interop_Lease_trace

    .section .init_array,"aw"
    .p2align 3
    .quad lb_interop_lease_0init

    .section .rodata
.Ltext_0:
    .asciz "native lease"
.Ltext_1:
    .asciz "a native lease has a stale generation"
.Ltext_2:
    .asciz "src/std/interop/lease.lucb:40:13"
.Ltext_3:
    .asciz "unreachable"
.Ltext_4:
    .asciz "src/std/interop/lease.lucb:45:9"
.Ltext_5:
    .asciz "src/std/interop/lease.lucb:57:9"
.Ltext_6:
    .asciz "a native view has expired"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_interop_10lease_info
    .type lb_interop_10lease_info, %object
    .p2align 3
lb_interop_10lease_info:
    .zero 56


    .section .note.GNU-stack,"",%progbits
