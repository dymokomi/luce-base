    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_gpu_13metal_drawing_0init
_lb_gpu_13metal_drawing_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_10metal_text
_lb_gpu_10metal_text:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #112]
    sub x16, x29, #88
    str x0, [x16]
    adrp x14, l_text_0@PAGE
    add x14, x14, l_text_0@PAGEOFF
    mov x0, x14
    sub x8, x29, #128
    bl _lb_gpu_11metal_class
    sub x15, x29, #128
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L1_2
    b L1_1
L1_2:
    add x14, x15, #8
    sub x19, x29, #72
    add x12, x19, #8
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_3:
L1_1:
    ldr x19, [x15]
    adrp x14, l_text_1@PAGE
    add x14, x14, l_text_1@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    sub x12, x29, #88
    ldr x12, [x12]
    mov x0, x19
    mov x1, x14
    mov x2, x12
    bl _objc_msgSend
    mov x14, x0
    cbnz x14, L1_4
    b L1_5
L1_4:
    b L1_6
L1_5:
    sub x19, x29, #72
    add x14, x19, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_2@PAGE
    add x15, x15, l_text_2@PAGEOFF
    sub x12, x29, #144
    str x15, [x12]
    add x15, x12, #8
    movz x9, #34
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_7:
L1_6:
    sub x15, x29, #72
    str x14, [x15]
    add x12, x15, #32
    mov x9, #0
    strb w9, [x12]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_8:
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_18metal_drawing_open
    .no_dead_strip _lb_gpu_18metal_drawing_open
_lb_gpu_18metal_drawing_open:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #640
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #608]
    str x20, [sp, #600]
    str x21, [sp, #592]
    str x22, [sp, #584]
    str x23, [sp, #576]
    str x24, [sp, #568]
    str x25, [sp, #560]
    str x26, [sp, #552]
    str x27, [sp, #544]
    str x28, [sp, #536]
    sub x16, x29, #160
    str x0, [x16]
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x19, x29, #176
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x20, x29, #216
    ldr x14, [x19]
    add x15, x19, #8
    ldr x15, [x15]
    cbnz x15, L2_1
    b L2_2
L2_2:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at
L2_1:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #48
    movz x2, #8
    sub x8, x29, #240
    ldr x17, [sp], #16
    blr x17
    sub x13, x29, #240
    add x12, x13, #16
    ldrb w12, [x12]
    cbnz w12, L2_3
    b L2_4
L2_4:
    add x14, x20, #8
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_7@PAGE
    add x15, x15, l_text_7@PAGEOFF
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    b L2_5
L2_3:
    ldr x19, [x13]
    sub x21, x29, #288
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    mov x10, x21
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    str x19, [x20]
    add x14, x20, #32
    mov x9, #0
    strb w9, [x14]
L2_5:
    add x14, x20, #32
    ldrb w14, [x14]
    cbnz w14, L2_7
    b L2_6
L2_7:
    add x14, x20, #8
    sub x19, x29, #144
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #608]
    ldr x20, [sp, #600]
    ldr x21, [sp, #592]
    ldr x22, [sp, #584]
    ldr x23, [sp, #576]
    ldr x24, [sp, #568]
    ldr x25, [sp, #560]
    ldr x26, [sp, #552]
    ldr x27, [sp, #544]
    ldr x28, [sp, #536]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_8:
L2_6:
    ldr x19, [x20]
    adrp x14, l_text_8@PAGE
    add x14, x14, l_text_8@PAGEOFF
    mov x0, x14
    sub x8, x29, #328
    bl _lb_gpu_10metal_text
    sub x15, x29, #328
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L2_10
    b L2_9
L2_10:
    add x14, x15, #8
    sub x20, x29, #144
    add x12, x20, #8
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_gpu_21metal_drawing_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #608]
    ldr x20, [sp, #600]
    ldr x21, [sp, #592]
    ldr x22, [sp, #584]
    ldr x23, [sp, #576]
    ldr x24, [sp, #568]
    ldr x25, [sp, #560]
    ldr x26, [sp, #552]
    ldr x27, [sp, #544]
    ldr x28, [sp, #536]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_11:
L2_9:
    ldr x20, [x15]
    sub x21, x29, #336
    mov x9, #0
    str x9, [x21]
    sub x14, x29, #160
    ldr x14, [x14]
    ldr x14, [x14]
    mov x0, x14
    bl _lb_gpu_14metal_required
    mov x22, x0
    adrp x14, l_text_9@PAGE
    add x14, x14, l_text_9@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    mov x2, x20
    mov x3, #0
    mov x4, x21
    bl _objc_msgSend
    mov x20, x0
    cbnz x20, L2_12
    b L2_13
L2_12:
    b L2_14
L2_13:
    sub x20, x29, #144
    add x14, x20, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_10@PAGE
    add x15, x15, l_text_10@PAGEOFF
    sub x12, x29, #352
    str x15, [x12]
    add x15, x12, #8
    movz x9, #48
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_gpu_21metal_drawing_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #608]
    ldr x20, [sp, #600]
    ldr x21, [sp, #592]
    ldr x22, [sp, #584]
    ldr x23, [sp, #576]
    ldr x24, [sp, #568]
    ldr x25, [sp, #560]
    ldr x26, [sp, #552]
    ldr x27, [sp, #544]
    ldr x28, [sp, #536]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_15:
L2_14:
    adrp x23, l_text_11@PAGE
    add x23, x23, l_text_11@PAGEOFF
    mov x0, x23
    bl _lb_gpu_9metal_sel
    mov x24, x0
    adrp x14, l_text_12@PAGE
    add x14, x14, l_text_12@PAGEOFF
    mov x0, x14
    sub x8, x29, #392
    bl _lb_gpu_10metal_text
    sub x15, x29, #392
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L2_17
    b L2_16
L2_17:
    add x14, x15, #8
    sub x21, x29, #144
    add x12, x21, #8
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    adrp x14, l_text_13@PAGE
    add x14, x14, l_text_13@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    mov x0, x19
    bl _lb_gpu_21metal_drawing_destroy
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #608]
    ldr x20, [sp, #600]
    ldr x21, [sp, #592]
    ldr x22, [sp, #584]
    ldr x23, [sp, #576]
    ldr x24, [sp, #568]
    ldr x25, [sp, #560]
    ldr x26, [sp, #552]
    ldr x27, [sp, #544]
    ldr x28, [sp, #536]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_18:
L2_16:
    ldr x14, [x15]
    mov x0, x20
    mov x1, x24
    mov x2, x14
    bl _objc_msgSend
    mov x25, x0
    cbnz x25, L2_19
    b L2_20
L2_19:
    b L2_21
L2_20:
    sub x21, x29, #144
    add x14, x21, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_14@PAGE
    add x15, x15, l_text_14@PAGEOFF
    sub x12, x29, #408
    str x15, [x12]
    add x15, x12, #8
    movz x9, #31
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    adrp x14, l_text_13@PAGE
    add x14, x14, l_text_13@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    mov x0, x19
    bl _lb_gpu_21metal_drawing_destroy
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #608]
    ldr x20, [sp, #600]
    ldr x21, [sp, #592]
    ldr x22, [sp, #584]
    ldr x23, [sp, #576]
    ldr x24, [sp, #568]
    ldr x25, [sp, #560]
    ldr x26, [sp, #552]
    ldr x27, [sp, #544]
    ldr x28, [sp, #536]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_22:
L2_21:
    mov x0, x23
    bl _lb_gpu_9metal_sel
    mov x24, x0
    adrp x14, l_text_15@PAGE
    add x14, x14, l_text_15@PAGEOFF
    mov x0, x14
    sub x8, x29, #448
    bl _lb_gpu_10metal_text
    sub x15, x29, #448
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L2_24
    b L2_23
L2_24:
    add x14, x15, #8
    sub x21, x29, #144
    add x12, x21, #8
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    adrp x22, l_text_13@PAGE
    add x22, x22, l_text_13@PAGEOFF
    mov x0, x22
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x25
    mov x1, x14
    bl _objc_msgSend
    mov x0, x22
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    mov x0, x19
    bl _lb_gpu_21metal_drawing_destroy
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #608]
    ldr x20, [sp, #600]
    ldr x21, [sp, #592]
    ldr x22, [sp, #584]
    ldr x23, [sp, #576]
    ldr x24, [sp, #568]
    ldr x25, [sp, #560]
    ldr x26, [sp, #552]
    ldr x27, [sp, #544]
    ldr x28, [sp, #536]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_25:
L2_23:
    ldr x14, [x15]
    mov x0, x20
    mov x1, x24
    mov x2, x14
    bl _objc_msgSend
    mov x23, x0
    cbnz x23, L2_26
    b L2_27
L2_26:
    b L2_28
L2_27:
    sub x21, x29, #144
    add x14, x21, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_16@PAGE
    add x15, x15, l_text_16@PAGEOFF
    sub x12, x29, #464
    str x15, [x12]
    add x15, x12, #8
    movz x9, #33
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    adrp x22, l_text_13@PAGE
    add x22, x22, l_text_13@PAGEOFF
    mov x0, x22
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x25
    mov x1, x14
    bl _objc_msgSend
    mov x0, x22
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    mov x0, x19
    bl _lb_gpu_21metal_drawing_destroy
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #608]
    ldr x20, [sp, #600]
    ldr x21, [sp, #592]
    ldr x22, [sp, #584]
    ldr x23, [sp, #576]
    ldr x24, [sp, #568]
    ldr x25, [sp, #560]
    ldr x26, [sp, #552]
    ldr x27, [sp, #544]
    ldr x28, [sp, #536]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_29:
L2_28:
    adrp x14, l_text_17@PAGE
    add x14, x14, l_text_17@PAGEOFF
    mov x0, x14
    sub x8, x29, #504
    bl _lb_gpu_11metal_class
    sub x15, x29, #504
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L2_31
    b L2_30
L2_31:
    add x14, x15, #8
    sub x21, x29, #144
    add x12, x21, #8
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    adrp x22, l_text_13@PAGE
    add x22, x22, l_text_13@PAGEOFF
    mov x0, x22
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x23
    mov x1, x14
    bl _objc_msgSend
    mov x0, x22
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x25
    mov x1, x14
    bl _objc_msgSend
    mov x0, x22
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    mov x0, x19
    bl _lb_gpu_21metal_drawing_destroy
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #608]
    ldr x20, [sp, #600]
    ldr x21, [sp, #592]
    ldr x22, [sp, #584]
    ldr x23, [sp, #576]
    ldr x24, [sp, #568]
    ldr x25, [sp, #560]
    ldr x26, [sp, #552]
    ldr x27, [sp, #544]
    ldr x28, [sp, #536]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_32:
L2_30:
    ldr x24, [x15]
    adrp x26, l_text_18@PAGE
    add x26, x26, l_text_18@PAGEOFF
    mov x0, x26
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x24
    mov x1, x14
    bl _objc_msgSend
    mov x24, x0
    cbnz x24, L2_33
    b L2_34
L2_33:
    b L2_35
L2_34:
    sub x21, x29, #144
    add x14, x21, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_19@PAGE
    add x15, x15, l_text_19@PAGEOFF
    sub x12, x29, #520
    str x15, [x12]
    add x15, x12, #8
    movz x9, #42
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    adrp x22, l_text_13@PAGE
    add x22, x22, l_text_13@PAGEOFF
    mov x0, x22
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x23
    mov x1, x14
    bl _objc_msgSend
    mov x0, x22
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x25
    mov x1, x14
    bl _objc_msgSend
    mov x0, x22
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    mov x0, x19
    bl _lb_gpu_21metal_drawing_destroy
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #608]
    ldr x20, [sp, #600]
    ldr x21, [sp, #592]
    ldr x22, [sp, #584]
    ldr x23, [sp, #576]
    ldr x24, [sp, #568]
    ldr x25, [sp, #560]
    ldr x26, [sp, #552]
    ldr x27, [sp, #544]
    ldr x28, [sp, #536]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_36:
L2_35:
    adrp x14, l_text_20@PAGE
    add x14, x14, l_text_20@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x24
    mov x1, x14
    mov x2, x25
    bl _objc_msgSend
    adrp x14, l_text_21@PAGE
    add x14, x14, l_text_21@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x24
    mov x1, x14
    mov x2, x23
    bl _objc_msgSend
    adrp x14, l_text_22@PAGE
    add x14, x14, l_text_22@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x24
    mov x1, x14
    movz x2, #252
    bl _objc_msgSend
    adrp x14, l_text_23@PAGE
    add x14, x14, l_text_23@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x24
    mov x1, x14
    bl _objc_msgSend
    mov x14, x0
    mov x0, x14
    bl _lb_gpu_14metal_required
    mov x27, x0
    adrp x14, l_text_24@PAGE
    add x14, x14, l_text_24@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x27
    mov x1, x14
    mov x2, #0
    bl _objc_msgSend
    mov x14, x0
    mov x0, x14
    bl _lb_gpu_14metal_required
    mov x27, x0
    adrp x14, l_text_25@PAGE
    add x14, x14, l_text_25@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x27
    mov x1, x14
    movz x2, #81
    bl _objc_msgSend
    adrp x14, l_text_26@PAGE
    add x14, x14, l_text_26@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x27
    mov x1, x14
    movz x2, #1
    bl _objc_msgSend
    adrp x14, l_text_27@PAGE
    add x14, x14, l_text_27@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x27
    mov x1, x14
    movz x2, #4
    bl _objc_msgSend
    adrp x14, l_text_28@PAGE
    add x14, x14, l_text_28@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x27
    mov x1, x14
    movz x2, #5
    bl _objc_msgSend
    adrp x14, l_text_29@PAGE
    add x14, x14, l_text_29@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x27
    mov x1, x14
    movz x2, #1
    bl _objc_msgSend
    adrp x14, l_text_30@PAGE
    add x14, x14, l_text_30@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x27
    mov x1, x14
    movz x2, #5
    bl _objc_msgSend
    adrp x14, l_text_31@PAGE
    add x14, x14, l_text_31@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    mov x2, x24
    mov x3, x21
    bl _objc_msgSend
    mov x14, x0
    cbnz x14, L2_37
    b L2_38
L2_37:
    b L2_39
L2_38:
    sub x21, x29, #144
    add x14, x21, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_32@PAGE
    add x15, x15, l_text_32@PAGEOFF
    sub x12, x29, #536
    str x15, [x12]
    add x15, x12, #8
    movz x9, #47
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    adrp x22, l_text_13@PAGE
    add x22, x22, l_text_13@PAGEOFF
    mov x0, x22
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x24
    mov x1, x14
    bl _objc_msgSend
    mov x0, x22
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x23
    mov x1, x14
    bl _objc_msgSend
    mov x0, x22
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x25
    mov x1, x14
    bl _objc_msgSend
    mov x0, x22
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    mov x0, x19
    bl _lb_gpu_21metal_drawing_destroy
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #608]
    ldr x20, [sp, #600]
    ldr x21, [sp, #592]
    ldr x22, [sp, #584]
    ldr x23, [sp, #576]
    ldr x24, [sp, #568]
    ldr x25, [sp, #560]
    ldr x26, [sp, #552]
    ldr x27, [sp, #544]
    ldr x28, [sp, #536]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_40:
L2_39:
    str x14, [x19]
    adrp x15, l_text_33@PAGE
    add x15, x15, l_text_33@PAGEOFF
    mov x0, x15
    sub x8, x29, #576
    bl _lb_gpu_11metal_class
    sub x12, x29, #576
    add x15, x12, #32
    ldrb w15, [x15]
    cbnz w15, L2_42
    b L2_41
L2_42:
    add x14, x12, #8
    sub x21, x29, #144
    add x15, x21, #8
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    adrp x22, l_text_13@PAGE
    add x22, x22, l_text_13@PAGEOFF
    mov x0, x22
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x24
    mov x1, x14
    bl _objc_msgSend
    mov x0, x22
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x23
    mov x1, x14
    bl _objc_msgSend
    mov x0, x22
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x25
    mov x1, x14
    bl _objc_msgSend
    mov x0, x22
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    mov x0, x19
    bl _lb_gpu_21metal_drawing_destroy
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #608]
    ldr x20, [sp, #600]
    ldr x21, [sp, #592]
    ldr x22, [sp, #584]
    ldr x23, [sp, #576]
    ldr x24, [sp, #568]
    ldr x25, [sp, #560]
    ldr x26, [sp, #552]
    ldr x27, [sp, #544]
    ldr x28, [sp, #536]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_43:
L2_41:
    ldr x21, [x12]
    mov x0, x26
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    mov x21, x0
    cbnz x21, L2_44
    b L2_45
L2_44:
    b L2_46
L2_45:
    sub x21, x29, #144
    add x14, x21, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_34@PAGE
    add x15, x15, l_text_34@PAGEOFF
    sub x12, x29, #592
    str x15, [x12]
    add x15, x12, #8
    movz x9, #39
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    adrp x22, l_text_13@PAGE
    add x22, x22, l_text_13@PAGEOFF
    mov x0, x22
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x24
    mov x1, x14
    bl _objc_msgSend
    mov x0, x22
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x23
    mov x1, x14
    bl _objc_msgSend
    mov x0, x22
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x25
    mov x1, x14
    bl _objc_msgSend
    mov x0, x22
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    mov x0, x19
    bl _lb_gpu_21metal_drawing_destroy
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #608]
    ldr x20, [sp, #600]
    ldr x21, [sp, #592]
    ldr x22, [sp, #584]
    ldr x23, [sp, #576]
    ldr x24, [sp, #568]
    ldr x25, [sp, #560]
    ldr x26, [sp, #552]
    ldr x27, [sp, #544]
    ldr x28, [sp, #536]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_47:
L2_46:
    adrp x26, l_text_35@PAGE
    add x26, x26, l_text_35@PAGEOFF
    mov x0, x26
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x21
    mov x1, x14
    movz x2, #1
    bl _objc_msgSend
    adrp x9, l_text_36@PAGE
    add x9, x9, l_text_36@PAGEOFF
    str x9, [sp, #8]
    ldr x0, [sp, #8]
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x21
    mov x1, x14
    movz x2, #1
    bl _objc_msgSend
    add x27, x19, #8
    adrp x28, l_text_37@PAGE
    add x28, x28, l_text_37@PAGEOFF
    mov x0, x28
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    mov x2, x21
    bl _objc_msgSend
    mov x14, x0
    cbnz x14, L2_48
    b L2_49
L2_48:
    b L2_50
L2_49:
    sub x22, x29, #144
    add x14, x22, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_38@PAGE
    add x15, x15, l_text_38@PAGEOFF
    sub x12, x29, #608
    str x15, [x12]
    add x15, x12, #8
    movz x9, #34
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x22, #32
    movz x9, #1
    strb w9, [x14]
    adrp x26, l_text_13@PAGE
    add x26, x26, l_text_13@PAGEOFF
    mov x0, x26
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    mov x0, x26
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x24
    mov x1, x14
    bl _objc_msgSend
    mov x0, x26
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x23
    mov x1, x14
    bl _objc_msgSend
    mov x0, x26
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x25
    mov x1, x14
    bl _objc_msgSend
    mov x0, x26
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    mov x0, x19
    bl _lb_gpu_21metal_drawing_destroy
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #608]
    ldr x20, [sp, #600]
    ldr x21, [sp, #592]
    ldr x22, [sp, #584]
    ldr x23, [sp, #576]
    ldr x24, [sp, #568]
    ldr x25, [sp, #560]
    ldr x26, [sp, #552]
    ldr x27, [sp, #544]
    ldr x28, [sp, #536]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_51:
L2_50:
    str x14, [x27]
    mov x0, x26
    bl _lb_gpu_9metal_sel
    mov x15, x0
    mov x0, x21
    mov x1, x15
    movz x2, #7
    bl _objc_msgSend
    ldr x0, [sp, #8]
    bl _lb_gpu_9metal_sel
    mov x15, x0
    mov x0, x21
    mov x1, x15
    mov x2, #0
    bl _objc_msgSend
    add x9, x19, #16
    str x9, [sp, #0]
    mov x0, x28
    bl _lb_gpu_9metal_sel
    mov x15, x0
    mov x0, x22
    mov x1, x15
    mov x2, x21
    bl _objc_msgSend
    mov x15, x0
    cbnz x15, L2_52
    b L2_53
L2_52:
    b L2_54
L2_53:
    sub x22, x29, #144
    add x14, x22, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_39@PAGE
    add x15, x15, l_text_39@PAGEOFF
    sub x12, x29, #624
    str x15, [x12]
    add x15, x12, #8
    movz x9, #34
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x22, #32
    movz x9, #1
    strb w9, [x14]
    adrp x26, l_text_13@PAGE
    add x26, x26, l_text_13@PAGEOFF
    mov x0, x26
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    mov x0, x26
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x24
    mov x1, x14
    bl _objc_msgSend
    mov x0, x26
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x23
    mov x1, x14
    bl _objc_msgSend
    mov x0, x26
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x25
    mov x1, x14
    bl _objc_msgSend
    mov x0, x26
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    mov x0, x19
    bl _lb_gpu_21metal_drawing_destroy
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #608]
    ldr x20, [sp, #600]
    ldr x21, [sp, #592]
    ldr x22, [sp, #584]
    ldr x23, [sp, #576]
    ldr x24, [sp, #568]
    ldr x25, [sp, #560]
    ldr x26, [sp, #552]
    ldr x27, [sp, #544]
    ldr x28, [sp, #536]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_55:
L2_54:
    ldr x10, [sp, #0]
    str x15, [x10]
    sub x22, x29, #144
    str x19, [x22]
    add x14, x22, #32
    mov x9, #0
    strb w9, [x14]
    adrp x26, l_text_13@PAGE
    add x26, x26, l_text_13@PAGEOFF
    mov x0, x26
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    mov x0, x26
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x24
    mov x1, x14
    bl _objc_msgSend
    mov x0, x26
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x23
    mov x1, x14
    bl _objc_msgSend
    mov x0, x26
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x25
    mov x1, x14
    bl _objc_msgSend
    mov x0, x26
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #608]
    ldr x20, [sp, #600]
    ldr x21, [sp, #592]
    ldr x22, [sp, #584]
    ldr x23, [sp, #576]
    ldr x24, [sp, #568]
    ldr x25, [sp, #560]
    ldr x26, [sp, #552]
    ldr x27, [sp, #544]
    ldr x28, [sp, #536]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_56:
    adrp x14, l_text_13@PAGE
    add x14, x14, l_text_13@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x19
    mov x1, x14
    bl _objc_msgSend
    mov x19, x23
    adrp x14, l_text_13@PAGE
    add x14, x14, l_text_13@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x19
    mov x1, x14
    bl _objc_msgSend
    mov x19, x22
    adrp x14, l_text_13@PAGE
    add x14, x14, l_text_13@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x19
    mov x1, x14
    bl _objc_msgSend
    mov x19, x21
    adrp x14, l_text_13@PAGE
    add x14, x14, l_text_13@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x19
    mov x1, x14
    bl _objc_msgSend
    mov x19, x20
    adrp x14, l_text_13@PAGE
    add x14, x14, l_text_13@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x19
    mov x1, x14
    bl _objc_msgSend
    adrp x0, l_text_40@PAGE
    add x0, x0, l_text_40@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_11metal_depth
    .no_dead_strip _lb_gpu_11metal_depth
_lb_gpu_11metal_depth:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #272
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #240]
    str x20, [sp, #232]
    str x21, [sp, #224]
    str x22, [sp, #216]
    str x23, [sp, #208]
    str x24, [sp, #200]
    str x25, [sp, #192]
    str x26, [sp, #184]
    sub x16, x29, #144
    str x0, [x16]
    sub x16, x29, #160
    str x1, [x16]
    sub x16, x29, #176
    str x2, [x16]
    sub x16, x29, #192
    str x3, [x16]
    sub x14, x29, #160
    ldr x19, [x14]
    add x20, x19, #32
    ldr x14, [x20]
    sub x15, x29, #176
    ldr x21, [x15]
    cmp x14, x21
    cset w14, eq
    cbnz w14, L3_4
    b L3_23
L3_23:
    mov w15, w14
    b L3_5
L3_4:
    add x14, x19, #40
    ldr x14, [x14]
    sub x15, x29, #192
    ldr x15, [x15]
    cmp x14, x15
    cset w15, eq
L3_5:
    and w14, w15, #255
    cbnz w14, L3_1
    b L3_2
L3_1:
    add x14, x19, #24
    ldr x14, [x14]
    mov x0, x14
    bl _lb_gpu_14metal_required
    mov x14, x0
    sub x15, x29, #128
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    ldr x24, [sp, #200]
    ldr x25, [sp, #192]
    ldr x26, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_6:
    b L3_3
L3_2:
L3_3:
    adrp x14, l_text_41@PAGE
    add x14, x14, l_text_41@PAGEOFF
    mov x0, x14
    sub x8, x29, #232
    bl _lb_gpu_11metal_class
    sub x15, x29, #232
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L3_8
    b L3_7
L3_8:
    add x14, x15, #8
    sub x19, x29, #128
    add x12, x19, #8
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    ldr x24, [sp, #200]
    ldr x25, [sp, #192]
    ldr x26, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_9:
L3_7:
    ldr x22, [x15]
    adrp x14, l_text_18@PAGE
    add x14, x14, l_text_18@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    bl _objc_msgSend
    mov x22, x0
    cbnz x22, L3_10
    b L3_11
L3_10:
    b L3_12
L3_11:
    sub x19, x29, #128
    add x14, x19, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_42@PAGE
    add x15, x15, l_text_42@PAGEOFF
    sub x12, x29, #248
    str x15, [x12]
    add x15, x12, #8
    movz x9, #47
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    ldr x24, [sp, #200]
    ldr x25, [sp, #192]
    ldr x26, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_13:
L3_12:
    adrp x14, l_text_43@PAGE
    add x14, x14, l_text_43@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    movz x2, #2
    bl _objc_msgSend
    adrp x14, l_text_25@PAGE
    add x14, x14, l_text_25@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    movz x2, #252
    bl _objc_msgSend
    adrp x14, l_text_44@PAGE
    add x14, x14, l_text_44@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    mov x2, x21
    bl _objc_msgSend
    adrp x14, l_text_45@PAGE
    add x14, x14, l_text_45@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    sub x15, x29, #192
    ldr x23, [x15]
    mov x0, x22
    mov x1, x14
    mov x2, x23
    bl _objc_msgSend
    adrp x14, l_text_46@PAGE
    add x14, x14, l_text_46@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    movz x2, #2
    bl _objc_msgSend
    adrp x14, l_text_47@PAGE
    add x14, x14, l_text_47@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    movz x2, #4
    bl _objc_msgSend
    sub x14, x29, #144
    ldr x14, [x14]
    ldr x14, [x14]
    mov x0, x14
    bl _lb_gpu_14metal_required
    mov x24, x0
    adrp x14, l_text_48@PAGE
    add x14, x14, l_text_48@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x24
    mov x1, x14
    mov x2, x22
    bl _objc_msgSend
    mov x24, x0
    cbnz x24, L3_14
    b L3_15
L3_14:
    b L3_16
L3_15:
    sub x19, x29, #128
    add x14, x19, #8
    adrp x15, _lb_gpu_failed@PAGE
    add x15, x15, _lb_gpu_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_49@PAGE
    add x15, x15, l_text_49@PAGEOFF
    sub x12, x29, #264
    str x15, [x12]
    add x15, x12, #8
    movz x9, #36
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    adrp x14, l_text_13@PAGE
    add x14, x14, l_text_13@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    bl _objc_msgSend
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    ldr x24, [sp, #200]
    ldr x25, [sp, #192]
    ldr x26, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_17:
L3_16:
    add x25, x19, #24
    ldr x26, [x25]
    cbnz x26, L3_21
    b L3_19
L3_21:
L3_18:
    adrp x14, l_text_13@PAGE
    add x14, x14, l_text_13@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x26
    mov x1, x14
    bl _objc_msgSend
    b L3_20
L3_19:
L3_20:
    str x24, [x25]
    str x21, [x20]
    add x14, x19, #40
    str x23, [x14]
    sub x26, x29, #128
    str x24, [x26]
    add x14, x26, #32
    mov x9, #0
    strb w9, [x14]
    adrp x14, l_text_13@PAGE
    add x14, x14, l_text_13@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x22
    mov x1, x14
    bl _objc_msgSend
    mov x1, x26
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    ldr x24, [sp, #200]
    ldr x25, [sp, #192]
    ldr x26, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_22:
    adrp x14, l_text_13@PAGE
    add x14, x14, l_text_13@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x19
    mov x1, x14
    bl _objc_msgSend
    adrp x0, l_text_50@PAGE
    add x0, x0, l_text_50@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_gpu_21metal_drawing_destroy
    .no_dead_strip _lb_gpu_21metal_drawing_destroy
_lb_gpu_21metal_drawing_destroy:
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
    ldr x20, [x14]
    cbnz x20, L4_4
    b L4_2
L4_4:
L4_1:
    adrp x14, l_text_13@PAGE
    add x14, x14, l_text_13@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    b L4_3
L4_2:
L4_3:
    ldr x20, [x19]
    cbnz x20, L4_8
    b L4_6
L4_8:
L4_5:
    adrp x14, l_text_13@PAGE
    add x14, x14, l_text_13@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    b L4_7
L4_6:
L4_7:
    add x14, x19, #8
    ldr x20, [x14]
    cbnz x20, L4_12
    b L4_10
L4_12:
L4_9:
    adrp x14, l_text_13@PAGE
    add x14, x14, l_text_13@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    b L4_11
L4_10:
L4_11:
    add x14, x19, #16
    ldr x20, [x14]
    cbnz x20, L4_16
    b L4_14
L4_16:
L4_13:
    adrp x14, l_text_13@PAGE
    add x14, x14, l_text_13@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    b L4_15
L4_14:
L4_15:
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x15, x29, #64
    str x19, [x15]
    add x12, x15, #8
    movz x9, #48
    str x9, [x12]
    ldr x12, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L4_18
    b L4_17
L4_18:
    add x13, x14, #16
    ldr x13, [x13]
    mov x17, x13
    str x17, [sp, #-16]!
    mov x0, x12
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L4_17:
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_12metal_encode
    .no_dead_strip _lb_gpu_12metal_encode
_lb_gpu_12metal_encode:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #944
    str x19, [sp, #920]
    str x20, [sp, #912]
    str x21, [sp, #904]
    str x22, [sp, #896]
    str x23, [sp, #888]
    str x24, [sp, #880]
    str x25, [sp, #872]
    str x26, [sp, #864]
    str x27, [sp, #856]
    str x28, [sp, #848]
    str d8, [sp, #840]
    str d9, [sp, #832]
    sub x16, x29, #128
    str x0, [x16]
    sub x16, x29, #144
    str x1, [x16]
    sub x16, x29, #160
    str x2, [x16]
    sub x16, x29, #176
    str x3, [x16]
    sub x16, x29, #248
    str x4, [x16]
    sub x16, x29, #264
    str x5, [x16]
    sub x16, x29, #280
    str x6, [x16]
    sub x0, x29, #248
    ldr x1, [x0]
    movz x2, #72
    bl _memcpy
    sub x14, x29, #128
    ldr x9, [x14]
    str x9, [sp, #320]
    adrp x14, l_text_51@PAGE
    add x14, x14, l_text_51@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    sub x15, x29, #144
    ldr x20, [x15]
    ldr x15, [x20]
    ldr x0, [sp, #320]
    mov x1, x14
    mov x2, x15
    bl _objc_msgSend
    adrp x14, l_text_52@PAGE
    add x14, x14, l_text_52@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    sub x15, x29, #160
    ldr x15, [x15]
    ldr x0, [sp, #320]
    mov x1, x14
    mov x2, x15
    mov x3, #0
    mov x4, #0
    bl _objc_msgSend
    adrp x14, l_text_53@PAGE
    add x14, x14, l_text_53@PAGEOFF
    mov x0, x14
    bl _lb_gpu_9metal_sel
    mov x14, x0
    sub x15, x29, #176
    ldr x15, [x15]
    ldr x0, [sp, #320]
    mov x1, x14
    mov x2, x15
    mov x3, #0
    mov x4, #0
    bl _objc_msgSend
    sub x14, x29, #248
    add x15, x14, #16
    ldr x21, [x15]
    add x15, x15, #8
    ldr x15, [x15]
    add x14, x14, #40
    ldr x9, [x14]
    str x9, [sp, #24]
    add x14, x15, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_54@PAGE
    add x0, x0, l_text_54@PAGEOFF
    adrp x1, l_text_55@PAGE
    add x1, x1, l_text_55@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x9, [sp, #24]
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_54@PAGE
    add x0, x0, l_text_54@PAGEOFF
    adrp x1, l_text_55@PAGE
    add x1, x1, l_text_55@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    ldr x10, [sp, #24]
    cmp x9, x10
    b.ls L5_5
L5_6:
    adrp x0, l_text_54@PAGE
    add x0, x0, l_text_54@PAGEOFF
    adrp x1, l_text_55@PAGE
    add x1, x1, l_text_55@PAGEOFF
    bl _lb_core_7trap_at
L5_5:
    sub x14, x29, #296
    str x21, [x14]
    add x14, x14, #8
    ldr x9, [sp, #24]
    str x9, [x14]
    sub x23, x29, #408
    add x24, x23, #16
    sub x25, x29, #264
    add x26, x24, #4
    sub x9, x29, #280
    str x9, [sp, #304]
    add x9, x24, #8
    str x9, [sp, #288]
    add x9, x24, #12
    str x9, [sp, #280]
    sub x9, x29, #440
    str x9, [sp, #16]
    add x9, x23, #40
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x9, x9, #32
    str x9, [sp, #272]
    sub x9, x29, #504
    str x9, [sp, #256]
    ldr x9, [sp, #256]
    add x9, x9, #16
    str x9, [sp, #248]
    ldr x9, [sp, #256]
    add x9, x9, #24
    str x9, [sp, #240]
    sub x9, x29, #472
    str x9, [sp, #232]
    sub x9, x29, #472
    str x9, [sp, #264]
    sub x9, x29, #472
    str x9, [sp, #224]
    adrp x9, l_text_58@PAGE
    add x9, x9, l_text_58@PAGEOFF
    str x9, [sp, #216]
    sub x9, x29, #552
    str x9, [sp, #208]
    ldr x9, [sp, #16]
    add x9, x9, #8
    str x9, [sp, #200]
    ldr x9, [sp, #208]
    add x9, x9, #8
    str x9, [sp, #192]
    ldr x9, [sp, #16]
    add x9, x9, #16
    str x9, [sp, #184]
    ldr x9, [sp, #208]
    add x9, x9, #16
    str x9, [sp, #176]
    ldr x9, [sp, #16]
    add x9, x9, #24
    str x9, [sp, #168]
    ldr x9, [sp, #208]
    add x9, x9, #24
    str x9, [sp, #160]
    mov x9, #0
    fmov d8, x9
    ldr x9, [sp, #208]
    add x9, x9, #32
    str x9, [sp, #152]
    movz x9, #16368, lsl #48
    fmov d9, x9
    ldr x9, [sp, #208]
    add x9, x9, #40
    str x9, [sp, #144]
    adrp x9, l_text_59@PAGE
    add x9, x9, l_text_59@PAGEOFF
    str x9, [sp, #136]
    sub x9, x29, #584
    str x9, [sp, #128]
    ldr x9, [sp, #128]
    add x9, x9, #8
    str x9, [sp, #120]
    ldr x9, [sp, #128]
    add x9, x9, #16
    str x9, [sp, #112]
    ldr x9, [sp, #128]
    add x9, x9, #24
    str x9, [sp, #104]
    adrp x9, l_text_60@PAGE
    add x9, x9, l_text_60@PAGEOFF
    str x9, [sp, #96]
    add x9, x23, #32
    str x9, [sp, #88]
    add x9, x20, #16
    str x9, [sp, #72]
    add x9, x20, #8
    str x9, [sp, #80]
    sub x9, x29, #616
    str x9, [sp, #64]
    add x9, x23, #80
    str x9, [sp, #56]
    adrp x9, l_text_61@PAGE
    add x9, x9, l_text_61@PAGEOFF
    str x9, [sp, #48]
    adrp x9, l_text_62@PAGE
    add x9, x9, l_text_62@PAGEOFF
    str x9, [sp, #40]
    add x9, x23, #8
    str x9, [sp, #32]
    mov x9, #0
    mov x19, x9
L5_1:
    ldr x10, [sp, #24]
    cmp x19, x10
    b.hs L5_4
L5_2:
    movz x10, #112
    mul x14, x19, x10
    add x14, x14, x21
    mov x10, x14
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldp x16, x17, [x10, #64]
    stp x16, x17, [x11, #64]
    ldp x16, x17, [x10, #80]
    stp x16, x17, [x11, #80]
    ldp x16, x17, [x10, #96]
    stp x16, x17, [x11, #96]
    ldr w14, [x24]
    mov w14, w14
    ldr x20, [x25]
    mov x0, x14
    mov x1, x20
    bl _lb_gpu_9metal_min
    str x0, [sp, #312]
    ldr w14, [x26]
    mov w14, w14
    ldr x9, [sp, #304]
    ldr x28, [x9]
    mov x0, x14
    mov x1, x28
    bl _lb_gpu_9metal_min
    str x0, [sp, #296]
    ldr x9, [sp, #288]
    ldr w14, [x9]
    mov w14, w14
    mov x9, x20
    ldr x10, [sp, #312]
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_56@PAGE
    add x0, x0, l_text_56@PAGEOFF
    adrp x1, l_text_64@PAGE
    add x1, x1, l_text_64@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    mov x0, x14
    mov x1, x15
    bl _lb_gpu_9metal_min
    mov x22, x0
    ldr x9, [sp, #280]
    ldr w14, [x9]
    mov w14, w14
    mov x9, x28
    ldr x10, [sp, #296]
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_57@PAGE
    add x0, x0, l_text_57@PAGEOFF
    adrp x1, l_text_64@PAGE
    add x1, x1, l_text_64@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    mov x0, x14
    mov x1, x15
    bl _lb_gpu_9metal_min
    mov x27, x0
    mov x10, #0
    cmp x22, x10
    cset w14, eq
    cbnz w14, L5_19
    b L5_10
L5_19:
    mov w15, w14
    b L5_11
L5_10:
    mov x10, #0
    cmp x27, x10
    cset w15, eq
L5_11:
    and w14, w15, #255
    cbnz w14, L5_7
    b L5_8
L5_7:
    b L5_3
L5_12:
    b L5_9
L5_8:
L5_9:
    ldr x9, [sp, #272]
    ldrb w14, [x9]
    cbnz w14, L5_13
    b L5_14
L5_13:
    ldr x10, [sp, #8]
    ldr x11, [sp, #264]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    b L5_15
L5_14:
    ldr x11, [sp, #256]
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    ucvtf d24, x20
    ldr x10, [sp, #248]
    str d24, [x10]
    ucvtf d24, x28
    ldr x10, [sp, #240]
    str d24, [x10]
    ldr x10, [sp, #256]
    ldr x11, [sp, #232]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
L5_15:
    ldr x10, [sp, #224]
    ldr x11, [sp, #16]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x0, [sp, #216]
    bl _lb_gpu_9metal_sel
    mov x20, x0
    ldr x11, [sp, #208]
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    ldr x9, [sp, #16]
    ldr d24, [x9]
    ldr x10, [sp, #208]
    str d24, [x10]
    ldr x9, [sp, #200]
    ldr d24, [x9]
    ldr x10, [sp, #192]
    str d24, [x10]
    ldr x9, [sp, #184]
    ldr d24, [x9]
    ldr x10, [sp, #176]
    str d24, [x10]
    ldr x9, [sp, #168]
    ldr d24, [x9]
    ldr x10, [sp, #160]
    str d24, [x10]
    ldr x10, [sp, #152]
    str d8, [x10]
    ldr x10, [sp, #144]
    str d9, [x10]
    ldr x0, [sp, #320]
    mov x1, x20
    ldr x9, [sp, #208]
    mov x2, x9
    bl _objc_msgSend
    ldr x0, [sp, #136]
    bl _lb_gpu_9metal_sel
    mov x20, x0
    ldr x11, [sp, #128]
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    ldr x9, [sp, #312]
    ldr x10, [sp, #128]
    str x9, [x10]
    ldr x9, [sp, #296]
    ldr x10, [sp, #120]
    str x9, [x10]
    ldr x10, [sp, #112]
    str x22, [x10]
    ldr x10, [sp, #104]
    str x27, [x10]
    ldr x0, [sp, #320]
    mov x1, x20
    ldr x9, [sp, #128]
    mov x2, x9
    bl _objc_msgSend
    ldr x0, [sp, #96]
    bl _lb_gpu_9metal_sel
    mov x14, x0
    ldr x9, [sp, #88]
    ldrb w15, [x9]
    cbnz w15, L5_16
    b L5_17
L5_16:
    ldr x9, [sp, #80]
    ldr x15, [x9]
    b L5_18
L5_17:
    ldr x9, [sp, #72]
    ldr x15, [x9]
L5_18:
    ldr x0, [sp, #320]
    mov x1, x14
    mov x2, x15
    bl _objc_msgSend
    ldr x10, [sp, #56]
    ldr x11, [sp, #64]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x0, [sp, #48]
    bl _lb_gpu_9metal_sel
    mov x12, x0
    ldr x0, [sp, #320]
    mov x1, x12
    ldr x2, [sp, #64]
    movz x3, #32
    movz x4, #1
    bl _objc_msgSend
    ldr x0, [sp, #40]
    bl _lb_gpu_9metal_sel
    mov x12, x0
    ldr x13, [x23]
    ldr x9, [sp, #32]
    ldr x20, [x9]
    ldr x0, [sp, #320]
    mov x1, x12
    movz x2, #3
    mov x3, x13
    mov x4, x20
    bl _objc_msgSend
L5_3:
    add x14, x19, #1
    mov x19, x14
    b L5_1
L5_4:
    ldr x19, [sp, #920]
    ldr x20, [sp, #912]
    ldr x21, [sp, #904]
    ldr x22, [sp, #896]
    ldr x23, [sp, #888]
    ldr x24, [sp, #880]
    ldr x25, [sp, #872]
    ldr x26, [sp, #864]
    ldr x27, [sp, #856]
    ldr x28, [sp, #848]
    ldr d8, [sp, #840]
    ldr d9, [sp, #832]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_gpu_9metal_min
_lb_gpu_9metal_min:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    sub x15, x29, #48
    ldr x15, [x15]
    cmp x14, x15
    b.hs L6_2
L6_1:
    mov x15, x14
    b L6_3
L6_2:
L6_3:
    mov x9, x15
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_4:
    adrp x0, l_text_63@PAGE
    add x0, x0, l_text_63@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_gpu_13metal_drawing_0init

    .section __TEXT,__const
l_text_0:
    .asciz "NSString"
l_text_1:
    .asciz "stringWithUTF8String:"
l_text_2:
    .asciz "could not create Metal shader text"
l_text_3:
    .asciz "unreachable"
l_text_4:
    .asciz "src/std/gpu/metal/drawing.lucb:13:5"
l_text_5:
    .asciz "memory.unset"
l_text_6:
    .asciz "src/std/gpu/metal/drawing.lucb:16:5"
l_text_7:
    .asciz "memory.exhausted"
l_text_8:
    .asciz "#include <metal_stdlib>\nusing namespace metal;\nstruct V { float4 position [[position]]; float4 color; };\nstruct Mask { float x,y,width,height; uint columns,rows,offset,reserved; };\nvertex V luce_vertex(const device float* data [[buffer(0)]], uint id [[vertex_id]]) {\n uint i=id*8; V v; v.position=float4(data[i],data[i+1],data[i+2],data[i+3]); v.color=float4(data[i+4],data[i+5],data[i+6],data[i+7]); return v;\n}\nfloat coverage(const device uint* data, constant Mask& m, int2 p) {\n p=clamp(p,int2(0),int2(m.columns-1,m.rows-1)); uint i=m.offset+uint(p.y)*m.columns+uint(p.x);\n return float((data[i/4] >> ((i%4)*8)) & 255u)/255.0;\n}\nfragment float4 luce_fragment(V v [[stage_in]], const device uint* data [[buffer(0)]], constant Mask& m [[buffer(1)]]) {\n if(m.columns==0) return v.color;\n float2 p=(v.position.xy-float2(m.x,m.y))/float2(m.width,m.height)*float2(m.columns,m.rows)-0.5;\n int2 q=int2(floor(p)); float2 f=fract(p);\n float a=mix(mix(coverage(data,m,q),coverage(data,m,q+int2(1,0)),f.x),mix(coverage(data,m,q+int2(0,1)),coverage(data,m,q+int2(1,1)),f.x),f.y);\n return float4(v.color.rgb,v.color.a*a);\n}"
l_text_9:
    .asciz "newLibraryWithSource:options:error:"
l_text_10:
    .asciz "could not compile the portable triangle pipeline"
l_text_11:
    .asciz "newFunctionWithName:"
l_text_12:
    .asciz "luce_vertex"
l_text_13:
    .asciz "release"
l_text_14:
    .asciz "the GPU vertex entry is missing"
l_text_15:
    .asciz "luce_fragment"
l_text_16:
    .asciz "the GPU fragment entry is missing"
l_text_17:
    .asciz "MTLRenderPipelineDescriptor"
l_text_18:
    .asciz "new"
l_text_19:
    .asciz "could not create a GPU pipeline descriptor"
l_text_20:
    .asciz "setVertexFunction:"
l_text_21:
    .asciz "setFragmentFunction:"
l_text_22:
    .asciz "setDepthAttachmentPixelFormat:"
l_text_23:
    .asciz "colorAttachments"
l_text_24:
    .asciz "objectAtIndexedSubscript:"
l_text_25:
    .asciz "setPixelFormat:"
l_text_26:
    .asciz "setBlendingEnabled:"
l_text_27:
    .asciz "setSourceRGBBlendFactor:"
l_text_28:
    .asciz "setDestinationRGBBlendFactor:"
l_text_29:
    .asciz "setSourceAlphaBlendFactor:"
l_text_30:
    .asciz "setDestinationAlphaBlendFactor:"
l_text_31:
    .asciz "newRenderPipelineStateWithDescriptor:error:"
l_text_32:
    .asciz "could not create the portable triangle pipeline"
l_text_33:
    .asciz "MTLDepthStencilDescriptor"
l_text_34:
    .asciz "could not create a GPU depth descriptor"
l_text_35:
    .asciz "setDepthCompareFunction:"
l_text_36:
    .asciz "setDepthWriteEnabled:"
l_text_37:
    .asciz "newDepthStencilStateWithDescriptor:"
l_text_38:
    .asciz "could not create GPU depth testing"
l_text_39:
    .asciz "could not create GPU overlay state"
l_text_40:
    .asciz "src/std/gpu/metal/drawing.lucb:50:5"
l_text_41:
    .asciz "MTLTextureDescriptor"
l_text_42:
    .asciz "could not create a GPU depth texture descriptor"
l_text_43:
    .asciz "setTextureType:"
l_text_44:
    .asciz "setWidth:"
l_text_45:
    .asciz "setHeight:"
l_text_46:
    .asciz "setStorageMode:"
l_text_47:
    .asciz "setUsage:"
l_text_48:
    .asciz "newTextureWithDescriptor:"
l_text_49:
    .asciz "could not allocate GPU depth storage"
l_text_50:
    .asciz "src/std/gpu/metal/drawing.lucb:69:5"
l_text_51:
    .asciz "setRenderPipelineState:"
l_text_52:
    .asciz "setVertexBuffer:offset:atIndex:"
l_text_53:
    .asciz "setFragmentBuffer:offset:atIndex:"
l_text_54:
    .asciz "src/std/gpu/metal/drawing.lucb:86:5"
l_text_55:
    .asciz "index out of bounds"
l_text_56:
    .asciz "src/std/gpu/metal/drawing.lucb:89:9"
l_text_57:
    .asciz "src/std/gpu/metal/drawing.lucb:90:9"
l_text_58:
    .asciz "setViewport:"
l_text_59:
    .asciz "setScissorRect:"
l_text_60:
    .asciz "setDepthStencilState:"
l_text_61:
    .asciz "setFragmentBytes:length:atIndex:"
l_text_62:
    .asciz "drawPrimitives:vertexStart:vertexCount:"
l_text_63:
    .asciz "src/std/gpu/metal/drawing.lucb:102:5"
l_text_64:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
