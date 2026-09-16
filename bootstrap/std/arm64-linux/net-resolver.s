    .text

    .p2align 2
    .globl lb_net_resolver_0init
    .type lb_net_resolver_0init, %function
lb_net_resolver_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_resolver_0init, .-lb_net_resolver_0init

    .p2align 2
    .globl lb_net_ResolvedAddresses_view
    .type lb_net_ResolvedAddresses_view, %function
lb_net_ResolvedAddresses_view:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #48
    str x0, [x16]
    sub x9, x29, #48
    ldr x14, [x9]
    sub x19, x29, #40
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_1:
    adrp x0, .Ltext_1
    add x0, x0, :lo12:.Ltext_1
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_net_ResolvedAddresses_view, .-lb_net_ResolvedAddresses_view

    .p2align 2
    .globl lb_net_ResolvedAddresses_destroy
    .type lb_net_ResolvedAddresses_destroy, %function
lb_net_ResolvedAddresses_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    str x19, [sp, #136]
    str x20, [sp, #128]
    str x21, [sp, #120]
    str x22, [sp, #112]
    str x23, [sp, #104]
    sub x16, x29, #64
    str x0, [x16]
    sub x9, x29, #64
    ldr x20, [x9]
    add x14, x20, #8
    ldr x19, [x14]
    mov x10, #0
    cmp x19, x10
    b.ls .L2_2
.L2_1:
    sub x22, x29, #80
    add x14, x20, #16
    ldr x21, [x14]
    cbnz x21, .L2_4
    b .L2_5
.L2_4:
    sub x23, x29, #96
    mov x10, x14
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b .L2_6
.L2_5:
    adrp x14, .Ltext_2
    add x14, x14, :lo12:.Ltext_2
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #39
    str x9, [x14]
    adrp x14, .Ltext_3
    add x14, x14, :lo12:.Ltext_3
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    adrp x0, .Ltext_3
    add x0, x0, :lo12:.Ltext_3
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L2_6:
    mov x10, x23
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x14, x29, #128
    ldr x15, [x20]
    mov x9, x19
    movz x10, #24
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_4
    add x0, x0, :lo12:.Ltext_4
    adrp x1, .Ltext_20
    add x1, x1, :lo12:.Ltext_20
    bl lb_core_7trap_at
1:
    mov x12, x9
    str x15, [x14]
    add x15, x14, #8
    str x12, [x15]
    add x15, x22, #8
    ldr x15, [x15]
    cbnz x15, .L2_8
    b .L2_7
.L2_8:
    add x12, x15, #16
    ldr x12, [x12]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L2_7:
    b .L2_3
.L2_2:
.L2_3:
    sub x19, x29, #144
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x19, x20, #16
    sub x21, x29, #160
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    mov x10, x21
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    ldr x23, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_ResolvedAddresses_destroy, .-lb_net_ResolvedAddresses_destroy

    .p2align 2
    .globl lb_net_resolve
    .type lb_net_resolve, %function
lb_net_resolve:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #320
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #288]
    str x20, [sp, #280]
    str x21, [sp, #272]
    str x22, [sp, #264]
    str x23, [sp, #256]
    str x24, [sp, #248]
    sub x16, x29, #144
    str x0, [x16]
    sub x16, x29, #160
    str w1, [x16]
    sub x16, x29, #176
    str x2, [x16]
    sub x19, x29, #192
    sub x14, x29, #144
    ldr x14, [x14]
    sub x15, x29, #176
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    sub x8, x29, #240
    bl lb_net_ResolverQuery_open
    sub x15, x29, #240
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, .L3_2
    b .L3_1
.L3_2:
    add x14, x15, #16
    sub x19, x29, #128
    add x12, x19, #24
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_3:
.L3_1:
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x14, [x19]
    sub x20, x29, #160
    add x21, x19, #8
    sub x24, x29, #268
    add x22, x24, #24
    mov x23, x14
.L3_4:
    cbnz x23, .L3_7
    b .L3_6
.L3_7:
.L3_5:
    ldrh w14, [x20]
    ldrsw x15, [x21]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    sub x8, x29, #268
    bl lb_net_17resolved_endpoint
    ldrb w14, [x22]
    cbnz w14, .L3_11
    b .L3_9
.L3_11:
    sub x20, x29, #292
    mov x10, x24
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
.L3_8:
    sub x21, x29, #128
    mov x10, x20
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x21, #48
    mov x9, #0
    strb w9, [x14]
    ldr x14, [x19]
    cbnz x14, .L3_17
    b .L3_15
.L3_17:
.L3_14:
    mov x9, #0
    str x9, [x19]
    mov x0, x14
    bl freeaddrinfo
    b .L3_16
.L3_15:
.L3_16:
.L3_18:
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_12:
    b .L3_10
.L3_9:
.L3_10:
    add x14, x23, #40
    ldr x14, [x14]
    mov x23, x14
    b .L3_4
.L3_6:
    sub x20, x29, #128
    add x14, x20, #24
    adrp x15, lb_net_12unknown_host
    add x15, x15, :lo12:lb_net_12unknown_host
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_5
    add x15, x15, :lo12:.Ltext_5
    sub x12, x29, #312
    str x15, [x12]
    add x15, x12, #8
    movz x9, #66
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #48
    movz x9, #1
    strb w9, [x14]
    ldr x14, [x19]
    cbnz x14, .L3_22
    b .L3_20
.L3_22:
.L3_19:
    mov x9, #0
    str x9, [x19]
    mov x0, x14
    bl freeaddrinfo
    b .L3_21
.L3_20:
.L3_21:
.L3_23:
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_13:
    sub x14, x29, #192
    ldr x14, [x14]
    cbnz x14, .L3_27
    b .L3_25
.L3_27:
    mov x15, x14
.L3_24:
    mov x12, x14
    mov x9, #0
    str x9, [x12]
    mov x12, x15
    mov x0, x12
    bl freeaddrinfo
    b .L3_26
.L3_25:
.L3_26:
.L3_28:
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_net_resolve, .-lb_net_resolve

    .p2align 2
    .globl lb_net_11resolve_all
    .type lb_net_11resolve_all, %function
lb_net_11resolve_all:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #576
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #544]
    str x20, [sp, #536]
    str x21, [sp, #528]
    str x22, [sp, #520]
    str x23, [sp, #512]
    str x24, [sp, #504]
    str x25, [sp, #496]
    str x26, [sp, #488]
    str x27, [sp, #480]
    str x28, [sp, #472]
    sub x16, x29, #184
    str x0, [x16]
    sub x16, x29, #200
    str w1, [x16]
    sub x16, x29, #216
    str x2, [x16]
    sub x19, x29, #232
    sub x14, x29, #184
    ldr x14, [x14]
    sub x15, x29, #216
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    sub x8, x29, #280
    bl lb_net_ResolverQuery_open
    sub x15, x29, #280
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, .L4_2
    b .L4_1
.L4_2:
    add x14, x15, #16
    sub x19, x29, #168
    add x12, x19, #32
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #56
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #544]
    ldr x20, [sp, #536]
    ldr x21, [sp, #528]
    ldr x22, [sp, #520]
    ldr x23, [sp, #512]
    ldr x24, [sp, #504]
    ldr x25, [sp, #496]
    ldr x26, [sp, #488]
    ldr x27, [sp, #480]
    ldr x28, [sp, #472]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_3:
.L4_1:
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x14, [x19]
    sub x20, x29, #200
    add x21, x19, #8
    sub x12, x29, #308
    add x22, x12, #24
    sub x23, x29, #320
    sub x27, x29, #336
    add x24, x27, #8
    mov x9, #0
    mov x25, x9
    mov x26, x14
.L4_4:
    cbnz x26, .L4_7
    b .L4_6
.L4_7:
.L4_5:
    ldrh w14, [x20]
    ldrsw x15, [x21]
    mov x0, x26
    mov x1, x14
    mov x2, x15
    sub x8, x29, #308
    bl lb_net_17resolved_endpoint
    ldrb w14, [x22]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L4_9
.L4_8:
    mov x0, x25
    movz x1, #1
    movz x2, #64
    mov x3, x23
    bl lb_core_6qadd_u
    mov w14, w0
    ldr x15, [x23]
    str x15, [x27]
    strb w14, [x24]
    ldrb w14, [x24]
    cbnz w14, .L4_11
    b .L4_12
.L4_11:
    b .L4_13
.L4_12:
    sub x20, x29, #168
    add x14, x20, #32
    adrp x15, lb_memory_exhausted
    add x15, x15, :lo12:lb_memory_exhausted
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_7
    add x15, x15, :lo12:.Ltext_7
    sub x12, x29, #352
    str x15, [x12]
    add x15, x12, #8
    movz x9, #32
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #56
    movz x9, #1
    strb w9, [x14]
    ldr x14, [x19]
    cbnz x14, .L4_41
    b .L4_39
.L4_41:
.L4_38:
    mov x9, #0
    str x9, [x19]
    mov x0, x14
    bl freeaddrinfo
    b .L4_40
.L4_39:
.L4_40:
.L4_42:
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #544]
    ldr x20, [sp, #536]
    ldr x21, [sp, #528]
    ldr x22, [sp, #520]
    ldr x23, [sp, #512]
    ldr x24, [sp, #504]
    ldr x25, [sp, #496]
    ldr x26, [sp, #488]
    ldr x27, [sp, #480]
    ldr x28, [sp, #472]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_14:
.L4_13:
    mov x14, x15
    b .L4_10
.L4_9:
    mov x14, x25
.L4_10:
    add x15, x26, #40
    ldr x15, [x15]
    mov x25, x14
    mov x26, x15
    b .L4_4
.L4_6:
    mov x10, #0
    cmp x25, x10
    b.ne .L4_16
.L4_15:
    sub x20, x29, #168
    add x14, x20, #32
    adrp x15, lb_net_12unknown_host
    add x15, x15, :lo12:lb_net_12unknown_host
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_5
    add x15, x15, :lo12:.Ltext_5
    sub x12, x29, #368
    str x15, [x12]
    add x15, x12, #8
    movz x9, #66
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #56
    movz x9, #1
    strb w9, [x14]
    ldr x14, [x19]
    cbnz x14, .L4_46
    b .L4_44
.L4_46:
.L4_43:
    mov x9, #0
    str x9, [x19]
    mov x0, x14
    bl freeaddrinfo
    b .L4_45
.L4_44:
.L4_45:
.L4_47:
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #544]
    ldr x20, [sp, #536]
    ldr x21, [sp, #528]
    ldr x22, [sp, #520]
    ldr x23, [sp, #512]
    ldr x24, [sp, #504]
    ldr x25, [sp, #496]
    ldr x26, [sp, #488]
    ldr x27, [sp, #480]
    ldr x28, [sp, #472]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_18:
    b .L4_17
.L4_16:
.L4_17:
    sub x9, x29, #384
    str x9, [sp, #8]
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x21, x0
    mov x10, x21
    ldr x11, [sp, #8]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x22, x29, #400
    sub x23, x29, #448
    movz x10, #43690
    movk x10, #43690, lsl #16
    movk x10, #43690, lsl #32
    movk x10, #682, lsl #48
    cmp x25, x10
    b.ls .L4_20
.L4_19:
    add x14, x23, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_8
    add x15, x15, :lo12:.Ltext_8
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b .L4_21
.L4_20:
    movz x10, #24
    mul x24, x25, x10
    ldr x14, [x21]
    add x15, x21, #8
    ldr x15, [x15]
    cbnz x15, .L4_22
    b .L4_23
.L4_23:
    adrp x0, .Ltext_10
    add x0, x0, :lo12:.Ltext_10
    adrp x1, .Ltext_9
    add x1, x1, :lo12:.Ltext_9
    bl lb_core_7trap_at
.L4_22:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x24
    movz x2, #4
    sub x8, x29, #472
    ldr x17, [sp], #16
    blr x17
    sub x21, x29, #472
    add x12, x21, #16
    ldrb w12, [x12]
    mov x10, #0
    cmp x24, x10
    cset w13, ne
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    and w12, w13, w12
    cbnz w12, .L4_24
    b .L4_25
.L4_24:
    add x14, x23, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_11
    add x15, x15, :lo12:.Ltext_11
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b .L4_21
.L4_25:
    ldr x14, [x21]
    str x14, [x23]
    add x14, x23, #8
    str x25, [x14]
    add x14, x23, #40
    mov x9, #0
    strb w9, [x14]
.L4_21:
    add x14, x23, #40
    ldrb w14, [x14]
    cbnz w14, .L4_27
    b .L4_26
.L4_27:
    add x14, x23, #16
    sub x20, x29, #168
    add x15, x20, #32
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #56
    movz x9, #1
    strb w9, [x14]
    ldr x14, [x19]
    cbnz x14, .L4_51
    b .L4_49
.L4_51:
.L4_48:
    mov x9, #0
    str x9, [x19]
    mov x0, x14
    bl freeaddrinfo
    b .L4_50
.L4_49:
.L4_50:
.L4_52:
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #544]
    ldr x20, [sp, #536]
    ldr x21, [sp, #528]
    ldr x22, [sp, #520]
    ldr x23, [sp, #512]
    ldr x24, [sp, #504]
    ldr x25, [sp, #496]
    ldr x26, [sp, #488]
    ldr x27, [sp, #480]
    ldr x28, [sp, #472]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_28:
.L4_26:
    mov x10, x23
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x14, [x19]
    sub x21, x29, #200
    add x24, x19, #8
    sub x20, x29, #500
    add x25, x20, #24
    sub x26, x29, #524
    add x27, x22, #8
    mov x28, x14
    mov x9, #0
    str x9, [sp, #0]
.L4_29:
    cbnz x28, .L4_32
    b .L4_31
.L4_32:
.L4_30:
    ldrh w14, [x21]
    ldrsw x15, [x24]
    mov x0, x28
    mov x1, x14
    mov x2, x15
    sub x8, x29, #500
    bl lb_net_17resolved_endpoint
    ldrb w14, [x25]
    cbnz w14, .L4_36
    b .L4_34
.L4_36:
    mov x10, x20
    mov x11, x26
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
.L4_33:
    ldr x14, [x22]
    ldr x15, [x27]
    ldr x9, [sp, #0]
    cmp x9, x15
    b.lo 1f
    adrp x0, .Ltext_12
    add x0, x0, :lo12:.Ltext_12
    adrp x1, .Ltext_21
    add x1, x1, :lo12:.Ltext_21
    bl lb_core_7trap_at
1:
    ldr x9, [sp, #0]
    movz x10, #24
    mul x15, x9, x10
    add x14, x14, x15
    mov x10, x26
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    ldr x9, [sp, #0]
    add x14, x9, #1
    b .L4_35
.L4_34:
    ldr x9, [sp, #0]
    mov x14, x9
.L4_35:
    add x15, x28, #40
    ldr x15, [x15]
    mov x28, x15
    mov x9, x14
    str x9, [sp, #0]
    b .L4_29
.L4_31:
    sub x20, x29, #560
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    mov x10, x22
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #16
    ldr x10, [sp, #8]
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x21, x29, #168
    mov x10, x20
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    add x14, x21, #56
    mov x9, #0
    strb w9, [x14]
    ldr x14, [x19]
    cbnz x14, .L4_56
    b .L4_54
.L4_56:
.L4_53:
    mov x9, #0
    str x9, [x19]
    mov x0, x14
    bl freeaddrinfo
    b .L4_55
.L4_54:
.L4_55:
.L4_57:
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #544]
    ldr x20, [sp, #536]
    ldr x21, [sp, #528]
    ldr x22, [sp, #520]
    ldr x23, [sp, #512]
    ldr x24, [sp, #504]
    ldr x25, [sp, #496]
    ldr x26, [sp, #488]
    ldr x27, [sp, #480]
    ldr x28, [sp, #472]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_37:
    sub x14, x29, #232
    ldr x14, [x14]
    cbnz x14, .L4_61
    b .L4_59
.L4_61:
    mov x15, x14
.L4_58:
    mov x12, x14
    mov x9, #0
    str x9, [x12]
    mov x12, x15
    mov x0, x12
    bl freeaddrinfo
    b .L4_60
.L4_59:
.L4_60:
.L4_62:
    adrp x0, .Ltext_14
    add x0, x0, :lo12:.Ltext_14
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_net_11resolve_all, .-lb_net_11resolve_all

    .p2align 2
    .globl lb_net_ResolverQuery_open
    .type lb_net_ResolverQuery_open, %function
lb_net_ResolverQuery_open:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #304
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #272]
    str x20, [sp, #264]
    str x21, [sp, #256]
    str x22, [sp, #248]
    sub x16, x29, #120
    str x0, [x16]
    sub x16, x29, #136
    str x1, [x16]
    sub x15, x29, #136
    add x14, x15, #1
    ldrb w14, [x14]
    cbnz w14, .L5_4
    b .L5_2
.L5_4:
    ldrb w14, [x15]
.L5_1:
    and w15, w14, #255
    mov x10, #0
    cmp w15, w10
    cset w12, eq
    mov x10, #0
    cmp w12, w10
    cset w13, eq
    cbnz w13, .L5_8
    b .L5_23
.L5_23:
    mov w14, w13
    b .L5_9
.L5_8:
    movz x10, #1
    cmp w15, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
.L5_9:
    and w15, w14, #255
    cbnz w15, .L5_5
    b .L5_6
.L5_5:
    sub x19, x29, #104
    add x14, x19, #16
    adrp x15, lb_net_15invalid_options
    add x15, x15, :lo12:lb_net_15invalid_options
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_15
    add x15, x15, :lo12:.Ltext_15
    sub x12, x29, #152
    str x15, [x12]
    add x15, x12, #8
    movz x9, #27
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    ldr x22, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_10:
    b .L5_7
.L5_6:
.L5_7:
    cbnz w12, .L5_11
    b .L5_12
.L5_11:
    movz x9, #2
    mov w14, w9
    b .L5_13
.L5_12:
    movz x9, #10
    mov w14, w9
.L5_13:
    mov w19, w14
    b .L5_3
.L5_2:
    mov x9, #0
    mov w19, w9
.L5_3:
    sub x20, x29, #200
    sub x21, x29, #248
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    add x14, x21, #4
    str w19, [x14]
    add x14, x21, #8
    movz x9, #1
    str w9, [x14]
    mov x10, x21
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    sub x21, x29, #256
    mov x9, #0
    str x9, [x21]
    sub x14, x29, #120
    ldr x14, [x14]
    mov x0, x14
    mov x1, #0
    mov x2, x20
    mov x3, x21
    bl getaddrinfo
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne .L5_15
.L5_14:
    sub x19, x29, #104
    add x20, x19, #16
    mov x0, x14
    bl lb_net_14resolver_error
    mov w15, w0
    str w15, [x20]
    adrp x15, .Ltext_16
    add x15, x15, :lo12:.Ltext_16
    sub x12, x29, #272
    str x15, [x12]
    add x15, x12, #8
    movz x9, #30
    str x9, [x15]
    add x15, x20, #8
    mov x10, x12
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x15, x19, #40
    movz x9, #1
    strb w9, [x15]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    ldr x22, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_17:
    b .L5_16
.L5_15:
.L5_16:
    ldr x20, [x21]
    cbnz x20, .L5_18
    b .L5_19
.L5_18:
    b .L5_20
.L5_19:
    sub x19, x29, #104
    add x14, x19, #16
    adrp x15, lb_net_12unknown_host
    add x15, x15, :lo12:lb_net_12unknown_host
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_17
    add x15, x15, :lo12:.Ltext_17
    sub x12, x29, #288
    str x15, [x12]
    add x15, x12, #8
    movz x9, #12
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    ldr x22, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_21:
.L5_20:
    sub x21, x29, #304
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    str x20, [x21]
    add x14, x21, #8
    str w19, [x14]
    sub x22, x29, #104
    mov x10, x21
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x22, #40
    mov x9, #0
    strb w9, [x14]
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    ldr x22, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_22:
    adrp x0, .Ltext_18
    add x0, x0, :lo12:.Ltext_18
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_net_ResolverQuery_open, .-lb_net_ResolverQuery_open

    .p2align 2
    .globl lb_net_17resolved_endpoint
    .type lb_net_17resolved_endpoint, %function
lb_net_17resolved_endpoint:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #400
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #368]
    str x20, [sp, #360]
    str x21, [sp, #352]
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #112
    str w1, [x16]
    sub x16, x29, #128
    str w2, [x16]
    sub x14, x29, #96
    ldr x19, [x14]
    add x20, x19, #4
    ldrsw x14, [x20]
    movz x10, #2
    cmp w14, w10
    cset w14, eq
    cbnz w14, .L6_33
    b .L6_1
.L6_33:
    mov w15, w14
    b .L6_2
.L6_1:
    ldrsw x14, [x20]
    movz x10, #10
    cmp w14, w10
    cset w15, eq
.L6_2:
    and w14, w15, #255
    and w14, w14, #255
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, .L6_34
    b .L6_6
.L6_34:
    mov w15, w14
    b .L6_7
.L6_6:
    add x14, x19, #8
    ldrsw x14, [x14]
    movz x10, #1
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L6_7:
    and w14, w15, #255
    cbnz w14, .L6_35
    b .L6_8
.L6_35:
    mov w15, w14
    b .L6_9
.L6_8:
    sub x14, x29, #128
    ldrsw x14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    cbnz w15, .L6_10
    b .L6_36
.L6_36:
    mov w14, w15
    b .L6_11
.L6_10:
    ldrsw x15, [x20]
    cmp w14, w15
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
.L6_11:
    and w15, w14, #255
.L6_9:
    and w14, w15, #255
    cbnz w14, .L6_3
    b .L6_4
.L6_3:
    sub x19, x29, #156
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    str wzr, [x11, #24]
    sub x20, x29, #76
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    ldr w16, [x10, #24]
    str w16, [x11, #24]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #28
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_12:
    b .L6_5
.L6_4:
.L6_5:
    mov x0, x19
    bl lb_net_12info_address
    mov x14, x0
    cbnz x14, .L6_13
    b .L6_14
.L6_13:
    b .L6_15
.L6_14:
    sub x19, x29, #184
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    str wzr, [x11, #24]
    sub x20, x29, #76
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    ldr w16, [x10, #24]
    str w16, [x11, #24]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #28
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_16:
.L6_15:
    sub x21, x29, #208
    add x15, x19, #16
    ldr w15, [x15]
    mov x0, x14
    mov x1, x15
    sub x8, x29, #312
    bl lb_net_14decode_address
    sub x12, x29, #312
    add x15, x12, #48
    ldrb w15, [x15]
    cbnz w15, .L6_20
    b .L6_19
.L6_20:
    add x14, x12, #24
    sub x15, x29, #256
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b .L6_17
.L6_19:
    sub x19, x29, #232
    mov x10, x12
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b .L6_18
.L6_17:
    sub x19, x29, #340
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    str wzr, [x11, #24]
    sub x20, x29, #76
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    ldr w16, [x10, #24]
    str w16, [x11, #24]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #28
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_21:
.L6_18:
    mov x10, x19
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    ldrsw x14, [x20]
    movz x10, #2
    cmp w14, w10
    cset w14, eq
    cbnz w14, .L6_22
    b .L6_37
.L6_37:
    mov w15, w14
    b .L6_23
.L6_22:
    ldrb w14, [x21]
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L6_23:
    and w14, w15, #255
    cbnz w14, .L6_38
    b .L6_24
.L6_38:
    mov w15, w14
    b .L6_25
.L6_24:
    ldrsw x14, [x20]
    movz x10, #10
    cmp w14, w10
    cset w14, eq
    cbnz w14, .L6_26
    b .L6_39
.L6_39:
    mov w15, w14
    b .L6_27
.L6_26:
    ldrb w14, [x21]
    movz x10, #1
    cmp w14, w10
    cset w15, eq
.L6_27:
    and w14, w15, #255
    mov w15, w14
.L6_25:
    and w14, w15, #255
    and w14, w14, #255
    mov x10, #0
    cmp w14, w10
    b.ne .L6_29
.L6_28:
    sub x19, x29, #368
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    str wzr, [x11, #24]
    sub x20, x29, #76
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    ldr w16, [x10, #24]
    str w16, [x11, #24]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #28
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_31:
    b .L6_30
.L6_29:
.L6_30:
    add x14, x21, #18
    sub x15, x29, #112
    ldrh w15, [x15]
    strh w15, [x14]
    sub x19, x29, #396
    mov x10, x21
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    sub x20, x29, #76
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    ldr w16, [x10, #24]
    str w16, [x11, #24]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #28
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_32:
    adrp x0, .Ltext_19
    add x0, x0, :lo12:.Ltext_19
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_net_17resolved_endpoint, .-lb_net_17resolved_endpoint

    .section .init_array,"aw"
    .p2align 3
    .quad lb_net_resolver_0init

    .section .rodata
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/net/resolver.lucb:11:9"
.Ltext_2:
    .asciz "resolved addresses lost their allocator"
.Ltext_3:
    .asciz "src/std/net/resolver.lucb:17:13"
.Ltext_4:
    .asciz "src/std/net/resolver.lucb:18:13"
.Ltext_5:
    .asciz "the host has no usable stream address for the requested IP version"
.Ltext_6:
    .asciz "src/std/net/resolver.lucb:34:5"
.Ltext_7:
    .asciz "the resolver result is too large"
.Ltext_8:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_9:
    .asciz "memory.unset"
.Ltext_10:
    .asciz "src/std/net/resolver.lucb:54:5"
.Ltext_11:
    .asciz "memory.exhausted"
.Ltext_12:
    .asciz "src/std/net/resolver.lucb:59:13"
.Ltext_13:
    .asciz "src/std/net/resolver.lucb:60:13"
.Ltext_14:
    .asciz "src/std/net/resolver.lucb:62:5"
.Ltext_15:
    .asciz "unknown resolver IP version"
.Ltext_16:
    .asciz "the host could not be resolved"
.Ltext_17:
    .asciz "unknown host"
.Ltext_18:
    .asciz "src/std/net/resolver.lucb:83:9"
.Ltext_19:
    .asciz "src/std/net/resolver.lucb:102:5"
.Ltext_20:
    .asciz "integer overflow"
.Ltext_21:
    .asciz "index out of bounds"

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
