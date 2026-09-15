    .text

    .p2align 2
    .globl lb_gpu_canvas_0init
    .type lb_gpu_canvas_0init, %function
lb_gpu_canvas_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_gpu_canvas_0init, .-lb_gpu_canvas_0init

    .p2align 2
    .globl lb_gpu_Canvas_count
    .type lb_gpu_Canvas_count, %function
lb_gpu_Canvas_count:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    add x14, x14, #32
    ldr x14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_1:
    adrp x0, .Ltext_1
    add x0, x0, :lo12:.Ltext_1
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_gpu_Canvas_count, .-lb_gpu_Canvas_count

    .p2align 2
    .globl lb_gpu_Canvas_clear
    .type lb_gpu_Canvas_clear, %function
lb_gpu_Canvas_clear:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x15, [x9]
    add x14, x15, #32
    mov x9, #0
    str x9, [x14]
    add x14, x15, #40
    mov x9, #0
    str x9, [x14]
    add x14, x15, #64
    mov x9, #0
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_gpu_Canvas_clear, .-lb_gpu_Canvas_clear

    .p2align 2
    .globl lb_gpu_Canvas_triangles
    .type lb_gpu_Canvas_triangles, %function
lb_gpu_Canvas_triangles:
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
    str d11, [sp, #776]
    str d12, [sp, #768]
    str d13, [sp, #760]
    str d14, [sp, #752]
    str d15, [sp, #744]
    sub x16, x29, #208
    str x0, [x16]
    sub x16, x29, #224
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #240
    str x3, [x16]
    str x4, [x16, #8]
    sub x16, x29, #256
    str w5, [x16]
    sub x16, x29, #296
    str x6, [x16]
    sub x0, x29, #296
    ldr x1, [x0]
    movz x2, #40
    bl _memcpy
    sub x9, x29, #208
    ldr x9, [x9]
    str x9, [sp, #16]
    sub x9, x29, #224
    str x9, [sp, #104]
    ldr x9, [sp, #104]
    add x9, x9, #8
    str x9, [sp, #96]
    ldr x9, [sp, #96]
    ldr x22, [x9]
.L3_5:
    movz x10, #3
    udiv x11, x22, x10
    msub x14, x11, x10, x22
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L3_2
.L3_1:
    sub x19, x29, #200
    adrp x14, lb_gpu_16invalid_geometry
    add x14, x14, :lo12:lb_gpu_16invalid_geometry
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_4
    add x14, x14, :lo12:.Ltext_4
    sub x15, x29, #312
    str x14, [x15]
    add x14, x15, #8
    movz x9, #56
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
    ldr d11, [sp, #776]
    ldr d12, [sp, #768]
    ldr d13, [sp, #760]
    ldr d14, [sp, #752]
    ldr d15, [sp, #744]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_2:
.L3_3:
    ldr x9, [sp, #104]
    ldr x23, [x9]
    sub x24, x29, #344
    sub x25, x29, #792
    add x26, x25, #4
    add x27, x25, #8
    add x28, x25, #12
    add x21, x25, #16
    mov x9, #0
    fmov s8, w9
    add x9, x25, #16
    str x9, [sp, #72]
    movz x9, #16256, lsl #16
    fmov s9, w9
    add x9, x25, #20
    str x9, [sp, #64]
    mov x9, #0
    fmov s10, w9
    add x9, x25, #20
    str x9, [sp, #56]
    movz x9, #16256, lsl #16
    fmov s11, w9
    add x9, x25, #24
    str x9, [sp, #48]
    mov x9, #0
    fmov s12, w9
    add x9, x25, #24
    str x9, [sp, #40]
    movz x9, #16256, lsl #16
    fmov s13, w9
    add x9, x25, #28
    str x9, [sp, #32]
    mov x9, #0
    fmov s14, w9
    add x9, x25, #28
    str x9, [sp, #24]
    movz x9, #16256, lsl #16
    fmov s15, w9
    mov x9, #0
    mov x20, x9
.L3_7:
    cmp x20, x22
    b.hs .L3_10
.L3_8:
    lsl x14, x20, #5
    add x14, x23, x14
    mov x10, x14
    mov x11, x24
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    mov x10, x24
    sub x11, x29, #792
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr s24, [x25]
    fmov s16, s24
    fmov s0, s16
    bl lb_math32_9is_finite
    mov w14, w0
    cbnz w14, .L3_101
    b .L3_125
.L3_125:
    mov w15, w14
    b .L3_102
.L3_101:
    ldr s24, [x26]
    fmov s16, s24
    fmov s0, s16
    bl lb_math32_9is_finite
    mov w15, w0
.L3_102:
    and w14, w15, #255
    cbnz w14, .L3_103
    b .L3_126
.L3_126:
    mov w15, w14
    b .L3_104
.L3_103:
    ldr s24, [x27]
    fmov s16, s24
    fmov s0, s16
    bl lb_math32_9is_finite
    mov w15, w0
.L3_104:
    and w14, w15, #255
    cbnz w14, .L3_105
    b .L3_127
.L3_127:
    mov w15, w14
    b .L3_106
.L3_105:
    ldr s24, [x28]
    fmov s16, s24
    fmov s0, s16
    bl lb_math32_9is_finite
    mov w15, w0
.L3_106:
    and w14, w15, #255
    cbnz w14, .L3_107
    b .L3_128
.L3_128:
    mov w15, w14
    b .L3_108
.L3_107:
    ldr s24, [x21]
    fcmp s24, s8
    cset w15, ge
.L3_108:
    and w14, w15, #255
    cbnz w14, .L3_109
    b .L3_129
.L3_129:
    mov w15, w14
    b .L3_110
.L3_109:
    ldr x9, [sp, #72]
    ldr s24, [x9]
    fcmp s24, s9
    cset w15, ls
.L3_110:
    and w14, w15, #255
    cbnz w14, .L3_111
    b .L3_130
.L3_130:
    mov w15, w14
    b .L3_112
.L3_111:
    ldr x9, [sp, #64]
    ldr s24, [x9]
    fcmp s24, s10
    cset w15, ge
.L3_112:
    and w14, w15, #255
    cbnz w14, .L3_113
    b .L3_131
.L3_131:
    mov w15, w14
    b .L3_114
.L3_113:
    ldr x9, [sp, #56]
    ldr s24, [x9]
    fcmp s24, s11
    cset w15, ls
.L3_114:
    and w14, w15, #255
    cbnz w14, .L3_115
    b .L3_132
.L3_132:
    mov w15, w14
    b .L3_116
.L3_115:
    ldr x9, [sp, #48]
    ldr s24, [x9]
    fcmp s24, s12
    cset w15, ge
.L3_116:
    and w14, w15, #255
    cbnz w14, .L3_117
    b .L3_133
.L3_133:
    mov w15, w14
    b .L3_118
.L3_117:
    ldr x9, [sp, #40]
    ldr s24, [x9]
    fcmp s24, s13
    cset w15, ls
.L3_118:
    and w14, w15, #255
    cbnz w14, .L3_119
    b .L3_134
.L3_134:
    mov w15, w14
    b .L3_120
.L3_119:
    ldr x9, [sp, #32]
    ldr s24, [x9]
    fcmp s24, s14
    cset w15, ge
.L3_120:
    and w14, w15, #255
    cbnz w14, .L3_121
    b .L3_135
.L3_135:
    mov w15, w14
    b .L3_122
.L3_121:
    ldr x9, [sp, #24]
    ldr s24, [x9]
    fcmp s24, s15
    cset w15, ls
.L3_122:
    and w14, w15, #255
    and w14, w14, #255
    sub x10, x29, #800
    str w14, [x10]
.L3_124:
    mov x10, #0
    cmp w14, w10
    b.ne .L3_12
.L3_11:
    sub x19, x29, #200
    adrp x14, lb_gpu_16invalid_geometry
    add x14, x14, :lo12:lb_gpu_16invalid_geometry
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_5
    add x14, x14, :lo12:.Ltext_5
    sub x15, x29, #360
    str x14, [x15]
    add x14, x15, #8
    movz x9, #56
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
    ldr d11, [sp, #776]
    ldr d12, [sp, #768]
    ldr d13, [sp, #760]
    ldr d14, [sp, #752]
    ldr d15, [sp, #744]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_12:
.L3_13:
.L3_9:
    add x14, x20, #1
    mov x20, x14
    b .L3_7
.L3_10:
    sub x9, x29, #296
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x14, x9, #32
    ldrb w14, [x14]
    cbnz w14, .L3_18
    b .L3_16
.L3_18:
    sub x21, x29, #392
    ldr x10, [sp, #8]
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
.L3_15:
    ldr d24, [x21]
    movz x9, #16592, lsl #48
    fmov d25, x9
    fneg d26, d25
    fcmp d24, d26
    cset w14, ge
    cbnz w14, .L3_22
    b .L3_136
.L3_136:
    mov w15, w14
    b .L3_23
.L3_22:
    fcmp d24, d25
    cset w15, ls
.L3_23:
    and w14, w15, #255
    cbnz w14, .L3_24
    b .L3_137
.L3_137:
    mov w15, w14
    b .L3_25
.L3_24:
    add x14, x21, #8
    ldr d24, [x14]
    fcmp d24, d26
    cset w15, ge
.L3_25:
    and w14, w15, #255
    cbnz w14, .L3_26
    b .L3_138
.L3_138:
    mov w15, w14
    b .L3_27
.L3_26:
    add x14, x21, #8
    ldr d24, [x14]
    fcmp d24, d25
    cset w15, ls
.L3_27:
    and w14, w15, #255
    cbnz w14, .L3_28
    b .L3_139
.L3_139:
    mov w15, w14
    b .L3_29
.L3_28:
    add x14, x21, #16
    ldr d24, [x14]
    mov x9, #0
    fmov d26, x9
    fcmp d24, d26
    cset w15, ge
.L3_29:
    and w14, w15, #255
    cbnz w14, .L3_30
    b .L3_140
.L3_140:
    mov w15, w14
    b .L3_31
.L3_30:
    add x14, x21, #16
    ldr d24, [x14]
    fcmp d24, d25
    cset w15, ls
.L3_31:
    and w14, w15, #255
    cbnz w14, .L3_32
    b .L3_141
.L3_141:
    mov w15, w14
    b .L3_33
.L3_32:
    add x14, x21, #24
    ldr d24, [x14]
    mov x9, #0
    fmov d26, x9
    fcmp d24, d26
    cset w15, ge
.L3_33:
    and w14, w15, #255
    cbnz w14, .L3_34
    b .L3_142
.L3_142:
    mov w15, w14
    b .L3_35
.L3_34:
    add x14, x21, #24
    ldr d24, [x14]
    fcmp d24, d25
    cset w15, ls
.L3_35:
    and w14, w15, #255
    mov x10, #0
    cmp w14, w10
    b.ne .L3_20
.L3_19:
    sub x19, x29, #200
    adrp x14, lb_gpu_16invalid_geometry
    add x14, x14, :lo12:lb_gpu_16invalid_geometry
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_6
    add x14, x14, :lo12:.Ltext_6
    sub x15, x29, #408
    str x14, [x15]
    add x14, x15, #8
    movz x9, #77
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
    ldr d11, [sp, #776]
    ldr d12, [sp, #768]
    ldr d13, [sp, #760]
    ldr d14, [sp, #752]
    ldr d15, [sp, #744]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_20:
.L3_21:
    add x14, x21, #16
    ldr d24, [x14]
    mov x9, #0
    fmov d25, x9
    fcmp d24, d25
    cset w14, eq
    cbnz w14, .L3_143
    b .L3_40
.L3_143:
    mov w15, w14
    b .L3_41
.L3_40:
    add x14, x21, #24
    ldr d24, [x14]
    fcmp d25, d24
    cset w15, eq
.L3_41:
    and w14, w15, #255
    cbnz w14, .L3_37
    b .L3_38
.L3_37:
    sub x14, x29, #200
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
    ldr d11, [sp, #776]
    ldr d12, [sp, #768]
    ldr d13, [sp, #760]
    ldr d14, [sp, #752]
    ldr d15, [sp, #744]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_38:
.L3_39:
    b .L3_17
.L3_16:
.L3_17:
    ldr x9, [sp, #96]
    ldr x14, [x9]
    mov x10, #0
    cmp x14, x10
    cset w15, eq
    cbnz w15, .L3_144
    b .L3_46
.L3_144:
    mov w12, w15
    b .L3_47
.L3_46:
    sub x15, x29, #240
    add x15, x15, #8
    ldr w15, [x15]
    mov x10, #0
    cmp w15, w10
    cset w12, eq
.L3_47:
    and w15, w12, #255
    cbnz w15, .L3_145
    b .L3_48
.L3_145:
    mov w12, w15
    b .L3_49
.L3_48:
    sub x15, x29, #240
    add x15, x15, #12
    ldr w15, [x15]
    mov x10, #0
    cmp w15, w10
    cset w12, eq
.L3_49:
    and w15, w12, #255
    cbnz w15, .L3_43
    b .L3_44
.L3_43:
    sub x14, x29, #200
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
    ldr d11, [sp, #776]
    ldr d12, [sp, #768]
    ldr d13, [sp, #760]
    ldr d14, [sp, #752]
    ldr d15, [sp, #744]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_44:
.L3_45:
    ldr x9, [sp, #16]
    add x9, x9, #32
    str x9, [sp, #88]
    ldr x9, [sp, #88]
    ldr x15, [x9]
    movz x9, #16, lsl #16
    mov x10, x15
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_7
    add x0, x0, :lo12:.Ltext_7
    adrp x1, .Ltext_32
    add x1, x1, :lo12:.Ltext_32
    bl lb_core_7trap_at
1:
    mov x12, x9
    cmp x14, x12
    cset w12, hi
    cbnz w12, .L3_146
    b .L3_54
.L3_146:
    mov w13, w12
    b .L3_55
.L3_54:
    ldr x9, [sp, #16]
    add x12, x9, #40
    ldr x12, [x12]
    movz x10, #4096
    cmp x12, x10
    cset w13, eq
.L3_55:
    and w12, w13, #255
    cbnz w12, .L3_51
    b .L3_52
.L3_51:
    sub x19, x29, #200
    adrp x14, lb_gpu_13command_limit
    add x14, x14, :lo12:lb_gpu_13command_limit
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_8
    add x14, x14, :lo12:.Ltext_8
    sub x15, x29, #424
    str x14, [x15]
    add x14, x15, #8
    movz x9, #57
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
    ldr d11, [sp, #776]
    ldr d12, [sp, #768]
    ldr d13, [sp, #760]
    ldr d14, [sp, #752]
    ldr d15, [sp, #744]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_52:
.L3_53:
    mov x9, x14
    mov x10, x15
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_9
    add x0, x0, :lo12:.Ltext_9
    adrp x1, .Ltext_32
    add x1, x1, :lo12:.Ltext_32
    bl lb_core_7trap_at
1:
    str x9, [sp, #80]
    ldr x9, [sp, #16]
    add x23, x9, #8
    ldr x12, [x23]
    ldr x9, [sp, #80]
    cmp x9, x12
    b.ls .L3_58
.L3_57:
    mov x9, x12
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_10
    add x0, x0, :lo12:.Ltext_10
    adrp x1, .Ltext_32
    add x1, x1, :lo12:.Ltext_32
    bl lb_core_7trap_at
1:
    mov x14, x9
    movz x0, #256
    mov x1, x14
    bl lb_gpu_10canvas_max
    mov x14, x0
    movz x0, #16, lsl #16
    mov x1, x14
    bl lb_gpu_10canvas_min
    mov x14, x0
    ldr x0, [sp, #80]
    mov x1, x14
    bl lb_gpu_10canvas_max
    mov x24, x0
    sub x25, x29, #440
    adrp x26, lb_memory_heap
    add x26, x26, :lo12:lb_memory_heap
    sub x27, x29, #488
    movz x10, #512, lsl #48
    cmp x24, x10
    b.ls .L3_61
.L3_60:
    add x14, x27, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_11
    add x15, x15, :lo12:.Ltext_11
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x27, #40
    movz x9, #1
    strb w9, [x14]
    b .L3_62
.L3_61:
    lsl x28, x24, #5
    ldr x14, [x26]
    add x15, x26, #8
    ldr x15, [x15]
    cbnz x15, .L3_63
    b .L3_64
.L3_64:
    adrp x0, .Ltext_13
    add x0, x0, :lo12:.Ltext_13
    adrp x1, .Ltext_12
    add x1, x1, :lo12:.Ltext_12
    bl lb_core_7trap_at
.L3_63:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x28
    movz x2, #4
    sub x8, x29, #512
    ldr x17, [sp], #16
    blr x17
    sub x22, x29, #512
    add x12, x22, #16
    ldrb w12, [x12]
    mov x10, #0
    cmp x28, x10
    cset w13, ne
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    and w12, w13, w12
    cbnz w12, .L3_65
    b .L3_66
.L3_65:
    add x14, x27, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_14
    add x15, x15, :lo12:.Ltext_14
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x27, #40
    movz x9, #1
    strb w9, [x14]
    b .L3_62
.L3_66:
    ldr x14, [x22]
    str x14, [x27]
    add x14, x27, #8
    str x24, [x14]
    add x14, x27, #40
    mov x9, #0
    strb w9, [x14]
.L3_62:
    add x14, x27, #40
    ldrb w14, [x14]
    cbnz w14, .L3_68
    b .L3_67
.L3_68:
    add x14, x27, #16
    sub x19, x29, #200
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
    ldr d11, [sp, #776]
    ldr d12, [sp, #768]
    ldr d13, [sp, #760]
    ldr d14, [sp, #752]
    ldr d15, [sp, #744]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_67:
    mov x10, x27
    mov x11, x25
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x9, [sp, #88]
    ldr x14, [x9]
    mov x10, #0
    cmp x14, x10
    b.ls .L3_71
.L3_70:
    mov x9, x25
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x9, [sp, #16]
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x14
    bl lb_memory_copy_0g1_gpu_Vertex
    b .L3_72
.L3_71:
.L3_72:
    ldr x14, [x23]
    mov x10, #0
    cmp x14, x10
    b.ls .L3_74
.L3_73:
    sub x15, x29, #528
    ldr x9, [sp, #16]
    ldr x12, [x9]
    mov x9, x14
    movz x10, #32
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_15
    add x0, x0, :lo12:.Ltext_15
    adrp x1, .Ltext_32
    add x1, x1, :lo12:.Ltext_32
    bl lb_core_7trap_at
1:
    mov x13, x9
    str x12, [x15]
    add x12, x15, #8
    str x13, [x12]
    ldr x12, [x26]
    add x13, x26, #8
    ldr x13, [x13]
    cbnz x13, .L3_77
    b .L3_76
.L3_77:
    add x14, x13, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x12
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L3_76:
    b .L3_75
.L3_74:
.L3_75:
    mov x10, x25
    ldr x11, [sp, #16]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b .L3_59
.L3_58:
.L3_59:
    ldr x9, [sp, #16]
    add x22, x9, #40
    ldr x14, [x22]
    ldr x9, [sp, #16]
    add x24, x9, #16
    add x25, x24, #8
    ldr x15, [x25]
    cmp x14, x15
    b.ne .L3_79
.L3_78:
    mov x9, x15
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_16
    add x0, x0, :lo12:.Ltext_16
    adrp x1, .Ltext_32
    add x1, x1, :lo12:.Ltext_32
    bl lb_core_7trap_at
1:
    mov x14, x9
    movz x0, #16
    mov x1, x14
    bl lb_gpu_10canvas_max
    mov x26, x0
    sub x27, x29, #544
    adrp x28, lb_memory_heap
    add x28, x28, :lo12:lb_memory_heap
    sub x20, x29, #592
    movz x10, #9362
    movk x10, #37449, lsl #16
    movk x10, #18724, lsl #32
    movk x10, #146, lsl #48
    cmp x26, x10
    b.ls .L3_82
.L3_81:
    add x14, x20, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_11
    add x15, x15, :lo12:.Ltext_11
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    b .L3_83
.L3_82:
    movz x10, #112
    mul x19, x26, x10
    ldr x14, [x28]
    add x15, x28, #8
    ldr x15, [x15]
    cbnz x15, .L3_84
    b .L3_85
.L3_85:
    adrp x0, .Ltext_17
    add x0, x0, :lo12:.Ltext_17
    adrp x1, .Ltext_12
    add x1, x1, :lo12:.Ltext_12
    bl lb_core_7trap_at
.L3_84:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x19
    movz x2, #8
    sub x8, x29, #616
    ldr x17, [sp], #16
    blr x17
    sub x21, x29, #616
    add x12, x21, #16
    ldrb w12, [x12]
    mov x10, #0
    cmp x19, x10
    cset w13, ne
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    and w12, w13, w12
    cbnz w12, .L3_86
    b .L3_87
.L3_86:
    add x14, x20, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_14
    add x15, x15, :lo12:.Ltext_14
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    b .L3_83
.L3_87:
    ldr x14, [x21]
    str x14, [x20]
    add x14, x20, #8
    str x26, [x14]
    add x14, x20, #40
    mov x9, #0
    strb w9, [x14]
.L3_83:
    add x14, x20, #40
    ldrb w14, [x14]
    cbnz w14, .L3_89
    b .L3_88
.L3_89:
    add x14, x20, #16
    sub x19, x29, #200
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
    ldr d11, [sp, #776]
    ldr d12, [sp, #768]
    ldr d13, [sp, #760]
    ldr d14, [sp, #752]
    ldr d15, [sp, #744]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_88:
    mov x10, x20
    mov x11, x27
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x14, [x22]
    mov x10, #0
    cmp x14, x10
    b.ls .L3_92
.L3_91:
    mov x9, x27
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x24
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x14
    bl lb_memory_copy_0g1_gpu_Draw
    b .L3_93
.L3_92:
.L3_93:
    ldr x14, [x25]
    mov x10, #0
    cmp x14, x10
    b.ls .L3_95
.L3_94:
    sub x15, x29, #632
    ldr x12, [x24]
    mov x9, x14
    movz x10, #112
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_18
    add x0, x0, :lo12:.Ltext_18
    adrp x1, .Ltext_32
    add x1, x1, :lo12:.Ltext_32
    bl lb_core_7trap_at
1:
    mov x13, x9
    str x12, [x15]
    add x12, x15, #8
    str x13, [x12]
    ldr x12, [x28]
    add x13, x28, #8
    ldr x13, [x13]
    cbnz x13, .L3_98
    b .L3_97
.L3_98:
    add x14, x13, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x12
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L3_97:
    b .L3_96
.L3_95:
.L3_96:
    mov x10, x27
    mov x11, x24
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b .L3_80
.L3_79:
.L3_80:
    ldr x9, [sp, #16]
    ldr x15, [x9]
    ldr x12, [x23]
    ldr x9, [sp, #88]
    ldr x13, [x9]
    add x14, x12, #1
    cmp x13, x14
    b.lo 1f
    adrp x0, .Ltext_19
    add x0, x0, :lo12:.Ltext_19
    adrp x1, .Ltext_20
    add x1, x1, :lo12:.Ltext_20
    bl lb_core_7trap_at
1:
    cmp x12, x14
    b.lo 1f
    adrp x0, .Ltext_19
    add x0, x0, :lo12:.Ltext_19
    adrp x1, .Ltext_20
    add x1, x1, :lo12:.Ltext_20
    bl lb_core_7trap_at
1:
    cmp x13, x12
    b.ls .L3_99
.L3_100:
    adrp x0, .Ltext_19
    add x0, x0, :lo12:.Ltext_19
    adrp x1, .Ltext_20
    add x1, x1, :lo12:.Ltext_20
    bl lb_core_7trap_at
.L3_99:
    lsl x14, x13, #5
    add x14, x14, x15
    sub x19, x12, x13
    sub x20, x29, #648
    str x14, [x20]
    add x14, x20, #8
    str x19, [x14]
    ldr x9, [sp, #96]
    ldr x14, [x9]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x9, [sp, #104]
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x14
    bl lb_memory_copy_0g1_gpu_Vertex
    ldr x14, [x22]
    ldr x19, [x24]
    ldr x20, [x25]
    cmp x14, x20
    b.lo 1f
    adrp x0, .Ltext_21
    add x0, x0, :lo12:.Ltext_21
    adrp x1, .Ltext_20
    add x1, x1, :lo12:.Ltext_20
    bl lb_core_7trap_at
1:
    movz x10, #112
    mul x14, x14, x10
    add x19, x19, x14
    sub x20, x29, #760
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    ldr x9, [sp, #88]
    ldr x14, [x9]
    str x14, [x20]
    ldr x9, [sp, #96]
    ldr x14, [x9]
    add x21, x20, #8
    str x14, [x21]
    sub x14, x29, #240
    add x21, x20, #16
    mov x10, x14
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x14, x29, #256
    ldrb w14, [x14]
    add x21, x20, #32
    strb w14, [x21]
    add x14, x20, #40
    ldr x10, [sp, #8]
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    mov x10, x20
    mov x11, x19
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
    ldr x9, [sp, #80]
    ldr x10, [sp, #88]
    str x9, [x10]
    ldr x14, [x22]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_22
    add x0, x0, :lo12:.Ltext_22
    adrp x1, .Ltext_32
    add x1, x1, :lo12:.Ltext_32
    bl lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x22]
    sub x14, x29, #200
    add x19, x14, #24
    mov x9, #0
    strb w9, [x19]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
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
    ldr d11, [sp, #776]
    ldr d12, [sp, #768]
    ldr d13, [sp, #760]
    ldr d14, [sp, #752]
    ldr d15, [sp, #744]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_gpu_Canvas_triangles, .-lb_gpu_Canvas_triangles

    .p2align 2
    .globl lb_gpu_Canvas_destroy
    .type lb_gpu_Canvas_destroy, %function
lb_gpu_Canvas_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    str x19, [sp, #152]
    str x20, [sp, #144]
    str x21, [sp, #136]
    sub x16, x29, #48
    str x0, [x16]
    sub x9, x29, #48
    ldr x19, [x9]
    add x14, x19, #48
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ls .L4_2
.L4_1:
    adrp x12, lb_memory_heap
    add x12, x12, :lo12:lb_memory_heap
    sub x13, x29, #64
    ldr x20, [x14]
    mov x9, x15
    movz x10, #4
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_23
    add x0, x0, :lo12:.Ltext_23
    adrp x1, .Ltext_32
    add x1, x1, :lo12:.Ltext_32
    bl lb_core_7trap_at
1:
    mov x21, x9
    str x20, [x13]
    add x20, x13, #8
    str x21, [x20]
    ldr x20, [x12]
    add x12, x12, #8
    ldr x12, [x12]
    cbnz x12, .L4_5
    b .L4_4
.L4_5:
    add x14, x12, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x13
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L4_4:
    b .L4_3
.L4_2:
.L4_3:
    add x14, x19, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls .L4_7
.L4_6:
    adrp x15, lb_memory_heap
    add x15, x15, :lo12:lb_memory_heap
    sub x12, x29, #80
    ldr x13, [x19]
    mov x9, x14
    movz x10, #32
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_24
    add x0, x0, :lo12:.Ltext_24
    adrp x1, .Ltext_32
    add x1, x1, :lo12:.Ltext_32
    bl lb_core_7trap_at
1:
    mov x20, x9
    str x13, [x12]
    add x13, x12, #8
    str x20, [x13]
    ldr x13, [x15]
    add x15, x15, #8
    ldr x15, [x15]
    cbnz x15, .L4_10
    b .L4_9
.L4_10:
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
.L4_9:
    b .L4_8
.L4_7:
.L4_8:
    add x14, x19, #16
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ls .L4_12
.L4_11:
    adrp x12, lb_memory_heap
    add x12, x12, :lo12:lb_memory_heap
    sub x13, x29, #96
    ldr x20, [x14]
    mov x9, x15
    movz x10, #112
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_25
    add x0, x0, :lo12:.Ltext_25
    adrp x1, .Ltext_32
    add x1, x1, :lo12:.Ltext_32
    bl lb_core_7trap_at
1:
    mov x21, x9
    str x20, [x13]
    add x20, x13, #8
    str x21, [x20]
    ldr x20, [x12]
    add x12, x12, #8
    ldr x12, [x12]
    cbnz x12, .L4_15
    b .L4_14
.L4_15:
    add x14, x12, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x13
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L4_14:
    b .L4_13
.L4_12:
.L4_13:
    sub x20, x29, #168
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    str xzr, [x11, #64]
    mov x10, x20
    mov x11, x19
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
    ldr x19, [sp, #152]
    ldr x20, [sp, #144]
    ldr x21, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_gpu_Canvas_destroy, .-lb_gpu_Canvas_destroy

    .p2align 2
    .globl lb_gpu_10canvas_min
    .type lb_gpu_10canvas_min, %function
lb_gpu_10canvas_min:
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
    b.hs .L5_2
.L5_1:
    mov x15, x14
    b .L5_3
.L5_2:
.L5_3:
    mov x9, x15
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_4:
    adrp x0, .Ltext_27
    add x0, x0, :lo12:.Ltext_27
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_gpu_10canvas_min, .-lb_gpu_10canvas_min

    .p2align 2
    .globl lb_gpu_10canvas_max
    .type lb_gpu_10canvas_max, %function
lb_gpu_10canvas_max:
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
    b.ls .L6_2
.L6_1:
    mov x15, x14
    b .L6_3
.L6_2:
.L6_3:
    mov x9, x15
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_4:
    adrp x0, .Ltext_28
    add x0, x0, :lo12:.Ltext_28
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_gpu_10canvas_max, .-lb_gpu_10canvas_max

    .p2align 2
    .weak lb_memory_copy_0g1_gpu_Vertex
    .type lb_memory_copy_0g1_gpu_Vertex, %function
lb_memory_copy_0g1_gpu_Vertex:
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
    cbnz w14, .L7_11
    b .L7_4
.L7_11:
    mov w15, w14
    b .L7_5
.L7_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
.L7_5:
    and w14, w15, #255
    cbnz w14, .L7_1
    b .L7_2
.L7_1:
    adrp x14, .Ltext_20
    add x14, x14, :lo12:.Ltext_20
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, .Ltext_29
    add x14, x14, :lo12:.Ltext_29
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    b .L7_3
.L7_2:
.L7_3:
    mov x10, #0
    cmp x19, x10
    b.ls .L7_7
.L7_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x9, x19
    movz x10, #32
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_30
    add x0, x0, :lo12:.Ltext_30
    adrp x1, .Ltext_32
    add x1, x1, :lo12:.Ltext_32
    bl lb_core_7trap_at
1:
    mov x12, x9
    mov x0, x14
    mov x1, x15
    mov x2, x12
    bl memcpy
    mov x14, x0
    cbnz x14, .L7_9
    b .L7_10
.L7_10:
    adrp x0, .Ltext_30
    add x0, x0, :lo12:.Ltext_30
    adrp x1, .Ltext_31
    add x1, x1, :lo12:.Ltext_31
    bl lb_core_7trap_at
.L7_9:
    b .L7_8
.L7_7:
.L7_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_memory_copy_0g1_gpu_Vertex, .-lb_memory_copy_0g1_gpu_Vertex

    .p2align 2
    .weak lb_memory_copy_0g1_gpu_Draw
    .type lb_memory_copy_0g1_gpu_Draw, %function
lb_memory_copy_0g1_gpu_Draw:
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
    cbnz w14, .L8_11
    b .L8_4
.L8_11:
    mov w15, w14
    b .L8_5
.L8_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
.L8_5:
    and w14, w15, #255
    cbnz w14, .L8_1
    b .L8_2
.L8_1:
    adrp x14, .Ltext_20
    add x14, x14, :lo12:.Ltext_20
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, .Ltext_29
    add x14, x14, :lo12:.Ltext_29
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    b .L8_3
.L8_2:
.L8_3:
    mov x10, #0
    cmp x19, x10
    b.ls .L8_7
.L8_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x9, x19
    movz x10, #112
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_30
    add x0, x0, :lo12:.Ltext_30
    adrp x1, .Ltext_32
    add x1, x1, :lo12:.Ltext_32
    bl lb_core_7trap_at
1:
    mov x12, x9
    mov x0, x14
    mov x1, x15
    mov x2, x12
    bl memcpy
    mov x14, x0
    cbnz x14, .L8_9
    b .L8_10
.L8_10:
    adrp x0, .Ltext_30
    add x0, x0, :lo12:.Ltext_30
    adrp x1, .Ltext_31
    add x1, x1, :lo12:.Ltext_31
    bl lb_core_7trap_at
.L8_9:
    b .L8_8
.L8_7:
.L8_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_memory_copy_0g1_gpu_Draw, .-lb_memory_copy_0g1_gpu_Draw

    .section .init_array,"aw"
    .p2align 3
    .quad lb_gpu_canvas_0init

    .section .rodata
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/gpu/canvas.lucb:50:9"
.Ltext_2:
    .asciz "division by zero"
.Ltext_3:
    .asciz "src/std/gpu/canvas.lucb:61:9"
.Ltext_4:
    .asciz "triangle input must contain a multiple of three vertices"
.Ltext_5:
    .asciz "vertices need finite positions and linear colors in 0..1"
.Ltext_6:
    .asciz "GPU viewport origins must be finite and in -16384..16384; extents in 0..16384"
.Ltext_7:
    .asciz "src/std/gpu/canvas.lucb:73:9"
.Ltext_8:
    .asciz "a canvas supports at most 1048576 vertices and 4096 draws"
.Ltext_9:
    .asciz "src/std/gpu/canvas.lucb:75:9"
.Ltext_10:
    .asciz "src/std/gpu/canvas.lucb:77:13"
.Ltext_11:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_12:
    .asciz "memory.unset"
.Ltext_13:
    .asciz "src/std/gpu/canvas.lucb:78:13"
.Ltext_14:
    .asciz "memory.exhausted"
.Ltext_15:
    .asciz "src/std/gpu/canvas.lucb:82:17"
.Ltext_16:
    .asciz "src/std/gpu/canvas.lucb:85:13"
.Ltext_17:
    .asciz "src/std/gpu/canvas.lucb:86:13"
.Ltext_18:
    .asciz "src/std/gpu/canvas.lucb:90:17"
.Ltext_19:
    .asciz "src/std/gpu/canvas.lucb:92:9"
.Ltext_20:
    .asciz "index out of bounds"
.Ltext_21:
    .asciz "src/std/gpu/canvas.lucb:93:9"
.Ltext_22:
    .asciz "src/std/gpu/canvas.lucb:95:9"
.Ltext_23:
    .asciz "src/std/gpu/canvas.lucb:99:13"
.Ltext_24:
    .asciz "src/std/gpu/canvas.lucb:101:13"
.Ltext_25:
    .asciz "src/std/gpu/canvas.lucb:103:13"
.Ltext_26:
    .asciz "src/std/gpu/canvas.lucb:107:5"
.Ltext_27:
    .asciz "src/std/gpu/canvas.lucb:110:5"
.Ltext_28:
    .asciz "src/std/gpu/canvas.lucb:113:5"
.Ltext_29:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_30:
    .asciz "src/std/memory.lucb:330:9"
.Ltext_31:
    .asciz "null_foreign"
.Ltext_32:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
