    .text

    .p2align 2
    .globl lb_thread_0init
    .type lb_thread_0init, %function
lb_thread_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, lb_thread_failed
    add x14, x14, :lo12:lb_thread_failed
    movz x9, #5
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_thread_11least_stack
    add x14, x14, :lo12:lb_thread_11least_stack
    movz x9, #16384
    str x9, [x14]
    adrp x14, lb_thread_9name_room
    add x14, x14, :lo12:lb_thread_9name_room
    movz x9, #16
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_thread_0init, .-lb_thread_0init

    .p2align 2
    .globl lb_thread_Handle_join
    .type lb_thread_Handle_join, %function
lb_thread_Handle_join:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    sub x16, x29, #72
    str x0, [x16]
    sub x9, x29, #72
    ldr x14, [x9]
    ldr x14, [x14]
    cbnz x14, .L1_1
    b .L1_2
.L1_1:
    b .L1_3
.L1_2:
    sub x19, x29, #64
    adrp x14, lb_thread_failed
    add x14, x14, :lo12:lb_thread_failed
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_2
    add x14, x14, :lo12:.Ltext_2
    sub x15, x29, #88
    str x14, [x15]
    add x14, x15, #8
    movz x9, #17
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
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_4:
.L1_3:
    mov x0, x14
    mov x1, #0
    bl pthread_join
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne .L1_6
.L1_5:
    sub x19, x29, #64
    adrp x14, lb_thread_failed
    add x14, x14, :lo12:lb_thread_failed
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_3
    add x14, x14, :lo12:.Ltext_3
    sub x15, x29, #104
    str x14, [x15]
    add x14, x15, #8
    movz x9, #4
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
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_8:
    b .L1_7
.L1_6:
.L1_7:
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

    .size lb_thread_Handle_join, .-lb_thread_Handle_join

    .p2align 2
    .globl lb_thread_Handle_detach
    .type lb_thread_Handle_detach, %function
lb_thread_Handle_detach:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    ldr x14, [x14]
    cbnz x14, .L2_1
    b .L2_2
.L2_1:
    b .L2_3
.L2_2:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_4:
.L2_3:
    mov x0, x14
    bl pthread_detach
    mov w14, w0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_thread_Handle_detach, .-lb_thread_Handle_detach

    .p2align 2
    .globl lb_thread_trampoline
    .type lb_thread_trampoline, %function
lb_thread_trampoline:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    str x19, [sp, #136]
    str x20, [sp, #128]
    str x21, [sp, #120]
    str x22, [sp, #112]
    str x23, [sp, #104]
    str x24, [sp, #96]
    str x25, [sp, #88]
    sub x16, x29, #88
    str x0, [x16]
    sub x14, x29, #88
    ldr x19, [x14]
    adrp x20, lb_memory_heap
    add x20, x20, :lo12:lb_memory_heap
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x14, x0
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x21, [x19]
    add x14, x19, #8
    ldr x22, [x14]
    add x14, x19, #32
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls .L3_2
.L3_1:
    add x15, x19, #16
    ldr x23, [x15]
    add x15, x15, #8
    ldr x15, [x15]
    add x15, x15, #1
    mov x9, #0
    cmp x9, x15
    b.lo 1f
    adrp x0, .Ltext_4
    add x0, x0, :lo12:.Ltext_4
    adrp x1, .Ltext_5
    add x1, x1, :lo12:.Ltext_5
    bl lb_core_7trap_at
1:
    cmp x14, x15
    b.lo 1f
    adrp x0, .Ltext_4
    add x0, x0, :lo12:.Ltext_4
    adrp x1, .Ltext_5
    add x1, x1, :lo12:.Ltext_5
    bl lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x14
    b.ls .L3_4
.L3_5:
    adrp x0, .Ltext_4
    add x0, x0, :lo12:.Ltext_4
    adrp x1, .Ltext_5
    add x1, x1, :lo12:.Ltext_5
    bl lb_core_7trap_at
.L3_4:
    sub x15, x29, #104
    str x23, [x15]
    add x15, x15, #8
    str x14, [x15]
    sub x15, x29, #120
    str x23, [x15]
    add x15, x15, #8
    str x14, [x15]
    bl pthread_self
    mov x15, x0
    cbnz x15, .L3_6
    b .L3_7
.L3_7:
    adrp x0, .Ltext_7
    add x0, x0, :lo12:.Ltext_7
    adrp x1, .Ltext_6
    add x1, x1, :lo12:.Ltext_6
    bl lb_core_7trap_at
.L3_6:
    mov x0, x15
    mov x1, x23
    bl pthread_setname_np
    mov w14, w0
    b .L3_3
.L3_2:
.L3_3:
    add x14, x19, #16
    sub x15, x29, #136
    ldr x23, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    str x23, [x15]
    add x23, x15, #8
    str x14, [x23]
    ldr x14, [x20]
    add x23, x20, #8
    ldr x24, [x23]
    cbnz x24, .L3_9
    b .L3_8
.L3_9:
    add x25, x24, #16
    ldr x25, [x25]
    mov x17, x25
    str x17, [sp, #-16]!
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L3_8:
    sub x14, x29, #152
    str x19, [x14]
    add x15, x14, #8
    movz x9, #40
    str x9, [x15]
    ldr x15, [x20]
    ldr x24, [x23]
    cbnz x24, .L3_11
    b .L3_10
.L3_11:
    add x19, x24, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L3_10:
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x22
    ldr x17, [sp], #16
    blr x17
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    ldr x23, [sp, #104]
    ldr x24, [sp, #96]
    ldr x25, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_12:
    adrp x0, .Ltext_9
    add x0, x0, :lo12:.Ltext_9
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_thread_trampoline, .-lb_thread_trampoline

    .p2align 2
    .globl lb_thread_spawn
    .type lb_thread_spawn, %function
lb_thread_spawn:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #768
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #736]
    str x20, [sp, #728]
    str x21, [sp, #720]
    str x22, [sp, #712]
    str x23, [sp, #704]
    str x24, [sp, #696]
    str x25, [sp, #688]
    str x26, [sp, #680]
    sub x16, x29, #144
    str x0, [x16]
    sub x16, x29, #160
    str x1, [x16]
    sub x16, x29, #176
    str x2, [x16]
    sub x16, x29, #192
    str x3, [x16]
    str x4, [x16, #8]
    sub x20, x29, #208
    adrp x21, lb_memory_heap
    add x21, x21, :lo12:lb_memory_heap
    adrp x19, lb_thread_9name_room
    add x19, x19, :lo12:lb_thread_9name_room
    ldr x22, [x19]
    sub x23, x29, #256
    movz x10, #16384, lsl #48
    cmp x22, x10
    b.ls .L4_2
.L4_1:
    add x14, x23, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_10
    add x15, x15, :lo12:.Ltext_10
    add x22, x14, #8
    str x15, [x22]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b .L4_3
.L4_2:
    ldr x14, [x21]
    add x15, x21, #8
    ldr x15, [x15]
    cbnz x15, .L4_4
    b .L4_5
.L4_5:
    adrp x0, .Ltext_12
    add x0, x0, :lo12:.Ltext_12
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
.L4_4:
    ldr x24, [x15]
    mov x17, x24
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x22
    movz x2, #1
    sub x8, x29, #280
    ldr x17, [sp], #16
    blr x17
    sub x26, x29, #280
    add x24, x26, #16
    ldrb w24, [x24]
    mov x10, #0
    cmp x22, x10
    cset w25, ne
    mov x10, #0
    cmp w24, w10
    cset w24, eq
    and w24, w25, w24
    cbnz w24, .L4_6
    b .L4_7
.L4_6:
    add x14, x23, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_13
    add x15, x15, :lo12:.Ltext_13
    add x22, x14, #8
    str x15, [x22]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b .L4_3
.L4_7:
    ldr x14, [x26]
    str x14, [x23]
    add x14, x23, #8
    str x22, [x14]
    add x14, x23, #40
    mov x9, #0
    strb w9, [x14]
.L4_3:
    add x14, x23, #40
    ldrb w14, [x14]
    cbnz w14, .L4_9
    b .L4_8
.L4_9:
    add x14, x23, #16
    sub x19, x29, #128
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #736]
    ldr x20, [sp, #728]
    ldr x21, [sp, #720]
    ldr x22, [sp, #712]
    ldr x23, [sp, #704]
    ldr x24, [sp, #696]
    ldr x25, [sp, #688]
    ldr x26, [sp, #680]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_10:
.L4_8:
    mov x10, x23
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #192
    add x15, x14, #8
    ldr x15, [x15]
    ldr x22, [x19]
    mov x9, x22
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_14
    add x0, x0, :lo12:.Ltext_14
    adrp x1, .Ltext_40
    add x1, x1, :lo12:.Ltext_40
    bl lb_core_7trap_at
1:
    mov x22, x9
    cmp x15, x22
    b.hs .L4_12
.L4_11:
    mov x19, x15
    b .L4_13
.L4_12:
    mov x19, x22
.L4_13:
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x14
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x19
    bl lb_memory_copy_0g1_u8
    ldr x15, [x20]
    add x22, x20, #8
    ldr x23, [x22]
    cmp x19, x23
    b.lo 1f
    adrp x0, .Ltext_15
    add x0, x0, :lo12:.Ltext_15
    adrp x1, .Ltext_5
    add x1, x1, :lo12:.Ltext_5
    bl lb_core_7trap_at
1:
    add x15, x15, x19
    mov x9, #0
    strb w9, [x15]
    sub x23, x29, #320
    mov x10, x21
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x24, x29, #360
    ldr x15, [x23]
    add x23, x23, #8
    ldr x23, [x23]
    cbnz x23, .L4_16
    b .L4_17
.L4_17:
    adrp x0, .Ltext_16
    add x0, x0, :lo12:.Ltext_16
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
.L4_16:
    ldr x14, [x23]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x15
    movz x1, #40
    movz x2, #8
    sub x8, x29, #384
    ldr x17, [sp], #16
    blr x17
    sub x25, x29, #384
    add x14, x25, #16
    ldrb w14, [x14]
    cbnz w14, .L4_18
    b .L4_19
.L4_19:
    add x14, x24, #8
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_13
    add x15, x15, :lo12:.Ltext_13
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x24, #32
    movz x9, #1
    strb w9, [x14]
    b .L4_20
.L4_18:
    ldr x23, [x25]
    sub x26, x29, #424
    mov x11, x26
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    sub x14, x29, #144
    ldr x14, [x14]
    str x14, [x26]
    sub x14, x29, #160
    ldr x14, [x14]
    add x15, x26, #8
    str x14, [x15]
    add x14, x26, #16
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x26, #32
    str x19, [x14]
    mov x10, x26
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    str x23, [x24]
    add x14, x24, #32
    mov x9, #0
    strb w9, [x14]
.L4_20:
    add x14, x24, #32
    ldrb w14, [x14]
    cbnz w14, .L4_22
    b .L4_21
.L4_22:
    add x14, x24, #8
    sub x15, x29, #304
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b .L4_14
.L4_21:
    ldr x19, [x24]
    b .L4_15
.L4_14:
    sub x14, x29, #440
    ldr x15, [x20]
    ldr x19, [x22]
    str x15, [x14]
    add x15, x14, #8
    str x19, [x15]
    ldr x15, [x21]
    add x19, x21, #8
    ldr x19, [x19]
    cbnz x19, .L4_24
    b .L4_23
.L4_24:
    add x20, x19, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L4_23:
    sub x19, x29, #128
    add x14, x19, #8
    adrp x15, lb_memory_exhausted
    add x15, x15, :lo12:lb_memory_exhausted
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_13
    add x15, x15, :lo12:.Ltext_13
    sub x20, x29, #456
    str x15, [x20]
    add x15, x20, #8
    movz x9, #16
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #736]
    ldr x20, [sp, #728]
    ldr x21, [sp, #720]
    ldr x22, [sp, #712]
    ldr x23, [sp, #704]
    ldr x24, [sp, #696]
    ldr x25, [sp, #688]
    ldr x26, [sp, #680]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_25:
.L4_15:
    sub x23, x29, #584
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    stp xzr, xzr, [x11, #112]
    mov x0, x23
    bl pthread_attr_init
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L4_27
.L4_26:
    sub x14, x29, #600
    ldr x15, [x20]
    ldr x23, [x22]
    str x15, [x14]
    add x15, x14, #8
    str x23, [x15]
    ldr x15, [x21]
    add x23, x21, #8
    ldr x24, [x23]
    cbnz x24, .L4_30
    b .L4_29
.L4_30:
    add x20, x24, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L4_29:
    sub x14, x29, #616
    str x19, [x14]
    add x15, x14, #8
    movz x9, #40
    str x9, [x15]
    ldr x15, [x21]
    ldr x20, [x23]
    cbnz x20, .L4_32
    b .L4_31
.L4_32:
    add x19, x20, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L4_31:
    sub x19, x29, #128
    add x14, x19, #8
    adrp x15, lb_thread_failed
    add x15, x15, :lo12:lb_thread_failed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_20
    add x15, x15, :lo12:.Ltext_20
    sub x20, x29, #632
    str x15, [x20]
    add x15, x20, #8
    movz x9, #5
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #736]
    ldr x20, [sp, #728]
    ldr x21, [sp, #720]
    ldr x22, [sp, #712]
    ldr x23, [sp, #704]
    ldr x24, [sp, #696]
    ldr x25, [sp, #688]
    ldr x26, [sp, #680]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_33:
    b .L4_28
.L4_27:
.L4_28:
    sub x14, x29, #176
    ldr x24, [x14]
    mov x10, #0
    cmp x24, x10
    b.ls .L4_35
.L4_34:
    bl getpagesize
    mov w14, w0
    sxtw x14, w14
    b .L4_64
.L4_63:
    adrp x0, .Ltext_1
    add x0, x0, :lo12:.Ltext_1
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L4_64:
    adrp x15, lb_thread_11least_stack
    add x15, x15, :lo12:lb_thread_11least_stack
    ldr x15, [x15]
    cmp x24, x15
    b.ls .L4_38
.L4_37:
    mov x15, x24
    b .L4_39
.L4_38:
.L4_39:
    mov x9, x14
    mov x10, x15
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_21
    add x0, x0, :lo12:.Ltext_21
    adrp x1, .Ltext_40
    add x1, x1, :lo12:.Ltext_40
    bl lb_core_7trap_at
1:
    mov x24, x9
    mov x9, x24
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_21
    add x0, x0, :lo12:.Ltext_21
    adrp x1, .Ltext_40
    add x1, x1, :lo12:.Ltext_40
    bl lb_core_7trap_at
1:
    mov x25, x9
    mov x10, #0
    cmp x14, x10
    b.ne .L4_41
.L4_40:
    adrp x0, .Ltext_21
    add x0, x0, :lo12:.Ltext_21
    adrp x1, .Ltext_22
    add x1, x1, :lo12:.Ltext_22
    bl lb_core_7trap_at
.L4_41:
    udiv x15, x25, x14
    mov x9, x15
    mov x10, x14
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_21
    add x0, x0, :lo12:.Ltext_21
    adrp x1, .Ltext_40
    add x1, x1, :lo12:.Ltext_40
    bl lb_core_7trap_at
1:
    mov x15, x9
    mov x0, x23
    mov x1, x15
    bl pthread_attr_setstacksize
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne .L4_43
.L4_42:
    mov x0, x23
    bl pthread_attr_destroy
    mov w14, w0
    sub x14, x29, #648
    ldr x15, [x20]
    ldr x24, [x22]
    str x15, [x14]
    add x15, x14, #8
    str x24, [x15]
    ldr x15, [x21]
    add x24, x21, #8
    ldr x25, [x24]
    cbnz x25, .L4_46
    b .L4_45
.L4_46:
    add x20, x25, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L4_45:
    sub x14, x29, #664
    str x19, [x14]
    add x15, x14, #8
    movz x9, #40
    str x9, [x15]
    ldr x15, [x21]
    ldr x20, [x24]
    cbnz x20, .L4_48
    b .L4_47
.L4_48:
    add x19, x20, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L4_47:
    sub x19, x29, #128
    add x14, x19, #8
    adrp x15, lb_thread_failed
    add x15, x15, :lo12:lb_thread_failed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_26
    add x15, x15, :lo12:.Ltext_26
    sub x20, x29, #680
    str x15, [x20]
    add x15, x20, #8
    movz x9, #25
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #736]
    ldr x20, [sp, #728]
    ldr x21, [sp, #720]
    ldr x22, [sp, #712]
    ldr x23, [sp, #704]
    ldr x24, [sp, #696]
    ldr x25, [sp, #688]
    ldr x26, [sp, #680]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_49:
    b .L4_44
.L4_43:
.L4_44:
    b .L4_36
.L4_35:
.L4_36:
    sub x24, x29, #688
    mov x9, #0
    str x9, [x24]
    adrp x14, :got:lb_thread_trampoline
    ldr x14, [x14, :got_lo12:lb_thread_trampoline]
    mov x0, x24
    mov x1, x23
    mov x2, x14
    mov x3, x19
    bl pthread_create
    mov w25, w0
    mov x0, x23
    bl pthread_attr_destroy
    mov w14, w0
    mov x10, #0
    cmp w25, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L4_51
.L4_50:
    sub x14, x29, #704
    ldr x15, [x20]
    ldr x23, [x22]
    str x15, [x14]
    add x15, x14, #8
    str x23, [x15]
    ldr x15, [x21]
    add x23, x21, #8
    ldr x24, [x23]
    cbnz x24, .L4_54
    b .L4_53
.L4_54:
    add x20, x24, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L4_53:
    sub x14, x29, #720
    str x19, [x14]
    add x15, x14, #8
    movz x9, #40
    str x9, [x15]
    ldr x15, [x21]
    ldr x20, [x23]
    cbnz x20, .L4_56
    b .L4_55
.L4_56:
    add x19, x20, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L4_55:
    sub x19, x29, #128
    add x14, x19, #8
    adrp x15, lb_thread_failed
    add x15, x15, :lo12:lb_thread_failed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_20
    add x15, x15, :lo12:.Ltext_20
    sub x20, x29, #736
    str x15, [x20]
    add x15, x20, #8
    movz x9, #5
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #736]
    ldr x20, [sp, #728]
    ldr x21, [sp, #720]
    ldr x22, [sp, #712]
    ldr x23, [sp, #704]
    ldr x24, [sp, #696]
    ldr x25, [sp, #688]
    ldr x26, [sp, #680]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_57:
    b .L4_52
.L4_51:
.L4_52:
    ldr x19, [x24]
    cbnz x19, .L4_58
    b .L4_59
.L4_58:
    b .L4_60
.L4_59:
    sub x19, x29, #128
    add x14, x19, #8
    adrp x15, lb_thread_failed
    add x15, x15, :lo12:lb_thread_failed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_20
    add x15, x15, :lo12:.Ltext_20
    sub x20, x29, #752
    str x15, [x20]
    add x15, x20, #8
    movz x9, #5
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #736]
    ldr x20, [sp, #728]
    ldr x21, [sp, #720]
    ldr x22, [sp, #712]
    ldr x23, [sp, #704]
    ldr x24, [sp, #696]
    ldr x25, [sp, #688]
    ldr x26, [sp, #680]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_61:
.L4_60:
    sub x20, x29, #760
    mov x11, x20
    str xzr, [x11, #0]
    str x19, [x20]
    sub x21, x29, #128
    mov x10, x20
    mov x11, x21
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x21, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #736]
    ldr x20, [sp, #728]
    ldr x21, [sp, #720]
    ldr x22, [sp, #712]
    ldr x23, [sp, #704]
    ldr x24, [sp, #696]
    ldr x25, [sp, #688]
    ldr x26, [sp, #680]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_62:
    adrp x0, .Ltext_30
    add x0, x0, :lo12:.Ltext_30
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_thread_spawn, .-lb_thread_spawn

    .p2align 2
    .globl lb_thread_current
    .type lb_thread_current, %function
lb_thread_current:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    str x20, [sp, #16]
    sub x19, x29, #48
    mov x11, x19
    str xzr, [x11, #0]
    bl pthread_self
    mov x14, x0
    cbnz x14, .L5_1
    b .L5_2
.L5_2:
    adrp x0, .Ltext_31
    add x0, x0, :lo12:.Ltext_31
    adrp x1, .Ltext_6
    add x1, x1, :lo12:.Ltext_6
    bl lb_core_7trap_at
.L5_1:
    str x14, [x19]
    sub x20, x29, #40
    mov x10, x19
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_3:
    adrp x0, .Ltext_31
    add x0, x0, :lo12:.Ltext_31
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_thread_current, .-lb_thread_current

    .p2align 2
    .globl lb_thread_7is_main
    .type lb_thread_7is_main, %function
lb_thread_7is_main:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    str x19, [sp, #8]
    bl gettid
    mov w19, w0
    bl getpid
    mov w14, w0
    cmp w19, w14
    cset w14, eq
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_1:
    adrp x0, .Ltext_32
    add x0, x0, :lo12:.Ltext_32
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_thread_7is_main, .-lb_thread_7is_main

    .p2align 2
    .globl lb_thread_pause
    .type lb_thread_pause, %function
lb_thread_pause:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
yield

    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_thread_pause, .-lb_thread_pause

    .p2align 2
    .globl lb_thread_yield
    .type lb_thread_yield, %function
lb_thread_yield:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    bl sched_yield
    mov w14, w0
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_thread_yield, .-lb_thread_yield

    .p2align 2
    .globl lb_thread_sleep
    .type lb_thread_sleep, %function
lb_thread_sleep:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    str x21, [sp, #88]
    str x22, [sp, #80]
    sub x16, x29, #64
    str x0, [x16]
    sub x19, x29, #80
    sub x20, x29, #96
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    sub x14, x29, #64
    ldr x14, [x14]
.L9_2:
    movz x10, #1000
    udiv x15, x14, x10
    str x15, [x20]
.L9_4:
    movz x10, #1000
    udiv x11, x14, x10
    msub x15, x11, x10, x14
    mov x9, x15
    movz x10, #16960
    movk x10, #15, lsl #16
    smulh x11, x9, x10
    mul x9, x9, x10
    cmp x11, x9, asr #63
    b.eq 1f
    adrp x0, .Ltext_35
    add x0, x0, :lo12:.Ltext_35
    adrp x1, .Ltext_40
    add x1, x1, :lo12:.Ltext_40
    bl lb_core_7trap_at
1:
    mov x15, x9
    add x21, x20, #8
    str x15, [x21]
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x21, x29, #112
    sub x22, x29, #128
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    mov x9, #0
    str x9, [x22]
    add x15, x22, #8
    mov x9, #0
    str x9, [x15]
    mov x10, x22
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x22, lb_c_interrupted
    add x22, x22, :lo12:lb_c_interrupted
.L9_5:
    mov x0, x19
    mov x1, x21
    bl nanosleep
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, .L9_8
    b .L9_10
.L9_10:
    mov w15, w14
    b .L9_9
.L9_8:
    bl lb_c_errno
    mov w14, w0
    ldrsw x15, [x22]
    cmp w14, w15
    cset w15, eq
.L9_9:
    and w14, w15, #255
    cbnz w14, .L9_6
    b .L9_7
.L9_6:
    mov x10, x21
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b .L9_5
.L9_7:
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_thread_sleep, .-lb_thread_sleep

    .p2align 2
    .weak lb_memory_copy_0g1_u8
    .type lb_memory_copy_0g1_u8, %function
lb_memory_copy_0g1_u8:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    sub x16, x29, #48
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #64
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #80
    str x4, [x16]
    sub x14, x29, #80
    ldr x19, [x14]
    sub x20, x29, #48
    add x14, x20, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w14, hi
    cbnz w14, .L10_11
    b .L10_4
.L10_11:
    mov w15, w14
    b .L10_5
.L10_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
.L10_5:
    and w14, w15, #255
    cbnz w14, .L10_1
    b .L10_2
.L10_1:
    adrp x14, .Ltext_5
    add x14, x14, :lo12:.Ltext_5
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, .Ltext_38
    add x14, x14, :lo12:.Ltext_38
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    b .L10_3
.L10_2:
.L10_3:
    mov x10, #0
    cmp x19, x10
    b.ls .L10_7
.L10_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl memcpy
    mov x14, x0
    cbnz x14, .L10_9
    b .L10_10
.L10_10:
    adrp x0, .Ltext_39
    add x0, x0, :lo12:.Ltext_39
    adrp x1, .Ltext_6
    add x1, x1, :lo12:.Ltext_6
    bl lb_core_7trap_at
.L10_9:
    b .L10_8
.L10_7:
.L10_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_memory_copy_0g1_u8, .-lb_memory_copy_0g1_u8

    .section .init_array,"aw"
    .p2align 3
    .quad lb_thread_0init

    .section .rodata
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/thread.lucb:31:5"
.Ltext_2:
    .asciz "no thread to join"
.Ltext_3:
    .asciz "join"
.Ltext_4:
    .asciz "src/std/thread.lucb:72:9"
.Ltext_5:
    .asciz "index out of bounds"
.Ltext_6:
    .asciz "null_foreign"
.Ltext_7:
    .asciz "src/std/thread.lucb:76:13"
.Ltext_8:
    .asciz "src/std/thread.lucb:77:5"
.Ltext_9:
    .asciz "src/std/thread.lucb:80:5"
.Ltext_10:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_11:
    .asciz "memory.unset"
.Ltext_12:
    .asciz "src/std/thread.lucb:86:5"
.Ltext_13:
    .asciz "memory.exhausted"
.Ltext_14:
    .asciz "src/std/thread.lucb:87:5"
.Ltext_15:
    .asciz "src/std/thread.lucb:89:5"
.Ltext_16:
    .asciz "src/std/thread.lucb:90:5"
.Ltext_17:
    .asciz "src/std/thread.lucb:91:9"
.Ltext_18:
    .asciz "src/std/thread.lucb:94:5"
.Ltext_19:
    .asciz "src/std/thread.lucb:95:9"
.Ltext_20:
    .asciz "spawn"
.Ltext_21:
    .asciz "src/std/thread.lucb:101:9"
.Ltext_22:
    .asciz "division by zero"
.Ltext_23:
    .asciz "src/std/thread.lucb:102:9"
.Ltext_24:
    .asciz "src/std/thread.lucb:103:13"
.Ltext_25:
    .asciz "src/std/thread.lucb:104:13"
.Ltext_26:
    .asciz "the stack size is refused"
.Ltext_27:
    .asciz "src/std/thread.lucb:108:5"
.Ltext_28:
    .asciz "src/std/thread.lucb:109:5"
.Ltext_29:
    .asciz "src/std/thread.lucb:111:9"
.Ltext_30:
    .asciz "src/std/thread.lucb:115:5"
.Ltext_31:
    .asciz "src/std/thread.lucb:118:5"
.Ltext_32:
    .asciz "src/std/thread.lucb:127:9"
.Ltext_33:
    .asciz "arm64"
.Ltext_34:
    .asciz "yield\n"
.Ltext_35:
    .asciz "src/std/thread.lucb:146:5"
.Ltext_36:
    .asciz "src/std/thread.lucb:162:9"
.Ltext_37:
    .asciz "src/std/thread.lucb:164:9"
.Ltext_38:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_39:
    .asciz "src/std/memory.lucb:330:9"
.Ltext_40:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_thread_failed
    .type lb_thread_failed, %object
    .p2align 2
lb_thread_failed:
    .zero 4

    .bss
    .globl lb_thread_11least_stack
    .type lb_thread_11least_stack, %object
    .p2align 3
lb_thread_11least_stack:
    .zero 8

    .bss
    .globl lb_thread_9name_room
    .type lb_thread_9name_room, %object
    .p2align 3
lb_thread_9name_room:
    .zero 8


    .section .note.GNU-stack,"",%progbits
