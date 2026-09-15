    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_gpu_13metal_surface_0init
_lb_gpu_13metal_surface_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    movz x9, #16592, lsl #48
    fmov d24, x9
    adrp x14, _lb_gpu_19metal_surface_limit@PAGE
    add x14, x14, _lb_gpu_19metal_surface_limit@PAGEOFF
    str d24, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_18metal_surface_open
    .no_dead_strip _lb_gpu_18metal_surface_open
_lb_gpu_18metal_surface_open:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #384
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #352]
    str x20, [sp, #344]
    str x21, [sp, #336]
    str x22, [sp, #328]
    str x23, [sp, #320]
    str x24, [sp, #312]
    str x25, [sp, #304]
    sub x16, x29, #136
    str x0, [x16]
    sub x16, x29, #152
    str x1, [x16]
    bl _objc_autoreleasePoolPush
    mov x19, x0
    cbnz x19, L1_1
    b L1_2
L1_2:
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L1_1:
    sub x20, x29, #152
    mov x0, x20
    sub x8, x29, #192
    bl _lb_window_Presentation_10macos_view
    sub x15, x29, #192
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L1_4
    b L1_3
L1_4:
    add x14, x15, #8
    sub x20, x29, #120
    add x21, x20, #8
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_5:
L1_3:
    ldr x21, [x15]
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x22, x29, #208
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x23, x29, #248
    ldr x14, [x22]
    add x22, x22, #8
    ldr x22, [x22]
    cbnz x22, L1_6
    b L1_7
L1_7:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_2@PAGE
    add x1, x1, l_text_2@PAGEOFF
    bl _lb_core_7trap_at
L1_6:
    ldr x15, [x22]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #32
    movz x2, #8
    sub x8, x29, #272
    ldr x17, [sp], #16
    blr x17
    sub x24, x29, #272
    add x15, x24, #16
    ldrb w15, [x15]
    cbnz w15, L1_8
    b L1_9
L1_9:
    add x14, x23, #8
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_4@PAGE
    add x15, x15, l_text_4@PAGEOFF
    add x22, x14, #8
    str x15, [x22]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x23, #32
    movz x9, #1
    strb w9, [x14]
    b L1_10
L1_8:
    ldr x22, [x24]
    sub x25, x29, #304
    mov x11, x25
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    mov x10, x25
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    str x22, [x23]
    add x14, x23, #32
    mov x9, #0
    strb w9, [x14]
L1_10:
    add x14, x23, #32
    ldrb w14, [x14]
    cbnz w14, L1_12
    b L1_11
L1_12:
    add x14, x23, #8
    sub x20, x29, #120
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
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_13:
L1_11:
    ldr x22, [x23]
    adrp x14, l_text_5@PAGE
    add x14, x14, l_text_5@PAGEOFF
    mov x0, x14
    sub x8, x29, #344
    bl _lb_gpu_11metal_class
    sub x15, x29, #344
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L1_15
    b L1_14
L1_15:
    add x14, x15, #8
    sub x21, x29, #120
    add x23, x21, #8
    mov x10, x14
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x22
    mov x9, x20
    ldr x1, [x9]
    bl _lb_gpu_21metal_surface_destroy
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_16:
L1_14:
    ldr x23, [x15]
    adrp x14, l_text_6@PAGE
    add x14, x14, l_text_6@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x23
    mov x1, x14
    bl _objc_msgSend
    mov x23, x0
    cbnz x23, L1_17
    b L1_18
L1_17:
    b L1_19
L1_18:
    sub x21, x29, #120
    add x14, x21, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_7@PAGE
    add x15, x15, l_text_7@PAGEOFF
    sub x23, x29, #360
    str x15, [x23]
    add x15, x23, #8
    movz x9, #43
    str x9, [x15]
    add x14, x14, #8
    mov x10, x23
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x22
    mov x9, x20
    ldr x1, [x9]
    bl _lb_gpu_21metal_surface_destroy
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_20:
L1_19:
    str x23, [x22]
    adrp x14, l_text_8@PAGE
    add x14, x14, l_text_8@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    sub x15, x29, #136
    ldr x15, [x15]
    ldr x15, [x15]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _objc_msgSend
    adrp x14, l_text_9@PAGE
    add x14, x14, l_text_9@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x23
    mov x1, x14
    movz x2, #81
    bl _objc_msgSend
    adrp x14, l_text_10@PAGE
    add x14, x14, l_text_10@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x23
    mov x1, x14
    movz x2, #1
    bl _objc_msgSend
    adrp x14, l_text_11@PAGE
    add x14, x14, l_text_11@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x23
    mov x1, x14
    movz x2, #1
    bl _objc_msgSend
    adrp x14, l_text_12@PAGE
    add x14, x14, l_text_12@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x23
    mov x1, x14
    movz x2, #1
    bl _objc_msgSend
    adrp x14, l_text_13@PAGE
    add x14, x14, l_text_13@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x23
    mov x1, x14
    movz x2, #1
    bl _objc_msgSend
    adrp x14, l_text_14@PAGE
    add x14, x14, l_text_14@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x23
    mov x1, x14
    mov x2, #0
    bl _objc_msgSend
    adrp x14, _kCGColorSpaceSRGB@GOTPAGE
    ldr x14, [x14, _kCGColorSpaceSRGB@GOTPAGEOFF]
    ldr x14, [x14]
    mov x0, x14
    bl _CGColorSpaceCreateWithName
    mov x24, x0
    cbnz x24, L1_21
    b L1_22
L1_21:
    b L1_23
L1_22:
    sub x21, x29, #120
    add x14, x21, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_15@PAGE
    add x15, x15, l_text_15@PAGEOFF
    sub x23, x29, #376
    str x15, [x23]
    add x15, x23, #8
    movz x9, #50
    str x9, [x15]
    add x14, x14, #8
    mov x10, x23
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x22
    mov x9, x20
    ldr x1, [x9]
    bl _lb_gpu_21metal_surface_destroy
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_24:
L1_23:
    adrp x14, l_text_16@PAGE
    add x14, x14, l_text_16@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x23
    mov x1, x14
    mov x2, x24
    bl _objc_msgSend
    adrp x14, l_text_17@PAGE
    add x14, x14, l_text_17@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x21
    mov x1, x14
    mov x2, x23
    bl _objc_msgSend
    adrp x14, l_text_18@PAGE
    add x14, x14, l_text_18@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x21
    mov x1, x14
    movz x2, #1
    bl _objc_msgSend
    sub x20, x29, #120
    str x22, [x20]
    add x14, x20, #32
    mov x9, #0
    strb w9, [x14]
    mov x0, x24
    bl _CGColorSpaceRelease
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_25:
    mov x0, x14
    bl _CGColorSpaceRelease
    mov x14, x19
    mov x0, x14
    bl _objc_autoreleasePoolPop
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_19@PAGE
    add x1, x1, l_text_19@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_18metal_surface_wait
    .no_dead_strip _lb_gpu_18metal_surface_wait
_lb_gpu_18metal_surface_wait:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    str x20, [sp, #72]
    str x21, [sp, #64]
    sub x16, x29, #96
    str x0, [x16]
    bl _objc_autoreleasePoolPush
    mov x19, x0
    cbnz x19, L2_1
    b L2_2
L2_2:
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L2_1:
    sub x14, x29, #96
    ldr x20, [x14]
    add x14, x20, #8
    ldr x21, [x14]
    cbnz x21, L2_6
    b L2_4
L2_6:
L2_3:
    mov x9, #0
    str x9, [x14]
    adrp x15, l_text_22@PAGE
    add x15, x15, l_text_22@PAGEOFF
    mov x0, x15
    bl _lb_gpu_9metal_sel
    mov x15, x0
    mov x0, x21
    mov x1, x15
    bl _objc_msgSend
    adrp x15, l_text_23@PAGE
    add x15, x15, l_text_23@PAGEOFF
    mov x0, x15
    bl _lb_gpu_9metal_sel
    mov x15, x0
    mov x0, x21
    mov x1, x15
    bl _objc_msgSend
    mov x15, x0
    movz x10, #4
    cmp x15, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L2_8
L2_7:
    add x14, x20, #16
    movz x9, #1
    strb w9, [x14]
    b L2_9
L2_8:
L2_9:
    adrp x14, l_text_24@PAGE
    add x14, x14, l_text_24@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    b L2_5
L2_4:
L2_5:
    add x14, x20, #16
    ldrb w14, [x14]
    cbnz w14, L2_10
    b L2_11
L2_10:
    sub x20, x29, #80
    adrp x14, _lb_gpu_16execution_failed@PAGE
    add x14, x14, _lb_gpu_16execution_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_25@PAGE
    add x14, x14, l_text_25@PAGEOFF
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #56
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    ldr x21, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_13:
    b L2_12
L2_11:
L2_12:
    mov x0, x19
    bl _objc_autoreleasePoolPop
    sub x14, x29, #80
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
    ldr x20, [sp, #72]
    ldr x21, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_19metal_clear_present
    .no_dead_strip _lb_gpu_19metal_clear_present
_lb_gpu_19metal_clear_present:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #288
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #256]
    str x20, [sp, #248]
    str x21, [sp, #240]
    str x22, [sp, #232]
    sub x16, x29, #112
    str x0, [x16]
    sub x16, x29, #128
    str x1, [x16]
    sub x16, x29, #144
    str x2, [x16]
    sub x16, x29, #168
    str d0, [x16, #0]
    sub x16, x29, #168
    str d1, [x16, #8]
    sub x16, x29, #168
    str d2, [x16, #16]
    sub x14, x29, #112
    ldr x19, [x14]
    sub x14, x29, #128
    sub x20, x29, #176
    mov x10, x14
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x14, x29, #144
    ldr x21, [x14]
    sub x22, x29, #248
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    sub x14, x29, #168
    mov x9, x14
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    mov x0, x19
    mov x9, x20
    ldr x1, [x9]
    mov x2, x21
    mov x9, x22
    mov x3, x9
    sub x8, x29, #288
    bl _lb_gpu_12metal_render
    sub x15, x29, #288
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L3_2
    b L3_1
L3_2:
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
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_3:
L3_1:
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
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_4:
    adrp x0, l_text_26@PAGE
    add x0, x0, l_text_26@PAGEOFF
    adrp x1, l_text_19@PAGE
    add x1, x1, l_text_19@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_12metal_render
    .no_dead_strip _lb_gpu_12metal_render
_lb_gpu_12metal_render:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #912
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #880]
    str x20, [sp, #872]
    str x21, [sp, #864]
    str x22, [sp, #856]
    str x23, [sp, #848]
    str x24, [sp, #840]
    str x25, [sp, #832]
    str x26, [sp, #824]
    str x27, [sp, #816]
    str x28, [sp, #808]
    str d8, [sp, #800]
    str d9, [sp, #792]
    str d10, [sp, #784]
    sub x16, x29, #184
    str x0, [x16]
    sub x16, x29, #200
    str x1, [x16]
    sub x16, x29, #216
    str x2, [x16]
    sub x16, x29, #288
    str x3, [x16]
    sub x16, x29, #312
    str d0, [x16, #0]
    sub x16, x29, #312
    str d1, [x16, #8]
    sub x16, x29, #312
    str d2, [x16, #16]
    sub x0, x29, #288
    ldr x1, [x0]
    movz x2, #72
    bl _memcpy
    bl _objc_autoreleasePoolPush
    mov x19, x0
    cbnz x19, L4_1
    b L4_2
L4_2:
    adrp x0, l_text_27@PAGE
    add x0, x0, l_text_27@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L4_1:
    sub x14, x29, #216
    ldr x9, [x14]
    str x9, [sp, #56]
    ldr x0, [sp, #56]
    sub x8, x29, #344
    bl _lb_gpu_18metal_surface_wait
    sub x15, x29, #344
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L4_4
    b L4_3
L4_4:
    sub x20, x29, #168
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #880]
    ldr x20, [sp, #872]
    ldr x21, [sp, #864]
    ldr x22, [sp, #856]
    ldr x23, [sp, #848]
    ldr x24, [sp, #840]
    ldr x25, [sp, #832]
    ldr x26, [sp, #824]
    ldr x27, [sp, #816]
    ldr x28, [sp, #808]
    ldr d8, [sp, #800]
    ldr d9, [sp, #792]
    ldr d10, [sp, #784]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_5:
L4_3:
    sub x21, x29, #200
    mov x0, x21
    sub x8, x29, #384
    bl _lb_window_Presentation_visible
    sub x15, x29, #384
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L4_10
    b L4_9
L4_10:
    add x14, x15, #8
    sub x20, x29, #168
    add x21, x20, #8
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #880]
    ldr x20, [sp, #872]
    ldr x21, [sp, #864]
    ldr x22, [sp, #856]
    ldr x23, [sp, #848]
    ldr x24, [sp, #840]
    ldr x25, [sp, #832]
    ldr x26, [sp, #824]
    ldr x27, [sp, #816]
    ldr x28, [sp, #808]
    ldr d8, [sp, #800]
    ldr d9, [sp, #792]
    ldr d10, [sp, #784]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_11:
L4_9:
    ldrb w14, [x15]
    mov x10, #0
    cmp w14, w10
    b.ne L4_7
L4_6:
    sub x20, x29, #168
    movz x9, #1
    strb w9, [x20]
    add x14, x20, #32
    mov x9, #0
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #880]
    ldr x20, [sp, #872]
    ldr x21, [sp, #864]
    ldr x22, [sp, #856]
    ldr x23, [sp, #848]
    ldr x24, [sp, #840]
    ldr x25, [sp, #832]
    ldr x26, [sp, #824]
    ldr x27, [sp, #816]
    ldr x28, [sp, #808]
    ldr d8, [sp, #800]
    ldr d9, [sp, #792]
    ldr d10, [sp, #784]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_12:
    b L4_8
L4_7:
L4_8:
    sub x22, x29, #424
    mov x0, x21
    sub x8, x29, #496
    bl _lb_window_Presentation_size
    sub x15, x29, #496
    add x14, x15, #64
    ldrb w14, [x14]
    cbnz w14, L4_14
    b L4_13
L4_14:
    add x14, x15, #40
    sub x20, x29, #168
    add x21, x20, #8
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #880]
    ldr x20, [sp, #872]
    ldr x21, [sp, #864]
    ldr x22, [sp, #856]
    ldr x23, [sp, #848]
    ldr x24, [sp, #840]
    ldr x25, [sp, #832]
    ldr x26, [sp, #824]
    ldr x27, [sp, #816]
    ldr x28, [sp, #808]
    ldr d8, [sp, #800]
    ldr d9, [sp, #792]
    ldr d10, [sp, #784]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_15:
L4_13:
    mov x10, x15
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    add x14, x22, #16
    ldr d8, [x14]
    mov x9, #0
    fmov d24, x9
    fcmp d8, d24
    cset w14, ls
    cbnz w14, L4_168
    b L4_19
L4_168:
    mov w15, w14
    b L4_20
L4_19:
    add x14, x22, #24
    ldr d25, [x14]
    fcmp d25, d24
    cset w15, ls
L4_20:
    and w14, w15, #255
    cbnz w14, L4_16
    b L4_17
L4_16:
    sub x20, x29, #168
    movz x9, #1
    strb w9, [x20]
    add x14, x20, #32
    mov x9, #0
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #880]
    ldr x20, [sp, #872]
    ldr x21, [sp, #864]
    ldr x22, [sp, #856]
    ldr x23, [sp, #848]
    ldr x24, [sp, #840]
    ldr x25, [sp, #832]
    ldr x26, [sp, #824]
    ldr x27, [sp, #816]
    ldr x28, [sp, #808]
    ldr d8, [sp, #800]
    ldr d9, [sp, #792]
    ldr d10, [sp, #784]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_21:
    b L4_18
L4_17:
L4_18:
    adrp x14, _lb_gpu_19metal_surface_limit@PAGE
    add x14, x14, _lb_gpu_19metal_surface_limit@PAGEOFF
    ldr d24, [x14]
    fcmp d8, d24
    cset w14, gt
    cbnz w14, L4_169
    b L4_25
L4_169:
    mov w15, w14
    b L4_26
L4_25:
    add x14, x22, #24
    ldr d25, [x14]
    fcmp d25, d24
    cset w15, gt
L4_26:
    and w14, w15, #255
    cbnz w14, L4_22
    b L4_23
L4_22:
    sub x20, x29, #168
    add x14, x20, #8
    adrp x15, _lb_gpu_17surface_too_large@PAGE
    add x15, x15, _lb_gpu_17surface_too_large@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_28@PAGE
    add x15, x15, l_text_28@PAGEOFF
    sub x21, x29, #512
    str x15, [x21]
    add x15, x21, #8
    movz x9, #70
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #880]
    ldr x20, [sp, #872]
    ldr x21, [sp, #864]
    ldr x22, [sp, #856]
    ldr x23, [sp, #848]
    ldr x24, [sp, #840]
    ldr x25, [sp, #832]
    ldr x26, [sp, #824]
    ldr x27, [sp, #816]
    ldr x28, [sp, #808]
    ldr d8, [sp, #800]
    ldr d9, [sp, #792]
    ldr d10, [sp, #784]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_27:
    b L4_24
L4_23:
L4_24:
    ldr x9, [sp, #56]
    ldr x14, [x9]
    mov x0, x14
    bl _lb_gpu_14metal_required
    mov x21, x0
    adrp x14, l_text_29@PAGE
    add x14, x14, l_text_29@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    add x15, x22, #32
    ldr d24, [x15]
    fmov d16, d24
    fmov d0, d16
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    adrp x14, l_text_30@PAGE
    add x14, x14, l_text_30@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x23, x0
    sub x24, x29, #528
    mov x11, x24
    stp xzr, xzr, [x11, #0]
    str d8, [x24]
    add x14, x22, #24
    ldr d9, [x14]
    add x14, x24, #8
    str d9, [x14]
    mov x9, x24
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    mov x0, x21
    mov x1, x23
    bl _objc_msgSend
    adrp x14, l_text_31@PAGE
    add x14, x14, l_text_31@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    str x0, [sp, #0]
    ldr x9, [sp, #0]
    cbnz x9, L4_28
    b L4_29
L4_28:
    b L4_30
L4_29:
    sub x20, x29, #168
    movz x9, #1
    strb w9, [x20]
    add x14, x20, #32
    mov x9, #0
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #880]
    ldr x20, [sp, #872]
    ldr x21, [sp, #864]
    ldr x22, [sp, #856]
    ldr x23, [sp, #848]
    ldr x24, [sp, #840]
    ldr x25, [sp, #832]
    ldr x26, [sp, #824]
    ldr x27, [sp, #816]
    ldr x28, [sp, #808]
    ldr d8, [sp, #800]
    ldr d9, [sp, #792]
    ldr d10, [sp, #784]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_31:
L4_30:
    adrp x14, l_text_32@PAGE
    add x14, x14, l_text_32@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    ldr x0, [sp, #0]
    mov x1, x14
    bl _objc_msgSend
    mov x22, x0
    cbnz x22, L4_32
    b L4_33
L4_32:
    b L4_34
L4_33:
    sub x20, x29, #168
    add x14, x20, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_33@PAGE
    add x15, x15, l_text_33@PAGEOFF
    sub x21, x29, #544
    str x15, [x21]
    add x15, x21, #8
    movz x9, #43
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #880]
    ldr x20, [sp, #872]
    ldr x21, [sp, #864]
    ldr x22, [sp, #856]
    ldr x23, [sp, #848]
    ldr x24, [sp, #840]
    ldr x25, [sp, #832]
    ldr x26, [sp, #824]
    ldr x27, [sp, #816]
    ldr x28, [sp, #808]
    ldr d8, [sp, #800]
    ldr d9, [sp, #792]
    ldr d10, [sp, #784]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_35:
L4_34:
    adrp x14, l_text_34@PAGE
    add x14, x14, l_text_34@PAGEOFF
    mov x0, x14
    sub x8, x29, #584
    bl _lb_gpu_11metal_class
    sub x15, x29, #584
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L4_37
    b L4_36
L4_37:
    add x14, x15, #8
    sub x20, x29, #168
    add x21, x20, #8
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #880]
    ldr x20, [sp, #872]
    ldr x21, [sp, #864]
    ldr x22, [sp, #856]
    ldr x23, [sp, #848]
    ldr x24, [sp, #840]
    ldr x25, [sp, #832]
    ldr x26, [sp, #824]
    ldr x27, [sp, #816]
    ldr x28, [sp, #808]
    ldr d8, [sp, #800]
    ldr d9, [sp, #792]
    ldr d10, [sp, #784]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_38:
L4_36:
    ldr x23, [x15]
    adrp x14, l_text_35@PAGE
    add x14, x14, l_text_35@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x23
    mov x1, x14
    bl _objc_msgSend
    mov x23, x0
    cbnz x23, L4_39
    b L4_40
L4_39:
    b L4_41
L4_40:
    sub x20, x29, #168
    add x14, x20, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_36@PAGE
    add x15, x15, l_text_36@PAGEOFF
    sub x21, x29, #600
    str x15, [x21]
    add x15, x21, #8
    movz x9, #36
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #880]
    ldr x20, [sp, #872]
    ldr x21, [sp, #864]
    ldr x22, [sp, #856]
    ldr x23, [sp, #848]
    ldr x24, [sp, #840]
    ldr x25, [sp, #832]
    ldr x26, [sp, #824]
    ldr x27, [sp, #816]
    ldr x28, [sp, #808]
    ldr d8, [sp, #800]
    ldr d9, [sp, #792]
    ldr d10, [sp, #784]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_42:
L4_41:
    adrp x14, l_text_37@PAGE
    add x14, x14, l_text_37@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x23
    mov x1, x14
    bl _objc_msgSend
    mov x14, x0
    mov x0, x14
    bl _lb_gpu_14metal_required
    mov x24, x0
    adrp x14, l_text_38@PAGE
    add x14, x14, l_text_38@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x24
    mov x1, x14
    mov x2, #0
    bl _objc_msgSend
    mov x14, x0
    mov x0, x14
    bl _lb_gpu_14metal_required
    mov x24, x0
    adrp x25, l_text_39@PAGE
    add x25, x25, l_text_39@PAGEOFF
    mov x0, x25
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x24
    mov x1, x14
    mov x2, x22
    bl _objc_msgSend
    adrp x9, l_text_40@PAGE
    add x9, x9, l_text_40@PAGEOFF
    str x9, [sp, #48]
    ldr x0, [sp, #48]
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x24
    mov x1, x14
    movz x2, #2
    bl _objc_msgSend
    adrp x9, l_text_41@PAGE
    add x9, x9, l_text_41@PAGEOFF
    str x9, [sp, #40]
    ldr x0, [sp, #40]
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x24
    mov x1, x14
    movz x2, #1
    bl _objc_msgSend
    adrp x14, l_text_42@PAGE
    add x14, x14, l_text_42@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    str x0, [sp, #32]
    sub x21, x29, #632
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    sub x14, x29, #312
    ldr d24, [x14]
    str d24, [x21]
    add x15, x14, #8
    ldr d24, [x15]
    add x15, x21, #8
    str d24, [x15]
    add x14, x14, #16
    ldr d24, [x14]
    add x14, x21, #16
    str d24, [x14]
    movz x9, #16368, lsl #48
    fmov d10, x9
    add x14, x21, #24
    str d10, [x14]
    mov x9, x21
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    mov x0, x24
    ldr x1, [sp, #32]
    bl _objc_msgSend
    sub x21, x29, #640
    mov x9, #0
    str x9, [x21]
    sub x24, x29, #648
    mov x9, #0
    str x9, [x24]
    sub x9, x29, #288
    str x9, [sp, #24]
    ldr x9, [sp, #24]
    add x9, x9, #32
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    ldr x14, [x9]
    mov x10, #0
    cmp x14, x10
    b.ls L4_44
L4_43:
    ldr x9, [sp, #56]
    add x22, x9, #24
    ldr x14, [x22]
    mov x10, #0
    cmp x14, x10
    b.ne L4_47
L4_46:
    sub x14, x29, #184
    ldr x14, [x14]
    mov x0, x14
    sub x8, x29, #688
    bl _lb_gpu_18metal_drawing_open
    sub x15, x29, #688
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L4_50
    b L4_49
L4_50:
    add x14, x15, #8
    sub x20, x29, #168
    add x22, x20, #8
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    sub x10, x29, #848
    str x24, [x10]
    ldr x22, [x24]
    cbnz x22, L4_91
    b L4_89
L4_91:
L4_88:
    adrp x14, l_text_24@PAGE
    add x14, x14, l_text_24@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    bl _objc_msgSend
    b L4_90
L4_89:
L4_90:
L4_92:
    sub x10, x29, #848
    str x21, [x10]
    ldr x22, [x21]
    cbnz x22, L4_96
    b L4_94
L4_96:
L4_93:
    adrp x14, l_text_24@PAGE
    add x14, x14, l_text_24@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    bl _objc_msgSend
    b L4_95
L4_94:
L4_95:
L4_97:
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #880]
    ldr x20, [sp, #872]
    ldr x21, [sp, #864]
    ldr x22, [sp, #856]
    ldr x23, [sp, #848]
    ldr x24, [sp, #840]
    ldr x25, [sp, #832]
    ldr x26, [sp, #824]
    ldr x27, [sp, #816]
    ldr x28, [sp, #808]
    ldr d8, [sp, #800]
    ldr d9, [sp, #792]
    ldr d10, [sp, #784]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_51:
L4_49:
    ldr x14, [x15]
    str x14, [x22]
    b L4_48
L4_47:
L4_48:
    ldr x20, [x22]
    cbnz x20, L4_52
    b L4_53
L4_52:
    b L4_54
L4_53:
    adrp x14, l_text_43@PAGE
    add x14, x14, l_text_43@PAGEOFF
    sub x15, x29, #704
    str x14, [x15]
    add x14, x15, #8
    movz x9, #37
    str x9, [x14]
    adrp x14, l_text_44@PAGE
    add x14, x14, l_text_44@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_44@PAGE
    add x0, x0, l_text_44@PAGEOFF
    adrp x1, l_text_19@PAGE
    add x1, x1, l_text_19@PAGEOFF
    bl _lb_core_7trap_at
L4_54:
    adrp x14, l_text_45@PAGE
    add x14, x14, l_text_45@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x23
    mov x1, x14
    bl _objc_msgSend
    mov x14, x0
    mov x0, x14
    bl _lb_gpu_14metal_required
    str x0, [sp, #8]
    mov x0, x25
    bl _lb_gpu_9metal_sel
    mov x28, x0
    sub x14, x29, #184
    ldr x27, [x14]
    adrp x26, l_text_46@PAGE
    add x26, x26, l_text_46@PAGEOFF
    fmov d16, d8
    fmov d0, d16
    movz x0, #64
    movz x1, #1
    mov x2, x26
    bl _lb_core_6f_to_u
    mov x22, x0
    fmov d16, d9
    fmov d0, d16
    movz x0, #64
    movz x1, #1
    mov x2, x26
    bl _lb_core_6f_to_u
    mov x14, x0
    mov x0, x27
    mov x1, x20
    mov x2, x22
    mov x3, x14
    sub x8, x29, #744
    bl _lb_gpu_11metal_depth
    sub x15, x29, #744
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L4_56
    b L4_55
L4_56:
    add x14, x15, #8
    sub x20, x29, #168
    add x22, x20, #8
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    sub x10, x29, #848
    str x24, [x10]
    ldr x22, [x24]
    cbnz x22, L4_101
    b L4_99
L4_101:
L4_98:
    adrp x14, l_text_24@PAGE
    add x14, x14, l_text_24@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    bl _objc_msgSend
    b L4_100
L4_99:
L4_100:
L4_102:
    sub x10, x29, #848
    str x21, [x10]
    ldr x22, [x21]
    cbnz x22, L4_106
    b L4_104
L4_106:
L4_103:
    adrp x14, l_text_24@PAGE
    add x14, x14, l_text_24@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    bl _objc_msgSend
    b L4_105
L4_104:
L4_105:
L4_107:
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #880]
    ldr x20, [sp, #872]
    ldr x21, [sp, #864]
    ldr x22, [sp, #856]
    ldr x23, [sp, #848]
    ldr x24, [sp, #840]
    ldr x25, [sp, #832]
    ldr x26, [sp, #824]
    ldr x27, [sp, #816]
    ldr x28, [sp, #808]
    ldr d8, [sp, #800]
    ldr d9, [sp, #792]
    ldr d10, [sp, #784]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_57:
L4_55:
    ldr x14, [x15]
    ldr x0, [sp, #8]
    mov x1, x28
    mov x2, x14
    bl _objc_msgSend
    ldr x0, [sp, #48]
    bl _lb_gpu_9metal_sel
    mov x14, x0
    ldr x0, [sp, #8]
    mov x1, x14
    movz x2, #2
    bl _objc_msgSend
    ldr x0, [sp, #40]
    bl _lb_gpu_9metal_sel
    mov x14, x0
    ldr x0, [sp, #8]
    mov x1, x14
    mov x2, #0
    bl _objc_msgSend
    adrp x14, l_text_47@PAGE
    add x14, x14, l_text_47@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    fmov d16, d10
    fmov d0, d16
    ldr x0, [sp, #8]
    mov x1, x14
    bl _objc_msgSend
    ldr x14, [x27]
    mov x0, x14
    bl _lb_gpu_14metal_required
    mov x20, x0
    adrp x14, l_text_48@PAGE
    add x14, x14, l_text_48@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    ldr x9, [sp, #24]
    ldr x22, [x9]
    ldr x9, [sp, #16]
    ldr x25, [x9]
    mov x9, x25
    movz x10, #32
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_49@PAGE
    add x0, x0, l_text_49@PAGEOFF
    adrp x1, l_text_66@PAGE
    add x1, x1, l_text_66@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x25, x9
    mov x0, x20
    mov x1, x14
    mov x2, x22
    mov x3, x25
    mov x4, #0
    bl _objc_msgSend
    mov x14, x0
    cbnz x14, L4_58
    b L4_59
L4_58:
    b L4_60
L4_59:
    sub x20, x29, #168
    add x14, x20, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_50@PAGE
    add x15, x15, l_text_50@PAGEOFF
    sub x22, x29, #760
    str x15, [x22]
    add x15, x22, #8
    movz x9, #34
    str x9, [x15]
    add x14, x14, #8
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    sub x10, x29, #848
    str x24, [x10]
    ldr x22, [x24]
    cbnz x22, L4_111
    b L4_109
L4_111:
L4_108:
    adrp x14, l_text_24@PAGE
    add x14, x14, l_text_24@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    bl _objc_msgSend
    b L4_110
L4_109:
L4_110:
L4_112:
    sub x10, x29, #848
    str x21, [x10]
    ldr x22, [x21]
    cbnz x22, L4_116
    b L4_114
L4_116:
L4_113:
    adrp x14, l_text_24@PAGE
    add x14, x14, l_text_24@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    bl _objc_msgSend
    b L4_115
L4_114:
L4_115:
L4_117:
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #880]
    ldr x20, [sp, #872]
    ldr x21, [sp, #864]
    ldr x22, [sp, #856]
    ldr x23, [sp, #848]
    ldr x24, [sp, #840]
    ldr x25, [sp, #832]
    ldr x26, [sp, #824]
    ldr x27, [sp, #816]
    ldr x28, [sp, #808]
    ldr d8, [sp, #800]
    ldr d9, [sp, #792]
    ldr d10, [sp, #784]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_61:
L4_60:
    str x14, [x24]
    b L4_45
L4_44:
L4_45:
    ldr x9, [sp, #16]
    ldr x14, [x9]
    mov x10, #0
    cmp x14, x10
    b.ls L4_63
L4_62:
    sub x14, x29, #764
    mov x9, #0
    str w9, [x14]
    ldr x9, [sp, #24]
    add x20, x9, #64
    ldr x15, [x20]
    mov x10, #0
    cmp x15, x10
    b.ls L4_66
L4_65:
    ldr x9, [sp, #24]
    add x14, x9, #48
    ldr x14, [x14]
    mov x22, x14
    b L4_67
L4_66:
    mov x22, x14
L4_67:
    sub x14, x29, #184
    ldr x14, [x14]
    ldr x14, [x14]
    mov x0, x14
    bl _lb_gpu_14metal_required
    mov x25, x0
    adrp x14, l_text_48@PAGE
    add x14, x14, l_text_48@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x26, x0
    ldr x14, [x20]
    movz x0, #1
    mov x1, x14
    bl _lb_gpu_10canvas_max
    mov x14, x0
    mov x9, x14
    movz x10, #4
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_51@PAGE
    add x0, x0, l_text_51@PAGEOFF
    adrp x1, l_text_66@PAGE
    add x1, x1, l_text_66@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x0, x25
    mov x1, x26
    mov x2, x22
    mov x3, x14
    mov x4, #0
    bl _objc_msgSend
    mov x14, x0
    cbnz x14, L4_68
    b L4_69
L4_68:
    b L4_70
L4_69:
    sub x20, x29, #168
    add x14, x20, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_52@PAGE
    add x15, x15, l_text_52@PAGEOFF
    sub x22, x29, #784
    str x15, [x22]
    add x15, x22, #8
    movz x9, #29
    str x9, [x15]
    add x14, x14, #8
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    sub x10, x29, #848
    str x24, [x10]
    ldr x22, [x24]
    cbnz x22, L4_121
    b L4_119
L4_121:
L4_118:
    adrp x14, l_text_24@PAGE
    add x14, x14, l_text_24@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    bl _objc_msgSend
    b L4_120
L4_119:
L4_120:
L4_122:
    sub x10, x29, #848
    str x21, [x10]
    ldr x22, [x21]
    cbnz x22, L4_126
    b L4_124
L4_126:
L4_123:
    adrp x14, l_text_24@PAGE
    add x14, x14, l_text_24@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    bl _objc_msgSend
    b L4_125
L4_124:
L4_125:
L4_127:
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #880]
    ldr x20, [sp, #872]
    ldr x21, [sp, #864]
    ldr x22, [sp, #856]
    ldr x23, [sp, #848]
    ldr x24, [sp, #840]
    ldr x25, [sp, #832]
    ldr x26, [sp, #824]
    ldr x27, [sp, #816]
    ldr x28, [sp, #808]
    ldr d8, [sp, #800]
    ldr d9, [sp, #792]
    ldr d10, [sp, #784]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_71:
L4_70:
    str x14, [x21]
    b L4_64
L4_63:
L4_64:
    sub x14, x29, #184
    ldr x14, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    mov x0, x14
    bl _lb_gpu_14metal_required
    mov x20, x0
    adrp x14, l_text_53@PAGE
    add x14, x14, l_text_53@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    mov x20, x0
    cbnz x20, L4_72
    b L4_73
L4_72:
    b L4_74
L4_73:
    sub x20, x29, #168
    add x14, x20, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_54@PAGE
    add x15, x15, l_text_54@PAGEOFF
    sub x22, x29, #800
    str x15, [x22]
    add x15, x22, #8
    movz x9, #39
    str x9, [x15]
    add x14, x14, #8
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    sub x10, x29, #848
    str x24, [x10]
    ldr x22, [x24]
    cbnz x22, L4_131
    b L4_129
L4_131:
L4_128:
    adrp x14, l_text_24@PAGE
    add x14, x14, l_text_24@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    bl _objc_msgSend
    b L4_130
L4_129:
L4_130:
L4_132:
    sub x10, x29, #848
    str x21, [x10]
    ldr x22, [x21]
    cbnz x22, L4_136
    b L4_134
L4_136:
L4_133:
    adrp x14, l_text_24@PAGE
    add x14, x14, l_text_24@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    bl _objc_msgSend
    b L4_135
L4_134:
L4_135:
L4_137:
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #880]
    ldr x20, [sp, #872]
    ldr x21, [sp, #864]
    ldr x22, [sp, #856]
    ldr x23, [sp, #848]
    ldr x24, [sp, #840]
    ldr x25, [sp, #832]
    ldr x26, [sp, #824]
    ldr x27, [sp, #816]
    ldr x28, [sp, #808]
    ldr d8, [sp, #800]
    ldr d9, [sp, #792]
    ldr d10, [sp, #784]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_75:
L4_74:
    adrp x14, l_text_55@PAGE
    add x14, x14, l_text_55@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x20
    mov x1, x14
    mov x2, x23
    bl _objc_msgSend
    mov x22, x0
    cbnz x22, L4_76
    b L4_77
L4_76:
    b L4_78
L4_77:
    sub x20, x29, #168
    add x14, x20, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_56@PAGE
    add x15, x15, l_text_56@PAGEOFF
    sub x22, x29, #816
    str x15, [x22]
    add x15, x22, #8
    movz x9, #39
    str x9, [x15]
    add x14, x14, #8
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    sub x10, x29, #848
    str x24, [x10]
    ldr x22, [x24]
    cbnz x22, L4_141
    b L4_139
L4_141:
L4_138:
    adrp x14, l_text_24@PAGE
    add x14, x14, l_text_24@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    bl _objc_msgSend
    b L4_140
L4_139:
L4_140:
L4_142:
    sub x10, x29, #848
    str x21, [x10]
    ldr x22, [x21]
    cbnz x22, L4_146
    b L4_144
L4_146:
L4_143:
    adrp x14, l_text_24@PAGE
    add x14, x14, l_text_24@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    bl _objc_msgSend
    b L4_145
L4_144:
L4_145:
L4_147:
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #880]
    ldr x20, [sp, #872]
    ldr x21, [sp, #864]
    ldr x22, [sp, #856]
    ldr x23, [sp, #848]
    ldr x24, [sp, #840]
    ldr x25, [sp, #832]
    ldr x26, [sp, #824]
    ldr x27, [sp, #816]
    ldr x28, [sp, #808]
    ldr d8, [sp, #800]
    ldr d9, [sp, #792]
    ldr d10, [sp, #784]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_79:
L4_78:
    ldr x23, [x24]
    cbnz x23, L4_83
    b L4_81
L4_83:
L4_80:
    ldr x9, [sp, #56]
    add x14, x9, #24
    ldr x25, [x14]
    cbnz x25, L4_84
    b L4_85
L4_84:
    b L4_86
L4_85:
    adrp x14, l_text_57@PAGE
    add x14, x14, l_text_57@PAGEOFF
    sub x15, x29, #832
    str x14, [x15]
    add x14, x15, #8
    movz x9, #25
    str x9, [x14]
    adrp x14, l_text_58@PAGE
    add x14, x14, l_text_58@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_58@PAGE
    add x0, x0, l_text_58@PAGEOFF
    adrp x1, l_text_19@PAGE
    add x1, x1, l_text_19@PAGEOFF
    bl _lb_core_7trap_at
L4_86:
    ldr x14, [x21]
    mov x0, x14
    bl _lb_gpu_14metal_required
    mov x26, x0
    adrp x27, l_text_58@PAGE
    add x27, x27, l_text_58@PAGEOFF
    fmov d16, d8
    fmov d0, d16
    movz x0, #64
    movz x1, #1
    mov x2, x27
    bl _lb_core_6f_to_u
    mov x28, x0
    fmov d16, d9
    fmov d0, d16
    movz x0, #64
    movz x1, #1
    mov x2, x27
    bl _lb_core_6f_to_u
    mov x14, x0
    mov x0, x22
    mov x1, x25
    mov x2, x23
    mov x3, x26
    ldr x9, [sp, #24]
    mov x4, x9
    mov x5, x28
    mov x6, x14
    bl _lb_gpu_12metal_encode
    b L4_82
L4_81:
L4_82:
    adrp x14, l_text_59@PAGE
    add x14, x14, l_text_59@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    bl _objc_msgSend
    adrp x14, l_text_60@PAGE
    add x14, x14, l_text_60@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x20
    mov x1, x14
    ldr x2, [sp, #0]
    bl _objc_msgSend
    ldr x9, [sp, #56]
    add x23, x9, #8
    adrp x14, l_text_61@PAGE
    add x14, x14, l_text_61@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    mov x14, x0
    str x14, [x23]
    adrp x14, l_text_62@PAGE
    add x14, x14, l_text_62@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    sub x23, x29, #168
    mov x9, #0
    strb w9, [x23]
    add x14, x23, #32
    mov x9, #0
    strb w9, [x14]
    sub x10, x29, #848
    str x24, [x10]
    ldr x25, [x24]
    cbnz x25, L4_151
    b L4_149
L4_151:
L4_148:
    adrp x14, l_text_24@PAGE
    add x14, x14, l_text_24@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x25
    mov x1, x14
    bl _objc_msgSend
    b L4_150
L4_149:
L4_150:
L4_152:
    sub x10, x29, #848
    str x21, [x10]
    ldr x20, [x21]
    cbnz x20, L4_156
    b L4_154
L4_156:
L4_153:
    adrp x14, l_text_24@PAGE
    add x14, x14, l_text_24@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    b L4_155
L4_154:
L4_155:
L4_157:
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x23
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #880]
    ldr x20, [sp, #872]
    ldr x21, [sp, #864]
    ldr x22, [sp, #856]
    ldr x23, [sp, #848]
    ldr x24, [sp, #840]
    ldr x25, [sp, #832]
    ldr x26, [sp, #824]
    ldr x27, [sp, #816]
    ldr x28, [sp, #808]
    ldr d8, [sp, #800]
    ldr d9, [sp, #792]
    ldr d10, [sp, #784]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_87:
    sub x14, x29, #648
    sub x10, x29, #848
    str x14, [x10]
    sub x14, x29, #848
    ldr x14, [x14]
    ldr x14, [x14]
    cbnz x14, L4_161
    b L4_159
L4_161:
L4_158:
    mov x19, x14
    adrp x15, l_text_24@PAGE
    add x15, x15, l_text_24@PAGEOFF
    mov x0, x15
    bl _lb_gpu_9metal_sel
    mov x15, x0
    mov x0, x19
    mov x1, x15
    bl _objc_msgSend
    b L4_160
L4_159:
L4_160:
L4_162:
    sub x14, x29, #640
    sub x10, x29, #848
    str x14, [x10]
    sub x14, x29, #848
    ldr x14, [x14]
    ldr x14, [x14]
    cbnz x14, L4_166
    b L4_164
L4_166:
L4_163:
    mov x19, x14
    adrp x15, l_text_24@PAGE
    add x15, x15, l_text_24@PAGEOFF
    mov x0, x15
    bl _lb_gpu_9metal_sel
    mov x15, x0
    mov x0, x19
    mov x1, x15
    bl _objc_msgSend
    b L4_165
L4_164:
L4_165:
L4_167:
    mov x0, x14
    bl _objc_autoreleasePoolPop
    adrp x0, l_text_63@PAGE
    add x0, x0, l_text_63@PAGEOFF
    adrp x1, l_text_19@PAGE
    add x1, x1, l_text_19@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_21metal_surface_destroy
    .no_dead_strip _lb_gpu_21metal_surface_destroy
_lb_gpu_21metal_surface_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #256
    str x19, [sp, #232]
    str x20, [sp, #224]
    str x21, [sp, #216]
    str x22, [sp, #208]
    sub x16, x29, #64
    str x0, [x16]
    sub x16, x29, #80
    str x1, [x16]
    bl _objc_autoreleasePoolPush
    mov x19, x0
    cbnz x19, L5_1
    b L5_2
L5_2:
    adrp x0, l_text_64@PAGE
    add x0, x0, l_text_64@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L5_1:
    sub x14, x29, #64
    ldr x20, [x14]
    mov x0, x20
    sub x8, x29, #136
    bl _lb_gpu_18metal_surface_wait
    sub x15, x29, #136
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L5_6
    b L5_5
L5_6:
    sub x14, x29, #104
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L5_3
L5_5:
    b L5_4
L5_3:
L5_4:
    sub x14, x29, #80
    sub x10, x29, #168
    str x20, [x10]
    mov x10, x14
    sub x11, x29, #184
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x14, x29, #184
    mov x0, x14
    sub x8, x29, #248
    bl _lb_window_Presentation_10macos_view
    sub x15, x29, #248
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L5_20
    b L5_19
L5_20:
    add x14, x15, #8
    sub x21, x29, #208
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L5_17
L5_19:
    ldr x21, [x15]
    b L5_18
L5_17:
    b L5_29
L5_21:
L5_18:
    ldr x22, [x20]
    cbnz x22, L5_25
    b L5_23
L5_25:
L5_22:
    adrp x14, l_text_65@PAGE
    add x14, x14, l_text_65@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    mov x14, x0
    cmp x14, x22
    b.ne L5_27
L5_26:
    adrp x14, l_text_17@PAGE
    add x14, x14, l_text_17@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x21
    mov x1, x14
    mov x2, #0
    bl _objc_msgSend
    adrp x14, l_text_18@PAGE
    add x14, x14, l_text_18@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x21
    mov x1, x14
    mov x2, #0
    bl _objc_msgSend
    b L5_28
L5_27:
L5_28:
    b L5_24
L5_23:
L5_24:
L5_29:
    add x14, x20, #24
    ldr x14, [x14]
    cbnz x14, L5_10
    b L5_8
L5_10:
L5_7:
    mov x0, x14
    bl _lb_gpu_21metal_drawing_destroy
    b L5_9
L5_8:
L5_9:
    ldr x21, [x20]
    cbnz x21, L5_14
    b L5_12
L5_14:
L5_11:
    adrp x14, l_text_24@PAGE
    add x14, x14, l_text_24@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    b L5_13
L5_12:
L5_13:
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x15, x29, #152
    str x20, [x15]
    add x21, x15, #8
    movz x9, #32
    str x9, [x21]
    ldr x21, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L5_16
    b L5_15
L5_16:
    add x20, x14, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L5_15:
    mov x0, x19
    bl _objc_autoreleasePoolPop
    ldr x19, [sp, #232]
    ldr x20, [sp, #224]
    ldr x21, [sp, #216]
    ldr x22, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_gpu_13metal_surface_0init

    .section __TEXT,__const
l_text_0:
    .asciz "null_foreign"
l_text_1:
    .asciz "src/std/gpu/metal/surface.lucb:14:5"
l_text_2:
    .asciz "memory.unset"
l_text_3:
    .asciz "src/std/gpu/metal/surface.lucb:17:5"
l_text_4:
    .asciz "memory.exhausted"
l_text_5:
    .asciz "CAMetalLayer"
l_text_6:
    .asciz "new"
l_text_7:
    .asciz "could not create a Metal presentation layer"
l_text_8:
    .asciz "setDevice:"
l_text_9:
    .asciz "setPixelFormat:"
l_text_10:
    .asciz "setFramebufferOnly:"
l_text_11:
    .asciz "setOpaque:"
l_text_12:
    .asciz "setDisplaySyncEnabled:"
l_text_13:
    .asciz "setAllowsNextDrawableTimeout:"
l_text_14:
    .asciz "setPresentsWithTransaction:"
l_text_15:
    .asciz "could not create the sRGB presentation color space"
l_text_16:
    .asciz "setColorspace:"
l_text_17:
    .asciz "setLayer:"
l_text_18:
    .asciz "setWantsLayer:"
l_text_19:
    .asciz "unreachable"
l_text_20:
    .asciz "src/std/gpu/metal/surface.lucb:36:5"
l_text_21:
    .asciz "src/std/gpu/metal/surface.lucb:39:5"
l_text_22:
    .asciz "waitUntilCompleted"
l_text_23:
    .asciz "status"
l_text_24:
    .asciz "release"
l_text_25:
    .asciz "Metal command execution failed; recreate the GPU surface"
l_text_26:
    .asciz "src/std/gpu/metal/surface.lucb:53:5"
l_text_27:
    .asciz "src/std/gpu/metal/surface.lucb:56:5"
l_text_28:
    .asciz "Metal presentation supports at most 16384 backing pixels per dimension"
l_text_29:
    .asciz "setContentsScale:"
l_text_30:
    .asciz "setDrawableSize:"
l_text_31:
    .asciz "nextDrawable"
l_text_32:
    .asciz "texture"
l_text_33:
    .asciz "Metal returned a drawable without a texture"
l_text_34:
    .asciz "MTLRenderPassDescriptor"
l_text_35:
    .asciz "renderPassDescriptor"
l_text_36:
    .asciz "could not create a Metal render pass"
l_text_37:
    .asciz "colorAttachments"
l_text_38:
    .asciz "objectAtIndexedSubscript:"
l_text_39:
    .asciz "setTexture:"
l_text_40:
    .asciz "setLoadAction:"
l_text_41:
    .asciz "setStoreAction:"
l_text_42:
    .asciz "setClearColor:"
l_text_43:
    .asciz "GPU drawing state was not initialized"
l_text_44:
    .asciz "src/std/gpu/metal/surface.lucb:87:9"
l_text_45:
    .asciz "depthAttachment"
l_text_46:
    .asciz "src/std/gpu/metal/surface.lucb:89:9"
l_text_47:
    .asciz "setClearDepth:"
l_text_48:
    .asciz "newBufferWithBytes:length:options:"
l_text_49:
    .asciz "src/std/gpu/metal/surface.lucb:93:9"
l_text_50:
    .asciz "could not upload GPU triangle data"
l_text_51:
    .asciz "src/std/gpu/metal/surface.lucb:97:9"
l_text_52:
    .asciz "could not upload GPU coverage"
l_text_53:
    .asciz "commandBuffer"
l_text_54:
    .asciz "could not create a Metal command buffer"
l_text_55:
    .asciz "renderCommandEncoderWithDescriptor:"
l_text_56:
    .asciz "could not create a Metal render encoder"
l_text_57:
    .asciz "missing GPU drawing state"
l_text_58:
    .asciz "src/std/gpu/metal/surface.lucb:101:9"
l_text_59:
    .asciz "endEncoding"
l_text_60:
    .asciz "presentDrawable:"
l_text_61:
    .asciz "retain"
l_text_62:
    .asciz "commit"
l_text_63:
    .asciz "src/std/gpu/metal/surface.lucb:108:5"
l_text_64:
    .asciz "src/std/gpu/metal/surface.lucb:111:5"
l_text_65:
    .asciz "layer"
l_text_66:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3
    .section __DATA,__data
    .p2align 3
    .globl _lb_gpu_19metal_surface_limit
    .weak_definition _lb_gpu_19metal_surface_limit
_lb_gpu_19metal_surface_limit:
    .zero 8

.subsections_via_symbols
