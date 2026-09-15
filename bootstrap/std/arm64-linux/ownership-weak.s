    .text

    .p2align 2
    .globl lb_ownership_weak_0init
    .type lb_ownership_weak_0init, %function
lb_ownership_weak_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_ownership_weak_0init, .-lb_ownership_weak_0init

    .p2align 2
    .globl lb_ownership_9weak_make
    .type lb_ownership_9weak_make, %function
lb_ownership_9weak_make:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    str x20, [sp, #48]
    str x21, [sp, #40]
    sub x16, x29, #64
    str x0, [x16]
    sub x14, x29, #64
    ldr x19, [x14]
    mov x0, x19
    bl lb_ownership_11check_alive
    adrp x14, lb_ownership_immortal
    add x14, x14, :lo12:lb_ownership_immortal
    ldrb w14, [x14]
    mov x0, x19
    mov x1, x14
    bl lb_ownership_has
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne .L1_2
.L1_1:
    add x14, x19, #4
    ldr w15, [x14]
    mov w9, w15
    movz x10, #1
    adds w9, w9, w10
    b.cc 1f
    adrp x0, .Ltext_0
    add x0, x0, :lo12:.Ltext_0
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    mov w15, w9
    str w15, [x14]
    b .L1_3
.L1_2:
.L1_3:
    sub x20, x29, #72
    mov x11, x20
    str xzr, [x11, #0]
    str x19, [x20]
    sub x21, x29, #48
    mov x10, x20
    mov x11, x21
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    mov x16, x21
    ldr x0, [x16, #0]
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_4:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_ownership_9weak_make, .-lb_ownership_9weak_make

    .p2align 2
    .globl lb_ownership_9weak_copy
    .type lb_ownership_9weak_copy, %function
lb_ownership_9weak_copy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    sub x16, x29, #56
    str x0, [x16]
    sub x19, x29, #56
    ldr x20, [x19]
    cbnz x20, .L2_4
    b .L2_2
.L2_4:
.L2_1:
    mov x0, x20
    bl lb_ownership_12check_thread
    adrp x14, lb_ownership_immortal
    add x14, x14, :lo12:lb_ownership_immortal
    ldrb w14, [x14]
    mov x0, x20
    mov x1, x14
    bl lb_ownership_has
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne .L2_6
.L2_5:
    add x14, x20, #4
    ldr w15, [x14]
    mov w9, w15
    movz x10, #1
    adds w9, w9, w10
    b.cc 1f
    adrp x0, .Ltext_3
    add x0, x0, :lo12:.Ltext_3
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    mov w15, w9
    str w15, [x14]
    b .L2_7
.L2_6:
.L2_7:
    b .L2_3
.L2_2:
.L2_3:
    sub x20, x29, #40
    mov x10, x19
    mov x11, x20
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_8:
    adrp x0, .Ltext_4
    add x0, x0, :lo12:.Ltext_4
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_ownership_9weak_copy, .-lb_ownership_9weak_copy

    .p2align 2
    .globl lb_ownership_9weak_drop
    .type lb_ownership_9weak_drop, %function
lb_ownership_9weak_drop:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x14, x29, #40
    ldr x19, [x14]
    cbnz x19, .L3_4
    b .L3_2
.L3_4:
.L3_1:
    mov x0, x19
    bl lb_ownership_12check_thread
    adrp x14, lb_ownership_immortal
    add x14, x14, :lo12:lb_ownership_immortal
    ldrb w14, [x14]
    mov x0, x19
    mov x1, x14
    bl lb_ownership_has
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne .L3_6
.L3_5:
    add x14, x19, #4
    ldr w15, [x14]
    mov w9, w15
    movz x10, #1
    subs w9, w9, w10
    b.cs 1f
    adrp x0, .Ltext_5
    add x0, x0, :lo12:.Ltext_5
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
1:
    mov w15, w9
    str w15, [x14]
    mov x0, x19
    bl lb_ownership_13release_shell
    b .L3_7
.L3_6:
.L3_7:
    b .L3_3
.L3_2:
.L3_3:
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_ownership_9weak_drop, .-lb_ownership_9weak_drop

    .p2align 2
    .globl lb_ownership_8weak_get
    .type lb_ownership_8weak_get, %function
lb_ownership_8weak_get:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x14, x29, #40
    ldr x19, [x14]
    cbnz x19, .L4_4
    b .L4_2
.L4_4:
.L4_1:
    mov x0, x19
    bl lb_ownership_12check_thread
    adrp x14, lb_ownership_dead
    add x14, x14, :lo12:lb_ownership_dead
    ldrb w14, [x14]
    mov x0, x19
    mov x1, x14
    bl lb_ownership_has
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne .L4_6
.L4_5:
    mov x0, x19
    bl lb_ownership_retain
    mov x14, x0
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_8:
    b .L4_7
.L4_6:
.L4_7:
    b .L4_3
.L4_2:
.L4_3:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_9:
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_ownership_8weak_get, .-lb_ownership_8weak_get

    .section .init_array,"aw"
    .p2align 3
    .quad lb_ownership_weak_0init

    .section .rodata
.Ltext_0:
    .asciz "src/std/ownership/weak.lucb:8:9"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/ownership/weak.lucb:9:5"
.Ltext_3:
    .asciz "src/std/ownership/weak.lucb:15:13"
.Ltext_4:
    .asciz "src/std/ownership/weak.lucb:16:5"
.Ltext_5:
    .asciz "src/std/ownership/weak.lucb:22:13"
.Ltext_6:
    .asciz "src/std/ownership/weak.lucb:31:5"
.Ltext_7:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
