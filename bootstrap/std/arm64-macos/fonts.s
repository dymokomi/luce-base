    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_fonts_0init
_lb_fonts_0init:
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
    .globl _lb_fonts_Face_init
_lb_fonts_Face_init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #832
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #800]
    str x20, [sp, #792]
    str x21, [sp, #784]
    str x22, [sp, #776]
    str x23, [sp, #768]
    str x24, [sp, #760]
    str d8, [sp, #752]
    str d9, [sp, #744]
    sub x16, x29, #128
    str x0, [x16]
    sub x16, x29, #144
    str d0, [x16]
    sub x16, x29, #160
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #128
    ldr x19, [x9]
    bl _lb_thread_7is_main
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L1_28
L1_27:
    sub x20, x29, #384
    adrp x14, _lb_interop_12wrong_thread@PAGE
    add x14, x14, _lb_interop_12wrong_thread@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_17@PAGE
    add x14, x14, l_text_17@PAGEOFF
    sub x15, x29, #400
    str x14, [x15]
    add x14, x15, #8
    movz x9, #37
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #192
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L1_31
L1_30:
    b L1_29
L1_28:
L1_29:
    sub x14, x29, #384
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #192
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L1_31:
    sub x15, x29, #192
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L1_2
    b L1_1
L1_2:
    sub x19, x29, #120
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
    ldr x19, [sp, #800]
    ldr x20, [sp, #792]
    ldr x21, [sp, #784]
    ldr x22, [sp, #776]
    ldr x23, [sp, #768]
    ldr x24, [sp, #760]
    ldr d8, [sp, #752]
    ldr d9, [sp, #744]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_3:
L1_1:
    sub x14, x29, #144
    ldr d8, [x14]
    movz x9, #16416, lsl #48
    fmov d24, x9
    fcmp d8, d24
    cset w14, ge
    cbnz w14, L1_7
    b L1_53
L1_53:
    mov w15, w14
    b L1_8
L1_7:
    movz x9, #16464, lsl #48
    fmov d24, x9
    fcmp d8, d24
    cset w15, ls
L1_8:
    and w14, w15, #255
    mov x10, #0
    cmp w14, w10
    b.ne L1_5
L1_4:
    sub x19, x29, #120
    adrp x14, _lb_fonts_failed@PAGE
    add x14, x14, _lb_fonts_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_1@PAGE
    add x14, x14, l_text_1@PAGEOFF
    sub x15, x29, #208
    str x14, [x15]
    add x14, x15, #8
    movz x9, #44
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
    ldr x19, [sp, #800]
    ldr x20, [sp, #792]
    ldr x21, [sp, #784]
    ldr x22, [sp, #776]
    ldr x23, [sp, #768]
    ldr x24, [sp, #760]
    ldr d8, [sp, #752]
    ldr d9, [sp, #744]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_9:
    b L1_6
L1_5:
L1_6:
    sub x20, x29, #160
    add x21, x20, #8
    ldr x14, [x21]
    movz x10, #255
    cmp x14, x10
    cset w14, hi
    cbnz w14, L1_54
    b L1_13
L1_54:
    mov w15, w14
    b L1_14
L1_13:
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_utf8_valid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L1_14:
    and w14, w15, #255
    cbnz w14, L1_10
    b L1_11
L1_10:
    sub x19, x29, #120
    adrp x14, _lb_fonts_failed@PAGE
    add x14, x14, _lb_fonts_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_2@PAGE
    add x14, x14, l_text_2@PAGEOFF
    sub x15, x29, #224
    str x14, [x15]
    add x14, x15, #8
    movz x9, #42
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
    ldr x19, [sp, #800]
    ldr x20, [sp, #792]
    ldr x21, [sp, #784]
    ldr x22, [sp, #776]
    ldr x23, [sp, #768]
    ldr x24, [sp, #760]
    ldr d8, [sp, #752]
    ldr d9, [sp, #744]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_15:
    b L1_12
L1_11:
L1_12:
    ldr x14, [x20]
    ldr x22, [x21]
    mov x9, #0
    mov x15, x9
L1_16:
    cmp x15, x22
    b.hs L1_19
L1_17:
    add x21, x14, x15
    ldrb w21, [x21]
    and w21, w21, #255
    mov x10, #0
    cmp w21, w10
    b.ne L1_21
L1_20:
    sub x19, x29, #120
    adrp x14, _lb_fonts_failed@PAGE
    add x14, x14, _lb_fonts_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_3@PAGE
    add x14, x14, l_text_3@PAGEOFF
    sub x15, x29, #240
    str x14, [x15]
    add x14, x15, #8
    movz x9, #30
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
    ldr x19, [sp, #800]
    ldr x20, [sp, #792]
    ldr x21, [sp, #784]
    ldr x22, [sp, #776]
    ldr x23, [sp, #768]
    ldr x24, [sp, #760]
    ldr d8, [sp, #752]
    ldr d9, [sp, #744]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_23:
    b L1_22
L1_21:
L1_22:
L1_18:
    add x21, x15, #1
    mov x15, x21
    b L1_16
L1_19:
    sub x21, x29, #280
    sub x10, x29, #488
    str d8, [x10]
    mov x10, x20
    sub x11, x29, #504
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #504
    sub x10, x29, #664
    str d8, [x10]
    mov x10, x14
    sub x11, x29, #680
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #680
    mov x10, #0
    cmp x22, x10
    b.ne L1_37
L1_36:
    adrp x14, l_text_31@PAGE
    add x14, x14, l_text_31@PAGEOFF
    sub x15, x29, #712
    str x14, [x15]
    add x14, x15, #8
    movz x9, #5
    str x9, [x14]
    sub x14, x29, #696
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L1_38
L1_37:
    sub x15, x29, #696
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L1_38:
    sub x14, x29, #696
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #752
    bl _lb_fonts_10mac_string
    sub x15, x29, #752
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L1_40
    b L1_39
L1_40:
    add x14, x15, #8
    sub x20, x29, #648
    add x22, x20, #40
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #64
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #576
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldr x12, [x10, #64]
    str x12, [x11, #64]
    b L1_51
L1_41:
L1_39:
    ldr x20, [x15]
    fmov d16, d8
    fmov d0, d16
    mov x0, x20
    mov x1, #0
    bl _CTFontCreateWithName
    mov x22, x0
    cbnz x22, L1_42
    b L1_43
L1_42:
    b L1_44
L1_43:
    sub x22, x29, #648
    add x14, x22, #40
    adrp x15, _lb_fonts_failed@PAGE
    add x15, x15, _lb_fonts_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_32@PAGE
    add x15, x15, l_text_32@PAGEOFF
    sub x23, x29, #768
    str x15, [x23]
    add x15, x23, #8
    movz x9, #30
    str x9, [x15]
    add x14, x14, #8
    mov x10, x23
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #64
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _CFRelease
    mov x10, x22
    sub x11, x29, #576
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldr x12, [x10, #64]
    str x12, [x11, #64]
    b L1_51
L1_45:
L1_44:
    mov x0, x22
    bl _CTFontGetSymbolicTraits
    mov w14, w0
    movz x10, #1024
    and w14, w14, w10
    mov x10, #0
    cmp w14, w10
    b.ne L1_47
L1_46:
    sub x23, x29, #648
    add x14, x23, #40
    adrp x15, _lb_fonts_failed@PAGE
    add x15, x15, _lb_fonts_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_33@PAGE
    add x15, x15, l_text_33@PAGEOFF
    sub x24, x29, #784
    str x15, [x24]
    add x15, x24, #8
    movz x9, #36
    str x9, [x15]
    add x14, x14, #8
    mov x10, x24
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x23, #64
    movz x9, #1
    strb w9, [x14]
    mov x0, x22
    bl _CFRelease
    mov x0, x20
    bl _CFRelease
    mov x10, x23
    sub x11, x29, #576
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldr x12, [x10, #64]
    str x12, [x11, #64]
    b L1_51
L1_49:
    b L1_48
L1_47:
L1_48:
    sub x14, x29, #786
    movz x9, #77
    strh w9, [x14]
    sub x23, x29, #788
    mov x9, #0
    strh w9, [x23]
    mov x0, x22
    mov x1, x14
    mov x2, x23
    movz x3, #1
    bl _CTFontGetGlyphsForCharacters
    mov w14, w0
    mov x0, x22
    mov x1, #0
    mov x2, x23
    mov x3, #0
    movz x4, #1
    bl _CTFontGetAdvancesForGlyphs
    fmov d9, d0
    sub x23, x29, #832
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    str x22, [x23]
    add x14, x23, #8
    mov x9, #0
    str x9, [x14]
    add x14, x23, #16
    str d9, [x14]
    mov x0, x22
    bl _CTFontGetAscent
    fmov d24, d0
    add x14, x23, #24
    str d24, [x14]
    mov x0, x22
    bl _CTFontGetDescent
    fmov d24, d0
    add x14, x23, #32
    str d24, [x14]
    sub x24, x29, #648
    mov x10, x23
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    add x14, x24, #64
    mov x9, #0
    strb w9, [x14]
    mov x0, x20
    bl _CFRelease
    mov x10, x24
    sub x11, x29, #576
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldr x12, [x10, #64]
    str x12, [x11, #64]
    b L1_51
L1_50:
    mov x0, x14
    bl _CFRelease
    adrp x0, l_text_34@PAGE
    add x0, x0, l_text_34@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at
L1_51:
    sub x15, x29, #576
    add x14, x15, #64
    ldrb w14, [x14]
    cbnz w14, L1_33
    b L1_32
L1_33:
    add x14, x15, #40
    sub x20, x29, #472
    add x22, x20, #40
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #64
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #352
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldr x12, [x10, #64]
    str x12, [x11, #64]
    b L1_52
L1_34:
L1_32:
    sub x20, x29, #472
    mov x10, x15
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
    mov x10, x20
    sub x11, x29, #352
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldr x12, [x10, #64]
    str x12, [x11, #64]
    b L1_52
L1_35:
    adrp x0, l_text_25@PAGE
    add x0, x0, l_text_25@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at
L1_52:
    sub x15, x29, #352
    add x14, x15, #64
    ldrb w14, [x14]
    cbnz w14, L1_25
    b L1_24
L1_25:
    add x14, x15, #40
    sub x19, x29, #120
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
    ldr x19, [sp, #800]
    ldr x20, [sp, #792]
    ldr x21, [sp, #784]
    ldr x22, [sp, #776]
    ldr x23, [sp, #768]
    ldr x24, [sp, #760]
    ldr d8, [sp, #752]
    ldr d9, [sp, #744]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_26:
L1_24:
    mov x10, x15
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    ldr x14, [x21]
    str x14, [x19]
    add x14, x19, #8
    add x20, x21, #8
    ldr x20, [x20]
    str x20, [x14]
    add x14, x19, #16
    str d8, [x14]
    add x14, x19, #24
    add x20, x21, #16
    ldr d24, [x20]
    str d24, [x14]
    add x14, x19, #32
    add x20, x21, #24
    ldr d24, [x20]
    str d24, [x14]
    add x14, x19, #40
    add x20, x21, #32
    ldr d24, [x20]
    str d24, [x14]
    sub x14, x29, #120
    add x20, x14, #24
    mov x9, #0
    strb w9, [x20]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #800]
    ldr x20, [sp, #792]
    ldr x21, [sp, #784]
    ldr x22, [sp, #776]
    ldr x23, [sp, #768]
    ldr x24, [sp, #760]
    ldr d8, [sp, #752]
    ldr d9, [sp, #744]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_fonts_Face_rasterize
_lb_fonts_Face_rasterize:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #928
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #896]
    str x20, [sp, #888]
    str x21, [sp, #880]
    str x22, [sp, #872]
    str x23, [sp, #864]
    str x24, [sp, #856]
    str x25, [sp, #848]
    str x26, [sp, #840]
    str x27, [sp, #832]
    str x28, [sp, #824]
    str d8, [sp, #816]
    sub x16, x29, #184
    str x0, [x16]
    sub x16, x29, #200
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #216
    str d0, [x16]
    sub x9, x29, #184
    ldr x19, [x9]
    bl _lb_thread_7is_main
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L2_36
L2_35:
    sub x20, x29, #552
    adrp x14, _lb_interop_12wrong_thread@PAGE
    add x14, x14, _lb_interop_12wrong_thread@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_17@PAGE
    add x14, x14, l_text_17@PAGEOFF
    sub x15, x29, #568
    str x14, [x15]
    add x14, x15, #8
    movz x9, #37
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #248
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L2_39
L2_38:
    b L2_37
L2_36:
L2_37:
    sub x14, x29, #552
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #248
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L2_39:
    sub x15, x29, #248
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_2
    b L2_1
L2_2:
    sub x19, x29, #176
    add x14, x19, #32
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x19, [sp, #896]
    ldr x20, [sp, #888]
    ldr x21, [sp, #880]
    ldr x22, [sp, #872]
    ldr x23, [sp, #864]
    ldr x24, [sp, #856]
    ldr x25, [sp, #848]
    ldr x26, [sp, #840]
    ldr x27, [sp, #832]
    ldr x28, [sp, #824]
    ldr d8, [sp, #816]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_3:
L2_1:
    sub x9, x29, #200
    str x9, [sp, #16]
    ldr x10, [sp, #16]
    sub x11, x29, #624
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x19]
    mov x10, #0
    cmp x14, x10
    b.ne L2_41
L2_40:
    sub x21, x29, #608
    add x14, x21, #8
    adrp x15, _lb_fonts_failed@PAGE
    add x15, x15, _lb_fonts_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_4@PAGE
    add x15, x15, l_text_4@PAGEOFF
    sub x22, x29, #640
    str x15, [x22]
    add x15, x22, #8
    movz x9, #18
    str x9, [x15]
    add x14, x14, #8
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x10, x21
    sub x11, x29, #288
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L2_75
L2_43:
    b L2_42
L2_41:
L2_42:
    sub x14, x29, #624
    mov x10, x14
    sub x11, x29, #736
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x21, x29, #736
    add x22, x21, #8
    ldr x14, [x22]
    movz x10, #4096
    cmp x14, x10
    b.ls L2_49
L2_48:
    sub x21, x29, #720
    add x14, x21, #8
    adrp x15, _lb_fonts_failed@PAGE
    add x15, x15, _lb_fonts_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_18@PAGE
    add x15, x15, l_text_18@PAGEOFF
    sub x22, x29, #752
    str x15, [x22]
    add x15, x22, #8
    movz x9, #44
    str x9, [x15]
    add x14, x14, #8
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x10, x21
    sub x11, x29, #680
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L2_74
L2_51:
    b L2_50
L2_49:
L2_50:
    sub x28, x29, #768
    sub x9, x29, #792
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x23, x9, #16
    sub x24, x29, #808
    add x25, x28, #8
    mov x9, #0
    mov x26, x9
    mov x9, #0
    mov x27, x9
L2_52:
    ldr x14, [x22]
    cmp x26, x14
    b.hs L2_54
L2_53:
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x26
    sub x8, x29, #792
    bl _lb_utf8_decode
    ldrb w14, [x23]
    cbnz w14, L2_55
    b L2_56
L2_55:
    ldr x10, [sp, #8]
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L2_57
L2_56:
    sub x20, x29, #720
    add x14, x20, #8
    adrp x15, _lb_fonts_failed@PAGE
    add x15, x15, _lb_fonts_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_19@PAGE
    add x15, x15, l_text_19@PAGEOFF
    sub x21, x29, #824
    str x15, [x21]
    add x15, x21, #8
    movz x9, #24
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #680
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L2_74
L2_58:
L2_57:
    mov x10, x24
    mov x11, x28
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr w14, [x28]
    mov w14, w14
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    cbnz w15, L2_82
    b L2_62
L2_82:
    mov w20, w15
    b L2_63
L2_62:
    movz x10, #10
    cmp w14, w10
    cset w20, eq
L2_63:
    and w15, w20, #255
    cbnz w15, L2_83
    b L2_64
L2_83:
    mov w20, w15
    b L2_65
L2_64:
    movz x10, #13
    cmp w14, w10
    cset w20, eq
L2_65:
    and w15, w20, #255
    cbnz w15, L2_84
    b L2_66
L2_84:
    mov w14, w15
    b L2_67
L2_66:
    movz x10, #9
    cmp w14, w10
    cset w15, eq
    mov w14, w15
L2_67:
    and w15, w14, #255
    cbnz w15, L2_59
    b L2_60
L2_59:
    sub x20, x29, #720
    add x14, x20, #8
    adrp x15, _lb_fonts_failed@PAGE
    add x15, x15, _lb_fonts_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_20@PAGE
    add x15, x15, l_text_20@PAGEOFF
    sub x21, x29, #840
    str x15, [x21]
    add x15, x21, #8
    movz x9, #49
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #680
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L2_74
L2_68:
    b L2_61
L2_60:
L2_61:
    ldr x14, [x25]
    mov x9, x14
    mov x10, x26
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x27
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    mov x26, x14
    mov x27, x15
    b L2_52
L2_54:
    movz x10, #1024
    cmp x27, x10
    b.ls L2_70
L2_69:
    sub x20, x29, #720
    add x14, x20, #8
    adrp x15, _lb_fonts_failed@PAGE
    add x15, x15, _lb_fonts_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_23@PAGE
    add x15, x15, l_text_23@PAGEOFF
    sub x21, x29, #856
    str x15, [x21]
    add x15, x21, #8
    movz x9, #40
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x10, x20
    sub x11, x29, #680
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L2_74
L2_72:
    b L2_71
L2_70:
L2_71:
    sub x14, x29, #720
    str x27, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #680
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L2_74
L2_73:
    adrp x0, l_text_24@PAGE
    add x0, x0, l_text_24@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at
L2_74:
    sub x15, x29, #680
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L2_45
    b L2_44
L2_45:
    add x14, x15, #8
    sub x20, x29, #608
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
    mov x10, x20
    sub x11, x29, #288
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L2_75
L2_46:
L2_44:
    ldr x14, [x15]
    ucvtf d24, x14
    add x14, x19, #24
    ldr d25, [x14]
    fmul d24, d24, d25
    sub x14, x29, #608
    str d24, [x14]
    add x20, x14, #32
    mov x9, #0
    strb w9, [x20]
    mov x10, x14
    sub x11, x29, #288
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L2_75
L2_47:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at
L2_75:
    sub x15, x29, #288
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L2_5
    b L2_4
L2_5:
    add x14, x15, #8
    sub x19, x29, #176
    add x20, x19, #32
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x19, [sp, #896]
    ldr x20, [sp, #888]
    ldr x21, [sp, #880]
    ldr x22, [sp, #872]
    ldr x23, [sp, #864]
    ldr x24, [sp, #856]
    ldr x25, [sp, #848]
    ldr x26, [sp, #840]
    ldr x27, [sp, #832]
    ldr x28, [sp, #824]
    ldr d8, [sp, #816]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_6:
L2_4:
    ldr d24, [x15]
    sub x14, x29, #216
    ldr d8, [x14]
    movz x9, #16352, lsl #48
    fmov d25, x9
    fcmp d8, d25
    cset w14, ge
    cbnz w14, L2_10
    b L2_85
L2_85:
    mov w15, w14
    b L2_11
L2_10:
    movz x9, #16400, lsl #48
    fmov d25, x9
    fcmp d8, d25
    cset w15, ls
L2_11:
    and w14, w15, #255
    mov x10, #0
    cmp w14, w10
    b.ne L2_8
L2_7:
    sub x19, x29, #176
    add x14, x19, #32
    adrp x15, _lb_fonts_failed@PAGE
    add x15, x15, _lb_fonts_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_7@PAGE
    add x15, x15, l_text_7@PAGEOFF
    sub x20, x29, #304
    str x15, [x20]
    add x15, x20, #8
    movz x9, #46
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    ldr x19, [sp, #896]
    ldr x20, [sp, #888]
    ldr x21, [sp, #880]
    ldr x22, [sp, #872]
    ldr x23, [sp, #864]
    ldr x24, [sp, #856]
    ldr x25, [sp, #848]
    ldr x26, [sp, #840]
    ldr x27, [sp, #832]
    ldr x28, [sp, #824]
    ldr d8, [sp, #816]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_12:
    b L2_9
L2_8:
L2_9:
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
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
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
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    movz x10, #16384
    cmp x20, x10
    cset w14, hi
    cbnz w14, L2_86
    b L2_16
L2_86:
    mov w15, w14
    b L2_17
L2_16:
    movz x10, #1024
    cmp x21, x10
    cset w15, hi
L2_17:
    and w14, w15, #255
    cbnz w14, L2_87
    b L2_18
L2_87:
    mov w15, w14
    b L2_19
L2_18:
    mov x9, x20
    mov x10, x21
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    movz x10, #64, lsl #16
    cmp x14, x10
    cset w15, hi
L2_19:
    and w14, w15, #255
    cbnz w14, L2_13
    b L2_14
L2_13:
    sub x19, x29, #176
    add x14, x19, #32
    adrp x15, _lb_fonts_failed@PAGE
    add x15, x15, _lb_fonts_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_11@PAGE
    add x15, x15, l_text_11@PAGEOFF
    sub x20, x29, #320
    str x15, [x20]
    add x15, x20, #8
    movz x9, #45
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    ldr x19, [sp, #896]
    ldr x20, [sp, #888]
    ldr x21, [sp, #880]
    ldr x22, [sp, #872]
    ldr x23, [sp, #864]
    ldr x24, [sp, #856]
    ldr x25, [sp, #848]
    ldr x26, [sp, #840]
    ldr x27, [sp, #832]
    ldr x28, [sp, #824]
    ldr d8, [sp, #816]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_20:
    b L2_15
L2_14:
L2_15:
    sub x23, x29, #336
    adrp x22, _lb_memory_heap@PAGE
    add x22, x22, _lb_memory_heap@PAGEOFF
    sub x24, x29, #352
    mov x10, x22
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, x20
    mov x10, x21
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x25, x9
    sub x26, x29, #400
    movz x10, #16384, lsl #48
    cmp x25, x10
    b.ls L2_22
L2_21:
    add x14, x26, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_13@PAGE
    add x15, x15, l_text_13@PAGEOFF
    add x24, x14, #8
    str x15, [x24]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x26, #40
    movz x9, #1
    strb w9, [x14]
    b L2_23
L2_22:
    ldr x14, [x24]
    add x15, x24, #8
    ldr x15, [x15]
    cbnz x15, L2_24
    b L2_25
L2_25:
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
L2_24:
    ldr x24, [x15]
    mov x17, x24
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x25
    movz x2, #1
    sub x8, x29, #424
    ldr x17, [sp], #16
    blr x17
    sub x28, x29, #424
    add x24, x28, #16
    ldrb w24, [x24]
    mov x10, #0
    cmp x25, x10
    cset w27, ne
    mov x10, #0
    cmp w24, w10
    cset w24, eq
    and w24, w27, w24
    cbnz w24, L2_26
    b L2_27
L2_26:
    add x14, x26, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_15@PAGE
    add x15, x15, l_text_15@PAGEOFF
    add x24, x14, #8
    str x15, [x24]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x26, #40
    movz x9, #1
    strb w9, [x14]
    b L2_23
L2_27:
    ldr x24, [x28]
    mov x0, x24
    mov x1, #0
    mov x2, x25
    bl _memset
    mov x14, x0
    str x24, [x26]
    add x14, x26, #8
    str x25, [x14]
    add x14, x26, #40
    mov x9, #0
    strb w9, [x14]
L2_23:
    add x14, x26, #40
    ldrb w14, [x14]
    cbnz w14, L2_29
    b L2_28
L2_29:
    add x14, x26, #16
    sub x19, x29, #176
    add x15, x19, #32
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x19, [sp, #896]
    ldr x20, [sp, #888]
    ldr x21, [sp, #880]
    ldr x22, [sp, #872]
    ldr x23, [sp, #864]
    ldr x24, [sp, #856]
    ldr x25, [sp, #848]
    ldr x26, [sp, #840]
    ldr x27, [sp, #832]
    ldr x28, [sp, #824]
    ldr d8, [sp, #816]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_30:
L2_28:
    mov x10, x26
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x24, x29, #456
    sub x25, x29, #488
    mov x11, x25
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    mov x10, x23
    mov x11, x25
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x25, #16
    str w20, [x14]
    add x14, x25, #20
    str w21, [x14]
    movz x9, #16384, lsl #48
    fmov d24, x9
    fdiv d24, d24, d8
    add x14, x25, #24
    str d24, [x14]
    mov x10, x25
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    fmov d16, d8
    fmov d0, d16
    mov x9, x19
    mov x0, x9
    ldr x9, [sp, #16]
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x3, x24
    sub x8, x29, #520
    bl _lb_fonts_10mac_raster
    sub x15, x29, #520
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_32
    b L2_31
L2_32:
    sub x19, x29, #176
    add x14, x19, #32
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #56
    movz x9, #1
    strb w9, [x14]
    add x14, x24, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls L2_77
L2_76:
    sub x15, x29, #872
    ldr x20, [x24]
    str x20, [x15]
    add x20, x15, #8
    str x14, [x20]
    ldr x20, [x22]
    add x21, x22, #8
    ldr x21, [x21]
    cbnz x21, L2_80
    b L2_79
L2_80:
    add x14, x21, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L2_79:
    b L2_78
L2_77:
L2_78:
    sub x20, x29, #904
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    mov x10, x20
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L2_81:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #896]
    ldr x20, [sp, #888]
    ldr x21, [sp, #880]
    ldr x22, [sp, #872]
    ldr x23, [sp, #864]
    ldr x24, [sp, #856]
    ldr x25, [sp, #848]
    ldr x26, [sp, #840]
    ldr x27, [sp, #832]
    ldr x28, [sp, #824]
    ldr d8, [sp, #816]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_33:
L2_31:
    sub x19, x29, #176
    mov x10, x24
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
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
    ldr x19, [sp, #896]
    ldr x20, [sp, #888]
    ldr x21, [sp, #880]
    ldr x22, [sp, #872]
    ldr x23, [sp, #864]
    ldr x24, [sp, #856]
    ldr x25, [sp, #848]
    ldr x26, [sp, #840]
    ldr x27, [sp, #832]
    ldr x28, [sp, #824]
    ldr d8, [sp, #816]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_34:
    adrp x0, l_text_16@PAGE
    add x0, x0, l_text_16@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_fonts_Face_close
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
    cbnz x14, L3_4
    b L3_2
L3_4:
L3_1:
    mov x0, x14
    bl _CFRelease
    mov x9, #0
    str x9, [x19]
    add x15, x19, #8
    mov x9, #0
    str x9, [x15]
    b L3_3
L3_2:
L3_3:
    ldr x19, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_fonts_12family_bytes
_lb_fonts_12family_bytes:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #208]
    str x20, [sp, #200]
    str x21, [sp, #192]
    str x22, [sp, #184]
    str x23, [sp, #176]
    str x24, [sp, #168]
    str x25, [sp, #160]
    str x26, [sp, #152]
    sub x16, x29, #152
    str x0, [x16]
    str x1, [x16, #8]
    sub x21, x29, #168
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    sub x19, x29, #152
    add x20, x19, #8
    ldr x14, [x20]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_26@PAGE
    add x0, x0, l_text_26@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x22, x9
    sub x23, x29, #216
    movz x10, #16384, lsl #48
    cmp x22, x10
    b.ls L4_2
L4_1:
    add x14, x23, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_13@PAGE
    add x15, x15, l_text_13@PAGEOFF
    add x22, x14, #8
    str x15, [x22]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b L4_3
L4_2:
    ldr x14, [x15]
    add x24, x15, #8
    ldr x24, [x24]
    cbnz x24, L4_4
    b L4_5
L4_5:
    adrp x0, l_text_26@PAGE
    add x0, x0, l_text_26@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
L4_4:
    ldr x15, [x24]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x22
    movz x2, #1
    sub x8, x29, #240
    ldr x17, [sp], #16
    blr x17
    sub x26, x29, #240
    add x15, x26, #16
    ldrb w15, [x15]
    mov x10, #0
    cmp x22, x10
    cset w25, ne
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    and w15, w25, w15
    cbnz w15, L4_6
    b L4_7
L4_6:
    add x14, x23, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_15@PAGE
    add x15, x15, l_text_15@PAGEOFF
    add x22, x14, #8
    str x15, [x22]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b L4_3
L4_7:
    ldr x14, [x26]
    str x14, [x23]
    add x14, x23, #8
    str x22, [x14]
    add x14, x23, #40
    mov x9, #0
    strb w9, [x14]
L4_3:
    add x14, x23, #40
    ldrb w14, [x14]
    cbnz w14, L4_9
    b L4_8
L4_9:
    add x14, x23, #16
    sub x19, x29, #136
    add x15, x19, #16
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    ldr x24, [sp, #168]
    ldr x25, [sp, #160]
    ldr x26, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_10:
L4_8:
    mov x10, x23
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x20]
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x19
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x14
    bl _lb_memory_copy_0g1_u8
    ldr x14, [x20]
    ldr x15, [x21]
    add x22, x21, #8
    ldr x22, [x22]
    cmp x14, x22
    b.lo 1f
    adrp x0, l_text_27@PAGE
    add x0, x0, l_text_27@PAGEOFF
    adrp x1, l_text_46@PAGE
    add x1, x1, l_text_46@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x14, x15
    mov x9, #0
    strb w9, [x14]
    sub x22, x29, #136
    mov x10, x21
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #40
    mov x9, #0
    strb w9, [x14]
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    ldr x24, [sp, #168]
    ldr x25, [sp, #160]
    ldr x26, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_11:
    adrp x0, l_text_28@PAGE
    add x0, x0, l_text_28@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_fonts_10mac_string
_lb_fonts_10mac_string:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    str x20, [sp, #72]
    sub x16, x29, #96
    str x0, [x16]
    str x1, [x16, #8]
    sub x14, x29, #96
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    mov x0, #0
    mov x1, x15
    mov x2, x14
    movz x3, #256
    movk x3, #2048, lsl #16
    mov x4, #0
    bl _CFStringCreateWithBytes
    mov x14, x0
    cbnz x14, L5_1
    b L5_2
L5_1:
    b L5_3
L5_2:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_fonts_failed@PAGE
    add x15, x15, _lb_fonts_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_29@PAGE
    add x15, x15, l_text_29@PAGEOFF
    sub x20, x29, #112
    str x15, [x20]
    add x15, x20, #8
    movz x9, #33
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
L5_4:
L5_3:
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
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_5:
    adrp x0, l_text_30@PAGE
    add x0, x0, l_text_30@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_fonts_10mac_raster
_lb_fonts_10mac_raster:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #688
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #656]
    str x20, [sp, #648]
    str x21, [sp, #640]
    str x22, [sp, #632]
    str x23, [sp, #624]
    str x24, [sp, #616]
    str x25, [sp, #608]
    str x26, [sp, #600]
    str x27, [sp, #592]
    str x28, [sp, #584]
    str d8, [sp, #576]
    str d9, [sp, #568]
    sub x16, x29, #200
    str x0, [x16]
    sub x16, x29, #216
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #232
    str d0, [x16]
    sub x16, x29, #248
    str x3, [x16]
    sub x0, x29, #200
    ldr x1, [x0]
    movz x2, #48
    bl _memcpy
    sub x19, x29, #200
    ldr x14, [x19]
    cbnz x14, L6_1
    b L6_2
L6_1:
    b L6_3
L6_2:
    sub x19, x29, #152
    adrp x14, _lb_fonts_failed@PAGE
    add x14, x14, _lb_fonts_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_4@PAGE
    add x14, x14, l_text_4@PAGEOFF
    sub x15, x29, #264
    str x14, [x15]
    add x14, x15, #8
    movz x9, #18
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
    ldr x19, [sp, #656]
    ldr x20, [sp, #648]
    ldr x21, [sp, #640]
    ldr x22, [sp, #632]
    ldr x23, [sp, #624]
    ldr x24, [sp, #616]
    ldr x25, [sp, #608]
    ldr x26, [sp, #600]
    ldr x27, [sp, #592]
    ldr x28, [sp, #584]
    ldr d8, [sp, #576]
    ldr d9, [sp, #568]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_3:
    add x15, x19, #16
    ldr d24, [x15]
    sub x15, x29, #232
    ldr d8, [x15]
    fmul d24, d24, d8
    fmov d16, d24
    fmov d0, d16
    mov x0, x14
    mov x1, #0
    mov x2, #0
    bl _CTFontCreateCopyWithAttributes
    str x0, [sp, #24]
    ldr x9, [sp, #24]
    cbnz x9, L6_5
    b L6_6
L6_5:
    b L6_7
L6_6:
    sub x19, x29, #152
    adrp x14, _lb_fonts_failed@PAGE
    add x14, x14, _lb_fonts_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_35@PAGE
    add x14, x14, l_text_35@PAGEOFF
    sub x15, x29, #280
    str x14, [x15]
    add x14, x15, #8
    movz x9, #24
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
    ldr x19, [sp, #656]
    ldr x20, [sp, #648]
    ldr x21, [sp, #640]
    ldr x22, [sp, #632]
    ldr x23, [sp, #624]
    ldr x24, [sp, #616]
    ldr x25, [sp, #608]
    ldr x26, [sp, #600]
    ldr x27, [sp, #592]
    ldr x28, [sp, #584]
    ldr d8, [sp, #576]
    ldr d9, [sp, #568]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_7:
    sub x14, x29, #248
    ldr x14, [x14]
    ldr x15, [x14]
    add x21, x14, #16
    ldr w22, [x21]
    mov w22, w22
    add x9, x14, #20
    str x9, [sp, #184]
    ldr x9, [sp, #184]
    ldr w14, [x9]
    mov w14, w14
    ldr w21, [x21]
    mov w21, w21
    mov x0, x15
    mov x1, x22
    mov x2, x14
    movz x3, #8
    mov x4, x21
    mov x5, #0
    movz x6, #7
    bl _CGBitmapContextCreate
    mov x21, x0
    cbnz x21, L6_9
    b L6_10
L6_9:
    b L6_11
L6_10:
    sub x19, x29, #152
    adrp x14, _lb_fonts_failed@PAGE
    add x14, x14, _lb_fonts_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_36@PAGE
    add x14, x14, l_text_36@PAGEOFF
    sub x15, x29, #296
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #24]
    bl _CFRelease
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #656]
    ldr x20, [sp, #648]
    ldr x21, [sp, #640]
    ldr x22, [sp, #632]
    ldr x23, [sp, #624]
    ldr x24, [sp, #616]
    ldr x25, [sp, #608]
    ldr x26, [sp, #600]
    ldr x27, [sp, #592]
    ldr x28, [sp, #584]
    ldr d8, [sp, #576]
    ldr d9, [sp, #568]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_11:
    mov x0, x21
    movz x1, #1
    bl _CGContextSetShouldAntialias
    mov x0, x21
    mov x1, #0
    bl _CGContextSetShouldSmoothFonts
    movz x9, #16368, lsl #48
    fmov d24, x9
    fmov d16, d24
    fmov d0, d16
    fmov d16, d24
    fmov d1, d16
    mov x0, x21
    bl _CGContextSetGrayFillColor
    sub x9, x29, #216
    str x9, [sp, #176]
    ldr x9, [sp, #176]
    add x9, x9, #8
    str x9, [sp, #168]
    sub x9, x29, #312
    str x9, [sp, #8]
    sub x27, x29, #336
    add x9, x27, #16
    str x9, [sp, #160]
    sub x26, x29, #352
    ldr x9, [sp, #8]
    add x9, x9, #8
    str x9, [sp, #152]
    sub x9, x29, #372
    str x9, [sp, #144]
    ldr x9, [sp, #144]
    add x9, x9, #2
    str x9, [sp, #136]
    sub x9, x29, #376
    str x9, [sp, #128]
    sub x9, x29, #392
    str x9, [sp, #120]
    ldr x9, [sp, #120]
    add x9, x9, #8
    str x9, [sp, #112]
    sub x9, x29, #408
    str x9, [sp, #104]
    ldr x9, [sp, #104]
    add x9, x9, #8
    str x9, [sp, #96]
    sub x28, x29, #448
    add x9, x28, #32
    str x9, [sp, #88]
    sub x9, x29, #464
    str x9, [sp, #80]
    ldr x9, [sp, #80]
    add x9, x9, #8
    str x9, [sp, #72]
    sub x9, x29, #480
    str x9, [sp, #64]
    sub x9, x29, #496
    str x9, [sp, #56]
    movz x9, #16384, lsl #48
    fmov d9, x9
    add x9, x19, #24
    str x9, [sp, #48]
    add x9, x19, #32
    str x9, [sp, #40]
    ldr x9, [sp, #56]
    add x9, x9, #8
    str x9, [sp, #32]
    mov x9, #0
    mov x20, x9
    mov x9, #0
    str x9, [sp, #16]
L6_13:
    ldr x9, [sp, #168]
    ldr x14, [x9]
    cmp x20, x14
    b.hs L6_15
L6_14:
    ldr x9, [sp, #176]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x20
    sub x8, x29, #336
    bl _lb_utf8_decode
    ldr x9, [sp, #160]
    ldrb w14, [x9]
    cbnz w14, L6_16
    b L6_17
L6_16:
    mov x10, x27
    mov x11, x26
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L6_18
L6_17:
    adrp x14, l_text_37@PAGE
    add x14, x14, l_text_37@PAGEOFF
    sub x15, x29, #368
    str x14, [x15]
    add x14, x15, #8
    movz x9, #22
    str x9, [x14]
    adrp x14, l_text_38@PAGE
    add x14, x14, l_text_38@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at
L6_18:
    mov x10, x26
    ldr x11, [sp, #8]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #152]
    ldr x14, [x9]
    mov x9, x14
    mov x10, x20
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_39@PAGE
    add x0, x0, l_text_39@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x19, x9
    ldr x11, [sp, #144]
    str wzr, [x11, #0]
    ldr x9, [sp, #8]
    ldr w14, [x9]
    mov w14, w14
    movz x10, #65535
    cmp w14, w10
    b.ls L6_20
L6_19:
    mov w9, w14
    movz x10, #1, lsl #16
    subs w9, w9, w10
    b.cs 1f
    adrp x0, l_text_40@PAGE
    add x0, x0, l_text_40@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w15, w9
L6_23:
    lsr w14, w15, #10
    mov w9, w14
    movz x10, #55296
    adds w9, w9, w10
    b.cc 1f
    adrp x0, l_text_40@PAGE
    add x0, x0, l_text_40@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    mov w14, w14
    and w14, w14, #65535
    ldr x10, [sp, #144]
    strh w14, [x10]
    movz x10, #1023
    and w14, w15, w10
    movz x10, #56320
    add w14, w14, w10
    mov w14, w14
    and w14, w14, #65535
    ldr x10, [sp, #136]
    strh w14, [x10]
    movz x9, #2
    mov x23, x9
    b L6_21
L6_20:
    mov w15, w14
    and w15, w15, #65535
    ldr x10, [sp, #144]
    strh w15, [x10]
    movz x9, #1
    mov x23, x9
L6_21:
    ldr x11, [sp, #128]
    str wzr, [x11, #0]
    ldr x0, [sp, #24]
    ldr x1, [sp, #144]
    ldr x2, [sp, #128]
    mov x3, x23
    bl _CTFontGetGlyphsForCharacters
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L6_25
L6_24:
    ldr x9, [sp, #176]
    ldr x15, [x9]
    ldr x9, [sp, #168]
    ldr x14, [x9]
    add x14, x14, #1
    cmp x20, x14
    b.lo 1f
    adrp x0, l_text_45@PAGE
    add x0, x0, l_text_45@PAGEOFF
    adrp x1, l_text_46@PAGE
    add x1, x1, l_text_46@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x19, x14
    b.lo 1f
    adrp x0, l_text_45@PAGE
    add x0, x0, l_text_45@PAGEOFF
    adrp x1, l_text_46@PAGE
    add x1, x1, l_text_46@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x20, x19
    b.ls L6_27
L6_28:
    adrp x0, l_text_45@PAGE
    add x0, x0, l_text_45@PAGEOFF
    adrp x1, l_text_46@PAGE
    add x1, x1, l_text_46@PAGEOFF
    bl _lb_core_7trap_at
L6_27:
    add x14, x20, x15
    sub x22, x19, x20
    ldr x10, [sp, #120]
    str x14, [x10]
    ldr x10, [sp, #112]
    str x22, [x10]
    ldr x10, [sp, #104]
    str x14, [x10]
    ldr x10, [sp, #96]
    str x22, [x10]
    ldr x9, [sp, #104]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #448
    bl _lb_fonts_10mac_string
    ldr x9, [sp, #88]
    ldrb w14, [x9]
    cbnz w14, L6_30
    b L6_29
L6_30:
    add x14, x28, #8
    sub x19, x29, #152
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    bl _CGContextRelease
    ldr x0, [sp, #24]
    bl _CFRelease
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #656]
    ldr x20, [sp, #648]
    ldr x21, [sp, #640]
    ldr x22, [sp, #632]
    ldr x23, [sp, #624]
    ldr x24, [sp, #616]
    ldr x25, [sp, #608]
    ldr x26, [sp, #600]
    ldr x27, [sp, #592]
    ldr x28, [sp, #584]
    ldr d8, [sp, #576]
    ldr d9, [sp, #568]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_29:
    ldr x20, [x28]
    ldr x11, [sp, #80]
    stp xzr, xzr, [x11, #0]
    mov x9, #0
    ldr x10, [sp, #80]
    str x9, [x10]
    ldr x10, [sp, #72]
    str x23, [x10]
    ldr x0, [sp, #24]
    mov x1, x20
    ldr x9, [sp, #80]
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _CTFontCreateForString
    mov x22, x0
    cbnz x22, L6_35
    b L6_33
L6_35:
L6_32:
    mov x0, x22
    ldr x1, [sp, #144]
    ldr x2, [sp, #128]
    mov x3, x23
    bl _CTFontGetGlyphsForCharacters
    mov w14, w0
    mov x24, x22
    b L6_34
L6_33:
    ldr x9, [sp, #24]
    mov x24, x9
L6_34:
    mov x0, x20
    bl _CFRelease
    mov x23, x24
    mov x25, x22
    b L6_26
L6_25:
    ldr x9, [sp, #24]
    mov x23, x9
    mov x9, #0
    mov x25, x9
L6_26:
    ldr x11, [sp, #56]
    stp xzr, xzr, [x11, #0]
    ldr x9, [sp, #16]
    ucvtf d24, x9
    ldr x9, [sp, #48]
    ldr d25, [x9]
    fmul d24, d24, d25
    fmul d24, d8, d24
    fadd d24, d9, d24
    ldr x10, [sp, #56]
    str d24, [x10]
    ldr x9, [sp, #184]
    ldr w14, [x9]
    mov w14, w14
    ucvtf d24, x14
    fsub d24, d24, d9
    ldr x9, [sp, #40]
    ldr d25, [x9]
    fmul d25, d8, d25
    fsub d24, d24, d25
    ldr x10, [sp, #32]
    str d24, [x10]
    ldr x10, [sp, #56]
    ldr x11, [sp, #64]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x0, x23
    ldr x1, [sp, #128]
    ldr x2, [sp, #64]
    movz x3, #1
    mov x4, x21
    bl _CTFontDrawGlyphs
    cbnz x25, L6_39
    b L6_37
L6_39:
L6_36:
    mov x0, x25
    bl _CFRelease
    b L6_38
L6_37:
L6_38:
    ldr x9, [sp, #16]
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_49@PAGE
    add x0, x0, l_text_49@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x20, x19
    mov x9, x14
    str x9, [sp, #16]
    b L6_13
L6_15:
    mov x0, x21
    bl _CGContextRelease
    ldr x0, [sp, #24]
    bl _CFRelease
    sub x14, x29, #152
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
    ldr x19, [sp, #656]
    ldr x20, [sp, #648]
    ldr x21, [sp, #640]
    ldr x22, [sp, #632]
    ldr x23, [sp, #624]
    ldr x24, [sp, #616]
    ldr x25, [sp, #608]
    ldr x26, [sp, #600]
    ldr x27, [sp, #592]
    ldr x28, [sp, #584]
    ldr d8, [sp, #576]
    ldr d9, [sp, #568]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_fonts_8win_face
_lb_fonts_8win_face:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1008
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #976]
    str x20, [sp, #968]
    str x21, [sp, #960]
    str x22, [sp, #952]
    str x23, [sp, #944]
    str x24, [sp, #936]
    str x25, [sp, #928]
    str x26, [sp, #920]
    str x27, [sp, #912]
    str x28, [sp, #904]
    str d8, [sp, #896]
    sub x16, x29, #200
    str d0, [x16]
    sub x16, x29, #216
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #232
    sub x14, x29, #216
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ne L7_2
L7_1:
    adrp x14, l_text_50@PAGE
    add x14, x14, l_text_50@PAGEOFF
    sub x15, x29, #264
    str x14, [x15]
    add x14, x15, #8
    movz x9, #8
    str x9, [x14]
    sub x14, x29, #248
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L7_3
L7_2:
    sub x15, x29, #248
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L7_3:
    sub x14, x29, #248
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #312
    bl _lb_fonts_12family_bytes
    sub x15, x29, #312
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L7_5
    b L7_4
L7_5:
    add x14, x15, #16
    sub x19, x29, #184
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
    ldr x19, [sp, #976]
    ldr x20, [sp, #968]
    ldr x21, [sp, #960]
    ldr x22, [sp, #952]
    ldr x23, [sp, #944]
    ldr x24, [sp, #936]
    ldr x25, [sp, #928]
    ldr x26, [sp, #920]
    ldr x27, [sp, #912]
    ldr x28, [sp, #904]
    ldr d8, [sp, #896]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_6:
L7_4:
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x22, x29, #328
    ldr x20, [x19]
    adrp x21, _lb_fonts_failed@PAGE
    add x21, x21, _lb_fonts_failed@PAGEOFF
    ldr w14, [x21]
    mov x0, x20
    mov x1, x14
    sub x8, x29, #376
    bl _lb_12windows_text_wide
    sub x23, x29, #376
    add x14, x23, #40
    ldrb w14, [x14]
    cbnz w14, L7_8
    b L7_7
L7_8:
    add x14, x23, #16
    sub x21, x29, #184
    add x15, x21, #40
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #64
    movz x9, #1
    strb w9, [x14]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x15, x29, #392
    add x22, x19, #8
    ldr x22, [x22]
    str x20, [x15]
    add x24, x15, #8
    str x22, [x24]
    ldr x22, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L7_10
    b L7_9
L7_10:
    add x19, x14, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x22
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L7_9:
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #976]
    ldr x20, [sp, #968]
    ldr x21, [sp, #960]
    ldr x22, [sp, #952]
    ldr x23, [sp, #944]
    ldr x24, [sp, #936]
    ldr x25, [sp, #928]
    ldr x26, [sp, #920]
    ldr x27, [sp, #912]
    ldr x28, [sp, #904]
    ldr d8, [sp, #896]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_11:
L7_7:
    mov x10, x23
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #8
    ldr x24, [x14]
    movz x10, #32
    cmp x24, x10
    b.ls L7_13
L7_12:
    sub x23, x29, #184
    add x14, x23, #40
    ldr w15, [x21]
    str w15, [x14]
    adrp x15, l_text_52@PAGE
    add x15, x15, l_text_52@PAGEOFF
    sub x25, x29, #408
    str x15, [x25]
    add x15, x25, #8
    movz x9, #53
    str x9, [x15]
    add x14, x14, #8
    mov x10, x25
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x23, #64
    movz x9, #1
    strb w9, [x14]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x25, x0
    sub x14, x29, #424
    ldr x15, [x22]
    mov x9, x24
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_53@PAGE
    add x0, x0, l_text_53@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x26, x9
    str x15, [x14]
    add x15, x14, #8
    str x26, [x15]
    ldr x15, [x25]
    add x26, x25, #8
    ldr x27, [x26]
    cbnz x27, L7_16
    b L7_15
L7_16:
    add x21, x27, #16
    ldr x21, [x21]
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L7_15:
    sub x14, x29, #440
    add x15, x19, #8
    ldr x15, [x15]
    str x20, [x14]
    add x21, x14, #8
    str x15, [x21]
    ldr x15, [x25]
    ldr x21, [x26]
    cbnz x21, L7_18
    b L7_17
L7_18:
    add x19, x21, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L7_17:
    mov x1, x23
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #976]
    ldr x20, [sp, #968]
    ldr x21, [sp, #960]
    ldr x22, [sp, #952]
    ldr x23, [sp, #944]
    ldr x24, [sp, #936]
    ldr x25, [sp, #928]
    ldr x26, [sp, #920]
    ldr x27, [sp, #912]
    ldr x28, [sp, #904]
    ldr d8, [sp, #896]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_19:
    b L7_14
L7_13:
L7_14:
    sub x23, x29, #532
    sub x25, x29, #624
    mov x11, x25
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    str xzr, [x11, #80]
    str wzr, [x11, #88]
    sub x14, x29, #200
    ldr d24, [x14]
    movz x9, #16464, lsl #48
    fmov d8, x9
    fmul d24, d24, d8
    fmov d16, d24
    fmov d0, d16
    bl _lb_math_round
    fmov d24, d0
    adrp x14, l_text_54@PAGE
    add x14, x14, l_text_54@PAGEOFF
    fmov d16, d24
    fmov d0, d16
    movz x0, #32
    movz x1, #1
    mov x2, x14
    bl _lb_core_6f_to_s
    mov x14, x0
    mov x9, #0
    mov w10, w14
    subs w9, w9, w10
    b.vc 1f
    adrp x0, l_text_54@PAGE
    add x0, x0, l_text_54@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    str w14, [x25]
    add x14, x25, #16
    movz x9, #400
    str w9, [x14]
    add x14, x25, #23
    movz x9, #1
    strb w9, [x14]
    add x14, x25, #24
    movz x9, #4
    strb w9, [x14]
    add x14, x25, #26
    movz x9, #4
    strb w9, [x14]
    add x14, x25, #27
    movz x9, #49
    strb w9, [x14]
    mov x10, x25
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    ldp x12, x13, [x10, #64]
    stp x12, x13, [x11, #64]
    ldr x12, [x10, #80]
    str x12, [x11, #80]
    ldr w12, [x10, #88]
    str w12, [x11, #88]
    add x14, x23, #28
    ldr x15, [x22]
    mov x9, #0
    mov x25, x9
L7_20:
    cmp x25, x24
    b.hs L7_23
L7_21:
    lsl x26, x25, #1
    add x27, x14, x26
    add x26, x26, x15
    ldrh w26, [x26]
    strh w26, [x27]
L7_22:
    add x26, x25, #1
    mov x25, x26
    b L7_20
L7_23:
    mov x0, x23
    bl _CreateFontIndirectW
    mov x25, x0
    cbnz x25, L7_24
    b L7_25
L7_24:
    b L7_26
L7_25:
    sub x23, x29, #184
    add x14, x23, #40
    ldr w15, [x21]
    str w15, [x14]
    adrp x15, l_text_32@PAGE
    add x15, x15, l_text_32@PAGEOFF
    sub x25, x29, #640
    str x15, [x25]
    add x15, x25, #8
    movz x9, #30
    str x9, [x15]
    add x14, x14, #8
    mov x10, x25
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x23, #64
    movz x9, #1
    strb w9, [x14]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x25, x0
    sub x14, x29, #656
    ldr x15, [x22]
    lsl x26, x24, #1
    str x15, [x14]
    add x15, x14, #8
    str x26, [x15]
    ldr x15, [x25]
    add x26, x25, #8
    ldr x27, [x26]
    cbnz x27, L7_28
    b L7_27
L7_28:
    add x21, x27, #16
    ldr x21, [x21]
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L7_27:
    sub x14, x29, #672
    add x15, x19, #8
    ldr x15, [x15]
    str x20, [x14]
    add x21, x14, #8
    str x15, [x21]
    ldr x15, [x25]
    ldr x21, [x26]
    cbnz x21, L7_30
    b L7_29
L7_30:
    add x19, x21, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L7_29:
    mov x1, x23
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #976]
    ldr x20, [sp, #968]
    ldr x21, [sp, #960]
    ldr x22, [sp, #952]
    ldr x23, [sp, #944]
    ldr x24, [sp, #936]
    ldr x25, [sp, #928]
    ldr x26, [sp, #920]
    ldr x27, [sp, #912]
    ldr x28, [sp, #904]
    ldr d8, [sp, #896]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_31:
L7_26:
    mov x0, #0
    bl _CreateCompatibleDC
    mov x23, x0
    cbnz x23, L7_32
    b L7_33
L7_32:
    b L7_34
L7_33:
    sub x23, x29, #184
    add x14, x23, #40
    ldr w15, [x21]
    str w15, [x14]
    adrp x15, l_text_57@PAGE
    add x15, x15, l_text_57@PAGEOFF
    sub x26, x29, #688
    str x15, [x26]
    add x15, x26, #8
    movz x9, #31
    str x9, [x15]
    add x14, x14, #8
    mov x10, x26
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x23, #64
    movz x9, #1
    strb w9, [x14]
    mov x0, x25
    bl _DeleteObject
    mov w14, w0
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x26, x0
    sub x14, x29, #704
    ldr x15, [x22]
    lsl x27, x24, #1
    str x15, [x14]
    add x15, x14, #8
    str x27, [x15]
    ldr x15, [x26]
    add x27, x26, #8
    ldr x28, [x27]
    cbnz x28, L7_36
    b L7_35
L7_36:
    add x21, x28, #16
    ldr x21, [x21]
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L7_35:
    sub x14, x29, #720
    add x15, x19, #8
    ldr x15, [x15]
    str x20, [x14]
    add x21, x14, #8
    str x15, [x21]
    ldr x15, [x26]
    ldr x21, [x27]
    cbnz x21, L7_38
    b L7_37
L7_38:
    add x19, x21, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L7_37:
    mov x1, x23
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #976]
    ldr x20, [sp, #968]
    ldr x21, [sp, #960]
    ldr x22, [sp, #952]
    ldr x23, [sp, #944]
    ldr x24, [sp, #936]
    ldr x25, [sp, #928]
    ldr x26, [sp, #920]
    ldr x27, [sp, #912]
    ldr x28, [sp, #904]
    ldr d8, [sp, #896]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_39:
L7_34:
    mov x0, x23
    mov x1, x25
    bl _SelectObject
    mov x14, x0
    cbnz x14, L7_40
    b L7_41
L7_40:
    b L7_42
L7_41:
    sub x9, x29, #184
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    add x14, x9, #40
    ldr w15, [x21]
    str w15, [x14]
    adrp x15, l_text_59@PAGE
    add x15, x15, l_text_59@PAGEOFF
    sub x27, x29, #736
    str x15, [x27]
    add x15, x27, #8
    movz x9, #25
    str x9, [x15]
    add x14, x14, #8
    mov x10, x27
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #16]
    add x14, x9, #64
    movz x9, #1
    strb w9, [x14]
    mov x0, x23
    bl _DeleteDC
    mov w14, w0
    mov x0, x25
    bl _DeleteObject
    mov w14, w0
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x27, x0
    sub x14, x29, #752
    ldr x15, [x22]
    lsl x28, x24, #1
    str x15, [x14]
    add x15, x14, #8
    str x28, [x15]
    ldr x15, [x27]
    add x28, x27, #8
    ldr x26, [x28]
    cbnz x26, L7_44
    b L7_43
L7_44:
    add x21, x26, #16
    ldr x21, [x21]
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L7_43:
    sub x14, x29, #768
    add x15, x19, #8
    ldr x15, [x15]
    str x20, [x14]
    add x21, x14, #8
    str x15, [x21]
    ldr x15, [x27]
    ldr x21, [x28]
    cbnz x21, L7_46
    b L7_45
L7_46:
    add x19, x21, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L7_45:
    ldr x1, [sp, #16]
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #976]
    ldr x20, [sp, #968]
    ldr x21, [sp, #960]
    ldr x22, [sp, #952]
    ldr x23, [sp, #944]
    ldr x24, [sp, #936]
    ldr x25, [sp, #928]
    ldr x26, [sp, #920]
    ldr x27, [sp, #912]
    ldr x28, [sp, #904]
    ldr d8, [sp, #896]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_47:
L7_42:
    sub x9, x29, #828
    str x9, [sp, #8]
    ldr x11, [sp, #8]
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    str wzr, [x11, #56]
    mov x0, x23
    ldr x1, [sp, #8]
    bl _GetTextMetricsW
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L7_67
    b L7_51
L7_67:
    mov w15, w14
    b L7_52
L7_51:
    ldr x9, [sp, #8]
    add x14, x9, #55
    ldrb w14, [x14]
    movz x10, #1
    and w14, w14, w10
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L7_52:
    and w14, w15, #255
    cbnz w14, L7_48
    b L7_49
L7_48:
    sub x9, x29, #184
    str x9, [sp, #0]
    ldr x9, [sp, #0]
    add x14, x9, #40
    ldr w15, [x21]
    str w15, [x14]
    adrp x15, l_text_33@PAGE
    add x15, x15, l_text_33@PAGEOFF
    sub x27, x29, #848
    str x15, [x27]
    add x15, x27, #8
    movz x9, #36
    str x9, [x15]
    add x14, x14, #8
    mov x10, x27
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #0]
    add x14, x9, #64
    movz x9, #1
    strb w9, [x14]
    mov x0, x23
    bl _DeleteDC
    mov w14, w0
    mov x0, x25
    bl _DeleteObject
    mov w14, w0
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x27, x0
    sub x14, x29, #864
    ldr x15, [x22]
    lsl x28, x24, #1
    str x15, [x14]
    add x15, x14, #8
    str x28, [x15]
    ldr x15, [x27]
    add x28, x27, #8
    ldr x26, [x28]
    cbnz x26, L7_54
    b L7_53
L7_54:
    add x21, x26, #16
    ldr x21, [x21]
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L7_53:
    sub x14, x29, #880
    add x15, x19, #8
    ldr x15, [x15]
    str x20, [x14]
    add x21, x14, #8
    str x15, [x21]
    ldr x15, [x27]
    ldr x21, [x28]
    cbnz x21, L7_56
    b L7_55
L7_56:
    add x19, x21, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L7_55:
    ldr x1, [sp, #0]
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #976]
    ldr x20, [sp, #968]
    ldr x21, [sp, #960]
    ldr x22, [sp, #952]
    ldr x23, [sp, #944]
    ldr x24, [sp, #936]
    ldr x25, [sp, #928]
    ldr x26, [sp, #920]
    ldr x27, [sp, #912]
    ldr x28, [sp, #904]
    ldr d8, [sp, #896]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_57:
    b L7_50
L7_49:
L7_50:
    sub x21, x29, #920
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    str x23, [x21]
    add x14, x21, #8
    str x25, [x14]
    ldr x9, [sp, #8]
    add x14, x9, #20
    ldrsw x14, [x14]
    sxtw x14, w14
    scvtf d24, x14
    fdiv d24, d24, d8
    add x14, x21, #16
    str d24, [x14]
    ldr x9, [sp, #8]
    add x14, x9, #4
    ldrsw x14, [x14]
    sxtw x14, w14
    scvtf d24, x14
    fdiv d24, d24, d8
    add x14, x21, #24
    str d24, [x14]
    ldr x9, [sp, #8]
    add x14, x9, #8
    ldrsw x14, [x14]
    sxtw x14, w14
    scvtf d24, x14
    fdiv d24, d24, d8
    add x14, x21, #32
    str d24, [x14]
    sub x26, x29, #184
    mov x10, x21
    mov x11, x26
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    add x14, x26, #64
    mov x9, #0
    strb w9, [x14]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x21, x0
    sub x14, x29, #936
    ldr x15, [x22]
    lsl x27, x24, #1
    str x15, [x14]
    add x15, x14, #8
    str x27, [x15]
    ldr x15, [x21]
    add x27, x21, #8
    ldr x28, [x27]
    cbnz x28, L7_59
    b L7_58
L7_59:
    add x22, x28, #16
    ldr x22, [x22]
    mov x17, x22
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L7_58:
    sub x14, x29, #952
    add x15, x19, #8
    ldr x15, [x15]
    str x20, [x14]
    add x22, x14, #8
    str x15, [x22]
    ldr x15, [x21]
    ldr x22, [x27]
    cbnz x22, L7_61
    b L7_60
L7_61:
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
L7_60:
    mov x1, x26
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #976]
    ldr x20, [sp, #968]
    ldr x21, [sp, #960]
    ldr x22, [sp, #952]
    ldr x23, [sp, #944]
    ldr x24, [sp, #936]
    ldr x25, [sp, #928]
    ldr x26, [sp, #920]
    ldr x27, [sp, #912]
    ldr x28, [sp, #904]
    ldr d8, [sp, #896]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_62:
    sub x14, x29, #328
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    sub x19, x29, #968
    ldr x20, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    mov x9, x14
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_62@PAGE
    add x0, x0, l_text_62@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x20, [x19]
    add x19, x19, #8
    str x14, [x19]
    ldr x20, [x15]
    add x14, x15, #8
    ldr x14, [x14]
    cbnz x14, L7_64
    b L7_63
L7_64:
    add x15, x14, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x19
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L7_63:
    sub x14, x29, #232
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    sub x19, x29, #984
    ldr x20, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    mov x9, x14
    movz x10, #1
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_62@PAGE
    add x0, x0, l_text_62@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x20, [x19]
    add x19, x19, #8
    str x14, [x19]
    ldr x20, [x15]
    add x14, x15, #8
    ldr x14, [x14]
    cbnz x14, L7_66
    b L7_65
L7_66:
    add x15, x14, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x19
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L7_65:
    adrp x0, l_text_62@PAGE
    add x0, x0, l_text_62@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_fonts_9win_close
_lb_fonts_9win_close:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    mov x0, x14
    bl _DeleteDC
    mov w14, w0
    sub x14, x29, #48
    ldr x14, [x14]
    cbnz x14, L8_4
    b L8_2
L8_4:
L8_1:
    mov x0, x14
    bl _DeleteObject
    mov w14, w0
    b L8_3
L8_2:
L8_3:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_fonts_10win_raster
_lb_fonts_10win_raster:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1184
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #1152]
    str x20, [sp, #1144]
    str x21, [sp, #1136]
    str x22, [sp, #1128]
    str x23, [sp, #1120]
    str x24, [sp, #1112]
    str x25, [sp, #1104]
    str x26, [sp, #1096]
    str x27, [sp, #1088]
    str x28, [sp, #1080]
    str d8, [sp, #1072]
    sub x16, x29, #192
    str x0, [x16]
    sub x16, x29, #208
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #224
    str d0, [x16]
    sub x16, x29, #240
    str x3, [x16]
    sub x0, x29, #192
    ldr x1, [x0]
    movz x2, #48
    bl _memcpy
    sub x19, x29, #192
    ldr x9, [x19]
    str x9, [sp, #80]
    ldr x9, [sp, #80]
    cbnz x9, L9_1
    b L9_2
L9_1:
    b L9_3
L9_2:
    sub x19, x29, #144
    adrp x14, _lb_fonts_failed@PAGE
    add x14, x14, _lb_fonts_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_4@PAGE
    add x14, x14, l_text_4@PAGEOFF
    sub x15, x29, #256
    str x14, [x15]
    add x14, x15, #8
    movz x9, #18
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
    ldr x19, [sp, #1152]
    ldr x20, [sp, #1144]
    ldr x21, [sp, #1136]
    ldr x22, [sp, #1128]
    ldr x23, [sp, #1120]
    ldr x24, [sp, #1112]
    ldr x25, [sp, #1104]
    ldr x26, [sp, #1096]
    ldr x27, [sp, #1088]
    ldr x28, [sp, #1080]
    ldr d8, [sp, #1072]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_3:
    add x14, x19, #8
    ldr x9, [x14]
    str x9, [sp, #72]
    ldr x9, [sp, #72]
    cbnz x9, L9_5
    b L9_6
L9_5:
    b L9_7
L9_6:
    sub x19, x29, #144
    adrp x14, _lb_fonts_failed@PAGE
    add x14, x14, _lb_fonts_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_4@PAGE
    add x14, x14, l_text_4@PAGEOFF
    sub x15, x29, #272
    str x14, [x15]
    add x14, x15, #8
    movz x9, #18
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
    ldr x19, [sp, #1152]
    ldr x20, [sp, #1144]
    ldr x21, [sp, #1136]
    ldr x22, [sp, #1128]
    ldr x23, [sp, #1120]
    ldr x24, [sp, #1112]
    ldr x25, [sp, #1104]
    ldr x26, [sp, #1096]
    ldr x27, [sp, #1088]
    ldr x28, [sp, #1080]
    ldr d8, [sp, #1072]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_7:
    sub x22, x29, #364
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    str xzr, [x11, #80]
    str wzr, [x11, #88]
    ldr x0, [sp, #72]
    movz x1, #92
    mov x2, x22
    bl _GetObjectW
    mov w14, w0
    movz x10, #92
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L9_10
L9_9:
    sub x19, x29, #144
    adrp x14, _lb_fonts_failed@PAGE
    add x14, x14, _lb_fonts_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_63@PAGE
    add x14, x14, l_text_63@PAGEOFF
    sub x15, x29, #384
    str x14, [x15]
    add x14, x15, #8
    movz x9, #30
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
    ldr x19, [sp, #1152]
    ldr x20, [sp, #1144]
    ldr x21, [sp, #1136]
    ldr x22, [sp, #1128]
    ldr x23, [sp, #1120]
    ldr x24, [sp, #1112]
    ldr x25, [sp, #1104]
    ldr x26, [sp, #1096]
    ldr x27, [sp, #1088]
    ldr x28, [sp, #1080]
    ldr d8, [sp, #1072]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_10:
L9_11:
    add x14, x19, #16
    ldr d24, [x14]
    sub x14, x29, #224
    ldr d8, [x14]
    fmul d24, d24, d8
    fmov d16, d24
    fmov d0, d16
    bl _lb_math_round
    fmov d24, d0
    adrp x14, l_text_64@PAGE
    add x14, x14, l_text_64@PAGEOFF
    fmov d16, d24
    fmov d0, d16
    movz x0, #32
    movz x1, #1
    mov x2, x14
    bl _lb_core_6f_to_s
    mov x14, x0
    mov x9, #0
    mov w10, w14
    subs w9, w9, w10
    b.vc 1f
    adrp x0, l_text_64@PAGE
    add x0, x0, l_text_64@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    str w14, [x22]
    mov x0, x22
    bl _CreateFontIndirectW
    str x0, [sp, #64]
    ldr x9, [sp, #64]
    cbnz x9, L9_13
    b L9_14
L9_13:
    b L9_15
L9_14:
    sub x19, x29, #144
    adrp x14, _lb_fonts_failed@PAGE
    add x14, x14, _lb_fonts_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_35@PAGE
    add x14, x14, l_text_35@PAGEOFF
    sub x15, x29, #400
    str x14, [x15]
    add x14, x15, #8
    movz x9, #24
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
    ldr x19, [sp, #1152]
    ldr x20, [sp, #1144]
    ldr x21, [sp, #1136]
    ldr x22, [sp, #1128]
    ldr x23, [sp, #1120]
    ldr x24, [sp, #1112]
    ldr x25, [sp, #1104]
    ldr x26, [sp, #1096]
    ldr x27, [sp, #1088]
    ldr x28, [sp, #1080]
    ldr d8, [sp, #1072]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_15:
    ldr x0, [sp, #80]
    ldr x1, [sp, #64]
    bl _SelectObject
    mov x14, x0
    cbnz x14, L9_17
    b L9_18
L9_17:
    b L9_19
L9_18:
    sub x19, x29, #144
    adrp x14, _lb_fonts_failed@PAGE
    add x14, x14, _lb_fonts_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_65@PAGE
    add x14, x14, l_text_65@PAGEOFF
    sub x15, x29, #416
    str x14, [x15]
    add x14, x15, #8
    movz x9, #32
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #64]
    bl _DeleteObject
    mov w14, w0
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1152]
    ldr x20, [sp, #1144]
    ldr x21, [sp, #1136]
    ldr x22, [sp, #1128]
    ldr x23, [sp, #1120]
    ldr x24, [sp, #1112]
    ldr x25, [sp, #1104]
    ldr x26, [sp, #1096]
    ldr x27, [sp, #1088]
    ldr x28, [sp, #1080]
    ldr d8, [sp, #1072]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_19:
    sub x9, x29, #432
    str x9, [sp, #448]
    sub x24, x29, #448
    mov x11, x24
    stp xzr, xzr, [x11, #0]
    movz x9, #1, lsl #16
    str w9, [x24]
    add x14, x24, #12
    movz x9, #1, lsl #16
    str w9, [x14]
    mov x10, x24
    ldr x11, [sp, #448]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x9, x29, #208
    str x9, [sp, #440]
    ldr x9, [sp, #440]
    add x9, x9, #8
    str x9, [sp, #432]
    sub x9, x29, #464
    str x9, [sp, #40]
    sub x9, x29, #488
    str x9, [sp, #32]
    ldr x9, [sp, #32]
    add x9, x9, #16
    str x9, [sp, #424]
    sub x9, x29, #504
    str x9, [sp, #416]
    ldr x9, [sp, #40]
    add x9, x9, #8
    str x9, [sp, #408]
    sub x9, x29, #540
    str x9, [sp, #392]
    sub x9, x29, #576
    str x9, [sp, #24]
    adrp x9, _lb_memory_heap@PAGE
    add x9, x9, _lb_memory_heap@PAGEOFF
    str x9, [sp, #16]
    sub x9, x29, #624
    str x9, [sp, #8]
    ldr x9, [sp, #16]
    add x9, x9, #8
    str x9, [sp, #344]
    sub x9, x29, #648
    str x9, [sp, #0]
    ldr x9, [sp, #0]
    add x9, x9, #16
    str x9, [sp, #336]
    ldr x9, [sp, #8]
    add x9, x9, #8
    str x9, [sp, #288]
    ldr x9, [sp, #8]
    add x9, x9, #40
    str x9, [sp, #280]
    ldr x9, [sp, #8]
    add x9, x9, #16
    str x9, [sp, #328]
    adrp x9, l_text_15@PAGE
    add x9, x9, l_text_15@PAGEOFF
    str x9, [sp, #320]
    ldr x9, [sp, #328]
    add x9, x9, #8
    str x9, [sp, #312]
    ldr x9, [sp, #328]
    add x9, x9, #16
    str x9, [sp, #304]
    ldr x9, [sp, #8]
    add x9, x9, #40
    str x9, [sp, #296]
    ldr x9, [sp, #8]
    add x9, x9, #16
    str x9, [sp, #384]
    adrp x9, l_text_13@PAGE
    add x9, x9, l_text_13@PAGEOFF
    str x9, [sp, #376]
    ldr x9, [sp, #384]
    add x9, x9, #8
    str x9, [sp, #368]
    ldr x9, [sp, #384]
    add x9, x9, #16
    str x9, [sp, #360]
    ldr x9, [sp, #8]
    add x9, x9, #40
    str x9, [sp, #352]
    ldr x9, [sp, #8]
    add x9, x9, #40
    str x9, [sp, #272]
    ldr x9, [sp, #392]
    add x9, x9, #4
    str x9, [sp, #256]
    ldr x9, [sp, #24]
    add x9, x9, #8
    str x9, [sp, #248]
    add x9, x19, #24
    str x9, [sp, #240]
    adrp x9, l_text_77@PAGE
    add x9, x9, l_text_77@PAGEOFF
    str x9, [sp, #232]
    ldr x9, [sp, #392]
    add x9, x9, #8
    str x9, [sp, #224]
    add x9, x19, #32
    str x9, [sp, #208]
    adrp x9, l_text_78@PAGE
    add x9, x9, l_text_78@PAGEOFF
    str x9, [sp, #200]
    ldr x9, [sp, #392]
    add x9, x9, #12
    str x9, [sp, #192]
    sub x9, x29, #240
    str x9, [sp, #168]
    sub x9, x29, #240
    str x9, [sp, #152]
    sub x9, x29, #240
    str x9, [sp, #136]
    sub x9, x29, #728
    str x9, [sp, #104]
    ldr x9, [sp, #104]
    add x9, x9, #8
    str x9, [sp, #96]
    ldr x9, [sp, #16]
    add x9, x9, #8
    str x9, [sp, #88]
    mov x9, #0
    str x9, [sp, #56]
    mov x9, #0
    str x9, [sp, #48]
L9_21:
    ldr x9, [sp, #432]
    ldr x14, [x9]
    ldr x9, [sp, #56]
    cmp x9, x14
    b.hs L9_23
L9_22:
    ldr x9, [sp, #440]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x2, [sp, #56]
    sub x8, x29, #488
    bl _lb_utf8_decode
    ldr x9, [sp, #424]
    ldrb w14, [x9]
    cbnz w14, L9_24
    b L9_25
L9_24:
    ldr x10, [sp, #32]
    ldr x11, [sp, #416]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L9_26
L9_25:
    adrp x14, l_text_37@PAGE
    add x14, x14, l_text_37@PAGEOFF
    sub x15, x29, #520
    str x14, [x15]
    add x14, x15, #8
    movz x9, #22
    str x9, [x14]
    adrp x14, l_text_66@PAGE
    add x14, x14, l_text_66@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_66@PAGE
    add x0, x0, l_text_66@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at
L9_26:
    ldr x10, [sp, #416]
    ldr x11, [sp, #40]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #408]
    ldr x14, [x9]
    mov x9, x14
    ldr x10, [sp, #56]
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_67@PAGE
    add x0, x0, l_text_67@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    str x9, [sp, #400]
    ldr x11, [sp, #392]
    stp xzr, xzr, [x11, #0]
    str wzr, [x11, #16]
    ldr x9, [sp, #40]
    ldr w14, [x9]
    mov w14, w14
    movz x10, #65535
    cmp w14, w10
    b.hi L9_28
L9_27:
    mov w20, w14
    b L9_29
L9_28:
    movz x9, #65533
    mov w20, w9
L9_29:
    ldr x0, [sp, #80]
    mov x1, x20
    movz x2, #6
    ldr x3, [sp, #392]
    mov x4, #0
    mov x5, #0
    ldr x6, [sp, #448]
    bl _GetGlyphOutlineW
    mov w24, w0
    movz x10, #65535
    movk x10, #65535, lsl #16
    cmp w24, w10
    cset w14, eq
    cbnz w14, L9_87
    b L9_33
L9_87:
    mov w15, w14
    b L9_34
L9_33:
    movz x10, #16, lsl #16
    cmp w24, w10
    cset w15, hi
L9_34:
    and w14, w15, #255
    cbnz w14, L9_30
    b L9_31
L9_30:
    sub x19, x29, #144
    adrp x14, _lb_fonts_failed@PAGE
    add x14, x14, _lb_fonts_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_68@PAGE
    add x14, x14, l_text_68@PAGEOFF
    sub x15, x29, #560
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
    ldr x0, [sp, #80]
    ldr x1, [sp, #72]
    bl _SelectObject
    mov x14, x0
    ldr x0, [sp, #64]
    bl _DeleteObject
    mov w14, w0
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1152]
    ldr x20, [sp, #1144]
    ldr x21, [sp, #1136]
    ldr x22, [sp, #1128]
    ldr x23, [sp, #1120]
    ldr x24, [sp, #1112]
    ldr x25, [sp, #1104]
    ldr x26, [sp, #1096]
    ldr x27, [sp, #1088]
    ldr x28, [sp, #1080]
    ldr d8, [sp, #1072]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_31:
L9_32:
    mov x10, #0
    cmp w24, w10
    b.ls L9_37
L9_36:
    mov w25, w24
    movz x10, #16384, lsl #48
    cmp x25, x10
    b.ls L9_40
L9_39:
    movz x9, #1
    movk x9, #3178, lsl #16
    ldr x10, [sp, #384]
    str w9, [x10]
    ldr x9, [sp, #376]
    ldr x10, [sp, #368]
    str x9, [x10]
    movz x9, #47
    ldr x10, [sp, #360]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #352]
    strb w9, [x10]
    b L9_41
L9_40:
    ldr x9, [sp, #16]
    ldr x14, [x9]
    ldr x9, [sp, #344]
    ldr x15, [x9]
    cbnz x15, L9_42
    b L9_43
L9_43:
    adrp x0, l_text_69@PAGE
    add x0, x0, l_text_69@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
L9_42:
    ldr x21, [x15]
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x25
    movz x2, #1
    sub x8, x29, #648
    ldr x17, [sp], #16
    blr x17
    ldr x9, [sp, #336]
    ldrb w21, [x9]
    mov x10, #0
    cmp x25, x10
    cset w19, ne
    mov x10, #0
    cmp w21, w10
    cset w21, eq
    and w19, w19, w21
    cbnz w19, L9_44
    b L9_45
L9_44:
    movz x9, #1
    movk x9, #3178, lsl #16
    ldr x10, [sp, #328]
    str w9, [x10]
    ldr x9, [sp, #320]
    ldr x10, [sp, #312]
    str x9, [x10]
    movz x9, #16
    ldr x10, [sp, #304]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #296]
    strb w9, [x10]
    b L9_41
L9_45:
    ldr x9, [sp, #0]
    ldr x14, [x9]
    ldr x10, [sp, #8]
    str x14, [x10]
    ldr x10, [sp, #288]
    str x25, [x10]
    mov x9, #0
    ldr x10, [sp, #280]
    strb w9, [x10]
L9_41:
    ldr x9, [sp, #272]
    ldrb w14, [x9]
    cbnz w14, L9_47
    b L9_46
L9_47:
    ldr x9, [sp, #8]
    add x14, x9, #16
    sub x19, x29, #144
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #80]
    ldr x1, [sp, #72]
    bl _SelectObject
    mov x14, x0
    ldr x0, [sp, #64]
    bl _DeleteObject
    mov w14, w0
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1152]
    ldr x20, [sp, #1144]
    ldr x21, [sp, #1136]
    ldr x22, [sp, #1128]
    ldr x23, [sp, #1120]
    ldr x24, [sp, #1112]
    ldr x25, [sp, #1104]
    ldr x26, [sp, #1096]
    ldr x27, [sp, #1088]
    ldr x28, [sp, #1080]
    ldr d8, [sp, #1072]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_46:
    ldr x10, [sp, #8]
    ldr x11, [sp, #24]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #24]
    ldr x19, [x9]
    ldr x0, [sp, #80]
    mov x1, x20
    movz x2, #6
    ldr x3, [sp, #392]
    mov x4, x24
    mov x5, x19
    ldr x6, [sp, #448]
    bl _GetGlyphOutlineW
    mov w14, w0
    movz x10, #65535
    movk x10, #65535, lsl #16
    cmp w14, w10
    b.ne L9_50
L9_49:
    sub x20, x29, #144
    adrp x14, _lb_fonts_failed@PAGE
    add x14, x14, _lb_fonts_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_70@PAGE
    add x14, x14, l_text_70@PAGEOFF
    sub x15, x29, #664
    str x14, [x15]
    add x14, x15, #8
    movz x9, #28
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #680
    ldr x9, [sp, #24]
    add x15, x9, #8
    ldr x15, [x15]
    str x19, [x14]
    add x21, x14, #8
    str x15, [x21]
    ldr x9, [sp, #16]
    ldr x15, [x9]
    ldr x9, [sp, #16]
    add x21, x9, #8
    ldr x21, [x21]
    cbnz x21, L9_53
    b L9_52
L9_53:
    add x19, x21, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L9_52:
    ldr x0, [sp, #80]
    ldr x1, [sp, #72]
    bl _SelectObject
    mov x14, x0
    ldr x0, [sp, #64]
    bl _DeleteObject
    mov w14, w0
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1152]
    ldr x20, [sp, #1144]
    ldr x21, [sp, #1136]
    ldr x22, [sp, #1128]
    ldr x23, [sp, #1120]
    ldr x24, [sp, #1112]
    ldr x25, [sp, #1104]
    ldr x26, [sp, #1096]
    ldr x27, [sp, #1088]
    ldr x28, [sp, #1080]
    ldr d8, [sp, #1072]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_50:
L9_51:
    ldr x9, [sp, #392]
    ldr w14, [x9]
    mov w14, w14
    add x14, x14, #3
L9_56:
    movz x10, #4
    udiv x15, x14, x10
    mov x9, x15
    movz x10, #4
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_72@PAGE
    add x0, x0, l_text_72@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    str x9, [sp, #264]
    ldr x9, [sp, #256]
    ldr w15, [x9]
    mov w15, w15
    ldr x9, [sp, #264]
    mov x10, x15
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_74@PAGE
    add x0, x0, l_text_74@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    ldr x9, [sp, #248]
    ldr x21, [x9]
    cmp x15, x21
    b.ls L9_58
L9_57:
    sub x20, x29, #144
    adrp x14, _lb_fonts_failed@PAGE
    add x14, x14, _lb_fonts_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_75@PAGE
    add x14, x14, l_text_75@PAGEOFF
    sub x15, x29, #696
    str x14, [x15]
    add x14, x15, #8
    movz x9, #41
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #712
    str x19, [x14]
    add x15, x14, #8
    str x21, [x15]
    ldr x9, [sp, #16]
    ldr x15, [x9]
    ldr x9, [sp, #16]
    add x22, x9, #8
    ldr x22, [x22]
    cbnz x22, L9_61
    b L9_60
L9_61:
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
L9_60:
    ldr x0, [sp, #80]
    ldr x1, [sp, #72]
    bl _SelectObject
    mov x14, x0
    ldr x0, [sp, #64]
    bl _DeleteObject
    mov w14, w0
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1152]
    ldr x20, [sp, #1144]
    ldr x21, [sp, #1136]
    ldr x22, [sp, #1128]
    ldr x23, [sp, #1120]
    ldr x24, [sp, #1112]
    ldr x25, [sp, #1104]
    ldr x26, [sp, #1096]
    ldr x27, [sp, #1088]
    ldr x28, [sp, #1080]
    ldr d8, [sp, #1072]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_58:
L9_59:
    ldr x9, [sp, #48]
    ucvtf d24, x9
    ldr x9, [sp, #240]
    ldr d25, [x9]
    fmul d24, d24, d25
    fmul d24, d8, d24
    fmov d16, d24
    fmov d0, d16
    bl _lb_math_round
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    movz x0, #64
    movz x1, #1
    ldr x2, [sp, #232]
    bl _lb_core_6f_to_s
    mov x14, x0
    mov x9, x14
    movz x10, #2
    adds x9, x9, x10
    b.vc 1f
    adrp x0, l_text_77@PAGE
    add x0, x0, l_text_77@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    ldr x9, [sp, #224]
    ldrsw x15, [x9]
    sxtw x15, w15
    mov x9, x14
    mov x10, x15
    adds x9, x9, x10
    b.vc 1f
    adrp x0, l_text_77@PAGE
    add x0, x0, l_text_77@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    str x9, [sp, #216]
    ldr x9, [sp, #208]
    ldr d24, [x9]
    fmul d24, d8, d24
    fmov d16, d24
    fmov d0, d16
    bl _lb_math_ceil
    fmov d24, d0
    fmov d16, d24
    fmov d0, d16
    movz x0, #64
    movz x1, #1
    ldr x2, [sp, #200]
    bl _lb_core_6f_to_s
    mov x14, x0
    mov x9, x14
    movz x10, #2
    adds x9, x9, x10
    b.vc 1f
    adrp x0, l_text_78@PAGE
    add x0, x0, l_text_78@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    ldr x9, [sp, #192]
    ldrsw x15, [x9]
    sxtw x15, w15
    mov x9, x14
    mov x10, x15
    subs x9, x9, x10
    b.vc 1f
    adrp x0, l_text_78@PAGE
    add x0, x0, l_text_78@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    ldr x9, [sp, #256]
    ldr w15, [x9]
    mov w9, w15
    str x9, [sp, #184]
    ldr x9, [sp, #168]
    ldr x25, [x9]
    add x9, x25, #16
    str x9, [sp, #160]
    ldr x9, [sp, #152]
    ldr x22, [x9]
    add x9, x22, #20
    str x9, [sp, #144]
    ldr x9, [sp, #136]
    ldr x9, [x9]
    str x9, [sp, #128]
    ldr x9, [sp, #128]
    add x9, x9, #16
    str x9, [sp, #120]
    ldr x9, [sp, #128]
    add x9, x9, #8
    str x9, [sp, #112]
    mov x9, #0
    mov x27, x9
L9_63:
    ldr x10, [sp, #184]
    cmp x27, x10
    b.hs L9_66
L9_64:
    ldr x9, [sp, #392]
    ldr w26, [x9]
    mov w9, w26
    str x9, [sp, #176]
    mov x9, #0
    mov x15, x9
L9_67:
    ldr x10, [sp, #176]
    cmp x15, x10
    b.hs L9_70
L9_68:
    ldr x9, [sp, #216]
    mov x10, x15
    adds x9, x9, x10
    b.vc 1f
    adrp x0, l_text_79@PAGE
    add x0, x0, l_text_79@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x23, x9
    mov x9, x14
    mov x10, x27
    adds x9, x9, x10
    b.vc 1f
    adrp x0, l_text_80@PAGE
    add x0, x0, l_text_80@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x26, x9
    mov x10, #0
    cmp x23, x10
    cset w28, ge
    cbnz w28, L9_74
    b L9_88
L9_88:
    mov w24, w28
    b L9_75
L9_74:
    mov x10, #0
    cmp x26, x10
    cset w24, ge
L9_75:
    and w28, w24, #255
    cbnz w28, L9_76
    b L9_89
L9_89:
    mov w24, w28
    b L9_77
L9_76:
    ldr x9, [sp, #160]
    ldr w24, [x9]
    mov w24, w24
    cmp x23, x24
    cset w24, lt
L9_77:
    and w28, w24, #255
    cbnz w28, L9_78
    b L9_90
L9_90:
    mov w24, w28
    b L9_79
L9_78:
    ldr x9, [sp, #144]
    ldr w24, [x9]
    mov w24, w24
    cmp x26, x24
    cset w24, lt
L9_79:
    and w28, w24, #255
    cbnz w28, L9_71
    b L9_72
L9_71:
    ldr x9, [sp, #264]
    mov x10, x27
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_81@PAGE
    add x0, x0, l_text_81@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x24, x9
    mov x9, x24
    mov x10, x15
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_81@PAGE
    add x0, x0, l_text_81@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x24, x9
    cmp x24, x21
    b.lo 1f
    adrp x0, l_text_81@PAGE
    add x0, x0, l_text_81@PAGEOFF
    adrp x1, l_text_46@PAGE
    add x1, x1, l_text_46@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x24, x19, x24
    ldrb w24, [x24]
    mov w24, w24
    mov w9, w24
    movz x10, #255
    mov w9, w9
    mov w10, w10
    mul x9, x9, x10
    cmp x9, w9, uxtw
    b.eq 1f
    adrp x0, l_text_81@PAGE
    add x0, x0, l_text_81@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w24, w9
    mov w9, w24
    movz x10, #32
    adds w9, w9, w10
    b.cc 1f
    adrp x0, l_text_81@PAGE
    add x0, x0, l_text_81@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w24, w9
L9_81:
    movz x10, #64
    udiv w28, w24, w10
    mov w28, w28
    and w28, w28, #255
    ldr x9, [sp, #120]
    ldr w20, [x9]
    mov w20, w20
    mov x9, x26
    mov x10, x20
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_82@PAGE
    add x0, x0, l_text_82@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    mov x9, x23
    mov x10, x20
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_82@PAGE
    add x0, x0, l_text_82@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    and w28, w28, #255
    ldr x9, [sp, #128]
    ldr x22, [x9]
    ldr x9, [sp, #112]
    ldr x25, [x9]
    cmp x20, x25
    b.lo 1f
    adrp x0, l_text_83@PAGE
    add x0, x0, l_text_83@PAGEOFF
    adrp x1, l_text_46@PAGE
    add x1, x1, l_text_46@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x22, x20, x22
    ldrb w22, [x22]
    cmp w28, w22
    b.ls L9_83
L9_82:
    ldr x9, [sp, #128]
    ldr x22, [x9]
    ldr x9, [sp, #112]
    ldr x23, [x9]
    cmp x20, x23
    b.lo 1f
    adrp x0, l_text_84@PAGE
    add x0, x0, l_text_84@PAGEOFF
    adrp x1, l_text_46@PAGE
    add x1, x1, l_text_46@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x22, x20, x22
    strb w28, [x22]
    b L9_84
L9_83:
L9_84:
    b L9_73
L9_72:
L9_73:
L9_69:
    add x20, x15, #1
    mov x15, x20
    b L9_67
L9_70:
L9_65:
    add x15, x27, #1
    mov x27, x15
    b L9_63
L9_66:
    ldr x10, [sp, #104]
    str x19, [x10]
    ldr x10, [sp, #96]
    str x21, [x10]
    ldr x9, [sp, #16]
    ldr x14, [x9]
    ldr x9, [sp, #88]
    ldr x15, [x9]
    cbnz x15, L9_86
    b L9_85
L9_86:
    add x19, x15, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x14
    ldr x9, [sp, #120]
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L9_85:
    b L9_38
L9_37:
L9_38:
    ldr x9, [sp, #48]
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_85@PAGE
    add x0, x0, l_text_85@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    ldr x9, [sp, #400]
    str x9, [sp, #56]
    mov x9, x14
    str x9, [sp, #48]
    b L9_21
L9_23:
    ldr x0, [sp, #80]
    ldr x1, [sp, #72]
    bl _SelectObject
    mov x14, x0
    ldr x0, [sp, #64]
    bl _DeleteObject
    mov w14, w0
    sub x14, x29, #144
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
    ldr x19, [sp, #1152]
    ldr x20, [sp, #1144]
    ldr x21, [sp, #1136]
    ldr x22, [sp, #1128]
    ldr x23, [sp, #1120]
    ldr x24, [sp, #1112]
    ldr x25, [sp, #1104]
    ldr x26, [sp, #1096]
    ldr x27, [sp, #1088]
    ldr x28, [sp, #1080]
    ldr d8, [sp, #1072]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_fonts_10linux_face
_lb_fonts_10linux_face:
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
    str x28, [sp, #456]
    sub x16, x29, #192
    str d0, [x16]
    sub x16, x29, #208
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #224
    sub x14, x29, #208
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ne L10_2
L10_1:
    adrp x14, l_text_88@PAGE
    add x14, x14, l_text_88@PAGEOFF
    sub x15, x29, #256
    str x14, [x15]
    add x14, x15, #8
    movz x9, #9
    str x9, [x14]
    sub x14, x29, #240
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L10_3
L10_2:
    sub x15, x29, #240
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L10_3:
    sub x14, x29, #240
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #304
    bl _lb_fonts_12family_bytes
    sub x15, x29, #304
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L10_5
    b L10_4
L10_5:
    add x14, x15, #16
    sub x19, x29, #176
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
    ldr x19, [sp, #528]
    ldr x20, [sp, #520]
    ldr x21, [sp, #512]
    ldr x22, [sp, #504]
    ldr x23, [sp, #496]
    ldr x24, [sp, #488]
    ldr x25, [sp, #480]
    ldr x26, [sp, #472]
    ldr x27, [sp, #464]
    ldr x28, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_6:
L10_4:
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    movz x0, #2
    movz x1, #1
    movz x2, #1
    bl _cairo_image_surface_create
    mov x20, x0
    cbnz x20, L10_7
    b L10_8
L10_8:
    adrp x0, l_text_89@PAGE
    add x0, x0, l_text_89@PAGEOFF
    adrp x1, l_text_86@PAGE
    add x1, x1, l_text_86@PAGEOFF
    bl _lb_core_7trap_at
L10_7:
    mov x0, x20
    bl _cairo_create
    mov x21, x0
    cbnz x21, L10_9
    b L10_10
L10_10:
    adrp x0, l_text_90@PAGE
    add x0, x0, l_text_90@PAGEOFF
    adrp x1, l_text_86@PAGE
    add x1, x1, l_text_86@PAGEOFF
    bl _lb_core_7trap_at
L10_9:
    sub x10, x29, #560
    str x21, [x10]
    bl _cairo_font_options_create
    mov x22, x0
    cbnz x22, L10_30
    b L10_31
L10_31:
    adrp x0, l_text_87@PAGE
    add x0, x0, l_text_87@PAGEOFF
    adrp x1, l_text_86@PAGE
    add x1, x1, l_text_86@PAGEOFF
    bl _lb_core_7trap_at
L10_30:
    mov x0, x22
    movz x1, #2
    bl _cairo_font_options_set_antialias
    mov x0, x22
    movz x1, #1
    bl _cairo_font_options_set_hint_metrics
    mov x0, x21
    mov x1, x22
    bl _cairo_set_font_options
    mov x0, x22
    bl _cairo_font_options_destroy
L10_32:
    ldr x22, [x19]
    mov x0, x21
    mov x1, x22
    mov x2, #0
    mov x3, #0
    bl _cairo_select_font_face
    sub x14, x29, #192
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    mov x0, x21
    bl _cairo_set_font_size
    sub x23, x29, #344
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    mov x0, x21
    mov x1, x23
    bl _cairo_font_extents
    sub x24, x29, #392
    mov x11, x24
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    sub x25, x29, #440
    mov x11, x25
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    adrp x14, l_text_91@PAGE
    add x14, x14, l_text_91@PAGEOFF
    mov x0, x21
    mov x1, x14
    mov x2, x24
    bl _cairo_text_extents
    adrp x14, l_text_92@PAGE
    add x14, x14, l_text_92@PAGEOFF
    mov x0, x21
    mov x1, x14
    mov x2, x25
    bl _cairo_text_extents
    mov x0, x21
    bl _cairo_status
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L10_33
    b L10_14
L10_33:
    mov w15, w14
    b L10_15
L10_14:
    add x14, x25, #32
    ldr d24, [x14]
    mov x9, #0
    fmov d25, x9
    fcmp d24, d25
    cset w15, ls
L10_15:
    and w14, w15, #255
    cbnz w14, L10_34
    b L10_16
L10_34:
    mov w15, w14
    b L10_17
L10_16:
    add x14, x24, #32
    ldr d24, [x14]
    add x14, x25, #32
    ldr d25, [x14]
    fsub d24, d24, d25
    fmov d16, d24
    fmov d0, d16
    bl _lb_math_abs
    fmov d24, d0
    movz x9, #5243
    movk x9, #18350, lsl #16
    movk x9, #31457, lsl #32
    movk x9, #16260, lsl #48
    fmov d25, x9
    fcmp d24, d25
    cset w15, gt
L10_17:
    and w14, w15, #255
    cbnz w14, L10_11
    b L10_12
L10_11:
    sub x23, x29, #176
    add x14, x23, #40
    adrp x15, _lb_fonts_failed@PAGE
    add x15, x15, _lb_fonts_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_93@PAGE
    add x15, x15, l_text_93@PAGEOFF
    sub x24, x29, #456
    str x15, [x24]
    add x15, x24, #8
    movz x9, #54
    str x9, [x15]
    add x14, x14, #8
    mov x10, x24
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x23, #64
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    bl _cairo_destroy
    mov x0, x20
    bl _cairo_surface_destroy
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x15, x29, #472
    add x24, x19, #8
    ldr x24, [x24]
    str x22, [x15]
    add x25, x15, #8
    str x24, [x25]
    ldr x24, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L10_19
    b L10_18
L10_19:
    add x19, x14, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x24
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L10_18:
    mov x1, x23
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
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
    ldr x28, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_20:
    b L10_13
L10_12:
L10_13:
    mov x0, x21
    bl _cairo_get_scaled_font
    mov x14, x0
    cbnz x14, L10_21
    b L10_22
L10_22:
    adrp x0, l_text_95@PAGE
    add x0, x0, l_text_95@PAGEOFF
    adrp x1, l_text_86@PAGE
    add x1, x1, l_text_86@PAGEOFF
    bl _lb_core_7trap_at
L10_21:
    mov x0, x14
    bl _cairo_scaled_font_reference
    mov x24, x0
    cbnz x24, L10_23
    b L10_24
L10_24:
    adrp x0, l_text_95@PAGE
    add x0, x0, l_text_95@PAGEOFF
    adrp x1, l_text_86@PAGE
    add x1, x1, l_text_86@PAGEOFF
    bl _lb_core_7trap_at
L10_23:
    sub x26, x29, #512
    mov x11, x26
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    str x24, [x26]
    add x14, x26, #8
    mov x9, #0
    str x9, [x14]
    add x14, x25, #32
    ldr d24, [x14]
    add x14, x26, #16
    str d24, [x14]
    ldr d24, [x23]
    add x14, x26, #24
    str d24, [x14]
    add x14, x23, #8
    ldr d24, [x14]
    add x14, x26, #32
    str d24, [x14]
    sub x27, x29, #176
    mov x10, x26
    mov x11, x27
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    add x14, x27, #64
    mov x9, #0
    strb w9, [x14]
    mov x0, x21
    bl _cairo_destroy
    mov x0, x20
    bl _cairo_surface_destroy
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x15, x29, #528
    add x26, x19, #8
    ldr x26, [x26]
    str x22, [x15]
    add x28, x15, #8
    str x26, [x28]
    ldr x26, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L10_26
    b L10_25
L10_26:
    add x19, x14, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x26
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L10_25:
    mov x1, x27
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
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
    ldr x28, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_27:
    mov x0, x14
    bl _cairo_destroy
    mov x14, x19
    mov x0, x14
    bl _cairo_surface_destroy
    sub x14, x29, #224
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    sub x19, x29, #544
    ldr x20, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    mov x9, x14
    movz x10, #1
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_96@PAGE
    add x0, x0, l_text_96@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x20, [x19]
    add x19, x19, #8
    str x14, [x19]
    ldr x20, [x15]
    add x14, x15, #8
    ldr x14, [x14]
    cbnz x14, L10_29
    b L10_28
L10_29:
    add x15, x14, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x19
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L10_28:
    adrp x0, l_text_96@PAGE
    add x0, x0, l_text_96@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_fonts_12linux_raster
_lb_fonts_12linux_raster:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #544
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #512]
    str x20, [sp, #504]
    str x21, [sp, #496]
    str x22, [sp, #488]
    str x23, [sp, #480]
    str x24, [sp, #472]
    str x25, [sp, #464]
    str x26, [sp, #456]
    str x27, [sp, #448]
    str x28, [sp, #440]
    str d8, [sp, #432]
    str d9, [sp, #424]
    sub x16, x29, #200
    str x0, [x16]
    sub x16, x29, #216
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #232
    str d0, [x16]
    sub x16, x29, #248
    str x3, [x16]
    sub x0, x29, #200
    ldr x1, [x0]
    movz x2, #48
    bl _memcpy
    sub x19, x29, #200
    ldr x20, [x19]
    cbnz x20, L11_1
    b L11_2
L11_1:
    b L11_3
L11_2:
    sub x19, x29, #152
    adrp x14, _lb_fonts_failed@PAGE
    add x14, x14, _lb_fonts_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_4@PAGE
    add x14, x14, l_text_4@PAGEOFF
    sub x15, x29, #264
    str x14, [x15]
    add x14, x15, #8
    movz x9, #18
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
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr x22, [sp, #488]
    ldr x23, [sp, #480]
    ldr x24, [sp, #472]
    ldr x25, [sp, #464]
    ldr x26, [sp, #456]
    ldr x27, [sp, #448]
    ldr x28, [sp, #440]
    ldr d8, [sp, #432]
    ldr d9, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_4:
L11_3:
    sub x14, x29, #248
    ldr x9, [x14]
    str x9, [sp, #112]
    ldr x9, [sp, #112]
    add x9, x9, #16
    str x9, [sp, #104]
    ldr x9, [sp, #104]
    ldr w14, [x9]
    mov w14, w14
    ldr x9, [sp, #112]
    add x9, x9, #20
    str x9, [sp, #96]
    ldr x9, [sp, #96]
    ldr w15, [x9]
    mov w15, w15
    movz x0, #2
    mov x1, x14
    mov x2, x15
    bl _cairo_image_surface_create
    str x0, [sp, #40]
    ldr x9, [sp, #40]
    cbnz x9, L11_5
    b L11_6
L11_6:
    adrp x0, l_text_97@PAGE
    add x0, x0, l_text_97@PAGEOFF
    adrp x1, l_text_86@PAGE
    add x1, x1, l_text_86@PAGEOFF
    bl _lb_core_7trap_at
L11_5:
    ldr x0, [sp, #40]
    bl _cairo_surface_status
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L11_8
L11_7:
    sub x19, x29, #152
    adrp x14, _lb_fonts_failed@PAGE
    add x14, x14, _lb_fonts_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_98@PAGE
    add x14, x14, l_text_98@PAGEOFF
    sub x15, x29, #280
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #40]
    bl _cairo_surface_destroy
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
    ldr x22, [sp, #488]
    ldr x23, [sp, #480]
    ldr x24, [sp, #472]
    ldr x25, [sp, #464]
    ldr x26, [sp, #456]
    ldr x27, [sp, #448]
    ldr x28, [sp, #440]
    ldr d8, [sp, #432]
    ldr d9, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_10:
    b L11_9
L11_8:
L11_9:
    ldr x0, [sp, #40]
    bl _cairo_create
    str x0, [sp, #32]
    ldr x9, [sp, #32]
    cbnz x9, L11_11
    b L11_12
L11_12:
    adrp x0, l_text_99@PAGE
    add x0, x0, l_text_99@PAGEOFF
    adrp x1, l_text_86@PAGE
    add x1, x1, l_text_86@PAGEOFF
    bl _lb_core_7trap_at
L11_11:
    ldr x9, [sp, #32]
    sub x10, x29, #424
    str x9, [x10]
    bl _cairo_font_options_create
    mov x26, x0
    cbnz x26, L11_37
    b L11_38
L11_38:
    adrp x0, l_text_87@PAGE
    add x0, x0, l_text_87@PAGEOFF
    adrp x1, l_text_86@PAGE
    add x1, x1, l_text_86@PAGEOFF
    bl _lb_core_7trap_at
L11_37:
    mov x0, x26
    movz x1, #2
    bl _cairo_font_options_set_antialias
    mov x0, x26
    movz x1, #1
    bl _cairo_font_options_set_hint_metrics
    ldr x0, [sp, #32]
    mov x1, x26
    bl _cairo_set_font_options
    mov x0, x26
    bl _cairo_font_options_destroy
L11_39:
    mov x0, x20
    bl _cairo_scaled_font_get_font_face
    mov x14, x0
    cbnz x14, L11_13
    b L11_14
L11_14:
    adrp x0, l_text_100@PAGE
    add x0, x0, l_text_100@PAGEOFF
    adrp x1, l_text_86@PAGE
    add x1, x1, l_text_86@PAGEOFF
    bl _lb_core_7trap_at
L11_13:
    ldr x0, [sp, #32]
    mov x1, x14
    bl _cairo_set_font_face
    add x15, x19, #16
    ldr d24, [x15]
    sub x15, x29, #232
    ldr d8, [x15]
    fmul d24, d24, d8
    fmov d16, d24
    fmov d0, d16
    ldr x0, [sp, #32]
    bl _cairo_set_font_size
    movz x9, #16368, lsl #48
    fmov d24, x9
    fmov d16, d24
    fmov d0, d16
    fmov d16, d24
    fmov d1, d16
    fmov d16, d24
    fmov d2, d16
    fmov d16, d24
    fmov d3, d16
    ldr x0, [sp, #32]
    bl _cairo_set_source_rgba
    sub x20, x29, #216
    add x26, x20, #8
    sub x9, x29, #296
    str x9, [sp, #16]
    sub x9, x29, #320
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x9, x9, #16
    str x9, [sp, #88]
    sub x28, x29, #336
    sub x22, x29, #357
    ldr x9, [sp, #16]
    add x9, x9, #8
    str x9, [sp, #80]
    movz x9, #16384, lsl #48
    fmov d9, x9
    add x9, x19, #24
    str x9, [sp, #72]
    add x9, x19, #32
    str x9, [sp, #64]
    mov x9, #0
    mov x24, x9
    mov x9, #0
    str x9, [sp, #24]
L11_15:
    ldr x14, [x26]
    cmp x24, x14
    b.hs L11_17
L11_16:
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x24
    sub x8, x29, #320
    bl _lb_utf8_decode
    ldr x9, [sp, #88]
    ldrb w14, [x9]
    cbnz w14, L11_18
    b L11_19
L11_18:
    ldr x10, [sp, #8]
    mov x11, x28
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L11_20
L11_19:
    adrp x14, l_text_37@PAGE
    add x14, x14, l_text_37@PAGEOFF
    sub x15, x29, #352
    str x14, [x15]
    add x14, x15, #8
    movz x9, #22
    str x9, [x14]
    adrp x14, l_text_101@PAGE
    add x14, x14, l_text_101@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_101@PAGE
    add x0, x0, l_text_101@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at
L11_20:
    mov x10, x28
    ldr x11, [sp, #16]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x11, x22
    str wzr, [x11, #0]
    strb wzr, [x11, #4]
    ldr x9, [sp, #80]
    ldr x19, [x9]
    mov x9, #0
    mov x14, x9
L11_21:
    cmp x14, x19
    b.hs L11_24
L11_22:
    movz x10, #5
    cmp x14, x10
    b.lo 1f
    adrp x0, l_text_102@PAGE
    add x0, x0, l_text_102@PAGEOFF
    adrp x1, l_text_46@PAGE
    add x1, x1, l_text_46@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x15, x22, x14
    mov x9, x24
    mov x10, x14
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_102@PAGE
    add x0, x0, l_text_102@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    ldr x23, [x20]
    ldr x27, [x26]
    cmp x21, x27
    b.lo 1f
    adrp x0, l_text_102@PAGE
    add x0, x0, l_text_102@PAGEOFF
    adrp x1, l_text_46@PAGE
    add x1, x1, l_text_46@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x21, x21, x23
    ldrb w21, [x21]
    strb w21, [x15]
L11_23:
    add x15, x14, #1
    mov x14, x15
    b L11_21
L11_24:
    movz x10, #5
    cmp x19, x10
    b.lo 1f
    adrp x0, l_text_103@PAGE
    add x0, x0, l_text_103@PAGEOFF
    adrp x1, l_text_46@PAGE
    add x1, x1, l_text_46@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x22, x19
    mov x9, #0
    strb w9, [x14]
    ldr x9, [sp, #24]
    ucvtf d24, x9
    ldr x9, [sp, #72]
    ldr d25, [x9]
    fmul d24, d24, d25
    fmul d24, d8, d24
    fadd d24, d9, d24
    ldr x9, [sp, #64]
    ldr d25, [x9]
    fmul d25, d8, d25
    fadd d25, d9, d25
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    ldr x0, [sp, #32]
    bl _cairo_move_to
    ldr x0, [sp, #32]
    mov x1, x22
    bl _cairo_show_text
    mov x9, x19
    mov x10, x24
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_105@PAGE
    add x0, x0, l_text_105@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    ldr x9, [sp, #24]
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_106@PAGE
    add x0, x0, l_text_106@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    mov x24, x14
    mov x9, x15
    str x9, [sp, #24]
    b L11_15
L11_17:
    ldr x0, [sp, #32]
    bl _cairo_status
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L11_26
L11_25:
    sub x19, x29, #152
    adrp x14, _lb_fonts_failed@PAGE
    add x14, x14, _lb_fonts_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_107@PAGE
    add x14, x14, l_text_107@PAGEOFF
    sub x15, x29, #376
    str x14, [x15]
    add x14, x15, #8
    movz x9, #33
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #32]
    bl _cairo_destroy
    ldr x0, [sp, #40]
    bl _cairo_surface_destroy
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
    ldr x22, [sp, #488]
    ldr x23, [sp, #480]
    ldr x24, [sp, #472]
    ldr x25, [sp, #464]
    ldr x26, [sp, #456]
    ldr x27, [sp, #448]
    ldr x28, [sp, #440]
    ldr d8, [sp, #432]
    ldr d9, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_28:
    b L11_27
L11_26:
L11_27:
    ldr x0, [sp, #40]
    bl _cairo_surface_flush
    ldr x0, [sp, #40]
    bl _cairo_image_surface_get_data
    mov x19, x0
    cbnz x19, L11_29
    b L11_30
L11_30:
    adrp x0, l_text_108@PAGE
    add x0, x0, l_text_108@PAGEOFF
    adrp x1, l_text_86@PAGE
    add x1, x1, l_text_86@PAGEOFF
    bl _lb_core_7trap_at
L11_29:
    ldr x0, [sp, #40]
    bl _cairo_image_surface_get_stride
    mov w14, w0
    sxtw x20, w14
    ldr x9, [sp, #96]
    ldr w14, [x9]
    mov w9, w14
    str x9, [sp, #56]
    ldr x9, [sp, #112]
    add x9, x9, #8
    str x9, [sp, #48]
    sub x23, x29, #392
    add x24, x23, #8
    sub x26, x29, #408
    add x27, x26, #8
    mov x9, #0
    mov x28, x9
L11_31:
    ldr x10, [sp, #56]
    cmp x28, x10
    b.hs L11_34
L11_32:
    ldr x9, [sp, #112]
    ldr x15, [x9]
    ldr x9, [sp, #48]
    ldr x21, [x9]
    ldr x9, [sp, #104]
    ldr w14, [x9]
    mov w14, w14
    mul x25, x14, x28
    add x14, x21, #1
    cmp x25, x14
    b.lo 1f
    adrp x0, l_text_109@PAGE
    add x0, x0, l_text_109@PAGEOFF
    adrp x1, l_text_46@PAGE
    add x1, x1, l_text_46@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x21, x14
    b.lo 1f
    adrp x0, l_text_109@PAGE
    add x0, x0, l_text_109@PAGEOFF
    adrp x1, l_text_46@PAGE
    add x1, x1, l_text_46@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x25, x21
    b.ls L11_35
L11_36:
    adrp x0, l_text_109@PAGE
    add x0, x0, l_text_109@PAGEOFF
    adrp x1, l_text_46@PAGE
    add x1, x1, l_text_46@PAGEOFF
    bl _lb_core_7trap_at
L11_35:
    add x14, x15, x25
    sub x22, x21, x25
    str x14, [x23]
    str x22, [x24]
    mov x9, x20
    mov x10, x28
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_109@PAGE
    add x0, x0, l_text_109@PAGEOFF
    adrp x1, l_text_112@PAGE
    add x1, x1, l_text_112@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    add x14, x14, x19
    ldr x9, [sp, #104]
    ldr w22, [x9]
    mov w22, w22
    str x14, [x26]
    str x22, [x27]
    ldr x9, [sp, #104]
    ldr w14, [x9]
    mov w14, w14
    mov x9, x23
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x26
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x14
    bl _lb_memory_copy_0g1_u8
L11_33:
    add x14, x28, #1
    mov x28, x14
    b L11_31
L11_34:
    ldr x0, [sp, #32]
    bl _cairo_destroy
    ldr x0, [sp, #40]
    bl _cairo_surface_destroy
    sub x14, x29, #152
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
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr x22, [sp, #488]
    ldr x23, [sp, #480]
    ldr x24, [sp, #472]
    ldr x25, [sp, #464]
    ldr x26, [sp, #456]
    ldr x27, [sp, #448]
    ldr x28, [sp, #440]
    ldr d8, [sp, #432]
    ldr d9, [sp, #424]
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
    cbnz w14, L12_11
    b L12_4
L12_11:
    mov w15, w14
    b L12_5
L12_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
L12_5:
    and w14, w15, #255
    cbnz w14, L12_1
    b L12_2
L12_1:
    adrp x14, l_text_46@PAGE
    add x14, x14, l_text_46@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, l_text_110@PAGE
    add x14, x14, l_text_110@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L12_3
L12_2:
L12_3:
    mov x10, #0
    cmp x19, x10
    b.ls L12_7
L12_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _memcpy
    mov x14, x0
    cbnz x14, L12_9
    b L12_10
L12_10:
    adrp x0, l_text_111@PAGE
    add x0, x0, l_text_111@PAGEOFF
    adrp x1, l_text_86@PAGE
    add x1, x1, l_text_86@PAGEOFF
    bl _lb_core_7trap_at
L12_9:
    b L12_8
L12_7:
L12_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_fonts_0init

    .section __TEXT,__const
l_text_0:
    .asciz "src/std/fonts/module.lucb:24:13"
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
    .asciz "src/std/fonts/module.lucb:58:9"
l_text_7:
    .asciz "font raster scale must be finite and in 0.5..4"
l_text_8:
    .asciz "src/std/fonts/module.lucb:67:9"
l_text_9:
    .asciz "src/std/fonts/module.lucb:68:9"
l_text_10:
    .asciz "src/std/fonts/module.lucb:69:9"
l_text_11:
    .asciz "rasterized text exceeds the 4 MiB image limit"
l_text_12:
    .asciz "src/std/fonts/module.lucb:71:9"
l_text_13:
    .asciz "memory.exhausted: the allocation size overflows"
l_text_14:
    .asciz "memory.unset"
l_text_15:
    .asciz "memory.exhausted"
l_text_16:
    .asciz "src/std/fonts/module.lucb:82:9"
l_text_17:
    .asciz "font operations require the UI thread"
l_text_18:
    .asciz "a text run supports at most 4096 UTF-8 bytes"
l_text_19:
    .asciz "text must be valid UTF-8"
l_text_20:
    .asciz "text runs cannot contain NUL, tabs or line breaks"
l_text_21:
    .asciz "src/std/fonts/module.lucb:108:9"
l_text_22:
    .asciz "src/std/fonts/module.lucb:109:9"
l_text_23:
    .asciz "a text run supports at most 1024 scalars"
l_text_24:
    .asciz "src/std/fonts/module.lucb:112:5"
l_text_25:
    .asciz "src/std/fonts/module.lucb:123:9"
l_text_26:
    .asciz "src/std/fonts/module.lucb:131:5"
l_text_27:
    .asciz "src/std/fonts/module.lucb:133:5"
l_text_28:
    .asciz "src/std/fonts/module.lucb:134:5"
l_text_29:
    .asciz "could not create native font text"
l_text_30:
    .asciz "src/std/fonts/macos/native.lucb:30:5"
l_text_31:
    .asciz "Menlo"
l_text_32:
    .asciz "could not load the font family"
l_text_33:
    .asciz "the requested font must be monospace"
l_text_34:
    .asciz "src/std/fonts/macos/native.lucb:43:5"
l_text_35:
    .asciz "could not scale the font"
l_text_36:
    .asciz "could not create a font raster context"
l_text_37:
    .asciz "validated text changed"
l_text_38:
    .asciz "src/std/fonts/macos/native.lucb:58:9"
l_text_39:
    .asciz "src/std/fonts/macos/native.lucb:59:9"
l_text_40:
    .asciz "src/std/fonts/macos/native.lucb:64:13"
l_text_41:
    .asciz "shift count out of range"
l_text_42:
    .asciz "src/std/fonts/macos/native.lucb:65:13"
l_text_43:
    .asciz "src/std/fonts/macos/native.lucb:68:13"
l_text_44:
    .asciz "src/std/fonts/macos/native.lucb:72:9"
l_text_45:
    .asciz "src/std/fonts/macos/native.lucb:73:13"
l_text_46:
    .asciz "index out of bounds"
l_text_47:
    .asciz "src/std/fonts/macos/native.lucb:78:17"
l_text_48:
    .asciz "src/std/fonts/macos/native.lucb:81:9"
l_text_49:
    .asciz "src/std/fonts/macos/native.lucb:84:9"
l_text_50:
    .asciz "Consolas"
l_text_51:
    .asciz "src/std/fonts/windows/native.lucb:63:5"
l_text_52:
    .asciz "Windows font families support at most 31 UTF-16 units"
l_text_53:
    .asciz "src/std/fonts/windows/native.lucb:66:9"
l_text_54:
    .asciz "src/std/fonts/windows/native.lucb:67:5"
l_text_55:
    .asciz "src/std/fonts/windows/native.lucb:69:9"
l_text_56:
    .asciz "src/std/fonts/windows/native.lucb:70:5"
l_text_57:
    .asciz "could not create a font context"
l_text_58:
    .asciz "src/std/fonts/windows/native.lucb:72:5"
l_text_59:
    .asciz "could not select the font"
l_text_60:
    .asciz "src/std/fonts/windows/native.lucb:74:5"
l_text_61:
    .asciz "src/std/fonts/windows/native.lucb:77:9"
l_text_62:
    .asciz "src/std/fonts/windows/native.lucb:78:5"
l_text_63:
    .asciz "could not read font attributes"
l_text_64:
    .asciz "src/std/fonts/windows/native.lucb:91:5"
l_text_65:
    .asciz "could not select the scaled font"
l_text_66:
    .asciz "src/std/fonts/windows/native.lucb:100:9"
l_text_67:
    .asciz "src/std/fonts/windows/native.lucb:101:9"
l_text_68:
    .asciz "could not rasterize the font glyph"
l_text_69:
    .asciz "src/std/fonts/windows/native.lucb:108:13"
l_text_70:
    .asciz "could not read font coverage"
l_text_71:
    .asciz "src/std/fonts/windows/native.lucb:111:17"
l_text_72:
    .asciz "src/std/fonts/windows/native.lucb:112:13"
l_text_73:
    .asciz "division by zero"
l_text_74:
    .asciz "src/std/fonts/windows/native.lucb:113:13"
l_text_75:
    .asciz "native glyph dimensions exceed its buffer"
l_text_76:
    .asciz "src/std/fonts/windows/native.lucb:114:17"
l_text_77:
    .asciz "src/std/fonts/windows/native.lucb:115:13"
l_text_78:
    .asciz "src/std/fonts/windows/native.lucb:116:13"
l_text_79:
    .asciz "src/std/fonts/windows/native.lucb:119:21"
l_text_80:
    .asciz "src/std/fonts/windows/native.lucb:120:21"
l_text_81:
    .asciz "src/std/fonts/windows/native.lucb:122:25"
l_text_82:
    .asciz "src/std/fonts/windows/native.lucb:123:25"
l_text_83:
    .asciz "src/std/fonts/windows/native.lucb:124:25"
l_text_84:
    .asciz "src/std/fonts/windows/native.lucb:125:29"
l_text_85:
    .asciz "src/std/fonts/windows/native.lucb:126:9"
l_text_86:
    .asciz "null_foreign"
l_text_87:
    .asciz "src/std/fonts/linux/native.lucb:44:5"
l_text_88:
    .asciz "monospace"
l_text_89:
    .asciz "src/std/fonts/linux/native.lucb:53:5"
l_text_90:
    .asciz "src/std/fonts/linux/native.lucb:55:5"
l_text_91:
    .asciz "i"
l_text_92:
    .asciz "W"
l_text_93:
    .asciz "the requested font must be an available monospace face"
l_text_94:
    .asciz "src/std/fonts/linux/native.lucb:67:9"
l_text_95:
    .asciz "src/std/fonts/linux/native.lucb:68:5"
l_text_96:
    .asciz "src/std/fonts/linux/native.lucb:69:5"
l_text_97:
    .asciz "src/std/fonts/linux/native.lucb:73:5"
l_text_98:
    .asciz "could not allocate font raster storage"
l_text_99:
    .asciz "src/std/fonts/linux/native.lucb:77:5"
l_text_100:
    .asciz "src/std/fonts/linux/native.lucb:80:5"
l_text_101:
    .asciz "src/std/fonts/linux/native.lucb:86:9"
l_text_102:
    .asciz "src/std/fonts/linux/native.lucb:89:13"
l_text_103:
    .asciz "src/std/fonts/linux/native.lucb:90:9"
l_text_104:
    .asciz "src/std/fonts/linux/native.lucb:92:9"
l_text_105:
    .asciz "src/std/fonts/linux/native.lucb:93:9"
l_text_106:
    .asciz "src/std/fonts/linux/native.lucb:94:9"
l_text_107:
    .asciz "could not rasterize the font text"
l_text_108:
    .asciz "src/std/fonts/linux/native.lucb:98:5"
l_text_109:
    .asciz "src/std/fonts/linux/native.lucb:101:9"
l_text_110:
    .asciz "src/std/memory.lucb:326:9"
l_text_111:
    .asciz "src/std/memory.lucb:328:9"
l_text_112:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3
    .globl _lb_fonts_failed
    .zerofill __DATA,__bss,_lb_fonts_failed,4,2

