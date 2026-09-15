    .text

    .p2align 2
    .globl lb_gpu_backend_0init
    .type lb_gpu_backend_0init, %function
lb_gpu_backend_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_gpu_backend_0init, .-lb_gpu_backend_0init

    .p2align 2
    .globl lb_gpu_14select_backend
    .type lb_gpu_14select_backend, %function
lb_gpu_14select_backend:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    str x20, [sp, #72]
    sub x16, x29, #96
    str w0, [x16]
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, lb_gpu_unsupported
    add x15, x15, :lo12:lb_gpu_unsupported
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_0
    add x15, x15, :lo12:.Ltext_0
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
.L1_1:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_gpu_14select_backend, .-lb_gpu_14select_backend

    .p2align 2
    .globl lb_gpu_19backend_device_open
    .type lb_gpu_19backend_device_open, %function
lb_gpu_19backend_device_open:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    str x20, [sp, #72]
    sub x16, x29, #96
    str w0, [x16]
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, lb_gpu_unsupported
    add x15, x15, :lo12:lb_gpu_unsupported
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_3
    add x15, x15, :lo12:.Ltext_3
    sub x20, x29, #112
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
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_1:
    adrp x0, .Ltext_4
    add x0, x0, :lo12:.Ltext_4
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_gpu_19backend_device_open, .-lb_gpu_19backend_device_open

    .p2align 2
    .globl lb_gpu_22backend_device_destroy
    .type lb_gpu_22backend_device_destroy, %function
lb_gpu_22backend_device_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    sub x16, x29, #32
    str w0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    adrp x14, .Ltext_5
    add x14, x14, :lo12:.Ltext_5
    sub x15, x29, #64
    str x14, [x15]
    add x14, x15, #8
    movz x9, #45
    str x9, [x14]
    adrp x14, .Ltext_6
    add x14, x14, :lo12:.Ltext_6
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_gpu_22backend_device_destroy, .-lb_gpu_22backend_device_destroy

    .section .init_array,"aw"
    .p2align 3
    .quad lb_gpu_backend_0init

    .section .rodata
.Ltext_0:
    .asciz "the requested GPU backend is not implemented"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/gpu/backend.lucb:15:5"
.Ltext_3:
    .asciz "the GPU backend is not implemented"
.Ltext_4:
    .asciz "src/std/gpu/backend.lucb:23:5"
.Ltext_5:
    .asciz "invalid GPU backend during device destruction"
.Ltext_6:
    .asciz "src/std/gpu/backend.lucb:33:5"

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
