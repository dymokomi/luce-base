    .text

    .p2align 2
    .globl lb_interop_result_0init
    .type lb_interop_result_0init, %function
lb_interop_result_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    adrp x14, lb_interop_8no_error
    add x14, x14, :lo12:lb_interop_8no_error
    movz x9, #3178, lsl #16
    str w9, [x14]
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
    movz x9, #17
    str x9, [x14]
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #16
    mov x9, #0
    str x9, [x14]
    add x14, x19, #24
    mov x9, #0
    str x9, [x14]
    adrp x14, :got:lb_interop_9drop_text
    ldr x14, [x14, :got_lo12:lb_interop_9drop_text]
    add x15, x19, #32
    str x14, [x15]
    adrp x14, :got:lb_interop_10trace_text
    ldr x14, [x14, :got_lo12:lb_interop_10trace_text]
    add x15, x19, #40
    str x14, [x15]
    add x14, x19, #48
    mov x9, #0
    str x9, [x14]
    adrp x14, lb_interop_9text_info
    add x14, x14, :lo12:lb_interop_9text_info
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

    .size lb_interop_result_0init, .-lb_interop_result_0init

    .p2align 2
    .globl lb_interop_9drop_text
    .type lb_interop_9drop_text, %function
lb_interop_9drop_text:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str x0, [x16]
    sub x14, x29, #32
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_interop_9drop_text, .-lb_interop_9drop_text

    .p2align 2
    .globl lb_interop_10trace_text
    .type lb_interop_10trace_text, %function
lb_interop_10trace_text:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x16, x29, #64
    str x2, [x16]
    sub x14, x29, #32
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_interop_10trace_text, .-lb_interop_10trace_text

    .p2align 2
    .globl lb_interop_9copy_text
    .type lb_interop_9copy_text, %function
lb_interop_9copy_text:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #304
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #272]
    str x20, [sp, #264]
    str x21, [sp, #256]
    str x22, [sp, #248]
    str x23, [sp, #240]
    sub x16, x29, #136
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #136
    add x20, x19, #8
    ldr x14, [x20]
    sub x21, x29, #144
    movz x0, #64
    mov x1, x14
    movz x2, #64
    mov x3, x21
    bl lb_core_6qadd_u
    mov w14, w0
    sub x15, x29, #160
    ldr x21, [x21]
    str x21, [x15]
    add x15, x15, #8
    strb w14, [x15]
    ldrb w14, [x15]
    cbnz w14, .L3_1
    b .L3_2
.L3_1:
    b .L3_3
.L3_2:
    sub x19, x29, #120
    add x14, x19, #24
    adrp x15, lb_memory_exhausted
    add x15, x15, :lo12:lb_memory_exhausted
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_1
    add x15, x15, :lo12:.Ltext_1
    sub x12, x29, #176
    str x15, [x12]
    add x15, x12, #8
    movz x9, #23
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    ldr x22, [sp, #248]
    ldr x23, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_4:
.L3_3:
    adrp x22, lb_interop_9text_info
    add x22, x22, :lo12:lb_interop_9text_info
    sub x23, x29, #192
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    mov x0, x22
    mov x1, x21
    mov x9, x23
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #232
    bl lb_ownership_reserve
    sub x15, x29, #232
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L3_6
    b .L3_5
.L3_6:
    add x14, x15, #8
    sub x19, x29, #120
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
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    ldr x22, [sp, #248]
    ldr x23, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_7:
.L3_5:
    ldr x21, [x15]
    sub x22, x29, #248
    add x14, x21, #64
    ldr x23, [x20]
    sub x12, x29, #264
    str x14, [x12]
    add x14, x12, #8
    str x23, [x14]
    mov x10, x12
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x19
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x23
    bl lb_memory_copy_0g1_u8
    sub x23, x29, #288
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    ldr x14, [x22]
    add x12, x22, #8
    ldr x12, [x12]
    sub x13, x29, #304
    str x14, [x13]
    add x14, x13, #8
    str x12, [x14]
    mov x10, x13
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x23, #16
    str x21, [x14]
    sub x21, x29, #120
    mov x10, x23
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x21, #48
    mov x9, #0
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    ldr x22, [sp, #248]
    ldr x23, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_8:
    adrp x0, .Ltext_3
    add x0, x0, :lo12:.Ltext_3
    adrp x1, .Ltext_2
    add x1, x1, :lo12:.Ltext_2
    bl lb_core_7trap_at

    .size lb_interop_9copy_text, .-lb_interop_9copy_text

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
    cbnz w14, .L4_11
    b .L4_4
.L4_11:
    mov w15, w14
    b .L4_5
.L4_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
.L4_5:
    and w14, w15, #255
    cbnz w14, .L4_1
    b .L4_2
.L4_1:
    adrp x14, .Ltext_4
    add x14, x14, :lo12:.Ltext_4
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, .Ltext_5
    add x14, x14, :lo12:.Ltext_5
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    b .L4_3
.L4_2:
.L4_3:
    mov x10, #0
    cmp x19, x10
    b.ls .L4_7
.L4_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl memcpy
    mov x14, x0
    cbnz x14, .L4_9
    b .L4_10
.L4_10:
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_7
    add x1, x1, :lo12:.Ltext_7
    bl lb_core_7trap_at
.L4_9:
    b .L4_8
.L4_7:
.L4_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_memory_copy_0g1_u8, .-lb_memory_copy_0g1_u8

    .section .init_array,"aw"
    .p2align 3
    .quad lb_interop_result_0init

    .section .rodata
.Ltext_0:
    .asciz "native owned text"
.Ltext_1:
    .asciz "owned text is too large"
.Ltext_2:
    .asciz "unreachable"
.Ltext_3:
    .asciz "src/std/interop/result.lucb:77:5"
.Ltext_4:
    .asciz "index out of bounds"
.Ltext_5:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_6:
    .asciz "src/std/memory.lucb:330:9"
.Ltext_7:
    .asciz "null_foreign"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_interop_8no_error
    .type lb_interop_8no_error, %object
    .p2align 2
lb_interop_8no_error:
    .zero 4

    .bss
    .globl lb_interop_9text_info
    .type lb_interop_9text_info, %object
    .p2align 3
lb_interop_9text_info:
    .zero 56


    .section .note.GNU-stack,"",%progbits
