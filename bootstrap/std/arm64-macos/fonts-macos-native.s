    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_fonts_12macos_native_0init
_lb_fonts_12macos_native_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

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
    cbnz x14, L1_1
    b L1_2
L1_1:
    b L1_3
L1_2:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_fonts_failed@PAGE
    add x15, x15, _lb_fonts_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_0@PAGE
    add x15, x15, l_text_0@PAGEOFF
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
L1_4:
L1_3:
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
L1_5:
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_fonts_8mac_face
    .no_dead_strip _lb_fonts_8mac_face
_lb_fonts_8mac_face:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #320
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #288]
    str x20, [sp, #280]
    str x21, [sp, #272]
    str x22, [sp, #264]
    str d8, [sp, #256]
    sub x16, x29, #152
    str d0, [x16]
    sub x16, x29, #168
    str x0, [x16]
    str x1, [x16, #8]
    sub x14, x29, #168
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ne L2_2
L2_1:
    adrp x14, l_text_3@PAGE
    add x14, x14, l_text_3@PAGEOFF
    sub x15, x29, #200
    str x14, [x15]
    add x14, x15, #8
    movz x9, #5
    str x9, [x14]
    sub x14, x29, #184
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L2_3
L2_2:
    sub x15, x29, #184
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L2_3:
    sub x14, x29, #184
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #240
    bl _lb_fonts_10mac_string
    sub x15, x29, #240
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L2_5
    b L2_4
L2_5:
    add x14, x15, #8
    sub x19, x29, #136
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr d8, [sp, #256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_6:
L2_4:
    ldr x19, [x15]
    sub x14, x29, #152
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    mov x0, x19
    mov x1, #0
    bl _CTFontCreateWithName
    mov x20, x0
    cbnz x20, L2_7
    b L2_8
L2_7:
    b L2_9
L2_8:
    sub x20, x29, #136
    add x14, x20, #40
    adrp x15, _lb_fonts_failed@PAGE
    add x15, x15, _lb_fonts_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_4@PAGE
    add x15, x15, l_text_4@PAGEOFF
    sub x21, x29, #256
    str x15, [x21]
    add x15, x21, #8
    movz x9, #30
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #64
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _CFRelease
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr d8, [sp, #256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_10:
L2_9:
    mov x0, x20
    bl _CTFontGetSymbolicTraits
    mov w14, w0
    movz x10, #1024
    and w14, w14, w10
    mov x10, #0
    cmp w14, w10
    b.ne L2_12
L2_11:
    sub x21, x29, #136
    add x14, x21, #40
    adrp x15, _lb_fonts_failed@PAGE
    add x15, x15, _lb_fonts_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_5@PAGE
    add x15, x15, l_text_5@PAGEOFF
    sub x22, x29, #272
    str x15, [x22]
    add x15, x22, #8
    movz x9, #36
    str x9, [x15]
    add x14, x14, #8
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #64
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _CFRelease
    mov x0, x19
    bl _CFRelease
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr d8, [sp, #256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_14:
    b L2_13
L2_12:
L2_13:
    sub x14, x29, #274
    movz x9, #77
    strh w9, [x14]
    sub x21, x29, #276
    mov x9, #0
    strh w9, [x21]
    mov x0, x20
    mov x1, x14
    mov x2, x21
    movz x3, #1
    bl _CTFontGetGlyphsForCharacters
    mov w14, w0
    mov x0, x20
    mov x1, #0
    mov x2, x21
    mov x3, #0
    movz x4, #1
    bl _CTFontGetAdvancesForGlyphs
    fmov d8, d0
    sub x21, x29, #320
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    str x20, [x21]
    add x14, x21, #8
    mov x9, #0
    str x9, [x14]
    add x14, x21, #16
    str d8, [x14]
    mov x0, x20
    bl _CTFontGetAscent
    fmov d24, d0
    add x14, x21, #24
    str d24, [x14]
    mov x0, x20
    bl _CTFontGetDescent
    fmov d24, d0
    add x14, x21, #32
    str d24, [x14]
    sub x22, x29, #136
    mov x10, x21
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    add x14, x22, #64
    mov x9, #0
    strb w9, [x14]
    mov x0, x19
    bl _CFRelease
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr d8, [sp, #256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_15:
    mov x0, x14
    bl _CFRelease
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_fonts_10mac_raster
    .no_dead_strip _lb_fonts_10mac_raster
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
    cbnz x14, L3_1
    b L3_2
L3_1:
    b L3_3
L3_2:
    sub x19, x29, #152
    adrp x14, _lb_fonts_failed@PAGE
    add x14, x14, _lb_fonts_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_7@PAGE
    add x14, x14, l_text_7@PAGEOFF
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
L3_3:
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
    cbnz x9, L3_5
    b L3_6
L3_5:
    b L3_7
L3_6:
    sub x19, x29, #152
    adrp x14, _lb_fonts_failed@PAGE
    add x14, x14, _lb_fonts_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_8@PAGE
    add x14, x14, l_text_8@PAGEOFF
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
L3_7:
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
    cbnz x21, L3_9
    b L3_10
L3_9:
    b L3_11
L3_10:
    sub x19, x29, #152
    adrp x14, _lb_fonts_failed@PAGE
    add x14, x14, _lb_fonts_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_9@PAGE
    add x14, x14, l_text_9@PAGEOFF
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
L3_11:
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
L3_13:
    ldr x9, [sp, #168]
    ldr x14, [x9]
    cmp x20, x14
    b.hs L3_15
L3_14:
    ldr x9, [sp, #176]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x20
    sub x8, x29, #336
    bl _lb_utf8_decode
    ldr x9, [sp, #160]
    ldrb w14, [x9]
    cbnz w14, L3_16
    b L3_17
L3_16:
    mov x10, x27
    mov x11, x26
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L3_18
L3_17:
    adrp x14, l_text_10@PAGE
    add x14, x14, l_text_10@PAGEOFF
    sub x15, x29, #368
    str x14, [x15]
    add x14, x15, #8
    movz x9, #22
    str x9, [x14]
    adrp x14, l_text_11@PAGE
    add x14, x14, l_text_11@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L3_18:
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
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_23@PAGE
    add x1, x1, l_text_23@PAGEOFF
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
    b.ls L3_20
L3_19:
    mov w9, w14
    movz x10, #1, lsl #16
    subs w9, w9, w10
    b.cs 1f
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_23@PAGE
    add x1, x1, l_text_23@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w15, w9
L3_23:
    lsr w14, w15, #10
    mov w9, w14
    movz x10, #55296
    adds w9, w9, w10
    b.cc 1f
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_23@PAGE
    add x1, x1, l_text_23@PAGEOFF
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
    b L3_21
L3_20:
    mov w15, w14
    and w15, w15, #65535
    ldr x10, [sp, #144]
    strh w15, [x10]
    movz x9, #1
    mov x23, x9
L3_21:
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
    b.ne L3_25
L3_24:
    ldr x9, [sp, #176]
    ldr x15, [x9]
    ldr x9, [sp, #168]
    ldr x14, [x9]
    add x14, x14, #1
    cmp x20, x14
    b.lo 1f
    adrp x0, l_text_18@PAGE
    add x0, x0, l_text_18@PAGEOFF
    adrp x1, l_text_19@PAGE
    add x1, x1, l_text_19@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x19, x14
    b.lo 1f
    adrp x0, l_text_18@PAGE
    add x0, x0, l_text_18@PAGEOFF
    adrp x1, l_text_19@PAGE
    add x1, x1, l_text_19@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x20, x19
    b.ls L3_27
L3_28:
    adrp x0, l_text_18@PAGE
    add x0, x0, l_text_18@PAGEOFF
    adrp x1, l_text_19@PAGE
    add x1, x1, l_text_19@PAGEOFF
    bl _lb_core_7trap_at
L3_27:
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
    cbnz w14, L3_30
    b L3_29
L3_30:
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
L3_29:
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
    cbnz x22, L3_35
    b L3_33
L3_35:
L3_32:
    mov x0, x22
    ldr x1, [sp, #144]
    ldr x2, [sp, #128]
    mov x3, x23
    bl _CTFontGetGlyphsForCharacters
    mov w14, w0
    mov x24, x22
    b L3_34
L3_33:
    ldr x9, [sp, #24]
    mov x24, x9
L3_34:
    mov x0, x20
    bl _CFRelease
    mov x23, x24
    mov x25, x22
    b L3_26
L3_25:
    ldr x9, [sp, #24]
    mov x23, x9
    mov x9, #0
    mov x25, x9
L3_26:
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
    cbnz x25, L3_39
    b L3_37
L3_39:
L3_36:
    mov x0, x25
    bl _CFRelease
    b L3_38
L3_37:
L3_38:
    ldr x9, [sp, #16]
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_23@PAGE
    add x1, x1, l_text_23@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x20, x19
    mov x9, x14
    str x9, [sp, #16]
    b L3_13
L3_15:
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

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_fonts_12macos_native_0init

    .section __TEXT,__const
l_text_0:
    .asciz "could not create native font text"
l_text_1:
    .asciz "unreachable"
l_text_2:
    .asciz "src/std/fonts/macos/native.lucb:34:5"
l_text_3:
    .asciz "Menlo"
l_text_4:
    .asciz "could not load the font family"
l_text_5:
    .asciz "the requested font must be monospace"
l_text_6:
    .asciz "src/std/fonts/macos/native.lucb:47:5"
l_text_7:
    .asciz "the font is closed"
l_text_8:
    .asciz "could not scale the font"
l_text_9:
    .asciz "could not create a font raster context"
l_text_10:
    .asciz "validated text changed"
l_text_11:
    .asciz "src/std/fonts/macos/native.lucb:62:9"
l_text_12:
    .asciz "src/std/fonts/macos/native.lucb:63:9"
l_text_13:
    .asciz "src/std/fonts/macos/native.lucb:68:13"
l_text_14:
    .asciz "shift count out of range"
l_text_15:
    .asciz "src/std/fonts/macos/native.lucb:69:13"
l_text_16:
    .asciz "src/std/fonts/macos/native.lucb:72:13"
l_text_17:
    .asciz "src/std/fonts/macos/native.lucb:76:9"
l_text_18:
    .asciz "src/std/fonts/macos/native.lucb:77:13"
l_text_19:
    .asciz "index out of bounds"
l_text_20:
    .asciz "src/std/fonts/macos/native.lucb:82:17"
l_text_21:
    .asciz "src/std/fonts/macos/native.lucb:85:9"
l_text_22:
    .asciz "src/std/fonts/macos/native.lucb:88:9"
l_text_23:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
