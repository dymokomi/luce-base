    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_gpu_presentation_0init
_lb_gpu_presentation_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_20backend_surface_open
    .no_dead_strip _lb_gpu_20backend_surface_open
_lb_gpu_20backend_surface_open:
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
    sub x14, x29, #96
    ldr x14, [x14]
    ldrb w15, [x14]
    movz x10, #1
    cmp w15, w10
    b.ne L1_2
L1_1:
    add x15, x14, #8
    ldr x15, [x15]
    sub x19, x29, #112
    mov x0, x15
    mov x9, x19
    ldr x1, [x9]
    sub x8, x29, #152
    bl _lb_gpu_18metal_surface_open
    sub x19, x29, #152
    add x15, x19, #32
    ldrb w15, [x15]
    cbnz w15, L1_5
    b L1_4
L1_5:
    add x14, x19, #8
    sub x20, x29, #80
    add x15, x20, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x20
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
L1_6:
L1_4:
    ldr x14, [x19]
    sub x15, x29, #80
    str x14, [x15]
    add x14, x15, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x15
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
L1_7:
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
L1_8:
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_21backend_clear_present
    .no_dead_strip _lb_gpu_21backend_clear_present
_lb_gpu_21backend_clear_present:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #192]
    str x20, [sp, #184]
    str x21, [sp, #176]
    sub x16, x29, #104
    str x0, [x16]
    sub x16, x29, #120
    str x1, [x16]
    sub x16, x29, #136
    str x2, [x16]
    sub x16, x29, #160
    str d0, [x16, #0]
    sub x16, x29, #160
    str d1, [x16, #8]
    sub x16, x29, #160
    str d2, [x16, #16]
    sub x14, x29, #104
    ldr x14, [x14]
    ldrb w15, [x14]
    movz x10, #1
    cmp w15, w10
    b.ne L2_2
L2_1:
    add x15, x14, #8
    ldr x15, [x15]
    sub x19, x29, #120
    sub x20, x29, #136
    ldr x20, [x20]
    sub x21, x29, #160
    mov x9, x21
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x15
    mov x9, x19
    ldr x1, [x9]
    mov x2, x20
    sub x8, x29, #200
    bl _lb_gpu_19metal_clear_present
    sub x19, x29, #200
    add x15, x19, #32
    ldrb w15, [x15]
    cbnz w15, L2_5
    b L2_4
L2_5:
    add x14, x19, #8
    sub x20, x29, #88
    add x15, x20, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_6:
L2_4:
    ldrb w14, [x19]
    sub x15, x29, #88
    strb w14, [x15]
    add x14, x15, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_7:
    b L2_3
L2_2:
L2_3:
    sub x19, x29, #88
    add x14, x19, #8
    adrp x15, _lb_gpu_unsupported@PAGE
    add x15, x15, _lb_gpu_unsupported@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_0@PAGE
    add x15, x15, l_text_0@PAGEOFF
    sub x20, x29, #216
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_8:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_20backend_surface_wait
    .no_dead_strip _lb_gpu_20backend_surface_wait
_lb_gpu_20backend_surface_wait:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #112]
    sub x16, x29, #80
    str x0, [x16]
    sub x16, x29, #96
    str x1, [x16]
    sub x14, x29, #80
    ldr x14, [x14]
    ldrb w14, [x14]
    movz x10, #1
    cmp w14, w10
    b.ne L3_2
L3_1:
    sub x14, x29, #96
    ldr x14, [x14]
    mov x0, x14
    sub x8, x29, #128
    bl _lb_gpu_18metal_surface_wait
    sub x15, x29, #128
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L3_5
    b L3_4
L3_5:
    sub x19, x29, #64
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_6:
L3_4:
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
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_7:
    b L3_3
L3_2:
L3_3:
    sub x19, x29, #64
    adrp x14, _lb_gpu_unsupported@PAGE
    add x14, x14, _lb_gpu_unsupported@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_0@PAGE
    add x14, x14, l_text_0@PAGEOFF
    sub x15, x29, #144
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
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_8:
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
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_14backend_render
    .no_dead_strip _lb_gpu_14backend_render
_lb_gpu_14backend_render:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #304
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #272]
    str x20, [sp, #264]
    str x21, [sp, #256]
    str x22, [sp, #248]
    sub x16, x29, #112
    str x0, [x16]
    sub x16, x29, #128
    str x1, [x16]
    sub x16, x29, #144
    str x2, [x16]
    sub x16, x29, #216
    str x3, [x16]
    sub x16, x29, #240
    str d0, [x16, #0]
    sub x16, x29, #240
    str d1, [x16, #8]
    sub x16, x29, #240
    str d2, [x16, #16]
    sub x0, x29, #216
    ldr x1, [x0]
    movz x2, #72
    bl _memcpy
    sub x14, x29, #112
    ldr x14, [x14]
    ldrb w15, [x14]
    movz x10, #1
    cmp w15, w10
    b.ne L4_2
L4_1:
    add x15, x14, #8
    ldr x15, [x15]
    sub x19, x29, #128
    sub x20, x29, #144
    ldr x20, [x20]
    sub x21, x29, #216
    sub x22, x29, #240
    mov x9, x22
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x15
    mov x9, x19
    ldr x1, [x9]
    mov x2, x20
    mov x9, x21
    mov x3, x9
    sub x8, x29, #280
    bl _lb_gpu_12metal_render
    sub x19, x29, #280
    add x15, x19, #32
    ldrb w15, [x15]
    cbnz w15, L4_5
    b L4_4
L4_5:
    add x14, x19, #8
    sub x20, x29, #96
    add x15, x20, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    ldr x22, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_6:
L4_4:
    ldrb w14, [x19]
    sub x15, x29, #96
    strb w14, [x15]
    add x14, x15, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    ldr x22, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_7:
    b L4_3
L4_2:
L4_3:
    sub x19, x29, #96
    add x14, x19, #8
    adrp x15, _lb_gpu_unsupported@PAGE
    add x15, x15, _lb_gpu_unsupported@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_0@PAGE
    add x15, x15, l_text_0@PAGEOFF
    sub x20, x29, #296
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
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    ldr x21, [sp, #256]
    ldr x22, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_8:
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_23backend_surface_destroy
    .no_dead_strip _lb_gpu_23backend_surface_destroy
_lb_gpu_23backend_surface_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x16, x29, #64
    str x2, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    ldrb w14, [x14]
    movz x10, #1
    cmp w14, w10
    b.ne L5_2
L5_1:
    sub x14, x29, #64
    ldr x14, [x14]
    sub x15, x29, #48
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    bl _lb_gpu_21metal_surface_destroy
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_4:
    b L5_3
L5_2:
L5_3:
    adrp x14, l_text_5@PAGE
    add x14, x14, l_text_5@PAGEOFF
    sub x15, x29, #80
    str x14, [x15]
    add x14, x15, #8
    movz x9, #46
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
    .quad _lb_gpu_presentation_0init

    .section __TEXT,__const
l_text_0:
    .asciz "the GPU backend is not implemented"
l_text_1:
    .asciz "unreachable"
l_text_2:
    .asciz "src/std/gpu/presentation.lucb:9:5"
l_text_3:
    .asciz "src/std/gpu/presentation.lucb:17:5"
l_text_4:
    .asciz "src/std/gpu/presentation.lucb:35:5"
l_text_5:
    .asciz "invalid GPU backend during surface destruction"
l_text_6:
    .asciz "src/std/gpu/presentation.lucb:45:5"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
