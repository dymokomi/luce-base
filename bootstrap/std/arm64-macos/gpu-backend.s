    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_gpu_backend_0init
_lb_gpu_backend_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_14select_backend
    .no_dead_strip _lb_gpu_14select_backend
_lb_gpu_14select_backend:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    str x20, [sp, #72]
    sub x16, x29, #96
    str w0, [x16]
    sub x14, x29, #96
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    cbnz w15, L1_8
    b L1_4
L1_8:
    mov w14, w15
    b L1_5
L1_4:
    movz x10, #1
    cmp w14, w10
    cset w15, eq
    mov w14, w15
L1_5:
    and w15, w14, #255
    cbnz w15, L1_1
    b L1_2
L1_1:
    sub x14, x29, #80
    movz x9, #1
    strb w9, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_6:
    b L1_3
L1_2:
L1_3:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_gpu_unsupported@PAGE
    add x15, x15, _lb_gpu_unsupported@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_0@PAGE
    add x15, x15, l_text_0@PAGEOFF
    sub x20, x29, #112
    str x15, [x20]
    add x15, x20, #8
    movz x9, #44
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
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_7:
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_19backend_device_open
    .no_dead_strip _lb_gpu_19backend_device_open
_lb_gpu_19backend_device_open:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    str x20, [sp, #120]
    sub x16, x29, #96
    str w0, [x16]
    sub x14, x29, #96
    ldrb w14, [x14]
    movz x10, #1
    cmp w14, w10
    b.ne L2_2
L2_1:
    sub x8, x29, #136
    bl _lb_gpu_17metal_device_open
    sub x15, x29, #136
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L2_5
    b L2_4
L2_5:
    add x14, x15, #8
    sub x19, x29, #80
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_6:
L2_4:
    ldr x14, [x15]
    sub x19, x29, #80
    str x14, [x19]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_7:
    b L2_3
L2_2:
L2_3:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_gpu_unsupported@PAGE
    add x15, x15, _lb_gpu_unsupported@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_3@PAGE
    add x15, x15, l_text_3@PAGEOFF
    sub x20, x29, #152
    str x15, [x20]
    add x15, x20, #8
    movz x9, #34
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
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
    .globl _lb_gpu_22backend_device_destroy
    .no_dead_strip _lb_gpu_22backend_device_destroy
_lb_gpu_22backend_device_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    sub x16, x29, #32
    str w0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x14, x29, #32
    ldrb w14, [x14]
    movz x10, #1
    cmp w14, w10
    b.ne L3_2
L3_1:
    sub x14, x29, #48
    ldr x14, [x14]
    mov x0, x14
    bl _lb_gpu_20metal_device_destroy
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_4:
    b L3_3
L3_2:
L3_3:
    adrp x14, l_text_5@PAGE
    add x14, x14, l_text_5@PAGEOFF
    sub x15, x29, #64
    str x14, [x15]
    add x14, x15, #8
    movz x9, #45
    str x9, [x14]
    adrp x14, l_text_6@PAGE
    add x14, x14, l_text_6@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_gpu_backend_0init

    .section __TEXT,__const
l_text_0:
    .asciz "the requested GPU backend is not implemented"
l_text_1:
    .asciz "unreachable"
l_text_2:
    .asciz "src/std/gpu/backend.lucb:15:5"
l_text_3:
    .asciz "the GPU backend is not implemented"
l_text_4:
    .asciz "src/std/gpu/backend.lucb:23:5"
l_text_5:
    .asciz "invalid GPU backend during device destruction"
l_text_6:
    .asciz "src/std/gpu/backend.lucb:33:5"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
