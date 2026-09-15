    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_time_0init
_lb_time_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, _lb_platform_macos@PAGE
    add x14, x14, _lb_platform_macos@PAGEOFF
    ldrb w14, [x14]
    cbnz w14, L0_1
    b L0_2
L0_1:
    movz x9, #6
    mov w14, w9
    b L0_3
L0_2:
    movz x9, #1
    mov w14, w9
L0_3:
    adrp x15, _lb_time_monotonic@PAGE
    add x15, x15, _lb_time_monotonic@PAGEOFF
    str w14, [x15]
    adrp x15, _lb_time_realtime@PAGE
    add x15, x15, _lb_time_realtime@PAGEOFF
    mov x9, #0
    str w9, [x15]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_time_now
    .no_dead_strip _lb_time_now
_lb_time_now:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    sub x19, x29, #48
    sub x20, x29, #64
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    mov x9, #0
    str x9, [x20]
    add x14, x20, #8
    mov x9, #0
    str x9, [x14]
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, _lb_time_monotonic@PAGE
    add x14, x14, _lb_time_monotonic@PAGEOFF
    ldrsw x14, [x14]
    mov x0, x14
    mov x1, x19
    bl _clock_gettime
    mov w14, w0
    ldr x14, [x19]
    mov x9, x14
    movz x10, #51712
    movk x10, #15258, lsl #16
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_0@PAGE
    add x0, x0, l_text_0@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    add x15, x19, #8
    ldr x15, [x15]
    mov x9, x14
    mov x10, x15
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_0@PAGE
    add x0, x0, l_text_0@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_1:
    adrp x0, l_text_0@PAGE
    add x0, x0, l_text_0@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_time_unix
    .no_dead_strip _lb_time_unix
_lb_time_unix:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov x0, #0
    bl _time
    mov x14, x0
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_1:
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_time_since
    .no_dead_strip _lb_time_since
_lb_time_since:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    bl _lb_time_now
    mov x14, x0
    sub x15, x29, #40
    ldr x15, [x15]
    cmp x14, x15
    b.ls L3_2
L3_1:
    sub x19, x14, x15
    b L3_3
L3_2:
    mov x9, #0
    mov x19, x9
L3_3:
    mov x9, x19
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_4:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_time_0init

    .section __TEXT,__const
l_text_0:
    .asciz "src/std/time.lucb:19:5"
l_text_1:
    .asciz "unreachable"
l_text_2:
    .asciz "src/std/time.lucb:23:5"
l_text_3:
    .asciz "src/std/time.lucb:28:5"
l_text_4:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3
    .globl _lb_time_monotonic
    .zerofill __DATA,__bss,_lb_time_monotonic,4,2
    .globl _lb_time_realtime
    .zerofill __DATA,__bss,_lb_time_realtime,4,2

.subsections_via_symbols
