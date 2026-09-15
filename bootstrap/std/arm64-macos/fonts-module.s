    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_fonts_module_0init
_lb_fonts_module_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, _lb_fonts_failed@PAGE
    add x14, x14, _lb_fonts_failed@PAGEOFF
    movz x9, #118
    movk x9, #3178, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_fonts_Bitmap_close
    .no_dead_strip _lb_fonts_Bitmap_close
_lb_fonts_Bitmap_close:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    sub x16, x29, #40
    str x0, [x16]
    sub x9, x29, #40
    ldr x19, [x9]
    add x14, x19, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls L1_2
L1_1:
    adrp x15, _lb_memory_heap@PAGE
    add x15, x15, _lb_memory_heap@PAGEOFF
    sub x12, x29, #56
    ldr x13, [x19]
    str x13, [x12]
    add x13, x12, #8
    str x14, [x13]
    ldr x13, [x15]
    add x15, x15, #8
    ldr x15, [x15]
    cbnz x15, L1_5
    b L1_4
L1_5:
    add x14, x15, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x13
    mov x9, x12
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L1_4:
    b L1_3
L1_2:
L1_3:
    sub x20, x29, #88
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    mov x10, x20
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_fonts_Face_init
    .no_dead_strip _lb_fonts_Face_init
_lb_fonts_Face_init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #544
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #512]
    str x20, [sp, #504]
    str x21, [sp, #496]
    str d8, [sp, #488]
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #112
    str d0, [x16]
    sub x16, x29, #128
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #96
    ldr x19, [x9]
    bl _lb_thread_7is_main
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L2_28
L2_27:
    sub x20, x29, #352
    adrp x14, _lb_interop_12wrong_thread@PAGE
    add x14, x14, _lb_interop_12wrong_thread@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_17@PAGE
    add x14, x14, l_text_17@PAGEOFF
    sub x15, x29, #368
    str x14, [x15]
    add x14, x15, #8
    movz x9, #37
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #160
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    b L2_31
L2_30:
    b L2_29
L2_28:
L2_29:
    sub x14, x29, #352
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #160
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
L2_31:
    sub x15, x29, #160
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_2
    b L2_1
L2_2:
    sub x19, x29, #88
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr d8, [sp, #488]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_3:
L2_1:
    sub x14, x29, #112
    ldr d8, [x14]
    movz x9, #16416, lsl #48
    fmov d24, x9
    fcmp d8, d24
    cset w14, ge
    cbnz w14, L2_7
    b L2_37
L2_37:
    mov w15, w14
    b L2_8
L2_7:
    movz x9, #16464, lsl #48
    fmov d24, x9
    fcmp d8, d24
    cset w15, ls
L2_8:
    and w14, w15, #255
    mov x10, #0
    cmp w14, w10
    b.ne L2_5
L2_4:
    sub x19, x29, #88
    adrp x14, _lb_fonts_failed@PAGE
    add x14, x14, _lb_fonts_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_1@PAGE
    add x14, x14, l_text_1@PAGEOFF
    sub x15, x29, #176
    str x14, [x15]
    add x14, x15, #8
    movz x9, #44
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr d8, [sp, #488]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_9:
    b L2_6
L2_5:
L2_6:
    sub x20, x29, #128
    add x21, x20, #8
    ldr x14, [x21]
    movz x10, #255
    cmp x14, x10
    cset w14, hi
    cbnz w14, L2_38
    b L2_13
L2_38:
    mov w15, w14
    b L2_14
L2_13:
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_utf8_valid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L2_14:
    and w14, w15, #255
    cbnz w14, L2_10
    b L2_11
L2_10:
    sub x19, x29, #88
    adrp x14, _lb_fonts_failed@PAGE
    add x14, x14, _lb_fonts_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_2@PAGE
    add x14, x14, l_text_2@PAGEOFF
    sub x15, x29, #192
    str x14, [x15]
    add x14, x15, #8
    movz x9, #42
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr d8, [sp, #488]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_15:
    b L2_12
L2_11:
L2_12:
    ldr x14, [x20]
    ldr x15, [x21]
    mov x9, #0
    mov x12, x9
L2_16:
    cmp x12, x15
    b.hs L2_19
L2_17:
    add x13, x14, x12
    ldrb w13, [x13]
    and w13, w13, #255
    mov x10, #0
    cmp w13, w10
    b.ne L2_21
L2_20:
    sub x19, x29, #88
    adrp x14, _lb_fonts_failed@PAGE
    add x14, x14, _lb_fonts_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_3@PAGE
    add x14, x14, l_text_3@PAGEOFF
    sub x15, x29, #208
    str x14, [x15]
    add x14, x15, #8
    movz x9, #30
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr d8, [sp, #488]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_23:
    b L2_22
L2_21:
L2_22:
L2_18:
    add x13, x12, #1
    mov x12, x13
    b L2_16
L2_19:
    sub x21, x29, #248
    sub x10, x29, #456
    str d8, [x10]
    mov x10, x20
    sub x11, x29, #472
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x14, x29, #472
    fmov d16, d8
    fmov d0, d16
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #544
    bl _lb_fonts_8mac_face
    sub x15, x29, #544
    add x14, x15, #64
    ldrb w14, [x14]
    cbnz w14, L2_33
    b L2_32
L2_33:
    add x14, x15, #40
    sub x20, x29, #440
    add x12, x20, #40
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #64
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #320
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    b L2_36
L2_34:
L2_32:
    sub x20, x29, #440
    mov x10, x15
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    add x14, x20, #64
    mov x9, #0
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #320
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldp x16, x17, [x10, #48]
    stp x16, x17, [x11, #48]
    ldr x16, [x10, #64]
    str x16, [x11, #64]
    b L2_36
L2_35:
    adrp x0, l_text_25@PAGE
    add x0, x0, l_text_25@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at
L2_36:
    sub x15, x29, #320
    add x14, x15, #64
    ldrb w14, [x14]
    cbnz w14, L2_25
    b L2_24
L2_25:
    add x14, x15, #40
    sub x19, x29, #88
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr d8, [sp, #488]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_26:
L2_24:
    mov x10, x15
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    ldr x14, [x21]
    str x14, [x19]
    add x14, x19, #8
    add x12, x21, #8
    ldr x12, [x12]
    str x12, [x14]
    add x14, x19, #16
    str d8, [x14]
    add x14, x19, #24
    add x12, x21, #16
    ldr d24, [x12]
    str d24, [x14]
    add x14, x19, #32
    add x12, x21, #24
    ldr d24, [x12]
    str d24, [x14]
    add x14, x19, #40
    add x12, x21, #32
    ldr d24, [x12]
    str d24, [x14]
    sub x14, x29, #88
    add x12, x14, #24
    mov x9, #0
    strb w9, [x12]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr d8, [sp, #488]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_fonts_Face_measure
    .no_dead_strip _lb_fonts_Face_measure
_lb_fonts_Face_measure:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #400
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #368]
    str x20, [sp, #360]
    str x21, [sp, #352]
    str x22, [sp, #344]
    str x23, [sp, #336]
    str x24, [sp, #328]
    str x25, [sp, #320]
    str x26, [sp, #312]
    str x27, [sp, #304]
    str x28, [sp, #296]
    sub x16, x29, #152
    str x0, [x16]
    sub x16, x29, #168
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #152
    ldr x19, [x9]
    ldr x14, [x19]
    mov x10, #0
    cmp x14, x10
    b.ne L3_2
L3_1:
    sub x19, x29, #144
    add x14, x19, #8
    adrp x15, _lb_fonts_failed@PAGE
    add x15, x15, _lb_fonts_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_4@PAGE
    add x15, x15, l_text_4@PAGEOFF
    sub x12, x29, #184
    str x15, [x12]
    add x15, x12, #8
    movz x9, #18
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
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    ldr x24, [sp, #328]
    ldr x25, [sp, #320]
    ldr x26, [sp, #312]
    ldr x27, [sp, #304]
    ldr x28, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_4:
    b L3_3
L3_2:
L3_3:
    sub x14, x29, #168
    mov x10, x14
    sub x11, x29, #280
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x20, x29, #280
    add x21, x20, #8
    ldr x14, [x21]
    movz x10, #4096
    cmp x14, x10
    b.ls L3_10
L3_9:
    sub x20, x29, #264
    add x14, x20, #8
    adrp x15, _lb_fonts_failed@PAGE
    add x15, x15, _lb_fonts_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_18@PAGE
    add x15, x15, l_text_18@PAGEOFF
    sub x12, x29, #296
    str x15, [x12]
    add x15, x12, #8
    movz x9, #44
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #224
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    b L3_35
L3_12:
    b L3_11
L3_10:
L3_11:
    sub x27, x29, #312
    sub x28, x29, #336
    add x22, x28, #16
    sub x23, x29, #352
    add x24, x27, #8
    mov x9, #0
    mov x25, x9
    mov x9, #0
    mov x26, x9
L3_13:
    ldr x14, [x21]
    cmp x25, x14
    b.hs L3_15
L3_14:
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x25
    sub x8, x29, #336
    bl _lb_utf8_decode
    ldrb w14, [x22]
    cbnz w14, L3_16
    b L3_17
L3_16:
    mov x10, x28
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b L3_18
L3_17:
    sub x20, x29, #264
    add x14, x20, #8
    adrp x15, _lb_fonts_failed@PAGE
    add x15, x15, _lb_fonts_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_19@PAGE
    add x15, x15, l_text_19@PAGEOFF
    sub x12, x29, #368
    str x15, [x12]
    add x15, x12, #8
    movz x9, #24
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #224
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    b L3_35
L3_19:
L3_18:
    mov x10, x23
    mov x11, x27
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr w14, [x27]
    mov w14, w14
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    cbnz w15, L3_36
    b L3_23
L3_36:
    mov w12, w15
    b L3_24
L3_23:
    movz x10, #10
    cmp w14, w10
    cset w12, eq
L3_24:
    and w15, w12, #255
    cbnz w15, L3_37
    b L3_25
L3_37:
    mov w12, w15
    b L3_26
L3_25:
    movz x10, #13
    cmp w14, w10
    cset w12, eq
L3_26:
    and w15, w12, #255
    cbnz w15, L3_38
    b L3_27
L3_38:
    mov w14, w15
    b L3_28
L3_27:
    movz x10, #9
    cmp w14, w10
    cset w15, eq
    mov w14, w15
L3_28:
    and w15, w14, #255
    cbnz w15, L3_20
    b L3_21
L3_20:
    sub x20, x29, #264
    add x14, x20, #8
    adrp x15, _lb_fonts_failed@PAGE
    add x15, x15, _lb_fonts_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_20@PAGE
    add x15, x15, l_text_20@PAGEOFF
    sub x12, x29, #384
    str x15, [x12]
    add x15, x12, #8
    movz x9, #49
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #224
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    b L3_35
L3_29:
    b L3_22
L3_21:
L3_22:
    ldr x14, [x24]
    mov x9, x14
    mov x10, x25
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_33@PAGE
    add x1, x1, l_text_33@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x26
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_33@PAGE
    add x1, x1, l_text_33@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    mov x25, x14
    mov x26, x15
    b L3_13
L3_15:
    movz x10, #1024
    cmp x26, x10
    b.ls L3_31
L3_30:
    sub x20, x29, #264
    add x14, x20, #8
    adrp x15, _lb_fonts_failed@PAGE
    add x15, x15, _lb_fonts_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_23@PAGE
    add x15, x15, l_text_23@PAGEOFF
    sub x12, x29, #400
    str x15, [x12]
    add x15, x12, #8
    movz x9, #40
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #224
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    b L3_35
L3_33:
    b L3_32
L3_31:
L3_32:
    sub x14, x29, #264
    str x26, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #224
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    b L3_35
L3_34:
    adrp x0, l_text_24@PAGE
    add x0, x0, l_text_24@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at
L3_35:
    sub x15, x29, #224
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L3_6
    b L3_5
L3_6:
    add x14, x15, #8
    sub x19, x29, #144
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
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    ldr x23, [sp, #336]
    ldr x24, [sp, #328]
    ldr x25, [sp, #320]
    ldr x26, [sp, #312]
    ldr x27, [sp, #304]
    ldr x28, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_7:
L3_5:
    ldr x14, [x15]
    ucvtf d24, x14
    add x14, x19, #24
    ldr d25, [x14]
    fmul d24, d24, d25
    sub x14, x29, #144
    str d24, [x14]
    add x12, x14, #32
    mov x9, #0
    strb w9, [x12]
    mov x1, x14
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
    ldr x23, [sp, #336]
    ldr x24, [sp, #328]
    ldr x25, [sp, #320]
    ldr x26, [sp, #312]
    ldr x27, [sp, #304]
    ldr x28, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_8:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_fonts_Face_rasterize
    .no_dead_strip _lb_fonts_Face_rasterize
_lb_fonts_Face_rasterize:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #560
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #528]
    str x20, [sp, #520]
    str x21, [sp, #512]
    str x22, [sp, #504]
    str x23, [sp, #496]
    str x24, [sp, #488]
    str x25, [sp, #480]
    str x26, [sp, #472]
    str x27, [sp, #464]
    str d8, [sp, #456]
    sub x16, x29, #176
    str x0, [x16]
    sub x16, x29, #192
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #208
    str d0, [x16]
    sub x9, x29, #176
    ldr x19, [x9]
    bl _lb_thread_7is_main
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L4_36
L4_35:
    sub x20, x29, #544
    adrp x14, _lb_interop_12wrong_thread@PAGE
    add x14, x14, _lb_interop_12wrong_thread@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_17@PAGE
    add x14, x14, l_text_17@PAGEOFF
    sub x15, x29, #560
    str x14, [x15]
    add x14, x15, #8
    movz x9, #37
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #240
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    b L4_39
L4_38:
    b L4_37
L4_36:
L4_37:
    sub x14, x29, #544
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #240
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
L4_39:
    sub x15, x29, #240
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L4_2
    b L4_1
L4_2:
    sub x19, x29, #168
    add x14, x19, #32
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #56
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #528]
    ldr x20, [sp, #520]
    ldr x21, [sp, #512]
    ldr x22, [sp, #504]
    ldr x23, [sp, #496]
    ldr x24, [sp, #488]
    ldr x25, [sp, #480]
    ldr x26, [sp, #472]
    ldr x27, [sp, #464]
    ldr d8, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_3:
L4_1:
    sub x20, x29, #192
    mov x0, x19
    mov x9, x20
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #280
    bl _lb_fonts_Face_measure
    sub x15, x29, #280
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L4_5
    b L4_4
L4_5:
    add x14, x15, #8
    sub x19, x29, #168
    add x12, x19, #32
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #56
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #528]
    ldr x20, [sp, #520]
    ldr x21, [sp, #512]
    ldr x22, [sp, #504]
    ldr x23, [sp, #496]
    ldr x24, [sp, #488]
    ldr x25, [sp, #480]
    ldr x26, [sp, #472]
    ldr x27, [sp, #464]
    ldr d8, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_6:
L4_4:
    ldr d24, [x15]
    sub x14, x29, #208
    ldr d8, [x14]
    movz x9, #16352, lsl #48
    fmov d25, x9
    fcmp d8, d25
    cset w14, ge
    cbnz w14, L4_10
    b L4_40
L4_40:
    mov w15, w14
    b L4_11
L4_10:
    movz x9, #16400, lsl #48
    fmov d25, x9
    fcmp d8, d25
    cset w15, ls
L4_11:
    and w14, w15, #255
    mov x10, #0
    cmp w14, w10
    b.ne L4_8
L4_7:
    sub x19, x29, #168
    add x14, x19, #32
    adrp x15, _lb_fonts_failed@PAGE
    add x15, x15, _lb_fonts_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_7@PAGE
    add x15, x15, l_text_7@PAGEOFF
    sub x12, x29, #296
    str x15, [x12]
    add x15, x12, #8
    movz x9, #46
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #56
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #528]
    ldr x20, [sp, #520]
    ldr x21, [sp, #512]
    ldr x22, [sp, #504]
    ldr x23, [sp, #496]
    ldr x24, [sp, #488]
    ldr x25, [sp, #480]
    ldr x26, [sp, #472]
    ldr x27, [sp, #464]
    ldr d8, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_12:
    b L4_9
L4_8:
L4_9:
    fmul d25, d24, d8
    fmov d16, d25
    fmov d0, d16
    bl _lb_math_ceil
    fmov d25, d0
    adrp x14, l_text_8@PAGE
    add x14, x14, l_text_8@PAGEOFF
    fmov d16, d25
    fmov d0, d16
    movz x0, #64
    movz x1, #1
    mov x2, x14
    bl _lb_core_6f_to_u
    mov x14, x0
    mov x9, x14
    movz x10, #4
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_8@PAGE
    add x0, x0, l_text_8@PAGEOFF
    adrp x1, l_text_33@PAGE
    add x1, x1, l_text_33@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    add x14, x19, #32
    ldr d25, [x14]
    add x14, x19, #40
    ldr d26, [x14]
    fadd d25, d25, d26
    fmul d25, d8, d25
    fmov d16, d25
    fmov d0, d16
    bl _lb_math_ceil
    fmov d25, d0
    adrp x14, l_text_9@PAGE
    add x14, x14, l_text_9@PAGEOFF
    fmov d16, d25
    fmov d0, d16
    movz x0, #64
    movz x1, #1
    mov x2, x14
    bl _lb_core_6f_to_u
    mov x14, x0
    mov x9, x14
    movz x10, #4
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_9@PAGE
    add x0, x0, l_text_9@PAGEOFF
    adrp x1, l_text_33@PAGE
    add x1, x1, l_text_33@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x22, x9
    movz x10, #16384
    cmp x21, x10
    cset w14, hi
    cbnz w14, L4_41
    b L4_16
L4_41:
    mov w15, w14
    b L4_17
L4_16:
    movz x10, #1024
    cmp x22, x10
    cset w15, hi
L4_17:
    and w14, w15, #255
    cbnz w14, L4_42
    b L4_18
L4_42:
    mov w15, w14
    b L4_19
L4_18:
    mov x9, x21
    mov x10, x22
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_33@PAGE
    add x1, x1, l_text_33@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    movz x10, #64, lsl #16
    cmp x14, x10
    cset w15, hi
L4_19:
    and w14, w15, #255
    cbnz w14, L4_13
    b L4_14
L4_13:
    sub x19, x29, #168
    add x14, x19, #32
    adrp x15, _lb_fonts_failed@PAGE
    add x15, x15, _lb_fonts_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_11@PAGE
    add x15, x15, l_text_11@PAGEOFF
    sub x12, x29, #312
    str x15, [x12]
    add x15, x12, #8
    movz x9, #45
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #56
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #528]
    ldr x20, [sp, #520]
    ldr x21, [sp, #512]
    ldr x22, [sp, #504]
    ldr x23, [sp, #496]
    ldr x24, [sp, #488]
    ldr x25, [sp, #480]
    ldr x26, [sp, #472]
    ldr x27, [sp, #464]
    ldr d8, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_20:
    b L4_15
L4_14:
L4_15:
    sub x23, x29, #328
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x24, x29, #344
    mov x10, x14
    mov x11, x24
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x9, x21
    mov x10, x22
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_33@PAGE
    add x1, x1, l_text_33@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x25, x9
    sub x26, x29, #392
    movz x10, #16384, lsl #48
    cmp x25, x10
    b.ls L4_22
L4_21:
    add x14, x26, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_13@PAGE
    add x15, x15, l_text_13@PAGEOFF
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x26, #40
    movz x9, #1
    strb w9, [x14]
    b L4_23
L4_22:
    ldr x14, [x24]
    add x15, x24, #8
    ldr x15, [x15]
    cbnz x15, L4_24
    b L4_25
L4_25:
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
L4_24:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x25
    movz x2, #1
    sub x8, x29, #416
    ldr x17, [sp], #16
    blr x17
    sub x24, x29, #416
    add x12, x24, #16
    ldrb w12, [x12]
    mov x10, #0
    cmp x25, x10
    cset w13, ne
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    and w12, w13, w12
    cbnz w12, L4_26
    b L4_27
L4_26:
    add x14, x26, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_15@PAGE
    add x15, x15, l_text_15@PAGEOFF
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x26, #40
    movz x9, #1
    strb w9, [x14]
    b L4_23
L4_27:
    ldr x27, [x24]
    mov x0, x27
    mov x1, #0
    mov x2, x25
    bl _memset
    mov x14, x0
    str x27, [x26]
    add x14, x26, #8
    str x25, [x14]
    add x14, x26, #40
    mov x9, #0
    strb w9, [x14]
L4_23:
    add x14, x26, #40
    ldrb w14, [x14]
    cbnz w14, L4_29
    b L4_28
L4_29:
    add x14, x26, #16
    sub x19, x29, #168
    add x15, x19, #32
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #56
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #528]
    ldr x20, [sp, #520]
    ldr x21, [sp, #512]
    ldr x22, [sp, #504]
    ldr x23, [sp, #496]
    ldr x24, [sp, #488]
    ldr x25, [sp, #480]
    ldr x26, [sp, #472]
    ldr x27, [sp, #464]
    ldr d8, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_30:
L4_28:
    mov x10, x26
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x24, x29, #448
    sub x25, x29, #480
    mov x11, x25
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    mov x10, x23
    mov x11, x25
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x25, #16
    str w21, [x14]
    add x14, x25, #20
    str w22, [x14]
    movz x9, #16384, lsl #48
    fmov d24, x9
    fdiv d24, d24, d8
    add x14, x25, #24
    str d24, [x14]
    mov x10, x25
    mov x11, x24
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    fmov d16, d8
    fmov d0, d16
    mov x9, x19
    mov x0, x9
    mov x9, x20
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x3, x24
    sub x8, x29, #512
    bl _lb_fonts_10mac_raster
    sub x15, x29, #512
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L4_32
    b L4_31
L4_32:
    sub x19, x29, #168
    add x14, x19, #32
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #56
    movz x9, #1
    strb w9, [x14]
    mov x0, x24
    bl _lb_fonts_Bitmap_close
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #528]
    ldr x20, [sp, #520]
    ldr x21, [sp, #512]
    ldr x22, [sp, #504]
    ldr x23, [sp, #496]
    ldr x24, [sp, #488]
    ldr x25, [sp, #480]
    ldr x26, [sp, #472]
    ldr x27, [sp, #464]
    ldr d8, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_33:
L4_31:
    sub x19, x29, #168
    mov x10, x24
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    add x14, x19, #56
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #528]
    ldr x20, [sp, #520]
    ldr x21, [sp, #512]
    ldr x22, [sp, #504]
    ldr x23, [sp, #496]
    ldr x24, [sp, #488]
    ldr x25, [sp, #480]
    ldr x26, [sp, #472]
    ldr x27, [sp, #464]
    ldr d8, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_34:
    adrp x0, l_text_16@PAGE
    add x0, x0, l_text_16@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_fonts_Face_close
    .no_dead_strip _lb_fonts_Face_close
_lb_fonts_Face_close:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    str x19, [sp, #8]
    sub x16, x29, #32
    str x0, [x16]
    sub x9, x29, #32
    ldr x19, [x9]
    ldr x14, [x19]
    cbnz x14, L5_4
    b L5_2
L5_4:
L5_1:
    mov x0, x14
    bl _CFRelease
    mov x9, #0
    str x9, [x19]
    add x15, x19, #8
    mov x9, #0
    str x9, [x15]
    b L5_3
L5_2:
L5_3:
    ldr x19, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_memory_copy_0g1_u8
    .weak_definition _lb_memory_copy_0g1_u8
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
    cbnz w14, L6_11
    b L6_4
L6_11:
    mov w15, w14
    b L6_5
L6_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
L6_5:
    and w14, w15, #255
    cbnz w14, L6_1
    b L6_2
L6_1:
    adrp x14, l_text_29@PAGE
    add x14, x14, l_text_29@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, l_text_30@PAGE
    add x14, x14, l_text_30@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L6_3
L6_2:
L6_3:
    mov x10, #0
    cmp x19, x10
    b.ls L6_7
L6_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _memcpy
    mov x14, x0
    cbnz x14, L6_9
    b L6_10
L6_10:
    adrp x0, l_text_31@PAGE
    add x0, x0, l_text_31@PAGEOFF
    adrp x1, l_text_32@PAGE
    add x1, x1, l_text_32@PAGEOFF
    bl _lb_core_7trap_at
L6_9:
    b L6_8
L6_7:
L6_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_fonts_module_0init

    .section __TEXT,__const
l_text_0:
    .asciz "src/std/fonts/module.lucb:23:13"
l_text_1:
    .asciz "font size must be finite and in 8..64 points"
l_text_2:
    .asciz "font family must be UTF-8 within 255 bytes"
l_text_3:
    .asciz "font family cannot contain NUL"
l_text_4:
    .asciz "the font is closed"
l_text_5:
    .asciz "unreachable"
l_text_6:
    .asciz "src/std/fonts/module.lucb:57:9"
l_text_7:
    .asciz "font raster scale must be finite and in 0.5..4"
l_text_8:
    .asciz "src/std/fonts/module.lucb:66:9"
l_text_9:
    .asciz "src/std/fonts/module.lucb:67:9"
l_text_10:
    .asciz "src/std/fonts/module.lucb:68:9"
l_text_11:
    .asciz "rasterized text exceeds the 4 MiB image limit"
l_text_12:
    .asciz "src/std/fonts/module.lucb:70:9"
l_text_13:
    .asciz "memory.exhausted: the allocation size overflows"
l_text_14:
    .asciz "memory.unset"
l_text_15:
    .asciz "memory.exhausted"
l_text_16:
    .asciz "src/std/fonts/module.lucb:81:9"
l_text_17:
    .asciz "font operations require the UI thread"
l_text_18:
    .asciz "a text run supports at most 4096 UTF-8 bytes"
l_text_19:
    .asciz "text must be valid UTF-8"
l_text_20:
    .asciz "text runs cannot contain NUL, tabs or line breaks"
l_text_21:
    .asciz "src/std/fonts/module.lucb:107:9"
l_text_22:
    .asciz "src/std/fonts/module.lucb:108:9"
l_text_23:
    .asciz "a text run supports at most 1024 scalars"
l_text_24:
    .asciz "src/std/fonts/module.lucb:111:5"
l_text_25:
    .asciz "src/std/fonts/module.lucb:122:9"
l_text_26:
    .asciz "src/std/fonts/module.lucb:130:5"
l_text_27:
    .asciz "src/std/fonts/module.lucb:132:5"
l_text_28:
    .asciz "src/std/fonts/module.lucb:133:5"
l_text_29:
    .asciz "index out of bounds"
l_text_30:
    .asciz "src/std/memory.lucb:328:9"
l_text_31:
    .asciz "src/std/memory.lucb:330:9"
l_text_32:
    .asciz "null_foreign"
l_text_33:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3
    .globl _lb_fonts_failed
    .no_dead_strip _lb_fonts_failed
    .zerofill __DATA,__bss,_lb_fonts_failed,4,2

.subsections_via_symbols
