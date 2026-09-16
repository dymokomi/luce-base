    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_time_0init
_lb_time_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, _lb_time_monotonic@PAGE
    add x14, x14, _lb_time_monotonic@PAGEOFF
    movz x9, #6
    str w9, [x14]
    adrp x14, _lb_time_realtime@PAGE
    add x14, x14, _lb_time_realtime@PAGEOFF
    mov x9, #0
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_time_now
    .no_dead_strip _lb_time_now
_lb_time_now:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
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
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    movz x9, #1
    sub x10, x29, #80
    str w9, [x10]
    sub x10, x29, #96
    str x19, [x10]
    sub x14, x29, #80
    ldrb w14, [x14]
    cbnz w14, L1_2
    b L1_3
L1_2:
    movz x9, #6
    mov w14, w9
    b L1_4
L1_3:
    mov x9, #0
    mov w14, w9
L1_4:
    mov x0, x14
    mov x1, x19
    bl _clock_gettime
    mov w15, w0
    sub x10, x29, #104
    str w15, [x10]
    b L1_6
L1_5:
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L1_6:
    ldr x14, [x19]
    mov x9, x14
    movz x10, #51712
    movk x10, #15258, lsl #16
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    add x15, x19, #8
    ldr x15, [x15]
    mov x9, x14
    mov x10, x15
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_1:
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
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
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_time_since
    .no_dead_strip _lb_time_since
_lb_time_since:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str x0, [x16]
    bl _lb_time_now
    mov x14, x0
    sub x15, x29, #32
    ldr x15, [x15]
    cmp x14, x15
    b.ls L3_2
L3_1:
    sub x12, x14, x15
    b L3_3
L3_2:
    mov x9, #0
    mov x12, x9
L3_3:
    mov x9, x12
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_4:
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_time_0init

    .section __TEXT,__const
l_text_0:
    .asciz "unreachable"
l_text_1:
    .asciz "src/std/time.lucb:24:5"
l_text_2:
    .asciz "src/std/time.lucb:30:5"
l_text_3:
    .asciz "src/std/time.lucb:34:5"
l_text_4:
    .asciz "src/std/time.lucb:39:5"
l_text_5:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3
    .globl _lb_time_monotonic
    .zerofill __DATA,__bss,_lb_time_monotonic,4,2
    .globl _lb_time_realtime
    .zerofill __DATA,__bss,_lb_time_realtime,4,2

.subsections_via_symbols
