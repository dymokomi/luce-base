    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_ownership_weak_0init
_lb_ownership_weak_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_9weak_make
    .no_dead_strip _lb_ownership_9weak_make
_lb_ownership_9weak_make:
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
    bl _lb_ownership_11check_alive
    adrp x14, _lb_ownership_immortal@PAGE
    add x14, x14, _lb_ownership_immortal@PAGEOFF
    ldrb w14, [x14]
    mov x0, x19
    mov x1, x14
    bl _lb_ownership_has
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L1_2
L1_1:
    add x14, x19, #4
    ldr w15, [x14]
    mov w9, w15
    movz x10, #1
    adds w9, w9, w10
    b.cc 1f
    adrp x0, l_text_0@PAGE
    add x0, x0, l_text_0@PAGEOFF
    adrp x1, l_text_7@PAGE
    add x1, x1, l_text_7@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w15, w9
    str w15, [x14]
    b L1_3
L1_2:
L1_3:
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
L1_4:
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_ownership_9weak_copy
    .no_dead_strip _lb_ownership_9weak_copy
_lb_ownership_9weak_copy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    sub x16, x29, #56
    str x0, [x16]
    sub x19, x29, #56
    ldr x20, [x19]
    cbnz x20, L2_4
    b L2_2
L2_4:
L2_1:
    mov x0, x20
    bl _lb_ownership_12check_thread
    adrp x14, _lb_ownership_immortal@PAGE
    add x14, x14, _lb_ownership_immortal@PAGEOFF
    ldrb w14, [x14]
    mov x0, x20
    mov x1, x14
    bl _lb_ownership_has
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L2_6
L2_5:
    add x14, x20, #4
    ldr w15, [x14]
    mov w9, w15
    movz x10, #1
    adds w9, w9, w10
    b.cc 1f
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_7@PAGE
    add x1, x1, l_text_7@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w15, w9
    str w15, [x14]
    b L2_7
L2_6:
L2_7:
    b L2_3
L2_2:
L2_3:
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
L2_8:
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_ownership_9weak_drop
    .no_dead_strip _lb_ownership_9weak_drop
_lb_ownership_9weak_drop:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x14, x29, #40
    ldr x19, [x14]
    cbnz x19, L3_4
    b L3_2
L3_4:
L3_1:
    mov x0, x19
    bl _lb_ownership_12check_thread
    adrp x14, _lb_ownership_immortal@PAGE
    add x14, x14, _lb_ownership_immortal@PAGEOFF
    ldrb w14, [x14]
    mov x0, x19
    mov x1, x14
    bl _lb_ownership_has
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L3_6
L3_5:
    add x14, x19, #4
    ldr w15, [x14]
    mov w9, w15
    movz x10, #1
    subs w9, w9, w10
    b.cs 1f
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_7@PAGE
    add x1, x1, l_text_7@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w15, w9
    str w15, [x14]
    mov x0, x19
    bl _lb_ownership_13release_shell
    b L3_7
L3_6:
L3_7:
    b L3_3
L3_2:
L3_3:
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_8weak_get
    .no_dead_strip _lb_ownership_8weak_get
_lb_ownership_8weak_get:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x14, x29, #40
    ldr x19, [x14]
    cbnz x19, L4_4
    b L4_2
L4_4:
L4_1:
    mov x0, x19
    bl _lb_ownership_12check_thread
    adrp x14, _lb_ownership_dead@PAGE
    add x14, x14, _lb_ownership_dead@PAGEOFF
    ldrb w14, [x14]
    mov x0, x19
    mov x1, x14
    bl _lb_ownership_has
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L4_6
L4_5:
    mov x0, x19
    bl _lb_ownership_retain
    mov x14, x0
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_8:
    b L4_7
L4_6:
L4_7:
    b L4_3
L4_2:
L4_3:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_9:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_ownership_weak_0init

    .section __TEXT,__const
l_text_0:
    .asciz "src/std/ownership/weak.lucb:8:9"
l_text_1:
    .asciz "unreachable"
l_text_2:
    .asciz "src/std/ownership/weak.lucb:9:5"
l_text_3:
    .asciz "src/std/ownership/weak.lucb:15:13"
l_text_4:
    .asciz "src/std/ownership/weak.lucb:16:5"
l_text_5:
    .asciz "src/std/ownership/weak.lucb:22:13"
l_text_6:
    .asciz "src/std/ownership/weak.lucb:31:5"
l_text_7:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
