    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_interop_lease_0init
_lb_interop_lease_0init:
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
    adrp x14, l_text_0@PAGE
    add x14, x14, l_text_0@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #12
    str x9, [x14]
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #16
    movz x9, #104
    str x9, [x14]
    add x14, x19, #24
    mov x9, #0
    str x9, [x14]
    adrp x14, _lb_interop_10drop_lease@GOTPAGE
    ldr x14, [x14, _lb_interop_10drop_lease@GOTPAGEOFF]
    add x15, x19, #32
    str x14, [x15]
    adrp x14, _lb_interop_11trace_lease@GOTPAGE
    ldr x14, [x14, _lb_interop_11trace_lease@GOTPAGEOFF]
    add x15, x19, #40
    str x14, [x15]
    add x14, x19, #48
    mov x9, #0
    str x9, [x14]
    adrp x14, _lb_interop_10lease_info@PAGE
    add x14, x14, _lb_interop_10lease_info@PAGEOFF
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_10drop_lease
_lb_interop_10drop_lease:
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
    bl _lb_ownership_release
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_11trace_lease
_lb_interop_11trace_lease:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x16, x29, #72
    str x2, [x16]
    sub x14, x29, #56
    ldr x14, [x14]
    sub x15, x29, #40
    ldr x15, [x15]
    add x15, x15, #64
    ldr x15, [x15]
    sub x19, x29, #72
    ldr x19, [x19]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x15
    mov x1, x19
    ldr x17, [sp], #16
    blr x17
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Lease_init
    .no_dead_strip _lb_interop_Lease_init
_lb_interop_Lease_init:
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
    bl _lb_ownership_11check_alive
    adrp x20, _lb_interop_10lease_info@PAGE
    add x20, x20, _lb_interop_10lease_info@PAGEOFF
    sub x21, x29, #176
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    mov x0, x20
    movz x1, #104
    mov x9, x21
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #216
    bl _lb_ownership_reserve
    sub x15, x29, #216
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L3_2
    b L3_1
L3_2:
    add x14, x15, #8
    sub x19, x29, #88
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
L3_3:
L3_1:
    ldr x20, [x15]
    add x21, x20, #64
    mov x0, x19
    bl _lb_ownership_retain
    mov x14, x0
    str x14, [x21]
    add x14, x20, #72
    sub x21, x29, #128
    ldr x21, [x21]
    str x21, [x14]
    add x14, x20, #80
    sub x21, x29, #144
    ldr x21, [x21]
    str x21, [x14]
    add x14, x20, #88
    sub x21, x29, #160
    ldr x21, [x21]
    str x21, [x14]
    add x14, x20, #96
    movz x9, #1
    strb w9, [x14]
    str x20, [x22]
    add x14, x22, #8
    add x20, x20, #24
    ldr x20, [x20]
    str x20, [x14]
    sub x14, x29, #88
    add x20, x14, #24
    mov x9, #0
    strb w9, [x20]
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

    .p2align 2
    .globl _lb_interop_Lease_alive
_lb_interop_Lease_alive:
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
    bl _lb_ownership_11check_alive
    add x14, x19, #8
    ldr x14, [x14]
    ldr x15, [x19]
    add x15, x15, #24
    ldr x15, [x15]
    cmp x14, x15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L4_2
L4_1:
    adrp x14, l_text_1@PAGE
    add x14, x14, l_text_1@PAGEOFF
    sub x15, x29, #48
    str x14, [x15]
    add x14, x15, #8
    movz x9, #37
    str x9, [x14]
    adrp x14, l_text_2@PAGE
    add x14, x14, l_text_2@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L4_3
L4_2:
L4_3:
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Lease_clone
    .no_dead_strip _lb_interop_Lease_clone
_lb_interop_Lease_clone:
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
    bl _lb_interop_Lease_alive
    ldr x14, [x20]
    mov x0, x14
    bl _lb_ownership_retain
    mov x14, x0
    sub x19, x29, #48
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_1:
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_interop_Lease_release
    .no_dead_strip _lb_interop_Lease_release
_lb_interop_Lease_release:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    str x19, [sp, #8]
    sub x16, x29, #32
    str x0, [x16]
    sub x9, x29, #32
    ldr x19, [x9]
    mov x0, x19
    bl _lb_interop_Lease_alive
    ldr x14, [x19]
    mov x0, x14
    bl _lb_ownership_release
    ldr x19, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Lease_invalidate
    .no_dead_strip _lb_interop_Lease_invalidate
_lb_interop_Lease_invalidate:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    str x19, [sp, #8]
    sub x16, x29, #32
    str x0, [x16]
    sub x9, x29, #32
    ldr x19, [x9]
    mov x0, x19
    bl _lb_interop_Lease_alive
    ldr x14, [x19]
    add x14, x14, #96
    mov x9, #0
    strb w9, [x14]
    ldr x19, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Lease_8is_valid
    .no_dead_strip _lb_interop_Lease_8is_valid
_lb_interop_Lease_8is_valid:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    str x19, [sp, #8]
    sub x16, x29, #32
    str x0, [x16]
    sub x9, x29, #32
    ldr x19, [x9]
    mov x0, x19
    bl _lb_interop_Lease_alive
    ldr x14, [x19]
    add x15, x14, #96
    ldrb w15, [x15]
    cbnz w15, L8_1
    b L8_4
L8_4:
    mov w14, w15
    b L8_2
L8_1:
    add x15, x14, #72
    ldr x15, [x15]
    add x19, x14, #64
    ldr x19, [x19]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x19
    ldr x17, [sp], #16
    blr x17
    mov w15, w0
    mov w14, w15
L8_2:
    and w15, w14, #255
    and w15, w15, #255
    mov x9, x15
    mov x0, x9
    ldr x19, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_3:
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_interop_Lease_check
    .no_dead_strip _lb_interop_Lease_check
_lb_interop_Lease_check:
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
    bl _lb_interop_Lease_8is_valid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L9_2
L9_1:
    sub x19, x29, #64
    adrp x14, _lb_interop_expired@PAGE
    add x14, x14, _lb_interop_expired@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_6@PAGE
    add x14, x14, l_text_6@PAGEOFF
    sub x15, x29, #88
    str x14, [x15]
    add x14, x15, #8
    movz x9, #25
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
L9_4:
    b L9_3
L9_2:
L9_3:
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

    .p2align 2
    .globl _lb_interop_Lease_enter
    .no_dead_strip _lb_interop_Lease_enter
_lb_interop_Lease_enter:
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
    bl _lb_interop_Lease_check
    sub x15, x29, #104
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L10_2
    b L10_1
L10_2:
    sub x19, x29, #64
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
L10_3:
L10_1:
    ldr x14, [x19]
    mov x0, x14
    bl _lb_ownership_retain
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

    .p2align 2
    .globl _lb_interop_Lease_leave
    .no_dead_strip _lb_interop_Lease_leave
_lb_interop_Lease_leave:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    str x19, [sp, #8]
    sub x16, x29, #32
    str x0, [x16]
    sub x9, x29, #32
    ldr x19, [x9]
    mov x0, x19
    bl _lb_interop_Lease_alive
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
    bl _lb_ownership_release
    ldr x19, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Lease_trace
    .no_dead_strip _lb_interop_Lease_trace
_lb_interop_Lease_trace:
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
    bl _lb_ownership_12check_thread
    sub x14, x29, #48
    ldr x14, [x14]
    ldr x15, [x19]
    sub x19, x29, #64
    ldr x19, [x19]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x15
    mov x1, x19
    ldr x17, [sp], #16
    blr x17
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_interop_lease_0init

    .section __TEXT,__const
l_text_0:
    .asciz "native lease"
l_text_1:
    .asciz "a native lease has a stale generation"
l_text_2:
    .asciz "src/std/interop/lease.lucb:40:13"
l_text_3:
    .asciz "unreachable"
l_text_4:
    .asciz "src/std/interop/lease.lucb:45:9"
l_text_5:
    .asciz "src/std/interop/lease.lucb:57:9"
l_text_6:
    .asciz "a native view has expired"

    .section __DATA,__const
    .p2align 3
    .globl _lb_interop_10lease_info
    .zerofill __DATA,__bss,_lb_interop_10lease_info,56,3

.subsections_via_symbols
