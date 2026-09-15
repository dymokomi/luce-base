    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_gpu_surface_0init
_lb_gpu_surface_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_Surface_open
    .no_dead_strip _lb_gpu_Surface_open
_lb_gpu_Surface_open:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #416
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #384]
    str x20, [sp, #376]
    str x21, [sp, #368]
    str x22, [sp, #360]
    str x23, [sp, #352]
    str x24, [sp, #344]
    str x25, [sp, #336]
    sub x16, x29, #136
    str x0, [x16]
    sub x16, x29, #152
    str x1, [x16]
    sub x14, x29, #136
    mov x0, x14
    sub x8, x29, #192
    bl _lb_gpu_Device_checked
    sub x15, x29, #192
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L1_2
    b L1_1
L1_2:
    add x14, x15, #8
    sub x19, x29, #120
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
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    ldr x21, [sp, #368]
    ldr x22, [sp, #360]
    ldr x23, [sp, #352]
    ldr x24, [sp, #344]
    ldr x25, [sp, #336]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_3:
L1_1:
    ldr x19, [x15]
    sub x20, x29, #200
    sub x14, x29, #152
    mov x0, x14
    sub x8, x29, #240
    bl _lb_window_Window_20acquire_presentation
    sub x21, x29, #240
    add x14, x21, #32
    ldrb w14, [x14]
    cbnz w14, L1_5
    b L1_4
L1_5:
    add x14, x21, #8
    sub x19, x29, #120
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
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
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    ldr x21, [sp, #368]
    ldr x22, [sp, #360]
    ldr x23, [sp, #352]
    ldr x24, [sp, #344]
    ldr x25, [sp, #336]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_6:
L1_4:
    mov x10, x21
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x0, x19
    mov x9, x20
    ldr x1, [x9]
    sub x8, x29, #280
    bl _lb_gpu_20backend_surface_open
    sub x15, x29, #280
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L1_8
    b L1_7
L1_8:
    add x14, x15, #8
    sub x19, x29, #120
    add x21, x19, #8
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_window_Presentation_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    ldr x21, [sp, #368]
    ldr x22, [sp, #360]
    ldr x23, [sp, #352]
    ldr x24, [sp, #344]
    ldr x25, [sp, #336]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_9:
L1_7:
    ldr x21, [x15]
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x22, x29, #296
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x23, x29, #336
    ldr x14, [x22]
    add x22, x22, #8
    ldr x22, [x22]
    cbnz x22, L1_10
    b L1_11
L1_11:
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L1_10:
    ldr x15, [x22]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #40
    movz x2, #8
    sub x8, x29, #360
    ldr x17, [sp], #16
    blr x17
    sub x24, x29, #360
    add x15, x24, #16
    ldrb w15, [x15]
    cbnz w15, L1_12
    b L1_13
L1_13:
    add x14, x23, #8
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_2@PAGE
    add x15, x15, l_text_2@PAGEOFF
    add x22, x14, #8
    str x15, [x22]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x23, #32
    movz x9, #1
    strb w9, [x14]
    b L1_14
L1_12:
    ldr x22, [x24]
    sub x25, x29, #400
    mov x11, x25
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    str x19, [x25]
    add x14, x25, #8
    mov x10, x20
    mov x11, x14
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x25, #16
    str x21, [x14]
    add x14, x25, #24
    movz x9, #1
    str x9, [x14]
    mov x10, x25
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    str x22, [x23]
    add x14, x23, #32
    mov x9, #0
    strb w9, [x14]
L1_14:
    add x14, x23, #32
    ldrb w14, [x14]
    cbnz w14, L1_16
    b L1_15
L1_16:
    add x14, x23, #8
    sub x22, x29, #120
    add x15, x22, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    mov x9, x20
    ldr x1, [x9]
    mov x2, x21
    bl _lb_gpu_23backend_surface_destroy
    mov x0, x20
    bl _lb_window_Presentation_destroy
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    ldr x21, [sp, #368]
    ldr x22, [sp, #360]
    ldr x23, [sp, #352]
    ldr x24, [sp, #344]
    ldr x25, [sp, #336]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_17:
L1_15:
    ldr x20, [x23]
    add x14, x19, #16
    ldr x15, [x14]
    mov x9, x15
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_31@PAGE
    add x1, x1, l_text_31@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x14]
    sub x21, x29, #408
    mov x11, x21
    str xzr, [x11, #0]
    str x20, [x21]
    sub x20, x29, #120
    mov x10, x21
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x20, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #384]
    ldr x20, [sp, #376]
    ldr x21, [sp, #368]
    ldr x22, [sp, #360]
    ldr x23, [sp, #352]
    ldr x24, [sp, #344]
    ldr x25, [sp, #336]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_18:
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_Surface_size
    .no_dead_strip _lb_gpu_Surface_size
_lb_gpu_Surface_size:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #208]
    str x20, [sp, #200]
    sub x16, x29, #120
    str x0, [x16]
    sub x9, x29, #120
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #160
    bl _lb_gpu_Surface_checked
    sub x15, x29, #160
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L2_2
    b L2_1
L2_2:
    add x14, x15, #8
    sub x19, x29, #112
    add x20, x19, #40
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_3:
L2_1:
    ldr x14, [x15]
    add x14, x14, #8
    mov x0, x14
    sub x8, x29, #232
    bl _lb_window_Presentation_size
    sub x19, x29, #232
    add x14, x19, #64
    ldrb w14, [x14]
    cbnz w14, L2_5
    b L2_4
L2_5:
    add x14, x19, #40
    sub x20, x29, #112
    add x15, x20, #40
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #64
    movz x9, #1
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_6:
L2_4:
    sub x20, x29, #112
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    add x14, x20, #64
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_7:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_Surface_13clear_present
    .no_dead_strip _lb_gpu_Surface_13clear_present
_lb_gpu_Surface_13clear_present:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #320
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #288]
    str x20, [sp, #280]
    str x21, [sp, #272]
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #120
    str d0, [x16, #0]
    sub x16, x29, #120
    str d1, [x16, #8]
    sub x16, x29, #120
    str d2, [x16, #16]
    sub x9, x29, #96
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #160
    bl _lb_gpu_Surface_checked
    sub x15, x29, #160
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L3_2
    b L3_1
L3_2:
    add x14, x15, #8
    sub x19, x29, #88
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_3:
L3_1:
    ldr x19, [x15]
    sub x20, x29, #120
    mov x9, x20
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    sub x8, x29, #192
    bl _lb_gpu_11check_color
    sub x21, x29, #192
    add x14, x21, #24
    ldrb w14, [x14]
    cbnz w14, L3_5
    b L3_4
L3_5:
    sub x19, x29, #88
    add x14, x19, #8
    mov x10, x21
    mov x11, x14
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_6:
L3_4:
    add x21, x19, #8
    mov x0, x21
    sub x8, x29, #264
    bl _lb_window_Presentation_size
    sub x15, x29, #264
    add x14, x15, #64
    ldrb w14, [x14]
    cbnz w14, L3_8
    b L3_7
L3_8:
    add x14, x15, #40
    sub x19, x29, #88
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_9:
L3_7:
    add x14, x19, #33
    ldrb w14, [x14]
    cbnz w14, L3_10
    b L3_11
L3_10:
    sub x19, x29, #88
    add x14, x19, #8
    adrp x15, _lb_gpu_12frame_in_use@PAGE
    add x15, x15, _lb_gpu_12frame_in_use@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_7@PAGE
    add x15, x15, l_text_7@PAGEOFF
    sub x20, x29, #280
    str x15, [x20]
    add x15, x20, #8
    movz x9, #41
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_13:
    b L3_12
L3_11:
L3_12:
    ldr x14, [x19]
    add x15, x19, #16
    ldr x15, [x15]
    mov x9, x20
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x14
    mov x9, x21
    ldr x1, [x9]
    mov x2, x15
    sub x8, x29, #320
    bl _lb_gpu_21backend_clear_present
    sub x15, x29, #320
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L3_15
    b L3_14
L3_15:
    add x14, x15, #8
    sub x19, x29, #88
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_16:
L3_14:
    ldrb w14, [x15]
    sub x19, x29, #88
    strb w14, [x19]
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_17:
    adrp x0, l_text_8@PAGE
    add x0, x0, l_text_8@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_Surface_render
    .no_dead_strip _lb_gpu_Surface_render
_lb_gpu_Surface_render:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #400
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #368]
    str x20, [sp, #360]
    str x21, [sp, #352]
    str x22, [sp, #344]
    sub x16, x29, #104
    str x0, [x16]
    sub x16, x29, #176
    str x1, [x16]
    sub x16, x29, #200
    str d0, [x16, #0]
    sub x16, x29, #200
    str d1, [x16, #8]
    sub x16, x29, #200
    str d2, [x16, #16]
    sub x0, x29, #176
    ldr x1, [x0]
    movz x2, #72
    bl _memcpy
    sub x9, x29, #104
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #240
    bl _lb_gpu_Surface_checked
    sub x15, x29, #240
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L4_2
    b L4_1
L4_2:
    add x14, x15, #8
    sub x19, x29, #96
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
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_3:
L4_1:
    ldr x19, [x15]
    sub x20, x29, #200
    mov x9, x20
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    sub x8, x29, #272
    bl _lb_gpu_11check_color
    sub x21, x29, #272
    add x14, x21, #24
    ldrb w14, [x14]
    cbnz w14, L4_5
    b L4_4
L4_5:
    sub x19, x29, #96
    add x14, x19, #8
    mov x10, x21
    mov x11, x14
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
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_6:
L4_4:
    add x21, x19, #8
    mov x0, x21
    sub x8, x29, #344
    bl _lb_window_Presentation_size
    sub x15, x29, #344
    add x14, x15, #64
    ldrb w14, [x14]
    cbnz w14, L4_8
    b L4_7
L4_8:
    add x14, x15, #40
    sub x19, x29, #96
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
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_9:
L4_7:
    add x14, x19, #33
    ldrb w14, [x14]
    cbnz w14, L4_10
    b L4_11
L4_10:
    sub x19, x29, #96
    add x14, x19, #8
    adrp x15, _lb_gpu_12frame_in_use@PAGE
    add x15, x15, _lb_gpu_12frame_in_use@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_7@PAGE
    add x15, x15, l_text_7@PAGEOFF
    sub x20, x29, #360
    str x15, [x20]
    add x15, x20, #8
    movz x9, #41
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
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_13:
    b L4_12
L4_11:
L4_12:
    ldr x14, [x19]
    add x15, x19, #16
    ldr x15, [x15]
    sub x22, x29, #176
    mov x9, x20
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x14
    mov x9, x21
    ldr x1, [x9]
    mov x2, x15
    mov x9, x22
    mov x3, x9
    sub x8, x29, #400
    bl _lb_gpu_14backend_render
    sub x15, x29, #400
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L4_15
    b L4_14
L4_15:
    add x14, x15, #8
    sub x19, x29, #96
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
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_16:
L4_14:
    ldrb w14, [x15]
    sub x19, x29, #96
    strb w14, [x19]
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
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_17:
    adrp x0, l_text_9@PAGE
    add x0, x0, l_text_9@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_Surface_frame
    .no_dead_strip _lb_gpu_Surface_frame
_lb_gpu_Surface_frame:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #528
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #496]
    str x20, [sp, #488]
    str x21, [sp, #480]
    str x22, [sp, #472]
    str x23, [sp, #464]
    str x24, [sp, #456]
    str x25, [sp, #448]
    str x26, [sp, #440]
    sub x16, x29, #136
    str x0, [x16]
    sub x9, x29, #136
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #176
    bl _lb_gpu_Surface_checked
    sub x15, x29, #176
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L5_2
    b L5_1
L5_2:
    add x14, x15, #8
    sub x19, x29, #128
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
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_3:
L5_1:
    ldr x19, [x15]
    add x20, x19, #33
    ldrb w14, [x20]
    cbnz w14, L5_4
    b L5_5
L5_4:
    sub x19, x29, #128
    add x14, x19, #8
    adrp x15, _lb_gpu_12frame_in_use@PAGE
    add x15, x15, _lb_gpu_12frame_in_use@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_10@PAGE
    add x15, x15, l_text_10@PAGEOFF
    sub x20, x29, #192
    str x15, [x20]
    add x15, x20, #8
    movz x9, #39
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
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_7:
    b L5_6
L5_5:
L5_6:
    sub x21, x29, #232
    add x14, x19, #8
    mov x0, x14
    sub x8, x29, #304
    bl _lb_window_Presentation_size
    sub x15, x29, #304
    add x14, x15, #64
    ldrb w14, [x14]
    cbnz w14, L5_9
    b L5_8
L5_9:
    add x14, x15, #40
    sub x19, x29, #128
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
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_10:
L5_8:
    mov x10, x15
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x23, x29, #320
    mov x10, x14
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x24, x29, #360
    ldr x22, [x23]
    add x14, x23, #8
    ldr x23, [x14]
    cbnz x23, L5_11
    b L5_12
L5_12:
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L5_11:
    ldr x14, [x23]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x22
    movz x1, #40
    movz x2, #8
    sub x8, x29, #384
    ldr x17, [sp], #16
    blr x17
    sub x25, x29, #384
    add x14, x25, #16
    ldrb w14, [x14]
    cbnz w14, L5_13
    b L5_14
L5_14:
    add x14, x24, #8
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_2@PAGE
    add x15, x15, l_text_2@PAGEOFF
    add x21, x14, #8
    str x15, [x21]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x24, #32
    movz x9, #1
    strb w9, [x14]
    b L5_15
L5_13:
    ldr x26, [x25]
    mov x11, x26
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    mov x0, x26
    mov x9, x21
    mov x1, x9
    sub x8, x29, #416
    bl _lb_gpu_Frame_init
    sub x15, x29, #416
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L5_17
    b L5_16
L5_17:
    add x14, x24, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x24, #32
    movz x9, #1
    strb w9, [x14]
    cbnz x23, L5_19
    b L5_18
L5_19:
    add x14, x23, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x22
    mov x9, x25
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L5_18:
    b L5_15
L5_16:
    str x26, [x24]
    add x14, x24, #32
    mov x9, #0
    strb w9, [x14]
L5_15:
    add x14, x24, #32
    ldrb w14, [x14]
    cbnz w14, L5_21
    b L5_20
L5_21:
    add x14, x24, #8
    sub x19, x29, #128
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
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
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_22:
L5_20:
    ldr x21, [x24]
    sub x25, x29, #424
    adrp x22, _lb_gpu_10frame_type@PAGE
    add x22, x22, _lb_gpu_10frame_type@PAGEOFF
    sub x23, x29, #440
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    mov x0, x21
    mov x9, x22
    mov x1, x9
    mov x9, x23
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #480
    bl _lb_interop_Reference_0g1_gpu_Frame_adopt
    sub x15, x29, #480
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L5_24
    b L5_23
L5_24:
    add x14, x15, #8
    sub x19, x29, #128
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
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_25:
L5_23:
    mov x10, x15
    mov x11, x25
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x0, x21
    sub x8, x29, #520
    bl _lb_gpu_Frame_11state_value
    sub x22, x29, #520
    add x14, x22, #32
    ldrb w14, [x14]
    cbnz w14, L5_27
    b L5_26
L5_27:
    add x14, x22, #8
    sub x19, x29, #128
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    ldr x14, [x25]
    mov x0, x14
    bl _lb_ownership_release
L5_30:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_28:
L5_26:
    mov x0, x22
    bl _lb_interop_Reference_0g1_gpu_FrameState_value
    mov x14, x0
    add x15, x14, #112
    str x19, [x15]
    add x15, x14, #120
    adrp x21, _lb_gpu_19check_surface_frame@GOTPAGE
    ldr x21, [x21, _lb_gpu_19check_surface_frame@GOTPAGEOFF]
    str x21, [x15]
    add x15, x14, #128
    adrp x21, _lb_gpu_20submit_surface_frame@GOTPAGE
    ldr x21, [x21, _lb_gpu_20submit_surface_frame@GOTPAGEOFF]
    str x21, [x15]
    add x14, x14, #136
    adrp x15, _lb_gpu_21release_surface_frame@GOTPAGE
    ldr x15, [x15, _lb_gpu_21release_surface_frame@GOTPAGEOFF]
    str x15, [x14]
    add x14, x19, #24
    ldr x15, [x14]
    mov x9, x15
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_31@PAGE
    add x1, x1, l_text_31@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x14]
    movz x9, #1
    strb w9, [x20]
    sub x21, x29, #128
    mov x10, x25
    mov x11, x21
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x21, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_29:
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_Surface_9wait_idle
    .no_dead_strip _lb_gpu_Surface_9wait_idle
_lb_gpu_Surface_9wait_idle:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    str x20, [sp, #120]
    sub x16, x29, #80
    str x0, [x16]
    sub x9, x29, #80
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #120
    bl _lb_gpu_Surface_checked
    sub x15, x29, #120
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L6_2
    b L6_1
L6_2:
    add x14, x15, #8
    sub x19, x29, #72
    mov x10, x14
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_3:
L6_1:
    ldr x14, [x15]
    ldr x19, [x14]
    add x14, x14, #16
    ldr x14, [x14]
    mov x0, x19
    mov x1, x14
    sub x8, x29, #152
    bl _lb_gpu_20backend_surface_wait
    sub x19, x29, #152
    add x14, x19, #24
    ldrb w14, [x14]
    cbnz w14, L6_5
    b L6_4
L6_5:
    sub x20, x29, #72
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_6:
L6_4:
    sub x14, x29, #72
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_Surface_destroy
    .no_dead_strip _lb_gpu_Surface_destroy
_lb_gpu_Surface_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    str x20, [sp, #16]
    sub x16, x29, #40
    str x0, [x16]
    sub x9, x29, #40
    ldr x19, [x9]
    ldr x20, [x19]
    cbnz x20, L7_1
    b L7_2
L7_1:
    b L7_3
L7_2:
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_4:
L7_3:
    bl _lb_gpu_14require_thread
    mov x9, #0
    str x9, [x19]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_gpu_15release_surface
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_Surface_checked
_lb_gpu_Surface_checked:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    str x20, [sp, #120]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
    ldr x19, [x9]
    sub x8, x29, #120
    bl _lb_gpu_12check_thread
    sub x15, x29, #120
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L8_2
    b L8_1
L8_2:
    sub x19, x29, #80
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
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
L8_3:
L8_1:
    ldr x14, [x19]
    cbnz x14, L8_4
    b L8_5
L8_4:
    b L8_6
L8_5:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_gpu_closed@PAGE
    add x15, x15, _lb_gpu_closed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_14@PAGE
    add x15, x15, l_text_14@PAGEOFF
    sub x20, x29, #136
    str x15, [x20]
    add x15, x20, #8
    movz x9, #25
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
L8_7:
L8_6:
    add x15, x14, #32
    ldrb w15, [x15]
    cbnz w15, L8_8
    b L8_9
L8_8:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_gpu_closed@PAGE
    add x15, x15, _lb_gpu_closed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_14@PAGE
    add x15, x15, l_text_14@PAGEOFF
    sub x20, x29, #152
    str x15, [x20]
    add x15, x20, #8
    movz x9, #25
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
L8_11:
    b L8_10
L8_9:
L8_10:
    sub x15, x29, #80
    str x14, [x15]
    add x19, x15, #32
    mov x9, #0
    strb w9, [x19]
    mov x1, x15
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
L8_12:
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_15release_surface
_lb_gpu_15release_surface:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    sub x16, x29, #48
    str x0, [x16]
    sub x14, x29, #48
    ldr x19, [x14]
    add x14, x19, #24
    ldr x15, [x14]
    mov x9, x15
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_16@PAGE
    add x0, x0, l_text_16@PAGEOFF
    adrp x1, l_text_31@PAGE
    add x1, x1, l_text_31@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x14]
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ne L9_2
L9_1:
    ldr x14, [x19]
    add x20, x19, #8
    add x15, x19, #16
    ldr x15, [x15]
    mov x0, x14
    mov x9, x20
    ldr x1, [x9]
    mov x2, x15
    bl _lb_gpu_23backend_surface_destroy
    mov x0, x20
    bl _lb_window_Presentation_destroy
    ldr x14, [x19]
    mov x0, x14
    bl _lb_gpu_14release_device
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x15, x29, #64
    str x19, [x15]
    add x20, x15, #8
    movz x9, #40
    str x9, [x20]
    ldr x20, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L9_5
    b L9_4
L9_5:
    add x19, x14, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L9_4:
    b L9_3
L9_2:
L9_3:
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_19check_surface_frame
_lb_gpu_19check_surface_frame:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #304
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #272]
    str x20, [sp, #264]
    sub x16, x29, #88
    str x0, [x16]
    sub x16, x29, #128
    str x1, [x16]
    sub x0, x29, #128
    ldr x1, [x0]
    movz x2, #40
    bl _memcpy
    sub x14, x29, #88
    ldr x19, [x14]
    sub x8, x29, #160
    bl _lb_gpu_12check_thread
    sub x15, x29, #160
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L10_2
    b L10_1
L10_2:
    sub x19, x29, #72
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
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_3:
L10_1:
    add x14, x19, #32
    ldrb w14, [x14]
    cbnz w14, L10_4
    b L10_5
L10_4:
    sub x19, x29, #72
    adrp x14, _lb_gpu_closed@PAGE
    add x14, x14, _lb_gpu_closed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_17@PAGE
    add x14, x14, l_text_17@PAGEOFF
    sub x15, x29, #176
    str x14, [x15]
    add x14, x15, #8
    movz x9, #29
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
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_7:
    b L10_6
L10_5:
L10_6:
    sub x20, x29, #216
    add x14, x19, #8
    mov x0, x14
    sub x8, x29, #288
    bl _lb_window_Presentation_size
    sub x15, x29, #288
    add x14, x15, #64
    ldrb w14, [x14]
    cbnz w14, L10_9
    b L10_8
L10_9:
    add x14, x15, #40
    sub x19, x29, #72
    mov x10, x14
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
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_10:
L10_8:
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    ldr d24, [x20]
    sub x14, x29, #128
    ldr d25, [x14]
    fcmp d24, d25
    cset w19, eq
    mov x10, #0
    cmp w19, w10
    cset w19, eq
    cbnz w19, L10_21
    b L10_14
L10_21:
    mov w15, w19
    b L10_15
L10_14:
    add x15, x20, #8
    ldr d24, [x15]
    add x15, x14, #8
    ldr d25, [x15]
    fcmp d24, d25
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
L10_15:
    and w19, w15, #255
    cbnz w19, L10_22
    b L10_16
L10_22:
    mov w15, w19
    b L10_17
L10_16:
    add x15, x20, #16
    ldr d24, [x15]
    add x15, x14, #16
    ldr d25, [x15]
    fcmp d24, d25
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
L10_17:
    and w19, w15, #255
    cbnz w19, L10_23
    b L10_18
L10_23:
    mov w14, w19
    b L10_19
L10_18:
    add x15, x20, #24
    ldr d24, [x15]
    add x15, x14, #24
    ldr d25, [x15]
    fcmp d24, d25
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
L10_19:
    and w15, w14, #255
    cbnz w15, L10_11
    b L10_12
L10_11:
    sub x19, x29, #72
    adrp x14, _lb_gpu_13frame_resized@PAGE
    add x14, x14, _lb_gpu_13frame_resized@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_18@PAGE
    add x14, x14, l_text_18@PAGEOFF
    sub x15, x29, #304
    str x14, [x15]
    add x14, x15, #8
    movz x9, #43
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
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_20:
    b L10_13
L10_12:
L10_13:
    sub x14, x29, #72
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
    ldr x19, [sp, #272]
    ldr x20, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_20submit_surface_frame
_lb_gpu_20submit_surface_frame:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #208]
    str x20, [sp, #200]
    str x21, [sp, #192]
    sub x16, x29, #104
    str x0, [x16]
    sub x16, x29, #176
    str x1, [x16]
    sub x16, x29, #200
    str d0, [x16, #0]
    sub x16, x29, #200
    str d1, [x16, #8]
    sub x16, x29, #200
    str d2, [x16, #16]
    sub x0, x29, #176
    ldr x1, [x0]
    movz x2, #72
    bl _memcpy
    sub x14, x29, #104
    ldr x14, [x14]
    ldr x15, [x14]
    add x19, x14, #8
    add x14, x14, #16
    ldr x14, [x14]
    sub x20, x29, #176
    sub x21, x29, #200
    mov x9, x21
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x15
    mov x9, x19
    ldr x1, [x9]
    mov x2, x14
    mov x9, x20
    mov x3, x9
    sub x8, x29, #240
    bl _lb_gpu_14backend_render
    sub x15, x29, #240
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L11_2
    b L11_1
L11_2:
    add x14, x15, #8
    sub x19, x29, #88
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_3:
L11_1:
    ldrb w14, [x15]
    sub x19, x29, #88
    strb w14, [x19]
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_4:
    adrp x0, l_text_19@PAGE
    add x0, x0, l_text_19@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_21release_surface_frame
_lb_gpu_21release_surface_frame:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str x0, [x16]
    bl _lb_gpu_14require_thread
    sub x14, x29, #32
    ldr x14, [x14]
    add x15, x14, #33
    mov x9, #0
    strb w9, [x15]
    mov x0, x14
    bl _lb_gpu_15release_surface
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Reference_0g1_gpu_Frame_adopt
    .weak_definition _lb_interop_Reference_0g1_gpu_Frame_adopt
    .no_dead_strip _lb_interop_Reference_0g1_gpu_Frame_adopt
_lb_interop_Reference_0g1_gpu_Frame_adopt:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #368
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #336]
    str x20, [sp, #328]
    str x21, [sp, #320]
    str x22, [sp, #312]
    str x23, [sp, #304]
    str x24, [sp, #296]
    str x25, [sp, #288]
    sub x16, x29, #136
    str x0, [x16]
    sub x16, x29, #176
    str x1, [x16]
    sub x16, x29, #192
    str x2, [x16]
    str x3, [x16, #8]
    sub x0, x29, #176
    ldr x1, [x0]
    movz x2, #40
    bl _memcpy
    sub x19, x29, #208
    sub x15, x29, #192
    ldr x14, [x15]
    cbnz x14, L13_1
    b L13_2
L13_1:
    sub x14, x29, #224
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L13_3
L13_2:
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x15, x29, #224
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L13_3:
    sub x14, x29, #224
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x24, x29, #232
    sub x20, x29, #272
    mov x11, x20
    str xzr, [x11, #0]
    sub x21, x29, #176
    mov x0, x20
    mov x9, x21
    mov x1, x9
    sub x8, x29, #304
    bl _lb_interop_Reservation_0g1_gpu_Frame_init
    sub x22, x29, #304
    sub x25, x29, #344
    add x23, x25, #8
    mov x10, x22
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #24
    ldrb w14, [x14]
    add x22, x25, #32
    strb w14, [x22]
    mov x10, x20
    mov x11, x25
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    ldrb w14, [x22]
    cbnz w14, L13_7
    b L13_6
L13_7:
    sub x20, x29, #264
    mov x10, x23
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L13_4
L13_6:
    sub x20, x29, #240
    mov x10, x25
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    b L13_5
L13_4:
    add x14, x21, #16
    ldr x14, [x14]
    sub x15, x29, #136
    ldr x22, [x15]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x22
    ldr x17, [sp], #16
    blr x17
    sub x14, x29, #360
    str x22, [x14]
    add x15, x14, #8
    movz x9, #40
    str x9, [x15]
    ldr x15, [x19]
    add x22, x19, #8
    ldr x22, [x22]
    cbnz x22, L13_9
    b L13_8
L13_9:
    add x19, x22, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L13_8:
    sub x19, x29, #120
    add x14, x19, #8
    ldr w15, [x20]
    str w15, [x14]
    add x15, x20, #8
    add x14, x14, #8
    mov x10, x15
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
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    ldr x25, [sp, #288]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_10:
L13_5:
    mov x10, x20
    mov x11, x24
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x14, x29, #136
    ldr x14, [x14]
    mov x0, x24
    mov x1, x14
    mov x9, x19
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_interop_Reservation_0g1_gpu_Frame_publish
    sub x16, x29, #368
    str x0, [x16, #0]
    sub x14, x29, #368
    sub x21, x29, #120
    mov x10, x14
    mov x11, x21
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x21, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    ldr x25, [sp, #288]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_11:
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_interop_Reference_0g1_gpu_FrameState_value
    .weak_definition _lb_interop_Reference_0g1_gpu_FrameState_value
    .no_dead_strip _lb_interop_Reference_0g1_gpu_FrameState_value
_lb_interop_Reference_0g1_gpu_FrameState_value:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    sub x16, x29, #32
    str x0, [x16]
    sub x9, x29, #32
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #96
    bl _lb_interop_Reference_0g1_gpu_FrameState_get
    sub x15, x29, #96
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L14_4
    b L14_3
L14_4:
    add x14, x15, #8
    sub x19, x29, #56
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L14_1
L14_3:
    ldr x14, [x15]
    b L14_2
L14_1:
    add x14, x19, #8
    adrp x15, l_text_21@PAGE
    add x15, x15, l_text_21@PAGEOFF
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    mov x9, #0
    mov x14, x9
L14_2:
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L14_5:
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_interop_Reference_0g1_gpu_Frame_release
    .weak_definition _lb_interop_Reference_0g1_gpu_Frame_release
    .no_dead_strip _lb_interop_Reference_0g1_gpu_Frame_release
_lb_interop_Reference_0g1_gpu_Frame_release:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    ldr x14, [x14]
    mov x0, x14
    bl _lb_ownership_release
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Reservation_0g1_gpu_Frame_init
    .weak_definition _lb_interop_Reservation_0g1_gpu_Frame_init
    .no_dead_strip _lb_interop_Reservation_0g1_gpu_Frame_init
_lb_interop_Reservation_0g1_gpu_Frame_init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #336
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #304]
    str x20, [sp, #296]
    str x21, [sp, #288]
    str x22, [sp, #280]
    str x23, [sp, #272]
    sub x16, x29, #104
    str x0, [x16]
    sub x16, x29, #144
    str x1, [x16]
    sub x0, x29, #144
    ldr x1, [x0]
    movz x2, #40
    bl _memcpy
    sub x9, x29, #104
    ldr x20, [x9]
    sub x19, x29, #144
    add x14, x19, #33
    ldrb w14, [x14]
    cbnz w14, L16_4
    b L16_10
L16_10:
    mov w15, w14
    b L16_5
L16_4:
    bl _lb_thread_7is_main
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L16_5:
    and w14, w15, #255
    cbnz w14, L16_1
    b L16_2
L16_1:
    sub x19, x29, #96
    adrp x14, _lb_interop_12wrong_thread@PAGE
    add x14, x14, _lb_interop_12wrong_thread@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_22@PAGE
    add x14, x14, l_text_22@PAGEOFF
    sub x15, x29, #160
    str x14, [x15]
    add x14, x15, #8
    movz x9, #49
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_6:
    b L16_3
L16_2:
L16_3:
    sub x21, x29, #216
    sub x22, x29, #272
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    mov x10, x19
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #16
    movz x9, #200
    str x9, [x14]
    adrp x14, _lb_interop_Owner_0g1_gpu_Frame_12finish_owner@GOTPAGE
    ldr x14, [x14, _lb_interop_Owner_0g1_gpu_Frame_12finish_owner@GOTPAGEOFF]
    add x15, x22, #24
    str x14, [x15]
    adrp x14, _lb_interop_Owner_0g1_gpu_Frame_10drop_owner@GOTPAGE
    ldr x14, [x14, _lb_interop_Owner_0g1_gpu_Frame_10drop_owner@GOTPAGEOFF]
    add x15, x22, #32
    str x14, [x15]
    adrp x14, _lb_interop_Owner_0g1_gpu_Frame_11trace_owner@GOTPAGE
    ldr x14, [x14, _lb_interop_Owner_0g1_gpu_Frame_11trace_owner@GOTPAGEOFF]
    add x15, x22, #40
    str x14, [x15]
    add x14, x22, #48
    mov x9, #0
    str x9, [x14]
    mov x10, x22
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    sub x22, x29, #288
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    mov x0, x21
    movz x1, #200
    mov x9, x22
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #328
    bl _lb_ownership_reserve
    sub x15, x29, #328
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L16_8
    b L16_7
L16_8:
    add x14, x15, #8
    sub x19, x29, #96
    mov x10, x14
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_9:
L16_7:
    ldr x22, [x15]
    add x23, x22, #64
    mov x10, x21
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    add x14, x22, #16
    str x23, [x14]
    add x14, x22, #120
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    str x22, [x20]
    sub x14, x29, #96
    add x22, x14, #24
    mov x9, #0
    strb w9, [x22]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Reservation_0g1_gpu_Frame_publish
    .weak_definition _lb_interop_Reservation_0g1_gpu_Frame_publish
    .no_dead_strip _lb_interop_Reservation_0g1_gpu_Frame_publish
_lb_interop_Reservation_0g1_gpu_Frame_publish:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    str x19, [sp, #136]
    str x20, [sp, #128]
    str x21, [sp, #120]
    str x22, [sp, #112]
    sub x16, x29, #64
    str x0, [x16]
    sub x16, x29, #80
    str x1, [x16]
    sub x16, x29, #96
    str x2, [x16]
    str x3, [x16, #8]
    sub x9, x29, #64
    ldr x19, [x9]
    ldr x20, [x19]
    cbnz x20, L17_1
    b L17_2
L17_1:
    b L17_3
L17_2:
    adrp x14, l_text_23@PAGE
    add x14, x14, l_text_23@PAGEOFF
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #56
    str x9, [x14]
    adrp x14, l_text_24@PAGE
    add x14, x14, l_text_24@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_24@PAGE
    add x0, x0, l_text_24@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
L17_3:
    add x14, x20, #160
    sub x15, x29, #80
    ldr x15, [x15]
    str x15, [x14]
    add x21, x20, #168
    sub x15, x29, #96
    ldr x14, [x15]
    cbnz x14, L17_4
    b L17_5
L17_4:
    sub x14, x29, #128
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L17_6
L17_5:
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x15, x29, #128
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L17_6:
    sub x14, x29, #128
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, #0
    str x9, [x19]
    sub x22, x29, #136
    mov x11, x22
    str xzr, [x11, #0]
    sub x10, x29, #152
    str x20, [x10]
    mov x0, x20
    bl _lb_ownership_11check_alive
    str x20, [x22]
L17_8:
    sub x19, x29, #56
    mov x10, x22
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L17_7:
    adrp x0, l_text_25@PAGE
    add x0, x0, l_text_25@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_interop_Reference_0g1_gpu_FrameState_get
    .weak_definition _lb_interop_Reference_0g1_gpu_FrameState_get
_lb_interop_Reference_0g1_gpu_FrameState_get:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    str x20, [sp, #88]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
    ldr x19, [x9]
    ldr x14, [x19]
    mov x0, x14
    bl _lb_ownership_11check_alive
    ldr x14, [x19]
    add x15, x14, #184
    ldrb w15, [x15]
    cbnz w15, L18_1
    b L18_2
L18_1:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_interop_invalid@PAGE
    add x15, x15, _lb_interop_invalid@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_26@PAGE
    add x15, x15, l_text_26@PAGEOFF
    sub x20, x29, #104
    str x15, [x20]
    add x15, x20, #8
    movz x9, #25
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
L18_4:
    b L18_3
L18_2:
L18_3:
    add x15, x14, #160
    ldr x15, [x15]
    cbnz x15, L18_5
    b L18_6
L18_5:
    b L18_7
L18_6:
    adrp x14, l_text_27@PAGE
    add x14, x14, l_text_27@PAGEOFF
    sub x15, x29, #120
    str x14, [x15]
    add x14, x15, #8
    movz x9, #40
    str x9, [x14]
    adrp x14, l_text_28@PAGE
    add x14, x14, l_text_28@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_28@PAGE
    add x0, x0, l_text_28@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
L18_7:
    sub x14, x29, #80
    str x15, [x14]
    add x19, x14, #32
    mov x9, #0
    strb w9, [x19]
    mov x1, x14
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
L18_8:
    adrp x0, l_text_28@PAGE
    add x0, x0, l_text_28@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_interop_Owner_0g1_gpu_Frame_12finish_owner
    .weak_definition _lb_interop_Owner_0g1_gpu_Frame_12finish_owner
    .no_dead_strip _lb_interop_Owner_0g1_gpu_Frame_12finish_owner
_lb_interop_Owner_0g1_gpu_Frame_12finish_owner:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str x0, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    mov x0, x14
    bl _lb_interop_11close_owner_0g1_gpu_Frame
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Owner_0g1_gpu_Frame_10drop_owner
    .weak_definition _lb_interop_Owner_0g1_gpu_Frame_10drop_owner
    .no_dead_strip _lb_interop_Owner_0g1_gpu_Frame_10drop_owner
_lb_interop_Owner_0g1_gpu_Frame_10drop_owner:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    str x19, [sp, #120]
    str x20, [sp, #112]
    str x21, [sp, #104]
    str x22, [sp, #96]
    str x23, [sp, #88]
    sub x16, x29, #72
    str x0, [x16]
    sub x14, x29, #72
    ldr x14, [x14]
    add x19, x14, #160
    ldr x20, [x19]
    cbnz x20, L20_4
    b L20_2
L20_4:
L20_1:
    sub x22, x29, #88
    add x15, x14, #168
    ldr x21, [x15]
    cbnz x21, L20_5
    b L20_6
L20_5:
    sub x23, x29, #104
    mov x10, x15
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L20_7
L20_6:
    adrp x14, l_text_29@PAGE
    add x14, x14, l_text_29@PAGEOFF
    sub x15, x29, #120
    str x14, [x15]
    add x14, x15, #8
    movz x9, #31
    str x9, [x14]
    adrp x14, l_text_30@PAGE
    add x14, x14, l_text_30@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_30@PAGE
    add x0, x0, l_text_30@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
L20_7:
    mov x10, x23
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, #0
    str x9, [x19]
    sub x14, x29, #136
    str x20, [x14]
    add x15, x14, #8
    movz x9, #40
    str x9, [x15]
    add x15, x22, #8
    ldr x15, [x15]
    cbnz x15, L20_9
    b L20_8
L20_9:
    add x19, x15, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L20_8:
    b L20_3
L20_2:
L20_3:
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    ldr x23, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Owner_0g1_gpu_Frame_11trace_owner
    .weak_definition _lb_interop_Owner_0g1_gpu_Frame_11trace_owner
    .no_dead_strip _lb_interop_Owner_0g1_gpu_Frame_11trace_owner
_lb_interop_Owner_0g1_gpu_Frame_11trace_owner:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    str x20, [sp, #48]
    sub x16, x29, #48
    str x0, [x16]
    sub x16, x29, #64
    str x1, [x16]
    sub x16, x29, #80
    str x2, [x16]
    sub x14, x29, #48
    ldr x14, [x14]
    add x15, x14, #185
    ldrb w15, [x15]
    cbnz w15, L21_1
    b L21_2
L21_1:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L21_4:
    b L21_3
L21_2:
L21_3:
    add x15, x14, #160
    ldr x15, [x15]
    cbnz x15, L21_8
    b L21_6
L21_8:
L21_5:
    add x19, x14, #120
    add x19, x19, #24
    ldr x19, [x19]
    cbnz x19, L21_12
    b L21_10
L21_12:
L21_9:
    sub x14, x29, #64
    ldr x14, [x14]
    sub x20, x29, #80
    ldr x20, [x20]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x1, x14
    mov x2, x20
    ldr x17, [sp], #16
    blr x17
    b L21_11
L21_10:
L21_11:
    b L21_7
L21_6:
L21_7:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_Reference_0g1_gpu_Frame_init
    .weak_definition _lb_interop_Reference_0g1_gpu_Frame_init
    .no_dead_strip _lb_interop_Reference_0g1_gpu_Frame_init
_lb_interop_Reference_0g1_gpu_Frame_init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x9, x29, #40
    ldr x20, [x9]
    sub x14, x29, #56
    ldr x19, [x14]
    mov x0, x19
    bl _lb_ownership_11check_alive
    str x19, [x20]
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_11close_owner_0g1_gpu_Frame
    .weak_definition _lb_interop_11close_owner_0g1_gpu_Frame
    .no_dead_strip _lb_interop_11close_owner_0g1_gpu_Frame
_lb_interop_11close_owner_0g1_gpu_Frame:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x14, x29, #40
    ldr x19, [x14]
    mov x0, x19
    bl _lb_ownership_11check_alive
    add x14, x19, #184
    ldrb w15, [x14]
    cbnz w15, L23_1
    b L23_2
L23_1:
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L23_4:
    b L23_3
L23_2:
L23_3:
    movz x9, #1
    strb w9, [x14]
    add x15, x19, #192
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ne L23_6
L23_5:
    mov x0, x19
    bl _lb_interop_13dispose_owner_0g1_gpu_Frame
    b L23_7
L23_6:
L23_7:
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_interop_13dispose_owner_0g1_gpu_Frame
    .weak_definition _lb_interop_13dispose_owner_0g1_gpu_Frame
    .no_dead_strip _lb_interop_13dispose_owner_0g1_gpu_Frame
_lb_interop_13dispose_owner_0g1_gpu_Frame:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x14, x29, #40
    ldr x14, [x14]
    add x15, x14, #185
    ldrb w19, [x15]
    cbnz w19, L24_1
    b L24_2
L24_1:
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L24_4:
    b L24_3
L24_2:
L24_3:
    movz x9, #1
    strb w9, [x15]
    add x19, x14, #160
    ldr x19, [x19]
    cbnz x19, L24_8
    b L24_6
L24_8:
L24_5:
    add x15, x14, #120
    add x15, x15, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x19
    ldr x17, [sp], #16
    blr x17
    b L24_7
L24_6:
L24_7:
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_gpu_surface_0init

    .section __TEXT,__const
l_text_0:
    .asciz "memory.unset"
l_text_1:
    .asciz "src/std/gpu/surface.lucb:14:9"
l_text_2:
    .asciz "memory.exhausted"
l_text_3:
    .asciz "src/std/gpu/surface.lucb:15:9"
l_text_4:
    .asciz "unreachable"
l_text_5:
    .asciz "src/std/gpu/surface.lucb:16:9"
l_text_6:
    .asciz "src/std/gpu/surface.lucb:20:9"
l_text_7:
    .asciz "finish the active frame before presenting"
l_text_8:
    .asciz "src/std/gpu/surface.lucb:36:9"
l_text_9:
    .asciz "src/std/gpu/surface.lucb:47:9"
l_text_10:
    .asciz "the surface already has an active frame"
l_text_11:
    .asciz "src/std/gpu/surface.lucb:56:9"
l_text_12:
    .asciz "src/std/gpu/surface.lucb:64:9"
l_text_13:
    .asciz "src/std/gpu/surface.lucb:66:9"
l_text_14:
    .asciz "the GPU surface is closed"
l_text_15:
    .asciz "src/std/gpu/surface.lucb:89:9"
l_text_16:
    .asciz "src/std/gpu/surface.lucb:102:5"
l_text_17:
    .asciz "the frame's surface is closed"
l_text_18:
    .asciz "the surface changed size; begin a new frame"
l_text_19:
    .asciz "src/std/gpu/surface.lucb:121:5"
l_text_20:
    .asciz "src/std/interop/reference.lucb:17:9"
l_text_21:
    .asciz "src/std/interop/reference.lucb:34:9"
l_text_22:
    .asciz "this native type requires the process main thread"
l_text_23:
    .asciz "native ownership has already been published or cancelled"
l_text_24:
    .asciz "src/std/interop/object.lucb:83:9"
l_text_25:
    .asciz "src/std/interop/object.lucb:87:9"
l_text_26:
    .asciz "a native object is closed"
l_text_27:
    .asciz "a native object has not been initialized"
l_text_28:
    .asciz "src/std/interop/reference.lucb:30:9"
l_text_29:
    .asciz "native storage has no allocator"
l_text_30:
    .asciz "src/std/interop/object.lucb:37:13"
l_text_31:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
