    .text

    .p2align 2
    .globl lb_gpu_presentation_0init
    .type lb_gpu_presentation_0init, %function
lb_gpu_presentation_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_gpu_presentation_0init, .-lb_gpu_presentation_0init

    .p2align 2
    .globl lb_gpu_20backend_surface_open
    .type lb_gpu_20backend_surface_open, %function
lb_gpu_20backend_surface_open:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    str x20, [sp, #88]
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #112
    str x1, [x16]
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, lb_gpu_unsupported
    add x15, x15, :lo12:lb_gpu_unsupported
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_0
    add x15, x15, :lo12:.Ltext_0
    sub x20, x29, #128
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
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_1:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_gpu_20backend_surface_open, .-lb_gpu_20backend_surface_open

    .p2align 2
    .globl lb_gpu_21backend_clear_present
    .type lb_gpu_21backend_clear_present, %function
lb_gpu_21backend_clear_present:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #144]
    str x20, [sp, #136]
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #112
    str x1, [x16]
    sub x16, x29, #128
    str x2, [x16]
    sub x16, x29, #152
    str d0, [x16, #0]
    sub x16, x29, #152
    str d1, [x16, #8]
    sub x16, x29, #152
    str d2, [x16, #16]
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, lb_gpu_unsupported
    add x15, x15, :lo12:lb_gpu_unsupported
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_0
    add x15, x15, :lo12:.Ltext_0
    sub x20, x29, #168
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_1:
    adrp x0, .Ltext_3
    add x0, x0, :lo12:.Ltext_3
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_gpu_21backend_clear_present, .-lb_gpu_21backend_clear_present

    .p2align 2
    .globl lb_gpu_20backend_surface_wait
    .type lb_gpu_20backend_surface_wait, %function
lb_gpu_20backend_surface_wait:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    sub x16, x29, #80
    str x0, [x16]
    sub x16, x29, #96
    str x1, [x16]
    sub x19, x29, #64
    adrp x14, lb_gpu_unsupported
    add x14, x14, :lo12:lb_gpu_unsupported
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_0
    add x14, x14, :lo12:.Ltext_0
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #34
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_1:
    sub x14, x29, #64
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_gpu_20backend_surface_wait, .-lb_gpu_20backend_surface_wait

    .p2align 2
    .globl lb_gpu_14backend_render
    .type lb_gpu_14backend_render, %function
lb_gpu_14backend_render:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #208]
    str x20, [sp, #200]
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #112
    str x1, [x16]
    sub x16, x29, #128
    str x2, [x16]
    sub x16, x29, #200
    str x3, [x16]
    sub x16, x29, #224
    str d0, [x16, #0]
    sub x16, x29, #224
    str d1, [x16, #8]
    sub x16, x29, #224
    str d2, [x16, #16]
    sub x0, x29, #200
    ldr x1, [x0]
    movz x2, #72
    bl _memcpy
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, lb_gpu_unsupported
    add x15, x15, :lo12:lb_gpu_unsupported
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_0
    add x15, x15, :lo12:.Ltext_0
    sub x20, x29, #240
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_1:
    adrp x0, .Ltext_4
    add x0, x0, :lo12:.Ltext_4
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_gpu_14backend_render, .-lb_gpu_14backend_render

    .p2align 2
    .globl lb_gpu_23backend_surface_destroy
    .type lb_gpu_23backend_surface_destroy, %function
lb_gpu_23backend_surface_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x16, x29, #64
    str x2, [x16]
    adrp x14, .Ltext_5
    add x14, x14, :lo12:.Ltext_5
    sub x15, x29, #80
    str x14, [x15]
    add x14, x15, #8
    movz x9, #46
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

    .size lb_gpu_23backend_surface_destroy, .-lb_gpu_23backend_surface_destroy

    .section .init_array,"aw"
    .p2align 3
    .quad lb_gpu_presentation_0init

    .section .rodata
.Ltext_0:
    .asciz "the GPU backend is not implemented"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/gpu/presentation.lucb:9:5"
.Ltext_3:
    .asciz "src/std/gpu/presentation.lucb:17:5"
.Ltext_4:
    .asciz "src/std/gpu/presentation.lucb:35:5"
.Ltext_5:
    .asciz "invalid GPU backend during surface destruction"
.Ltext_6:
    .asciz "src/std/gpu/presentation.lucb:45:5"

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
