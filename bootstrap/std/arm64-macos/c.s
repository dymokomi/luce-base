    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_c_0init
_lb_c_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, _lb_c_interrupted@PAGE
    add x14, x14, _lb_c_interrupted@PAGEOFF
    movz x9, #4
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_c_errno
    .no_dead_strip _lb_c_errno
_lb_c_errno:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    bl ___error
    mov x14, x0
    cbnz x14, L1_1
    b L1_2
L1_2:
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L1_1:
    ldrsw x15, [x14]
    mov x9, x15
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_3:
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_c_9set_errno
    .no_dead_strip _lb_c_9set_errno
_lb_c_9set_errno:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str w0, [x16]
    bl ___error
    mov x14, x0
    cbnz x14, L2_1
    b L2_2
L2_2:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L2_1:
    sub x15, x29, #32
    ldrsw x15, [x15]
    str w15, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_c_stdin
    .no_dead_strip _lb_c_stdin
_lb_c_stdin:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    adrp x14, l_text_4@PAGE
    add x14, x14, l_text_4@PAGEOFF
    sub x15, x29, #32
    str x14, [x15]
    add x14, x15, #8
    movz x9, #23
    str x9, [x14]
    adrp x14, l_text_5@PAGE
    add x14, x14, l_text_5@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_c_stdout
    .no_dead_strip _lb_c_stdout
_lb_c_stdout:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    adrp x14, l_text_4@PAGE
    add x14, x14, l_text_4@PAGEOFF
    sub x15, x29, #32
    str x14, [x15]
    add x14, x15, #8
    movz x9, #23
    str x9, [x14]
    adrp x14, l_text_6@PAGE
    add x14, x14, l_text_6@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_c_stderr
    .no_dead_strip _lb_c_stderr
_lb_c_stderr:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    adrp x14, l_text_4@PAGE
    add x14, x14, l_text_4@PAGEOFF
    sub x15, x29, #32
    str x14, [x15]
    add x14, x15, #8
    movz x9, #23
    str x9, [x14]
    adrp x14, l_text_7@PAGE
    add x14, x14, l_text_7@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_c_0init

    .section __TEXT,__const
l_text_0:
    .asciz "null_foreign"
l_text_1:
    .asciz "src/std/c.lucb:15:9"
l_text_2:
    .asciz "unreachable"
l_text_3:
    .asciz "src/std/c.lucb:24:9"
l_text_4:
    .asciz "supplied by the backend"
l_text_5:
    .asciz "src/std/c.lucb:34:5"
l_text_6:
    .asciz "src/std/c.lucb:37:5"
l_text_7:
    .asciz "src/std/c.lucb:40:5"

    .section __DATA,__const
    .p2align 3
    .globl _lb_c_interrupted
    .no_dead_strip _lb_c_interrupted
    .zerofill __DATA,__bss,_lb_c_interrupted,4,2

.subsections_via_symbols
