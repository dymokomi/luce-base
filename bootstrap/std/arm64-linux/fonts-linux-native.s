    .text

    .p2align 2
    .globl lb_fonts_12linux_native_0init
    .type lb_fonts_12linux_native_0init, %function
lb_fonts_12linux_native_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_fonts_12linux_native_0init, .-lb_fonts_12linux_native_0init

    .p2align 2
    .globl lb_fonts_10linux_face
    .type lb_fonts_10linux_face, %function
lb_fonts_10linux_face:
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
    sub x16, x29, #184
    str d0, [x16]
    sub x16, x29, #200
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #216
    sub x14, x29, #200
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ne .L1_2
.L1_1:
    adrp x14, .Ltext_2
    add x14, x14, :lo12:.Ltext_2
    sub x15, x29, #248
    str x14, [x15]
    add x14, x15, #8
    movz x9, #9
    str x9, [x14]
    sub x14, x29, #232
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b .L1_3
.L1_2:
    sub x15, x29, #232
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
.L1_3:
    sub x14, x29, #232
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #296
    bl lb_fonts_12family_bytes
    sub x15, x29, #296
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, .L1_5
    b .L1_4
.L1_5:
    add x14, x15, #16
    sub x19, x29, #168
    add x12, x19, #40
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_6:
.L1_4:
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    movz x0, #2
    movz x1, #1
    movz x2, #1
    bl cairo_image_surface_create
    mov x20, x0
    cbnz x20, .L1_7
    b .L1_8
.L1_8:
    adrp x0, .Ltext_3
    add x0, x0, :lo12:.Ltext_3
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L1_7:
    mov x0, x20
    bl cairo_create
    mov x21, x0
    cbnz x21, .L1_9
    b .L1_10
.L1_10:
    adrp x0, .Ltext_4
    add x0, x0, :lo12:.Ltext_4
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L1_9:
    sub x10, x29, #552
    str x21, [x10]
    bl cairo_font_options_create
    mov x22, x0
    cbnz x22, .L1_30
    b .L1_31
.L1_31:
    adrp x0, .Ltext_1
    add x0, x0, :lo12:.Ltext_1
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L1_30:
    mov x0, x22
    movz x1, #2
    bl cairo_font_options_set_antialias
    mov x0, x22
    movz x1, #1
    bl cairo_font_options_set_hint_metrics
    mov x0, x21
    mov x1, x22
    bl cairo_set_font_options
    mov x0, x22
    bl cairo_font_options_destroy
.L1_32:
    ldr x22, [x19]
    mov x0, x21
    mov x1, x22
    mov x2, #0
    mov x3, #0
    bl cairo_select_font_face
    sub x14, x29, #184
    ldr d24, [x14]
    fmov d16, d24
    fmov d0, d16
    mov x0, x21
    bl cairo_set_font_size
    sub x23, x29, #336
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    mov x0, x21
    mov x1, x23
    bl cairo_font_extents
    sub x24, x29, #384
    mov x11, x24
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    sub x25, x29, #432
    mov x11, x25
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    adrp x14, .Ltext_5
    add x14, x14, :lo12:.Ltext_5
    mov x0, x21
    mov x1, x14
    mov x2, x24
    bl cairo_text_extents
    adrp x14, .Ltext_6
    add x14, x14, :lo12:.Ltext_6
    mov x0, x21
    mov x1, x14
    mov x2, x25
    bl cairo_text_extents
    mov x0, x21
    bl cairo_status
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, .L1_33
    b .L1_14
.L1_33:
    mov w15, w14
    b .L1_15
.L1_14:
    add x14, x25, #32
    ldr d24, [x14]
    mov x9, #0
    fmov d25, x9
    fcmp d24, d25
    cset w15, ls
.L1_15:
    and w14, w15, #255
    cbnz w14, .L1_34
    b .L1_16
.L1_34:
    mov w15, w14
    b .L1_17
.L1_16:
    add x14, x24, #32
    ldr d24, [x14]
    add x14, x25, #32
    ldr d25, [x14]
    fsub d24, d24, d25
    fmov d16, d24
    fmov d0, d16
    bl lb_math_abs
    fmov d24, d0
    movz x9, #5243
    movk x9, #18350, lsl #16
    movk x9, #31457, lsl #32
    movk x9, #16260, lsl #48
    fmov d25, x9
    fcmp d24, d25
    cset w15, gt
.L1_17:
    and w14, w15, #255
    cbnz w14, .L1_11
    b .L1_12
.L1_11:
    sub x23, x29, #168
    add x14, x23, #40
    adrp x15, lb_fonts_failed
    add x15, x15, :lo12:lb_fonts_failed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_7
    add x15, x15, :lo12:.Ltext_7
    sub x12, x29, #448
    str x15, [x12]
    add x15, x12, #8
    movz x9, #54
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x23, #64
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    bl cairo_destroy
    mov x0, x20
    bl cairo_surface_destroy
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x14, x0
    sub x15, x29, #464
    add x12, x19, #8
    ldr x12, [x12]
    str x22, [x15]
    add x13, x15, #8
    str x12, [x13]
    ldr x12, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, .L1_19
    b .L1_18
.L1_19:
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
.L1_18:
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_20:
    b .L1_13
.L1_12:
.L1_13:
    mov x0, x21
    bl cairo_get_scaled_font
    mov x14, x0
    cbnz x14, .L1_21
    b .L1_22
.L1_22:
    adrp x0, .Ltext_9
    add x0, x0, :lo12:.Ltext_9
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L1_21:
    mov x0, x14
    bl cairo_scaled_font_reference
    mov x24, x0
    cbnz x24, .L1_23
    b .L1_24
.L1_24:
    adrp x0, .Ltext_9
    add x0, x0, :lo12:.Ltext_9
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L1_23:
    sub x26, x29, #504
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
    sub x27, x29, #168
    mov x10, x26
    mov x11, x27
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    add x14, x27, #64
    mov x9, #0
    strb w9, [x14]
    mov x0, x21
    bl cairo_destroy
    mov x0, x20
    bl cairo_surface_destroy
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x14, x0
    sub x15, x29, #520
    add x12, x19, #8
    ldr x12, [x12]
    str x22, [x15]
    add x13, x15, #8
    str x12, [x13]
    ldr x12, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, .L1_26
    b .L1_25
.L1_26:
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
.L1_25:
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_27:
    mov x0, x14
    bl cairo_destroy
    mov x14, x19
    mov x0, x14
    bl cairo_surface_destroy
    sub x14, x29, #216
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x15, x0
    sub x12, x29, #536
    ldr x13, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    mov x9, x14
    movz x10, #1
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_10
    add x0, x0, :lo12:.Ltext_10
    adrp x1, .Ltext_30
    add x1, x1, :lo12:.Ltext_30
    bl lb_core_7trap_at
1:
    mov x14, x9
    str x13, [x12]
    add x12, x12, #8
    str x14, [x12]
    ldr x13, [x15]
    add x14, x15, #8
    ldr x14, [x14]
    cbnz x14, .L1_29
    b .L1_28
.L1_29:
    add x15, x14, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x13
    mov x9, x12
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L1_28:
    adrp x0, .Ltext_10
    add x0, x0, :lo12:.Ltext_10
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at

    .size lb_fonts_10linux_face, .-lb_fonts_10linux_face

    .p2align 2
    .globl lb_fonts_12linux_raster
    .type lb_fonts_12linux_raster, %function
lb_fonts_12linux_raster:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #512
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #480]
    str x20, [sp, #472]
    str x21, [sp, #464]
    str x22, [sp, #456]
    str x23, [sp, #448]
    str x24, [sp, #440]
    str x25, [sp, #432]
    str x26, [sp, #424]
    str x27, [sp, #416]
    str x28, [sp, #408]
    str d8, [sp, #400]
    str d9, [sp, #392]
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
    cbnz x20, .L2_1
    b .L2_2
.L2_1:
    b .L2_3
.L2_2:
    sub x19, x29, #152
    adrp x14, lb_fonts_failed
    add x14, x14, :lo12:lb_fonts_failed
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_12
    add x14, x14, :lo12:.Ltext_12
    sub x15, x29, #264
    str x14, [x15]
    add x14, x15, #8
    movz x9, #18
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
    ldr x19, [sp, #480]
    ldr x20, [sp, #472]
    ldr x21, [sp, #464]
    ldr x22, [sp, #456]
    ldr x23, [sp, #448]
    ldr x24, [sp, #440]
    ldr x25, [sp, #432]
    ldr x26, [sp, #424]
    ldr x27, [sp, #416]
    ldr x28, [sp, #408]
    ldr d8, [sp, #400]
    ldr d9, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_4:
.L2_3:
    sub x14, x29, #248
    ldr x9, [x14]
    str x9, [sp, #80]
    ldr x9, [sp, #80]
    add x9, x9, #16
    str x9, [sp, #72]
    ldr x9, [sp, #72]
    ldr w14, [x9]
    mov w14, w14
    ldr x9, [sp, #80]
    add x9, x9, #20
    str x9, [sp, #64]
    ldr x9, [sp, #64]
    ldr w15, [x9]
    mov w15, w15
    movz x0, #2
    mov x1, x14
    mov x2, x15
    bl cairo_image_surface_create
    str x0, [sp, #24]
    ldr x9, [sp, #24]
    cbnz x9, .L2_5
    b .L2_6
.L2_6:
    adrp x0, .Ltext_13
    add x0, x0, :lo12:.Ltext_13
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L2_5:
    ldr x0, [sp, #24]
    bl cairo_surface_status
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L2_8
.L2_7:
    sub x19, x29, #152
    adrp x14, lb_fonts_failed
    add x14, x14, :lo12:lb_fonts_failed
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_14
    add x14, x14, :lo12:.Ltext_14
    sub x15, x29, #280
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #24]
    bl cairo_surface_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #480]
    ldr x20, [sp, #472]
    ldr x21, [sp, #464]
    ldr x22, [sp, #456]
    ldr x23, [sp, #448]
    ldr x24, [sp, #440]
    ldr x25, [sp, #432]
    ldr x26, [sp, #424]
    ldr x27, [sp, #416]
    ldr x28, [sp, #408]
    ldr d8, [sp, #400]
    ldr d9, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_10:
    b .L2_9
.L2_8:
.L2_9:
    ldr x0, [sp, #24]
    bl cairo_create
    mov x25, x0
    cbnz x25, .L2_11
    b .L2_12
.L2_12:
    adrp x0, .Ltext_15
    add x0, x0, :lo12:.Ltext_15
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L2_11:
    sub x10, x29, #424
    str x25, [x10]
    bl cairo_font_options_create
    mov x26, x0
    cbnz x26, .L2_37
    b .L2_38
.L2_38:
    adrp x0, .Ltext_1
    add x0, x0, :lo12:.Ltext_1
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L2_37:
    mov x0, x26
    movz x1, #2
    bl cairo_font_options_set_antialias
    mov x0, x26
    movz x1, #1
    bl cairo_font_options_set_hint_metrics
    mov x0, x25
    mov x1, x26
    bl cairo_set_font_options
    mov x0, x26
    bl cairo_font_options_destroy
.L2_39:
    mov x0, x20
    bl cairo_scaled_font_get_font_face
    mov x14, x0
    cbnz x14, .L2_13
    b .L2_14
.L2_14:
    adrp x0, .Ltext_16
    add x0, x0, :lo12:.Ltext_16
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L2_13:
    mov x0, x25
    mov x1, x14
    bl cairo_set_font_face
    add x15, x19, #16
    ldr d24, [x15]
    sub x15, x29, #232
    ldr d8, [x15]
    fmul d24, d24, d8
    fmov d16, d24
    fmov d0, d16
    mov x0, x25
    bl cairo_set_font_size
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
    mov x0, x25
    bl cairo_set_source_rgba
    sub x20, x29, #216
    add x26, x20, #8
    sub x23, x29, #296
    sub x9, x29, #320
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x27, x9, #16
    sub x28, x29, #336
    sub x22, x29, #357
    add x9, x23, #8
    str x9, [sp, #56]
    movz x9, #16384, lsl #48
    fmov d9, x9
    add x9, x19, #24
    str x9, [sp, #48]
    add x9, x19, #32
    str x9, [sp, #40]
    mov x9, #0
    mov x24, x9
    mov x9, #0
    str x9, [sp, #16]
.L2_15:
    ldr x14, [x26]
    cmp x24, x14
    b.hs .L2_17
.L2_16:
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x24
    sub x8, x29, #320
    bl lb_utf8_decode
    ldrb w14, [x27]
    cbnz w14, .L2_18
    b .L2_19
.L2_18:
    ldr x10, [sp, #8]
    mov x11, x28
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b .L2_20
.L2_19:
    adrp x14, .Ltext_17
    add x14, x14, :lo12:.Ltext_17
    sub x15, x29, #352
    str x14, [x15]
    add x14, x15, #8
    movz x9, #22
    str x9, [x14]
    adrp x14, .Ltext_18
    add x14, x14, :lo12:.Ltext_18
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    adrp x0, .Ltext_18
    add x0, x0, :lo12:.Ltext_18
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
.L2_20:
    mov x10, x28
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x11, x22
    str wzr, [x11, #0]
    strb wzr, [x11, #4]
    ldr x9, [sp, #56]
    ldr x19, [x9]
    mov x9, #0
    mov x14, x9
.L2_21:
    cmp x14, x19
    b.hs .L2_24
.L2_22:
    movz x10, #5
    cmp x14, x10
    b.lo 1f
    adrp x0, .Ltext_19
    add x0, x0, :lo12:.Ltext_19
    adrp x1, .Ltext_27
    add x1, x1, :lo12:.Ltext_27
    bl lb_core_7trap_at
1:
    add x15, x22, x14
    mov x9, x24
    mov x10, x14
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_19
    add x0, x0, :lo12:.Ltext_19
    adrp x1, .Ltext_30
    add x1, x1, :lo12:.Ltext_30
    bl lb_core_7trap_at
1:
    mov x12, x9
    ldr x13, [x20]
    ldr x21, [x26]
    cmp x12, x21
    b.lo 1f
    adrp x0, .Ltext_19
    add x0, x0, :lo12:.Ltext_19
    adrp x1, .Ltext_27
    add x1, x1, :lo12:.Ltext_27
    bl lb_core_7trap_at
1:
    add x12, x12, x13
    ldrb w12, [x12]
    strb w12, [x15]
.L2_23:
    add x15, x14, #1
    mov x14, x15
    b .L2_21
.L2_24:
    movz x10, #5
    cmp x19, x10
    b.lo 1f
    adrp x0, .Ltext_20
    add x0, x0, :lo12:.Ltext_20
    adrp x1, .Ltext_27
    add x1, x1, :lo12:.Ltext_27
    bl lb_core_7trap_at
1:
    add x14, x22, x19
    mov x9, #0
    strb w9, [x14]
    ldr x9, [sp, #16]
    ucvtf d24, x9
    ldr x9, [sp, #48]
    ldr d25, [x9]
    fmul d24, d24, d25
    fmul d24, d8, d24
    fadd d24, d9, d24
    ldr x9, [sp, #40]
    ldr d25, [x9]
    fmul d25, d8, d25
    fadd d25, d9, d25
    fmov d16, d24
    fmov d0, d16
    fmov d16, d25
    fmov d1, d16
    mov x0, x25
    bl cairo_move_to
    mov x0, x25
    mov x1, x22
    bl cairo_show_text
    mov x9, x19
    mov x10, x24
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_22
    add x0, x0, :lo12:.Ltext_22
    adrp x1, .Ltext_30
    add x1, x1, :lo12:.Ltext_30
    bl lb_core_7trap_at
1:
    mov x14, x9
    ldr x9, [sp, #16]
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_23
    add x0, x0, :lo12:.Ltext_23
    adrp x1, .Ltext_30
    add x1, x1, :lo12:.Ltext_30
    bl lb_core_7trap_at
1:
    mov x15, x9
    mov x24, x14
    mov x9, x15
    str x9, [sp, #16]
    b .L2_15
.L2_17:
    mov x0, x25
    bl cairo_status
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L2_26
.L2_25:
    sub x19, x29, #152
    adrp x14, lb_fonts_failed
    add x14, x14, :lo12:lb_fonts_failed
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_24
    add x14, x14, :lo12:.Ltext_24
    sub x15, x29, #376
    str x14, [x15]
    add x14, x15, #8
    movz x9, #33
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x25
    bl cairo_destroy
    ldr x0, [sp, #24]
    bl cairo_surface_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #480]
    ldr x20, [sp, #472]
    ldr x21, [sp, #464]
    ldr x22, [sp, #456]
    ldr x23, [sp, #448]
    ldr x24, [sp, #440]
    ldr x25, [sp, #432]
    ldr x26, [sp, #424]
    ldr x27, [sp, #416]
    ldr x28, [sp, #408]
    ldr d8, [sp, #400]
    ldr d9, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_28:
    b .L2_27
.L2_26:
.L2_27:
    ldr x0, [sp, #24]
    bl cairo_surface_flush
    ldr x0, [sp, #24]
    bl cairo_image_surface_get_data
    mov x19, x0
    cbnz x19, .L2_29
    b .L2_30
.L2_30:
    adrp x0, .Ltext_25
    add x0, x0, :lo12:.Ltext_25
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L2_29:
    ldr x0, [sp, #24]
    bl cairo_image_surface_get_stride
    mov w14, w0
    sxtw x20, w14
    ldr x9, [sp, #64]
    ldr w14, [x9]
    mov w9, w14
    str x9, [sp, #32]
    ldr x9, [sp, #80]
    add x22, x9, #8
    sub x23, x29, #392
    add x24, x23, #8
    sub x26, x29, #408
    add x27, x26, #8
    mov x9, #0
    mov x28, x9
.L2_31:
    ldr x10, [sp, #32]
    cmp x28, x10
    b.hs .L2_34
.L2_32:
    ldr x9, [sp, #80]
    ldr x15, [x9]
    ldr x12, [x22]
    ldr x9, [sp, #72]
    ldr w14, [x9]
    mov w14, w14
    mul x13, x14, x28
    add x14, x12, #1
    cmp x13, x14
    b.lo 1f
    adrp x0, .Ltext_26
    add x0, x0, :lo12:.Ltext_26
    adrp x1, .Ltext_27
    add x1, x1, :lo12:.Ltext_27
    bl lb_core_7trap_at
1:
    cmp x12, x14
    b.lo 1f
    adrp x0, .Ltext_26
    add x0, x0, :lo12:.Ltext_26
    adrp x1, .Ltext_27
    add x1, x1, :lo12:.Ltext_27
    bl lb_core_7trap_at
1:
    cmp x13, x12
    b.ls .L2_35
.L2_36:
    adrp x0, .Ltext_26
    add x0, x0, :lo12:.Ltext_26
    adrp x1, .Ltext_27
    add x1, x1, :lo12:.Ltext_27
    bl lb_core_7trap_at
.L2_35:
    add x14, x15, x13
    sub x21, x12, x13
    str x14, [x23]
    str x21, [x24]
    mov x9, x20
    mov x10, x28
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_26
    add x0, x0, :lo12:.Ltext_26
    adrp x1, .Ltext_30
    add x1, x1, :lo12:.Ltext_30
    bl lb_core_7trap_at
1:
    mov x14, x9
    add x14, x14, x19
    ldr x9, [sp, #72]
    ldr w21, [x9]
    mov w21, w21
    str x14, [x26]
    str x21, [x27]
    ldr x9, [sp, #72]
    ldr w14, [x9]
    mov w14, w14
    mov x9, x23
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x26
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x14
    bl lb_memory_copy_0g1_u8
.L2_33:
    add x14, x28, #1
    mov x28, x14
    b .L2_31
.L2_34:
    mov x0, x25
    bl cairo_destroy
    ldr x0, [sp, #24]
    bl cairo_surface_destroy
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
    ldr x19, [sp, #480]
    ldr x20, [sp, #472]
    ldr x21, [sp, #464]
    ldr x22, [sp, #456]
    ldr x23, [sp, #448]
    ldr x24, [sp, #440]
    ldr x25, [sp, #432]
    ldr x26, [sp, #424]
    ldr x27, [sp, #416]
    ldr x28, [sp, #408]
    ldr d8, [sp, #400]
    ldr d9, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_fonts_12linux_raster, .-lb_fonts_12linux_raster

    .p2align 2
    .weak lb_memory_copy_0g1_u8
    .type lb_memory_copy_0g1_u8, %function
lb_memory_copy_0g1_u8:
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
    cbnz w14, .L3_11
    b .L3_4
.L3_11:
    mov w15, w14
    b .L3_5
.L3_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
.L3_5:
    and w14, w15, #255
    cbnz w14, .L3_1
    b .L3_2
.L3_1:
    adrp x14, .Ltext_27
    add x14, x14, :lo12:.Ltext_27
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, .Ltext_28
    add x14, x14, :lo12:.Ltext_28
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    b .L3_3
.L3_2:
.L3_3:
    mov x10, #0
    cmp x19, x10
    b.ls .L3_7
.L3_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl memcpy
    mov x14, x0
    cbnz x14, .L3_9
    b .L3_10
.L3_10:
    adrp x0, .Ltext_29
    add x0, x0, :lo12:.Ltext_29
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at
.L3_9:
    b .L3_8
.L3_7:
.L3_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_memory_copy_0g1_u8, .-lb_memory_copy_0g1_u8

    .section .init_array,"aw"
    .p2align 3
    .quad lb_fonts_12linux_native_0init

    .section .rodata
.Ltext_0:
    .asciz "null_foreign"
.Ltext_1:
    .asciz "src/std/fonts/linux/native.lucb:46:5"
.Ltext_2:
    .asciz "monospace"
.Ltext_3:
    .asciz "src/std/fonts/linux/native.lucb:55:5"
.Ltext_4:
    .asciz "src/std/fonts/linux/native.lucb:57:5"
.Ltext_5:
    .asciz "i"
.Ltext_6:
    .asciz "W"
.Ltext_7:
    .asciz "the requested font must be an available monospace face"
.Ltext_8:
    .asciz "src/std/fonts/linux/native.lucb:69:9"
.Ltext_9:
    .asciz "src/std/fonts/linux/native.lucb:70:5"
.Ltext_10:
    .asciz "src/std/fonts/linux/native.lucb:71:5"
.Ltext_11:
    .asciz "unreachable"
.Ltext_12:
    .asciz "the font is closed"
.Ltext_13:
    .asciz "src/std/fonts/linux/native.lucb:75:5"
.Ltext_14:
    .asciz "could not allocate font raster storage"
.Ltext_15:
    .asciz "src/std/fonts/linux/native.lucb:79:5"
.Ltext_16:
    .asciz "src/std/fonts/linux/native.lucb:82:5"
.Ltext_17:
    .asciz "validated text changed"
.Ltext_18:
    .asciz "src/std/fonts/linux/native.lucb:88:9"
.Ltext_19:
    .asciz "src/std/fonts/linux/native.lucb:91:13"
.Ltext_20:
    .asciz "src/std/fonts/linux/native.lucb:92:9"
.Ltext_21:
    .asciz "src/std/fonts/linux/native.lucb:94:9"
.Ltext_22:
    .asciz "src/std/fonts/linux/native.lucb:95:9"
.Ltext_23:
    .asciz "src/std/fonts/linux/native.lucb:96:9"
.Ltext_24:
    .asciz "could not rasterize the font text"
.Ltext_25:
    .asciz "src/std/fonts/linux/native.lucb:100:5"
.Ltext_26:
    .asciz "src/std/fonts/linux/native.lucb:103:9"
.Ltext_27:
    .asciz "index out of bounds"
.Ltext_28:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_29:
    .asciz "src/std/memory.lucb:330:9"
.Ltext_30:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
