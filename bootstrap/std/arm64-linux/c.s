    .text

    .p2align 2
    .globl lb_c_0init
    .type lb_c_0init, %function
lb_c_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, lb_platform_wasm32
    add x14, x14, :lo12:lb_platform_wasm32
    ldrb w14, [x14]
    cbnz w14, .L0_1
    b .L0_2
.L0_1:
    movz x9, #27
    mov w14, w9
    b .L0_3
.L0_2:
    movz x9, #4
    mov w14, w9
.L0_3:
    adrp x15, lb_c_interrupted
    add x15, x15, :lo12:lb_c_interrupted
    str w14, [x15]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_c_0init, .-lb_c_0init

    .p2align 2
    .globl lb_c_errno
    .type lb_c_errno, %function
lb_c_errno:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    bl __errno_location
    mov x14, x0
    cbnz x14, .L1_1
    b .L1_2
.L1_2:
    adrp x0, .Ltext_1
    add x0, x0, :lo12:.Ltext_1
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L1_1:
    ldrsw x15, [x14]
    mov x9, x15
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_3:
    adrp x0, .Ltext_1
    add x0, x0, :lo12:.Ltext_1
    adrp x1, .Ltext_2
    add x1, x1, :lo12:.Ltext_2
    bl lb_core_7trap_at

    .size lb_c_errno, .-lb_c_errno

    .p2align 2
    .globl lb_c_9set_errno
    .type lb_c_9set_errno, %function
lb_c_9set_errno:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str w0, [x16]
    bl __errno_location
    mov x14, x0
    cbnz x14, .L2_1
    b .L2_2
.L2_2:
    adrp x0, .Ltext_3
    add x0, x0, :lo12:.Ltext_3
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L2_1:
    sub x15, x29, #32
    ldrsw x15, [x15]
    str w15, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_c_9set_errno, .-lb_c_9set_errno

    .p2align 2
    .globl lb_c_stdin
    .type lb_c_stdin, %function
lb_c_stdin:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    adrp x14, .Ltext_4
    add x14, x14, :lo12:.Ltext_4
    sub x15, x29, #32
    str x14, [x15]
    add x14, x15, #8
    movz x9, #23
    str x9, [x14]
    adrp x14, .Ltext_5
    add x14, x14, :lo12:.Ltext_5
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    adrp x0, .Ltext_5
    add x0, x0, :lo12:.Ltext_5
    adrp x1, .Ltext_2
    add x1, x1, :lo12:.Ltext_2
    bl lb_core_7trap_at

    .size lb_c_stdin, .-lb_c_stdin

    .p2align 2
    .globl lb_c_stdout
    .type lb_c_stdout, %function
lb_c_stdout:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    adrp x14, .Ltext_4
    add x14, x14, :lo12:.Ltext_4
    sub x15, x29, #32
    str x14, [x15]
    add x14, x15, #8
    movz x9, #23
    str x9, [x14]
    adrp x14, .Ltext_6
    add x14, x14, :lo12:.Ltext_6
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_2
    add x1, x1, :lo12:.Ltext_2
    bl lb_core_7trap_at

    .size lb_c_stdout, .-lb_c_stdout

    .p2align 2
    .globl lb_c_stderr
    .type lb_c_stderr, %function
lb_c_stderr:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    adrp x14, .Ltext_4
    add x14, x14, :lo12:.Ltext_4
    sub x15, x29, #32
    str x14, [x15]
    add x14, x15, #8
    movz x9, #23
    str x9, [x14]
    adrp x14, .Ltext_7
    add x14, x14, :lo12:.Ltext_7
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    adrp x0, .Ltext_7
    add x0, x0, :lo12:.Ltext_7
    adrp x1, .Ltext_2
    add x1, x1, :lo12:.Ltext_2
    bl lb_core_7trap_at

    .size lb_c_stderr, .-lb_c_stderr

    .section .init_array,"aw"
    .p2align 3
    .quad lb_c_0init

    .section .rodata
.Ltext_0:
    .asciz "null_foreign"
.Ltext_1:
    .asciz "src/std/c.lucb:16:5"
.Ltext_2:
    .asciz "unreachable"
.Ltext_3:
    .asciz "src/std/c.lucb:26:9"
.Ltext_4:
    .asciz "supplied by the backend"
.Ltext_5:
    .asciz "src/std/c.lucb:34:5"
.Ltext_6:
    .asciz "src/std/c.lucb:37:5"
.Ltext_7:
    .asciz "src/std/c.lucb:40:5"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_c_interrupted
    .type lb_c_interrupted, %object
    .p2align 2
lb_c_interrupted:
    .zero 4


    .section .note.GNU-stack,"",%progbits
