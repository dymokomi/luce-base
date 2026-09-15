    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_interop_result_0init
_lb_interop_result_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    adrp x14, _lb_interop_8no_error@PAGE
    add x14, x14, _lb_interop_8no_error@PAGEOFF
    movz x9, #3178, lsl #16
    str w9, [x14]
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
    movz x9, #17
    str x9, [x14]
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #16
    mov x9, #0
    str x9, [x14]
    add x14, x19, #24
    mov x9, #0
    str x9, [x14]
    adrp x14, _lb_interop_9drop_text@GOTPAGE
    ldr x14, [x14, _lb_interop_9drop_text@GOTPAGEOFF]
    add x15, x19, #32
    str x14, [x15]
    adrp x14, _lb_interop_10trace_text@GOTPAGE
    ldr x14, [x14, _lb_interop_10trace_text@GOTPAGEOFF]
    add x15, x19, #40
    str x14, [x15]
    add x14, x19, #48
    mov x9, #0
    str x9, [x14]
    adrp x14, _lb_interop_9text_info@PAGE
    add x14, x14, _lb_interop_9text_info@PAGEOFF
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
    .globl _lb_interop_9drop_text
_lb_interop_9drop_text:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str x0, [x16]
    sub x14, x29, #32
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_10trace_text
_lb_interop_10trace_text:
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

    .p2align 2
    .globl _lb_interop_9copy_text
    .no_dead_strip _lb_interop_9copy_text
_lb_interop_9copy_text:
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
    str x1, [x16, #8]
    sub x19, x29, #144
    add x20, x19, #8
    ldr x14, [x20]
    sub x21, x29, #152
    movz x0, #64
    mov x1, x14
    movz x2, #64
    mov x3, x21
    bl _lb_core_6qadd_u
    mov w14, w0
    sub x15, x29, #168
    ldr x21, [x21]
    str x21, [x15]
    add x15, x15, #8
    strb w14, [x15]
    ldrb w14, [x15]
    cbnz w14, L3_1
    b L3_2
L3_1:
    b L3_3
L3_2:
    sub x19, x29, #128
    add x14, x19, #24
    adrp x15, _lb_memory_exhausted@PAGE
    add x15, x15, _lb_memory_exhausted@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_1@PAGE
    add x15, x15, l_text_1@PAGEOFF
    sub x20, x29, #184
    str x15, [x20]
    add x15, x20, #8
    movz x9, #23
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
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
L3_4:
L3_3:
    adrp x22, _lb_interop_9text_info@PAGE
    add x22, x22, _lb_interop_9text_info@PAGEOFF
    sub x23, x29, #200
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    mov x0, x22
    mov x1, x21
    mov x9, x23
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #240
    bl _lb_ownership_reserve
    sub x15, x29, #240
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L3_6
    b L3_5
L3_6:
    add x14, x15, #8
    sub x19, x29, #128
    add x20, x19, #24
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
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
L3_7:
L3_5:
    ldr x21, [x15]
    sub x22, x29, #256
    add x14, x21, #64
    ldr x23, [x20]
    sub x24, x29, #272
    str x14, [x24]
    add x14, x24, #8
    str x23, [x14]
    mov x10, x24
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x19
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x23
    bl _lb_memory_copy_0g1_u8
    sub x23, x29, #296
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    ldr x14, [x22]
    add x22, x22, #8
    ldr x22, [x22]
    sub x24, x29, #312
    str x14, [x24]
    add x14, x24, #8
    str x22, [x14]
    mov x10, x24
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x23, #16
    str x21, [x14]
    sub x21, x29, #128
    mov x10, x23
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #48
    mov x9, #0
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
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
L3_8:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_copy_0g1_u8
    .weak_definition _lb_memory_copy_0g1_u8
    .no_dead_strip _lb_memory_copy_0g1_u8
_lb_memory_copy_0g1_u8:
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
    cbnz w14, L4_11
    b L4_4
L4_11:
    mov w15, w14
    b L4_5
L4_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
L4_5:
    and w14, w15, #255
    cbnz w14, L4_1
    b L4_2
L4_1:
    adrp x14, l_text_4@PAGE
    add x14, x14, l_text_4@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, l_text_5@PAGE
    add x14, x14, l_text_5@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L4_3
L4_2:
L4_3:
    mov x10, #0
    cmp x19, x10
    b.ls L4_7
L4_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _memcpy
    mov x14, x0
    cbnz x14, L4_9
    b L4_10
L4_10:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_7@PAGE
    add x1, x1, l_text_7@PAGEOFF
    bl _lb_core_7trap_at
L4_9:
    b L4_8
L4_7:
L4_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_interop_result_0init

    .section __TEXT,__const
l_text_0:
    .asciz "native owned text"
l_text_1:
    .asciz "owned text is too large"
l_text_2:
    .asciz "unreachable"
l_text_3:
    .asciz "src/std/interop/result.lucb:77:5"
l_text_4:
    .asciz "index out of bounds"
l_text_5:
    .asciz "src/std/memory.lucb:328:9"
l_text_6:
    .asciz "src/std/memory.lucb:330:9"
l_text_7:
    .asciz "null_foreign"

    .section __DATA,__const
    .p2align 3
    .globl _lb_interop_8no_error
    .no_dead_strip _lb_interop_8no_error
    .zerofill __DATA,__bss,_lb_interop_8no_error,4,2
    .globl _lb_interop_9text_info
    .zerofill __DATA,__bss,_lb_interop_9text_info,56,3

.subsections_via_symbols
