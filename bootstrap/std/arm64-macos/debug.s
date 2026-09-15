    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_debug_0init
_lb_debug_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_debug_enter
_lb_debug_enter:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    str x20, [sp, #48]
    str x21, [sp, #40]
    sub x16, x29, #56
    str x0, [x16]
    adrp x19, _lb_debug_depth@PAGE
    add x19, x19, _lb_debug_depth@PAGEOFF
    ldr x14, [x19]
    movz x10, #512
    cmp x14, x10
    b.hs L1_2
L1_1:
    adrp x15, _lb_debug_activations@PAGE
    add x15, x15, _lb_debug_activations@PAGEOFF
    movz x10, #24
    mul x20, x14, x10
    add x20, x15, x20
    sub x21, x29, #80
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x15, x29, #56
    ldr x15, [x15]
    str x15, [x21]
    add x15, x21, #8
    mov x9, #0
    str x9, [x15]
    add x15, x21, #16
    mov x9, #0
    str w9, [x15]
    mov x10, x21
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L1_3
L1_2:
L1_3:
    ldr x14, [x19]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_50@PAGE
    add x1, x1, l_text_50@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x19]
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_debug_leave
_lb_debug_leave:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    str x19, [sp, #8]
    adrp x14, _lb_debug_depth@PAGE
    add x14, x14, _lb_debug_depth@PAGEOFF
    ldr x15, [x14]
    mov x10, #0
    cmp x15, x10
    b.ls L2_2
L2_1:
    mov x9, x15
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_50@PAGE
    add x1, x1, l_text_50@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x19, x9
    str x19, [x14]
    b L2_3
L2_2:
L2_3:
    ldr x19, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_debug_at
_lb_debug_at:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1312
    str x19, [sp, #1288]
    str x20, [sp, #1280]
    str x21, [sp, #1272]
    str x22, [sp, #1264]
    str x23, [sp, #1256]
    str x24, [sp, #1248]
    str x25, [sp, #1240]
    str x26, [sp, #1232]
    str x27, [sp, #1224]
    str x28, [sp, #1216]
    sub x16, x29, #112
    str x0, [x16]
    sub x16, x29, #128
    str w1, [x16]
    sub x16, x29, #144
    str x2, [x16]
    adrp x14, _lb_debug_checked@PAGE
    add x14, x14, _lb_debug_checked@PAGEOFF
    ldrb w15, [x14]
    mov x10, #0
    cmp w15, w10
    b.ne L3_2
L3_1:
    movz x9, #1
    strb w9, [x14]
    adrp x19, _lb_debug_active@PAGE
    add x19, x19, _lb_debug_active@PAGEOFF
    adrp x15, l_text_3@PAGE
    add x15, x15, l_text_3@PAGEOFF
    mov x0, x15
    bl _getenv
    mov x15, x0
    mov x10, #0
    cmp x15, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    strb w15, [x19]
    b L3_3
L3_2:
L3_3:
    adrp x14, _lb_debug_active@PAGE
    add x14, x14, _lb_debug_active@PAGEOFF
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L3_45
    b L3_7
L3_45:
    mov w15, w14
    b L3_8
L3_7:
    adrp x14, _lb_debug_depth@PAGE
    add x14, x14, _lb_debug_depth@PAGEOFF
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w15, eq
L3_8:
    and w14, w15, #255
    cbnz w14, L3_46
    b L3_9
L3_46:
    mov w15, w14
    b L3_10
L3_9:
    adrp x14, _lb_debug_depth@PAGE
    add x14, x14, _lb_debug_depth@PAGEOFF
    ldr x14, [x14]
    movz x10, #512
    cmp x14, x10
    cset w15, hi
L3_10:
    and w14, w15, #255
    cbnz w14, L3_4
    b L3_5
L3_4:
    ldr x19, [sp, #1288]
    ldr x20, [sp, #1280]
    ldr x21, [sp, #1272]
    ldr x22, [sp, #1264]
    ldr x23, [sp, #1256]
    ldr x24, [sp, #1248]
    ldr x25, [sp, #1240]
    ldr x26, [sp, #1232]
    ldr x27, [sp, #1224]
    ldr x28, [sp, #1216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_11:
    b L3_6
L3_5:
L3_6:
    adrp x19, _lb_debug_depth@PAGE
    add x19, x19, _lb_debug_depth@PAGEOFF
    ldr x14, [x19]
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_50@PAGE
    add x1, x1, l_text_50@PAGEOFF
    bl _lb_core_7trap_at
1:
    str x9, [sp, #8]
    sub x14, x29, #112
    ldr x21, [x14]
    adrp x14, _lb_debug_activations@PAGE
    add x14, x14, _lb_debug_activations@PAGEOFF
    ldr x9, [sp, #8]
    movz x10, #512
    cmp x9, x10
    b.lo 1f
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x9, [sp, #8]
    movz x10, #24
    mul x15, x9, x10
    add x22, x14, x15
    sub x23, x29, #168
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    str x21, [x23]
    sub x14, x29, #144
    ldr x14, [x14]
    add x15, x23, #8
    str x14, [x15]
    sub x14, x29, #128
    ldr w24, [x14]
    add x14, x23, #16
    str w24, [x14]
    mov x10, x23
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    adrp x14, _lb_debug_started@PAGE
    add x14, x14, _lb_debug_started@PAGEOFF
    ldrb w15, [x14]
    mov x10, #0
    cmp w15, w10
    b.ne L3_13
L3_12:
    movz x9, #1
    strb w9, [x14]
    movz x9, #1
    mov w15, w9
    b L3_14
L3_13:
    adrp x14, _lb_debug_stepping@PAGE
    add x14, x14, _lb_debug_stepping@PAGEOFF
    ldrb w14, [x14]
    cbnz w14, L3_15
    b L3_16
L3_15:
    movz x9, #1
    mov w14, w9
    b L3_17
L3_16:
    adrp x14, _lb_debug_9step_over@PAGE
    add x14, x14, _lb_debug_9step_over@PAGEOFF
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w15, hi
    cbnz w15, L3_21
    b L3_47
L3_47:
    mov w14, w15
    b L3_22
L3_21:
    ldr x15, [x19]
    cmp x15, x14
    cset w15, ls
    mov w14, w15
L3_22:
    and w15, w14, #255
    cbnz w15, L3_18
    b L3_19
L3_18:
    movz x9, #1
    mov w14, w9
    b L3_20
L3_19:
    add x14, x21, #16
    mov x10, x14
    sub x11, x29, #1248
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x10, x29, #1264
    str w24, [x10]
    adrp x9, _lb_debug_11break_count@PAGE
    add x9, x9, _lb_debug_11break_count@PAGEOFF
    str x9, [sp, #0]
    sub x22, x29, #1288
    adrp x23, _lb_debug_breaks@PAGE
    add x23, x23, _lb_debug_breaks@PAGEOFF
    add x25, x22, #16
    sub x20, x29, #1248
    add x26, x22, #8
    add x27, x20, #8
    mov x9, #0
    mov x28, x9
L3_30:
    ldr x9, [sp, #0]
    ldr x14, [x9]
    cmp x28, x14
    b.hs L3_32
L3_31:
    movz x10, #32
    cmp x28, x10
    b.lo 1f
    adrp x0, l_text_9@PAGE
    add x0, x0, l_text_9@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
1:
    movz x10, #24
    mul x14, x28, x10
    add x14, x23, x14
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr w14, [x25]
    cmp w24, w14
    cset w14, eq
    cbnz w14, L3_36
    b L3_48
L3_48:
    mov w15, w14
    b L3_37
L3_36:
    ldr x14, [x26]
    ldr x15, [x27]
    cmp x14, x15
    cset w15, eq
    cbnz w15, L3_38
    b L3_49
L3_49:
    mov w14, w15
    b L3_39
L3_38:
    ldr x15, [x22]
    ldr x19, [x20]
    mov x0, x15
    mov x1, x19
    mov x2, x14
    bl _memcmp
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
L3_39:
    and w15, w14, #255
    cbnz w15, L3_50
    b L3_40
L3_50:
    mov w14, w15
    b L3_41
L3_40:
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x22
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_debug_9ends_with
    mov w14, w0
L3_41:
    and w15, w14, #255
L3_37:
    and w14, w15, #255
    cbnz w14, L3_33
    b L3_34
L3_33:
    movz x9, #1
    sub x10, x29, #1296
    str w9, [x10]
    movz x9, #1
    mov w14, w9
    b L3_44
L3_42:
    b L3_35
L3_34:
L3_35:
    add x14, x28, #1
    mov x28, x14
    b L3_30
L3_32:
    mov x9, #0
    sub x10, x29, #1296
    str w9, [x10]
    mov x9, #0
    mov w14, w9
    b L3_44
L3_43:
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
L3_44:
    cbnz w14, L3_23
    b L3_24
L3_23:
    movz x9, #1
    mov w14, w9
    b L3_25
L3_24:
    mov x9, #0
    mov w14, w9
L3_25:
L3_20:
L3_17:
    mov w15, w14
L3_14:
    and w14, w15, #255
    mov x10, #0
    cmp w14, w10
    b.ne L3_27
L3_26:
    ldr x19, [sp, #1288]
    ldr x20, [sp, #1280]
    ldr x21, [sp, #1272]
    ldr x22, [sp, #1264]
    ldr x23, [sp, #1256]
    ldr x24, [sp, #1248]
    ldr x25, [sp, #1240]
    ldr x26, [sp, #1232]
    ldr x27, [sp, #1224]
    ldr x28, [sp, #1216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_29:
    b L3_28
L3_27:
L3_28:
    adrp x14, _lb_debug_stepping@PAGE
    add x14, x14, _lb_debug_stepping@PAGEOFF
    mov x9, #0
    strb w9, [x14]
    adrp x14, _lb_debug_9step_over@PAGE
    add x14, x14, _lb_debug_9step_over@PAGEOFF
    mov x9, #0
    str x9, [x14]
    sub x14, x29, #1192
    sub x19, x29, #1216
    str x14, [x19]
    add x14, x19, #8
    movz x9, #1024
    str x9, [x14]
    add x14, x19, #16
    mov x9, #0
    str x9, [x14]
    adrp x14, l_text_6@PAGE
    add x14, x14, l_text_6@PAGEOFF
    mov x0, x19
    mov x1, x14
    movz x2, #11
    bl _lb_core_10format_put
    mov w14, w0
    add x14, x21, #16
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    mov x0, x19
    mov x1, x15
    mov x2, x14
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_7@PAGE
    add x14, x14, l_text_7@PAGEOFF
    mov x0, x19
    mov x1, x14
    movz x2, #1
    bl _lb_core_10format_put
    mov w14, w0
    mov w14, w24
    mov x0, x19
    mov x1, x14
    bl _lb_core_10format_u64
    mov w14, w0
    adrp x14, l_text_8@PAGE
    add x14, x14, l_text_8@PAGEOFF
    mov x0, x19
    mov x1, x14
    movz x2, #4
    bl _lb_core_10format_put
    mov w14, w0
    ldr x14, [x21]
    add x15, x21, #8
    ldr x15, [x15]
    mov x0, x19
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    mov x0, x19
    bl _lb_core_13format_finish
    sub x16, x29, #1232
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #1232
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_core_9print_str
    ldr x0, [sp, #8]
    bl _lb_debug_prompt
    ldr x19, [sp, #1288]
    ldr x20, [sp, #1280]
    ldr x21, [sp, #1272]
    ldr x22, [sp, #1264]
    ldr x23, [sp, #1256]
    ldr x24, [sp, #1248]
    ldr x25, [sp, #1240]
    ldr x26, [sp, #1232]
    ldr x27, [sp, #1224]
    ldr x28, [sp, #1216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_debug_9ends_with
_lb_debug_9ends_with:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    str x21, [sp, #88]
    str x22, [sp, #80]
    str x23, [sp, #72]
    str x24, [sp, #64]
    sub x16, x29, #80
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #96
    str x2, [x16]
    str x3, [x16, #8]
    sub x14, x29, #96
    add x15, x14, #8
    ldr x15, [x15]
    sub x19, x29, #80
    add x20, x19, #8
    ldr x20, [x20]
    cmp x15, x20
    b.ls L4_2
L4_1:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    ldr x23, [sp, #72]
    ldr x24, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_4:
    b L4_3
L4_2:
L4_3:
    ldr x22, [x19]
    sub x23, x20, x15
    add x21, x20, #1
    cmp x23, x21
    b.lo 1f
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x20, x21
    b.lo 1f
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x23, x20
    b.ls L4_5
L4_6:
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
L4_5:
    add x19, x22, x23
    sub x21, x20, x23
    sub x24, x29, #112
    str x19, [x24]
    add x24, x24, #8
    str x21, [x24]
    sub x24, x29, #128
    str x19, [x24]
    add x24, x24, #8
    str x21, [x24]
    cmp x15, x21
    cset w24, eq
    cbnz w24, L4_7
    b L4_10
L4_10:
    mov w14, w24
    b L4_8
L4_7:
    ldr x15, [x14]
    mov x0, x19
    mov x1, x15
    mov x2, x21
    bl _memcmp
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
L4_8:
    and w15, w14, #255
    and w15, w15, #255
    mov x9, x15
    mov x0, x9
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    ldr x23, [sp, #72]
    ldr x24, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_9:
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_debug_prompt
_lb_debug_prompt:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #5152
    sub sp, sp, x16
    str x19, [sp, #5128]
    str x20, [sp, #5120]
    str x21, [sp, #5112]
    str x22, [sp, #5104]
    str x23, [sp, #5096]
    str x24, [sp, #5088]
    str x25, [sp, #5080]
    str x26, [sp, #5072]
    str x27, [sp, #5064]
    str x28, [sp, #5056]
    sub x16, x29, #112
    str x0, [x16]
    sub x9, x29, #128
    str x9, [sp, #168]
    sub x9, x29, #1641
    str x9, [sp, #544]
    adrp x9, _lb_debug_10line_bytes@PAGE
    add x9, x9, _lb_debug_10line_bytes@PAGEOFF
    str x9, [sp, #520]
    adrp x9, _lb_debug_10line_bytes@PAGE
    add x9, x9, _lb_debug_10line_bytes@PAGEOFF
    str x9, [sp, #160]
    sub x9, x29, #1688
    str x9, [sp, #512]
    ldr x9, [sp, #512]
    add x9, x9, #8
    str x9, [sp, #504]
    sub x9, x29, #1704
    str x9, [sp, #496]
    ldr x9, [sp, #496]
    add x9, x9, #8
    str x9, [sp, #488]
    sub x9, x29, #1728
    str x9, [sp, #480]
    ldr x9, [sp, #480]
    add x9, x9, #16
    str x9, [sp, #472]
    sub x9, x29, #1640
    str x9, [sp, #464]
    sub x9, x29, #1672
    str x9, [sp, #536]
    sub x9, x29, #1640
    str x9, [sp, #528]
    sub x9, x29, #152
    str x9, [sp, #152]
    ldr x9, [sp, #152]
    add x9, x9, #16
    str x9, [sp, #976]
    sub x9, x29, #168
    str x9, [sp, #968]
    sub x9, x29, #184
    str x9, [sp, #144]
    sub x14, x29, #1760
    sub x9, x29, #1776
    str x9, [sp, #456]
    ldr x9, [sp, #456]
    add x9, x9, #8
    str x9, [sp, #448]
    sub x9, x29, #1792
    str x9, [sp, #440]
    ldr x9, [sp, #440]
    add x9, x9, #8
    str x9, [sp, #432]
    sub x9, x29, #1744
    str x9, [sp, #424]
    sub x9, x29, #200
    str x9, [sp, #960]
    sub x9, x29, #216
    str x9, [sp, #136]
    sub x9, x29, #232
    str x9, [sp, #952]
    ldr x9, [sp, #952]
    add x9, x9, #8
    str x9, [sp, #944]
    sub x9, x29, #248
    str x9, [sp, #936]
    ldr x9, [sp, #936]
    add x9, x9, #8
    str x9, [sp, #928]
    sub x14, x29, #1824
    sub x9, x29, #1840
    str x9, [sp, #416]
    ldr x9, [sp, #416]
    add x9, x9, #8
    str x9, [sp, #408]
    sub x9, x29, #1856
    str x9, [sp, #400]
    ldr x9, [sp, #400]
    add x9, x9, #8
    str x9, [sp, #392]
    sub x9, x29, #1808
    str x9, [sp, #384]
    sub x9, x29, #264
    str x9, [sp, #920]
    adrp x9, l_text_16@PAGE
    add x9, x9, l_text_16@PAGEOFF
    str x9, [sp, #912]
    sub x9, x29, #280
    str x9, [sp, #128]
    ldr x9, [sp, #128]
    add x9, x9, #8
    str x9, [sp, #904]
    adrp x9, l_text_17@PAGE
    add x9, x9, l_text_17@PAGEOFF
    str x9, [sp, #896]
    sub x9, x29, #296
    str x9, [sp, #120]
    ldr x9, [sp, #120]
    add x9, x9, #8
    str x9, [sp, #888]
    adrp x9, l_text_18@PAGE
    add x9, x9, l_text_18@PAGEOFF
    str x9, [sp, #880]
    sub x9, x29, #312
    str x9, [sp, #112]
    ldr x9, [sp, #112]
    add x9, x9, #8
    str x9, [sp, #872]
    adrp x9, l_text_19@PAGE
    add x9, x9, l_text_19@PAGEOFF
    str x9, [sp, #864]
    sub x9, x29, #328
    str x9, [sp, #104]
    ldr x9, [sp, #104]
    add x9, x9, #8
    str x9, [sp, #856]
    adrp x9, l_text_20@PAGE
    add x9, x9, l_text_20@PAGEOFF
    str x9, [sp, #848]
    sub x9, x29, #344
    str x9, [sp, #96]
    ldr x9, [sp, #96]
    add x9, x9, #8
    str x9, [sp, #840]
    adrp x9, l_text_21@PAGE
    add x9, x9, l_text_21@PAGEOFF
    str x9, [sp, #832]
    sub x9, x29, #360
    str x9, [sp, #88]
    ldr x9, [sp, #88]
    add x9, x9, #8
    str x9, [sp, #824]
    adrp x9, l_text_22@PAGE
    add x9, x9, l_text_22@PAGEOFF
    str x9, [sp, #816]
    sub x9, x29, #376
    str x9, [sp, #80]
    ldr x9, [sp, #80]
    add x9, x9, #8
    str x9, [sp, #808]
    adrp x9, l_text_23@PAGE
    add x9, x9, l_text_23@PAGEOFF
    str x9, [sp, #800]
    sub x9, x29, #392
    str x9, [sp, #72]
    ldr x9, [sp, #72]
    add x9, x9, #8
    str x9, [sp, #792]
    adrp x9, l_text_24@PAGE
    add x9, x9, l_text_24@PAGEOFF
    str x9, [sp, #784]
    sub x9, x29, #408
    str x9, [sp, #64]
    ldr x9, [sp, #64]
    add x9, x9, #8
    str x9, [sp, #776]
    adrp x9, l_text_25@PAGE
    add x9, x9, l_text_25@PAGEOFF
    str x9, [sp, #768]
    sub x9, x29, #424
    str x9, [sp, #56]
    ldr x9, [sp, #56]
    add x9, x9, #8
    str x9, [sp, #760]
    adrp x9, l_text_25@PAGE
    add x9, x9, l_text_25@PAGEOFF
    str x9, [sp, #752]
    sub x9, x29, #440
    str x9, [sp, #744]
    ldr x9, [sp, #744]
    add x9, x9, #8
    str x9, [sp, #736]
    adrp x9, l_text_26@PAGE
    add x9, x9, l_text_26@PAGEOFF
    str x9, [sp, #728]
    sub x9, x29, #456
    str x9, [sp, #48]
    ldr x9, [sp, #48]
    add x9, x9, #8
    str x9, [sp, #720]
    adrp x9, l_text_27@PAGE
    add x9, x9, l_text_27@PAGEOFF
    str x9, [sp, #712]
    sub x9, x29, #472
    str x9, [sp, #40]
    ldr x9, [sp, #40]
    add x9, x9, #8
    str x9, [sp, #704]
    adrp x9, l_text_28@PAGE
    add x9, x9, l_text_28@PAGEOFF
    str x9, [sp, #696]
    sub x9, x29, #488
    str x9, [sp, #32]
    ldr x9, [sp, #32]
    add x9, x9, #8
    str x9, [sp, #688]
    adrp x9, l_text_29@PAGE
    add x9, x9, l_text_29@PAGEOFF
    str x9, [sp, #680]
    sub x9, x29, #504
    str x9, [sp, #24]
    ldr x9, [sp, #24]
    add x9, x9, #8
    str x9, [sp, #672]
    adrp x9, l_text_30@PAGE
    add x9, x9, l_text_30@PAGEOFF
    str x9, [sp, #656]
    sub x9, x29, #520
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    add x9, x9, #8
    str x9, [sp, #648]
    adrp x9, l_text_31@PAGE
    add x9, x9, l_text_31@PAGEOFF
    str x9, [sp, #632]
    sub x9, x29, #536
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x9, x9, #8
    str x9, [sp, #624]
    adrp x9, l_text_32@PAGE
    add x9, x9, l_text_32@PAGEOFF
    str x9, [sp, #616]
    sub x9, x29, #552
    str x9, [sp, #0]
    ldr x9, [sp, #0]
    add x9, x9, #8
    str x9, [sp, #608]
    sub x9, x29, #1576
    str x9, [sp, #600]
    sub x9, x29, #1600
    str x9, [sp, #592]
    ldr x9, [sp, #592]
    add x9, x9, #8
    str x9, [sp, #584]
    ldr x9, [sp, #592]
    add x9, x9, #16
    str x9, [sp, #576]
    adrp x9, l_text_33@PAGE
    add x9, x9, l_text_33@PAGEOFF
    str x9, [sp, #568]
    adrp x9, l_text_34@PAGE
    add x9, x9, l_text_34@PAGEOFF
    str x9, [sp, #560]
    sub x9, x29, #1616
    str x9, [sp, #552]
    adrp x9, _lb_debug_depth@PAGE
    add x9, x9, _lb_debug_depth@PAGEOFF
    str x9, [sp, #272]
    sub x9, x29, #3104
    str x9, [sp, #264]
    adrp x9, _lb_debug_activations@PAGE
    add x9, x9, _lb_debug_activations@PAGEOFF
    str x9, [sp, #256]
    movz x16, #4128
    sub x9, x29, x16
    str x9, [sp, #248]
    movz x16, #4152
    sub x9, x29, x16
    str x9, [sp, #240]
    ldr x9, [sp, #240]
    add x9, x9, #8
    str x9, [sp, #232]
    ldr x9, [sp, #240]
    add x9, x9, #16
    str x9, [sp, #224]
    adrp x9, l_text_54@PAGE
    add x9, x9, l_text_54@PAGEOFF
    str x9, [sp, #216]
    adrp x9, l_text_55@PAGE
    add x9, x9, l_text_55@PAGEOFF
    str x9, [sp, #208]
    adrp x9, l_text_48@PAGE
    add x9, x9, l_text_48@PAGEOFF
    str x9, [sp, #200]
    adrp x9, l_text_7@PAGE
    add x9, x9, l_text_7@PAGEOFF
    str x9, [sp, #192]
    ldr x9, [sp, #264]
    add x9, x9, #16
    str x9, [sp, #184]
    movz x16, #4168
    sub x9, x29, x16
    str x9, [sp, #176]
    sub x9, x29, #112
    str x9, [sp, #640]
    sub x22, x29, #3048
    adrp x9, _lb_debug_activations@PAGE
    add x9, x9, _lb_debug_activations@PAGEOFF
    str x9, [sp, #288]
    add x9, x22, #8
    str x9, [sp, #280]
    sub x9, x29, #112
    str x9, [sp, #664]
    sub x28, x29, #1912
    adrp x9, _lb_debug_activations@PAGE
    add x9, x9, _lb_debug_activations@PAGEOFF
    str x9, [sp, #376]
    sub x20, x29, #1888
    add x9, x20, #8
    str x9, [sp, #368]
    sub x9, x29, #2936
    str x9, [sp, #352]
    sub x9, x29, #2960
    str x9, [sp, #344]
    ldr x9, [sp, #344]
    add x9, x9, #8
    str x9, [sp, #336]
    ldr x9, [sp, #344]
    add x9, x9, #16
    str x9, [sp, #328]
    adrp x9, l_text_61@PAGE
    add x9, x9, l_text_61@PAGEOFF
    str x9, [sp, #320]
    sub x24, x29, #1888
    add x9, x24, #8
    str x9, [sp, #312]
    adrp x9, l_text_62@PAGE
    add x9, x9, l_text_62@PAGEOFF
    str x9, [sp, #304]
    sub x9, x29, #2976
    str x9, [sp, #296]
    add x9, x28, #8
    str x9, [sp, #360]
L5_1:
L5_2:
    mov x9, #0
    mov x19, x9
L5_93:
    movz x10, #512
    cmp x19, x10
    b.hs L5_95
L5_94:
    ldr x11, [sp, #544]
    strb wzr, [x11, #0]
    mov x0, #0
    ldr x1, [sp, #544]
    movz x2, #1
    bl _read
    mov x14, x0
    mov x10, #0
    cmp x14, x10
    b.gt L5_97
L5_96:
    mov x10, #0
    cmp x19, x10
    b.ne L5_100
L5_99:
    ldr x11, [sp, #536]
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    ldr x10, [sp, #536]
    ldr x11, [sp, #528]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr x10, [sp, #528]
    sub x11, x29, #152
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    mov x9, #0
    mov x19, x9
    mov x9, #0
    mov x21, x9
    b L5_111
L5_100:
L5_101:
    b L5_95
L5_97:
L5_98:
    ldr x9, [sp, #544]
    ldrb w14, [x9]
    movz x10, #10
    cmp w14, w10
    b.ne L5_105
L5_104:
    b L5_95
L5_105:
L5_106:
    ldr x9, [sp, #520]
    add x15, x9, x19
    strb w14, [x15]
    add x15, x19, #1
    mov x19, x15
    b L5_93
L5_95:
    movz x10, #513
    cmp x19, x10
    b.lo 1f
    adrp x0, l_text_111@PAGE
    add x0, x0, l_text_111@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x19
    b.ls L5_108
L5_109:
    adrp x0, l_text_111@PAGE
    add x0, x0, l_text_111@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
L5_108:
    ldr x9, [sp, #160]
    ldr x10, [sp, #512]
    str x9, [x10]
    ldr x10, [sp, #504]
    str x19, [x10]
    ldr x9, [sp, #160]
    ldr x10, [sp, #496]
    str x9, [x10]
    ldr x10, [sp, #488]
    str x19, [x10]
    ldr x10, [sp, #496]
    ldr x11, [sp, #480]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    movz x9, #1
    ldr x10, [sp, #472]
    strb w9, [x10]
    ldr x10, [sp, #480]
    ldr x11, [sp, #464]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr x10, [sp, #464]
    sub x11, x29, #152
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr x9, [sp, #160]
    mov x21, x9
L5_111:
    ldr x9, [sp, #976]
    ldrb w14, [x9]
    cbnz w14, L5_4
    b L5_5
L5_4:
    ldr x10, [sp, #152]
    ldr x11, [sp, #968]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L5_6
L5_5:
    ldr x19, [sp, #5128]
    ldr x20, [sp, #5120]
    ldr x21, [sp, #5112]
    ldr x22, [sp, #5104]
    ldr x23, [sp, #5096]
    ldr x24, [sp, #5088]
    ldr x25, [sp, #5080]
    ldr x26, [sp, #5072]
    ldr x27, [sp, #5064]
    ldr x28, [sp, #5056]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_6:
    ldr x10, [sp, #968]
    ldr x11, [sp, #168]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x10, [sp, #168]
    sub x11, x29, #1760
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, #0
    mov x23, x9
L5_112:
    cmp x23, x19
    cset w14, lo
    cbnz w14, L5_115
    b L5_171
L5_171:
    mov w15, w14
    b L5_116
L5_115:
    add x14, x23, x21
    ldrb w14, [x14]
    movz x10, #32
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L5_116:
    and w14, w15, #255
    cbnz w14, L5_113
    b L5_114
L5_113:
    mov x9, x23
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_100@PAGE
    add x0, x0, l_text_100@PAGEOFF
    adrp x1, l_text_50@PAGE
    add x1, x1, l_text_50@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x23, x14
    b L5_112
L5_114:
    add x25, x19, #1
    mov x9, #0
    cmp x9, x25
    b.lo 1f
    adrp x0, l_text_101@PAGE
    add x0, x0, l_text_101@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x23, x25
    b.lo 1f
    adrp x0, l_text_101@PAGE
    add x0, x0, l_text_101@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x23
    b.ls L5_117
L5_118:
    adrp x0, l_text_101@PAGE
    add x0, x0, l_text_101@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
L5_117:
    ldr x10, [sp, #456]
    str x21, [x10]
    ldr x10, [sp, #448]
    str x23, [x10]
    ldr x10, [sp, #440]
    str x21, [x10]
    ldr x10, [sp, #432]
    str x23, [x10]
    ldr x10, [sp, #440]
    ldr x11, [sp, #424]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x10, [sp, #424]
    sub x11, x29, #200
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L5_120:
    ldr x10, [sp, #960]
    ldr x11, [sp, #144]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    cmp x19, x25
    b.lo 1f
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x23, x19
    b.ls L5_8
L5_9:
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
L5_8:
    add x25, x23, x21
    sub x26, x19, x23
    ldr x10, [sp, #952]
    str x25, [x10]
    ldr x10, [sp, #944]
    str x26, [x10]
    ldr x10, [sp, #936]
    str x25, [x10]
    ldr x10, [sp, #928]
    str x26, [x10]
    ldr x10, [sp, #936]
    sub x11, x29, #1824
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, #0
    mov x14, x9
L5_121:
    cmp x14, x26
    cset w15, lo
    cbnz w15, L5_124
    b L5_172
L5_172:
    mov w19, w15
    b L5_125
L5_124:
    add x15, x25, x14
    ldrb w15, [x15]
    movz x10, #32
    cmp w15, w10
    cset w19, eq
L5_125:
    and w15, w19, #255
    cbnz w15, L5_122
    b L5_123
L5_122:
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_103@PAGE
    add x0, x0, l_text_103@PAGEOFF
    adrp x1, l_text_50@PAGE
    add x1, x1, l_text_50@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    mov x14, x15
    b L5_121
L5_123:
    mov x15, x26
L5_126:
    cmp x15, x14
    cset w19, hi
    cbnz w19, L5_129
    b L5_173
L5_173:
    mov w27, w19
    b L5_130
L5_129:
    mov x9, x15
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_104@PAGE
    add x0, x0, l_text_104@PAGEOFF
    adrp x1, l_text_50@PAGE
    add x1, x1, l_text_50@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x19, x9
    cmp x19, x26
    b.lo 1f
    adrp x0, l_text_104@PAGE
    add x0, x0, l_text_104@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x19, x25, x19
    ldrb w27, [x19]
    movz x10, #32
    cmp w27, w10
    cset w27, eq
    cbnz w27, L5_174
    b L5_131
L5_174:
    mov w19, w27
    b L5_132
L5_131:
    ldrb w27, [x19]
    movz x10, #13
    cmp w27, w10
    cset w27, eq
    mov w19, w27
L5_132:
    and w27, w19, #255
L5_130:
    and w19, w27, #255
    cbnz w19, L5_127
    b L5_128
L5_127:
    mov x9, x15
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_105@PAGE
    add x0, x0, l_text_105@PAGEOFF
    adrp x1, l_text_50@PAGE
    add x1, x1, l_text_50@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x19, x9
    mov x15, x19
    b L5_126
L5_128:
    add x19, x26, #1
    cmp x14, x19
    b.lo 1f
    adrp x0, l_text_106@PAGE
    add x0, x0, l_text_106@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x15, x19
    b.lo 1f
    adrp x0, l_text_106@PAGE
    add x0, x0, l_text_106@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x14, x15
    b.ls L5_133
L5_134:
    adrp x0, l_text_106@PAGE
    add x0, x0, l_text_106@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
L5_133:
    add x19, x25, x14
    sub x26, x15, x14
    ldr x10, [sp, #416]
    str x19, [x10]
    ldr x10, [sp, #408]
    str x26, [x10]
    ldr x10, [sp, #400]
    str x19, [x10]
    ldr x10, [sp, #392]
    str x26, [x10]
    ldr x10, [sp, #400]
    ldr x11, [sp, #384]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x10, [sp, #384]
    sub x11, x29, #264
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L5_136:
    ldr x10, [sp, #920]
    ldr x11, [sp, #136]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #912]
    ldr x10, [sp, #128]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #904]
    str x9, [x10]
    movz x10, #1
    cmp x23, x10
    cset w19, eq
    cbnz w19, L5_13
    b L5_175
L5_175:
    mov w14, w19
    b L5_14
L5_13:
    mov x0, x21
    ldr x1, [sp, #912]
    mov x2, x23
    bl _memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
L5_14:
    and w15, w14, #255
    cbnz w15, L5_176
    b L5_15
L5_176:
    mov w14, w15
    b L5_16
L5_15:
    ldr x9, [sp, #896]
    ldr x10, [sp, #120]
    str x9, [x10]
    movz x9, #3
    ldr x10, [sp, #888]
    str x9, [x10]
    movz x10, #3
    cmp x23, x10
    cset w14, eq
    cbnz w14, L5_17
    b L5_177
L5_177:
    mov w15, w14
    b L5_18
L5_17:
    mov x0, x21
    ldr x1, [sp, #896]
    mov x2, x23
    bl _memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L5_18:
    and w14, w15, #255
L5_16:
    and w15, w14, #255
    cbnz w15, L5_178
    b L5_19
L5_178:
    mov w14, w15
    b L5_20
L5_19:
    ldr x9, [sp, #880]
    ldr x10, [sp, #112]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #872]
    str x9, [x10]
    cbnz w19, L5_21
    b L5_179
L5_179:
    mov w14, w19
    b L5_22
L5_21:
    mov x0, x21
    ldr x1, [sp, #880]
    mov x2, x23
    bl _memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
L5_22:
    and w15, w14, #255
    mov w14, w15
L5_20:
    and w15, w14, #255
    cbnz w15, L5_180
    b L5_23
L5_180:
    mov w14, w15
    b L5_24
L5_23:
    ldr x9, [sp, #864]
    ldr x10, [sp, #104]
    str x9, [x10]
    movz x9, #8
    ldr x10, [sp, #856]
    str x9, [x10]
    movz x10, #8
    cmp x23, x10
    cset w14, eq
    cbnz w14, L5_25
    b L5_181
L5_181:
    mov w15, w14
    b L5_26
L5_25:
    mov x0, x21
    ldr x1, [sp, #864]
    mov x2, x23
    bl _memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L5_26:
    and w14, w15, #255
L5_24:
    and w15, w14, #255
    cbnz w15, L5_10
    b L5_11
L5_10:
    ldr x19, [sp, #5128]
    ldr x20, [sp, #5120]
    ldr x21, [sp, #5112]
    ldr x22, [sp, #5104]
    ldr x23, [sp, #5096]
    ldr x24, [sp, #5088]
    ldr x25, [sp, #5080]
    ldr x26, [sp, #5072]
    ldr x27, [sp, #5064]
    ldr x28, [sp, #5056]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_11:
L5_12:
    ldr x9, [sp, #848]
    ldr x10, [sp, #96]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #840]
    str x9, [x10]
    cbnz w19, L5_31
    b L5_182
L5_182:
    mov w14, w19
    b L5_32
L5_31:
    mov x0, x21
    ldr x1, [sp, #848]
    mov x2, x23
    bl _memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
L5_32:
    and w15, w14, #255
    cbnz w15, L5_183
    b L5_33
L5_183:
    mov w14, w15
    b L5_34
L5_33:
    ldr x9, [sp, #832]
    ldr x10, [sp, #88]
    str x9, [x10]
    movz x9, #4
    ldr x10, [sp, #824]
    str x9, [x10]
    movz x10, #4
    cmp x23, x10
    cset w14, eq
    cbnz w14, L5_35
    b L5_184
L5_184:
    mov w15, w14
    b L5_36
L5_35:
    mov x0, x21
    ldr x1, [sp, #832]
    mov x2, x23
    bl _memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L5_36:
    and w14, w15, #255
L5_34:
    and w15, w14, #255
    cbnz w15, L5_28
    b L5_29
L5_28:
    adrp x14, _lb_debug_stepping@PAGE
    add x14, x14, _lb_debug_stepping@PAGEOFF
    movz x9, #1
    strb w9, [x14]
    ldr x19, [sp, #5128]
    ldr x20, [sp, #5120]
    ldr x21, [sp, #5112]
    ldr x22, [sp, #5104]
    ldr x23, [sp, #5096]
    ldr x24, [sp, #5088]
    ldr x25, [sp, #5080]
    ldr x26, [sp, #5072]
    ldr x27, [sp, #5064]
    ldr x28, [sp, #5056]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_29:
L5_30:
    ldr x9, [sp, #816]
    ldr x10, [sp, #80]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #808]
    str x9, [x10]
    cbnz w19, L5_41
    b L5_185
L5_185:
    mov w14, w19
    b L5_42
L5_41:
    mov x0, x21
    ldr x1, [sp, #816]
    mov x2, x23
    bl _memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
L5_42:
    and w15, w14, #255
    cbnz w15, L5_186
    b L5_43
L5_186:
    mov w14, w15
    b L5_44
L5_43:
    ldr x9, [sp, #800]
    ldr x10, [sp, #72]
    str x9, [x10]
    movz x9, #4
    ldr x10, [sp, #792]
    str x9, [x10]
    movz x10, #4
    cmp x23, x10
    cset w14, eq
    cbnz w14, L5_45
    b L5_187
L5_187:
    mov w15, w14
    b L5_46
L5_45:
    mov x0, x21
    ldr x1, [sp, #800]
    mov x2, x23
    bl _memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L5_46:
    and w14, w15, #255
L5_44:
    and w15, w14, #255
    cbnz w15, L5_38
    b L5_39
L5_38:
    adrp x14, _lb_debug_9step_over@PAGE
    add x14, x14, _lb_debug_9step_over@PAGEOFF
    adrp x15, _lb_debug_depth@PAGE
    add x15, x15, _lb_debug_depth@PAGEOFF
    ldr x15, [x15]
    str x15, [x14]
    ldr x19, [sp, #5128]
    ldr x20, [sp, #5120]
    ldr x21, [sp, #5112]
    ldr x22, [sp, #5104]
    ldr x23, [sp, #5096]
    ldr x24, [sp, #5088]
    ldr x25, [sp, #5080]
    ldr x26, [sp, #5072]
    ldr x27, [sp, #5064]
    ldr x28, [sp, #5056]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_39:
L5_40:
    ldr x9, [sp, #784]
    ldr x10, [sp, #64]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #776]
    str x9, [x10]
    cbnz w19, L5_51
    b L5_188
L5_188:
    mov w14, w19
    b L5_52
L5_51:
    mov x0, x21
    ldr x1, [sp, #784]
    mov x2, x23
    bl _memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
L5_52:
    and w15, w14, #255
    cbnz w15, L5_189
    b L5_53
L5_189:
    mov w14, w15
    b L5_54
L5_53:
    ldr x9, [sp, #768]
    ldr x10, [sp, #56]
    str x9, [x10]
    movz x9, #4
    ldr x10, [sp, #760]
    str x9, [x10]
    movz x10, #4
    cmp x23, x10
    cset w14, eq
    cbnz w14, L5_55
    b L5_190
L5_190:
    mov w15, w14
    b L5_56
L5_55:
    mov x0, x21
    ldr x1, [sp, #768]
    mov x2, x23
    bl _memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L5_56:
    and w14, w15, #255
L5_54:
    and w15, w14, #255
    cbnz w15, L5_48
    b L5_49
L5_48:
    ldr x9, [sp, #752]
    ldr x10, [sp, #744]
    str x9, [x10]
    movz x9, #4
    ldr x10, [sp, #736]
    str x9, [x10]
    ldr x9, [sp, #744]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_core_9print_str
    mov x0, #0
    bl _exit
    b L5_50
L5_49:
L5_50:
    ldr x9, [sp, #728]
    ldr x10, [sp, #48]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #720]
    str x9, [x10]
    cbnz w19, L5_60
    b L5_191
L5_191:
    mov w14, w19
    b L5_61
L5_60:
    mov x0, x21
    ldr x1, [sp, #728]
    mov x2, x23
    bl _memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
L5_61:
    and w15, w14, #255
    cbnz w15, L5_192
    b L5_62
L5_192:
    mov w14, w15
    b L5_63
L5_62:
    ldr x9, [sp, #712]
    ldr x10, [sp, #40]
    str x9, [x10]
    movz x9, #5
    ldr x10, [sp, #704]
    str x9, [x10]
    movz x10, #5
    cmp x23, x10
    cset w14, eq
    cbnz w14, L5_64
    b L5_193
L5_193:
    mov w15, w14
    b L5_65
L5_64:
    mov x0, x21
    ldr x1, [sp, #712]
    mov x2, x23
    bl _memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L5_65:
    and w14, w15, #255
L5_63:
    and w15, w14, #255
    cbnz w15, L5_57
    b L5_58
L5_57:
    ldr x9, [sp, #136]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_debug_9add_break
    b L5_59
L5_58:
    ldr x9, [sp, #696]
    ldr x10, [sp, #32]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #688]
    str x9, [x10]
    cbnz w19, L5_69
    b L5_194
L5_194:
    mov w14, w19
    b L5_70
L5_69:
    mov x0, x21
    ldr x1, [sp, #696]
    mov x2, x23
    bl _memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
L5_70:
    and w15, w14, #255
    cbnz w15, L5_195
    b L5_71
L5_195:
    mov w14, w15
    b L5_72
L5_71:
    ldr x9, [sp, #680]
    ldr x10, [sp, #24]
    str x9, [x10]
    movz x9, #5
    ldr x10, [sp, #672]
    str x9, [x10]
    movz x10, #5
    cmp x23, x10
    cset w14, eq
    cbnz w14, L5_73
    b L5_196
L5_196:
    mov w15, w14
    b L5_74
L5_73:
    mov x0, x21
    ldr x1, [sp, #680]
    mov x2, x23
    bl _memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L5_74:
    and w14, w15, #255
L5_72:
    and w15, w14, #255
    cbnz w15, L5_66
    b L5_67
L5_66:
    ldr x9, [sp, #664]
    ldr x19, [x9]
    sub x10, x29, #1872
    str x19, [x10]
    ldr x10, [sp, #136]
    sub x11, x29, #1888
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    movz x10, #512
    cmp x19, x10
    b.lo 1f
    adrp x0, l_text_59@PAGE
    add x0, x0, l_text_59@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
1:
    movz x10, #24
    mul x14, x19, x10
    ldr x9, [sp, #376]
    add x14, x9, x14
    mov x10, x14
    mov x11, x28
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr x19, [x28]
    cbnz x19, L5_137
    b L5_138
L5_137:
    b L5_139
L5_138:
    b L5_152
L5_139:
    add x21, x19, #32
    mov x9, #0
    mov x23, x9
L5_141:
    ldr x14, [x21]
    cmp x23, x14
    b.hs L5_143
L5_142:
    sub x10, x29, #2992
    str x19, [x10]
    sub x10, x29, #3008
    str x23, [x10]
    mov x9, x19
    movz x10, #40
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_63@PAGE
    add x0, x0, l_text_63@PAGEOFF
    adrp x1, l_text_50@PAGE
    add x1, x1, l_text_50@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x23
    movz x10, #48
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_63@PAGE
    add x0, x0, l_text_63@PAGEOFF
    adrp x1, l_text_50@PAGE
    add x1, x1, l_text_50@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    mov x9, x14
    mov x10, x15
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_63@PAGE
    add x0, x0, l_text_63@PAGEOFF
    adrp x1, l_text_50@PAGE
    add x1, x1, l_text_50@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x25, x9
L5_151:
    add x14, x25, #8
    ldr x14, [x14]
    ldr x9, [sp, #368]
    ldr x15, [x9]
    cmp x14, x15
    cset w15, eq
    cbnz w15, L5_147
    b L5_197
L5_197:
    mov w14, w15
    b L5_148
L5_147:
    ldr x15, [x25]
    ldr x26, [x20]
    mov x0, x15
    mov x1, x26
    mov x2, x14
    bl _memcmp
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
L5_148:
    and w15, w14, #255
    cbnz w15, L5_144
    b L5_145
L5_144:
    ldr x9, [sp, #360]
    ldr x14, [x9]
    mov x0, x25
    mov x1, x14
    bl _lb_debug_show
    b L5_152
L5_145:
L5_146:
    add x14, x23, #1
    mov x23, x14
    b L5_141
L5_143:
    ldr x9, [sp, #352]
    ldr x10, [sp, #344]
    str x9, [x10]
    movz x9, #1024
    ldr x10, [sp, #336]
    str x9, [x10]
    mov x9, #0
    ldr x10, [sp, #328]
    str x9, [x10]
    ldr x0, [sp, #344]
    ldr x1, [sp, #320]
    movz x2, #16
    bl _lb_core_10format_put
    mov w14, w0
    ldr x14, [x24]
    ldr x9, [sp, #312]
    ldr x15, [x9]
    ldr x0, [sp, #344]
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    ldr x0, [sp, #344]
    ldr x1, [sp, #304]
    movz x2, #1
    bl _lb_core_10format_put
    mov w14, w0
    ldr x0, [sp, #344]
    bl _lb_core_13format_finish
    sub x16, x29, #2976
    str x0, [x16, #0]
    str x1, [x16, #8]
    ldr x9, [sp, #296]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_core_9print_str
L5_152:
    b L5_68
L5_67:
    ldr x9, [sp, #656]
    ldr x10, [sp, #16]
    str x9, [x10]
    movz x9, #6
    ldr x10, [sp, #648]
    str x9, [x10]
    movz x10, #6
    cmp x23, x10
    cset w14, eq
    cbnz w14, L5_78
    b L5_198
L5_198:
    mov w15, w14
    b L5_79
L5_78:
    mov x0, x21
    ldr x1, [sp, #656]
    mov x2, x23
    bl _memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L5_79:
    and w14, w15, #255
    cbnz w14, L5_75
    b L5_76
L5_75:
    ldr x9, [sp, #640]
    ldr x14, [x9]
    sub x10, x29, #3024
    str x14, [x10]
    movz x10, #512
    cmp x14, x10
    b.lo 1f
    adrp x0, l_text_57@PAGE
    add x0, x0, l_text_57@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
1:
    movz x10, #24
    mul x14, x14, x10
    ldr x9, [sp, #288]
    add x14, x9, x14
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr x19, [x22]
    cbnz x19, L5_153
    b L5_154
L5_153:
    b L5_155
L5_154:
    b L5_162
L5_155:
    add x21, x19, #32
    mov x9, #0
    mov x23, x9
L5_157:
    ldr x14, [x21]
    cmp x23, x14
    b.hs L5_159
L5_158:
    sub x10, x29, #3064
    str x19, [x10]
    sub x10, x29, #3080
    str x23, [x10]
    mov x9, x19
    movz x10, #40
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_63@PAGE
    add x0, x0, l_text_63@PAGEOFF
    adrp x1, l_text_50@PAGE
    add x1, x1, l_text_50@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x23
    movz x10, #48
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_63@PAGE
    add x0, x0, l_text_63@PAGEOFF
    adrp x1, l_text_50@PAGE
    add x1, x1, l_text_50@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    mov x9, x14
    mov x10, x15
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_63@PAGE
    add x0, x0, l_text_63@PAGEOFF
    adrp x1, l_text_50@PAGE
    add x1, x1, l_text_50@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
L5_161:
    ldr x9, [sp, #280]
    ldr x15, [x9]
    mov x0, x14
    mov x1, x15
    bl _lb_debug_show
    add x15, x23, #1
    mov x23, x15
    b L5_157
L5_159:
L5_162:
    b L5_77
L5_76:
    ldr x9, [sp, #632]
    ldr x10, [sp, #8]
    str x9, [x10]
    movz x9, #2
    ldr x10, [sp, #624]
    str x9, [x10]
    movz x10, #2
    cmp x23, x10
    cset w14, eq
    cbnz w14, L5_83
    b L5_199
L5_199:
    mov w15, w14
    b L5_84
L5_83:
    mov x0, x21
    ldr x1, [sp, #632]
    mov x2, x23
    bl _memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L5_84:
    and w14, w15, #255
    cbnz w14, L5_200
    b L5_85
L5_200:
    mov w15, w14
    b L5_86
L5_85:
    ldr x9, [sp, #616]
    ldr x10, [sp, #0]
    str x9, [x10]
    movz x9, #9
    ldr x10, [sp, #608]
    str x9, [x10]
    movz x10, #9
    cmp x23, x10
    cset w14, eq
    cbnz w14, L5_87
    b L5_201
L5_201:
    mov w15, w14
    b L5_88
L5_87:
    mov x0, x21
    ldr x1, [sp, #616]
    mov x2, x23
    bl _memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L5_88:
    and w14, w15, #255
    mov w15, w14
L5_86:
    and w14, w15, #255
    cbnz w14, L5_80
    b L5_81
L5_80:
    ldr x9, [sp, #272]
    ldr x14, [x9]
    mov x9, #0
    mov x19, x9
L5_163:
    mov x10, #0
    cmp x14, x10
    b.ls L5_165
L5_164:
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_52@PAGE
    add x0, x0, l_text_52@PAGEOFF
    adrp x1, l_text_50@PAGE
    add x1, x1, l_text_50@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    movz x10, #512
    cmp x21, x10
    b.lo 1f
    adrp x0, l_text_53@PAGE
    add x0, x0, l_text_53@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
1:
    movz x10, #24
    mul x15, x21, x10
    ldr x9, [sp, #256]
    add x15, x9, x15
    mov x10, x15
    ldr x11, [sp, #264]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr x9, [sp, #264]
    ldr x23, [x9]
    cbnz x23, L5_169
    b L5_167
L5_169:
L5_166:
    ldr x9, [sp, #248]
    ldr x10, [sp, #240]
    str x9, [x10]
    movz x9, #1024
    ldr x10, [sp, #232]
    str x9, [x10]
    mov x9, #0
    ldr x10, [sp, #224]
    str x9, [x10]
    ldr x0, [sp, #240]
    ldr x1, [sp, #216]
    movz x2, #1
    bl _lb_core_10format_put
    mov w14, w0
    ldr x0, [sp, #240]
    mov x1, x19
    bl _lb_core_10format_u64
    mov w14, w0
    ldr x0, [sp, #240]
    ldr x1, [sp, #208]
    movz x2, #1
    bl _lb_core_10format_put
    mov w14, w0
    ldr x14, [x23]
    add x15, x23, #8
    ldr x15, [x15]
    ldr x0, [sp, #240]
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    ldr x0, [sp, #240]
    ldr x1, [sp, #200]
    movz x2, #4
    bl _lb_core_10format_put
    mov w14, w0
    add x14, x23, #16
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    ldr x0, [sp, #240]
    mov x1, x15
    mov x2, x14
    bl _lb_core_10format_put
    mov w14, w0
    ldr x0, [sp, #240]
    ldr x1, [sp, #192]
    movz x2, #1
    bl _lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #184]
    ldr w14, [x9]
    mov w14, w14
    ldr x0, [sp, #240]
    mov x1, x14
    bl _lb_core_10format_u64
    mov w14, w0
    ldr x0, [sp, #240]
    bl _lb_core_13format_finish
    movz x16, #4168
    sub x16, x29, x16
    str x0, [x16, #0]
    str x1, [x16, #8]
    ldr x9, [sp, #176]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_core_9print_str
    b L5_168
L5_167:
L5_168:
    mov x9, x19
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_56@PAGE
    add x0, x0, l_text_56@PAGEOFF
    adrp x1, l_text_50@PAGE
    add x1, x1, l_text_50@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    mov x14, x21
    mov x19, x15
    b L5_163
L5_165:
L5_170:
    b L5_82
L5_81:
    mov x10, #0
    cmp x23, x10
    b.ne L5_90
L5_89:
    b L5_1
L5_90:
    ldr x9, [sp, #600]
    ldr x10, [sp, #592]
    str x9, [x10]
    movz x9, #1024
    ldr x10, [sp, #584]
    str x9, [x10]
    mov x9, #0
    ldr x10, [sp, #576]
    str x9, [x10]
    ldr x0, [sp, #592]
    ldr x1, [sp, #568]
    movz x2, #17
    bl _lb_core_10format_put
    mov w14, w0
    ldr x0, [sp, #592]
    mov x1, x21
    mov x2, x23
    bl _lb_core_10format_put
    mov w14, w0
    ldr x0, [sp, #592]
    ldr x1, [sp, #560]
    movz x2, #82
    bl _lb_core_10format_put
    mov w14, w0
    ldr x0, [sp, #592]
    bl _lb_core_13format_finish
    sub x16, x29, #1616
    str x0, [x16, #0]
    str x1, [x16, #8]
    ldr x9, [sp, #552]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_core_9print_str
L5_91:
L5_82:
L5_77:
L5_68:
L5_59:
    b L5_1

    .p2align 2
    .globl _lb_debug_9add_break
_lb_debug_9add_break:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1408
    str x19, [sp, #1384]
    str x20, [sp, #1376]
    str x21, [sp, #1368]
    str x22, [sp, #1360]
    str x23, [sp, #1352]
    str x24, [sp, #1344]
    str x25, [sp, #1336]
    str x26, [sp, #1328]
    str x27, [sp, #1320]
    str x28, [sp, #1312]
    sub x16, x29, #112
    str x0, [x16]
    str x1, [x16, #8]
    sub x14, x29, #112
    add x15, x14, #8
    ldr x19, [x15]
    ldr x15, [x14]
    mov x20, x19
L6_1:
    mov x10, #0
    cmp x20, x10
    b.hi L6_2
L6_42:
    mov x20, x19
    b L6_3
L6_2:
    mov x9, x20
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_50@PAGE
    add x1, x1, l_text_50@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    cmp x21, x19
    b.lo 1f
    adrp x0, l_text_36@PAGE
    add x0, x0, l_text_36@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x22, x21, x15
    ldrb w22, [x22]
    movz x10, #58
    cmp w22, w10
    b.ne L6_5
L6_4:
    mov x20, x21
    b L6_3
L6_7:
    b L6_6
L6_5:
L6_6:
    mov x20, x21
    b L6_1
L6_3:
    cmp x19, x20
    b.ne L6_9
L6_8:
    adrp x14, l_text_37@PAGE
    add x14, x14, l_text_37@PAGEOFF
    sub x15, x29, #128
    str x14, [x15]
    add x14, x15, #8
    movz x9, #21
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_core_9print_str
    ldr x19, [sp, #1384]
    ldr x20, [sp, #1376]
    ldr x21, [sp, #1368]
    ldr x22, [sp, #1360]
    ldr x23, [sp, #1352]
    ldr x24, [sp, #1344]
    ldr x25, [sp, #1336]
    ldr x26, [sp, #1328]
    ldr x27, [sp, #1320]
    ldr x28, [sp, #1312]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_11:
    b L6_10
L6_9:
L6_10:
    sub x22, x29, #144
    ldr x23, [x14]
    add x21, x19, #1
    mov x9, #0
    cmp x9, x21
    b.lo 1f
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x20, x21
    b.lo 1f
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x20
    b.ls L6_12
L6_13:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
L6_12:
    sub x14, x29, #160
    str x23, [x14]
    add x14, x14, #8
    str x20, [x14]
    sub x14, x29, #176
    str x23, [x14]
    add x15, x14, #8
    str x20, [x15]
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x15, x20, #1
    cmp x15, x21
    b.lo 1f
    adrp x0, l_text_39@PAGE
    add x0, x0, l_text_39@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x19, x21
    b.lo 1f
    adrp x0, l_text_39@PAGE
    add x0, x0, l_text_39@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x15, x19
    b.ls L6_14
L6_15:
    adrp x0, l_text_39@PAGE
    add x0, x0, l_text_39@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
L6_14:
    add x21, x23, x15
    sub x24, x19, x15
    sub x14, x29, #192
    str x21, [x14]
    add x14, x14, #8
    str x24, [x14]
    sub x14, x29, #208
    str x21, [x14]
    add x25, x14, #8
    str x24, [x25]
    mov x10, x14
    sub x11, x29, #1392
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #1392
    mov x9, #0
    mov w14, w9
    mov x9, #0
    mov x25, x9
L6_28:
    cmp x25, x24
    b.hs L6_31
L6_29:
    add x15, x21, x25
    ldrb w15, [x15]
    and w15, w15, #255
    movz x10, #48
    cmp w15, w10
    cset w19, lo
    cbnz w19, L6_43
    b L6_35
L6_43:
    mov w23, w19
    b L6_36
L6_35:
    movz x10, #57
    cmp w15, w10
    cset w23, hi
L6_36:
    and w19, w23, #255
    cbnz w19, L6_32
    b L6_33
L6_32:
    mov x9, #0
    sub x10, x29, #1400
    str w9, [x10]
    mov x9, #0
    mov w19, w9
    b L6_41
L6_37:
    b L6_34
L6_33:
L6_34:
    mov w9, w14
    movz x10, #10
    mov w9, w9
    mov w10, w10
    mul x9, x9, x10
    cmp x9, w9, uxtw
    b.eq 1f
    adrp x0, l_text_49@PAGE
    add x0, x0, l_text_49@PAGEOFF
    adrp x1, l_text_50@PAGE
    add x1, x1, l_text_50@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w23, w9
    sub w26, w15, #48
    and w19, w26, #255
    cmp w19, w26
    b.eq L6_38
L6_39:
    adrp x0, l_text_49@PAGE
    add x0, x0, l_text_49@PAGEOFF
    adrp x1, l_text_50@PAGE
    add x1, x1, l_text_50@PAGEOFF
    bl _lb_core_7trap_at
L6_38:
    mov w14, w26
    mov w9, w14
    mov w10, w23
    adds w9, w9, w10
    b.cc 1f
    adrp x0, l_text_49@PAGE
    add x0, x0, l_text_49@PAGEOFF
    adrp x1, l_text_50@PAGE
    add x1, x1, l_text_50@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
L6_30:
    add x15, x25, #1
    mov x25, x15
    b L6_28
L6_31:
    sub x10, x29, #1400
    str w14, [x10]
    mov w19, w14
    b L6_41
L6_40:
    adrp x0, l_text_51@PAGE
    add x0, x0, l_text_51@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at
L6_41:
    mov x10, #0
    cmp w19, w10
    cset w14, eq
    cbnz w14, L6_44
    b L6_19
L6_44:
    mov w15, w14
    b L6_20
L6_19:
    adrp x14, _lb_debug_11break_count@PAGE
    add x14, x14, _lb_debug_11break_count@PAGEOFF
    ldr x14, [x14]
    movz x10, #32
    cmp x14, x10
    cset w15, eq
L6_20:
    and w14, w15, #255
    cbnz w14, L6_45
    b L6_21
L6_45:
    mov w15, w14
    b L6_22
L6_21:
    adrp x14, _lb_debug_10names_used@PAGE
    add x14, x14, _lb_debug_10names_used@PAGEOFF
    ldr x14, [x14]
    mov x9, x14
    mov x10, x20
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_40@PAGE
    add x0, x0, l_text_40@PAGEOFF
    adrp x1, l_text_50@PAGE
    add x1, x1, l_text_50@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    movz x10, #4096
    cmp x14, x10
    cset w15, hi
L6_22:
    and w14, w15, #255
    cbnz w14, L6_16
    b L6_17
L6_16:
    adrp x14, l_text_41@PAGE
    add x14, x14, l_text_41@PAGEOFF
    sub x15, x29, #224
    str x14, [x15]
    add x14, x15, #8
    movz x9, #26
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_core_9print_str
    ldr x19, [sp, #1384]
    ldr x20, [sp, #1376]
    ldr x21, [sp, #1368]
    ldr x22, [sp, #1360]
    ldr x23, [sp, #1352]
    ldr x24, [sp, #1344]
    ldr x25, [sp, #1336]
    ldr x26, [sp, #1328]
    ldr x27, [sp, #1320]
    ldr x28, [sp, #1312]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_23:
    b L6_18
L6_17:
L6_18:
    adrp x23, _lb_debug_names@PAGE
    add x23, x23, _lb_debug_names@PAGEOFF
    adrp x21, _lb_debug_10names_used@PAGE
    add x21, x21, _lb_debug_10names_used@PAGEOFF
    ldr x15, [x21]
    movz x10, #4097
    cmp x15, x10
    b.lo 1f
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
1:
    movz x10, #4096
    cmp x15, x10
    b.ls L6_24
L6_25:
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
L6_24:
    add x14, x23, x15
    movz x9, #4096
    sub x24, x9, x15
    sub x25, x29, #240
    str x14, [x25]
    add x14, x25, #8
    str x24, [x14]
    add x9, x22, #8
    str x9, [sp, #0]
    mov x9, x25
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x22
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x20
    bl _lb_memory_copy_0g1_u8
    sub x25, x29, #256
    ldr x26, [x21]
    ldr x9, [sp, #0]
    ldr x14, [x9]
    mov x9, x14
    mov x10, x26
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_43@PAGE
    add x0, x0, l_text_43@PAGEOFF
    adrp x1, l_text_50@PAGE
    add x1, x1, l_text_50@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x27, x9
    movz x10, #4097
    cmp x26, x10
    b.lo 1f
    adrp x0, l_text_43@PAGE
    add x0, x0, l_text_43@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
1:
    movz x10, #4097
    cmp x27, x10
    b.lo 1f
    adrp x0, l_text_43@PAGE
    add x0, x0, l_text_43@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x26, x27
    b.ls L6_26
L6_27:
    adrp x0, l_text_43@PAGE
    add x0, x0, l_text_43@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
L6_26:
    add x14, x23, x26
    sub x15, x27, x26
    sub x20, x29, #272
    str x14, [x20]
    add x20, x20, #8
    str x15, [x20]
    sub x20, x29, #288
    str x14, [x20]
    add x14, x20, #8
    str x15, [x14]
    mov x10, x20
    mov x11, x25
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    str x27, [x21]
    adrp x20, _lb_debug_11break_count@PAGE
    add x20, x20, _lb_debug_11break_count@PAGEOFF
    ldr x14, [x20]
    adrp x15, _lb_debug_breaks@PAGE
    add x15, x15, _lb_debug_breaks@PAGEOFF
    movz x10, #32
    cmp x14, x10
    b.lo 1f
    adrp x0, l_text_45@PAGE
    add x0, x0, l_text_45@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
1:
    movz x10, #24
    mul x14, x14, x10
    add x28, x15, x14
    sub x24, x29, #312
    mov x11, x24
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    mov x10, x25
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x24, #16
    str w19, [x14]
    mov x10, x24
    mov x11, x28
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    ldr x14, [x20]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_46@PAGE
    add x0, x0, l_text_46@PAGEOFF
    adrp x1, l_text_50@PAGE
    add x1, x1, l_text_50@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x20]
    sub x14, x29, #1336
    sub x24, x29, #1360
    str x14, [x24]
    add x14, x24, #8
    movz x9, #1024
    str x9, [x14]
    add x14, x24, #16
    mov x9, #0
    str x9, [x14]
    adrp x14, l_text_47@PAGE
    add x14, x14, l_text_47@PAGEOFF
    mov x0, x24
    mov x1, x14
    movz x2, #11
    bl _lb_core_10format_put
    mov w14, w0
    ldr x14, [x20]
    mov x0, x24
    mov x1, x14
    bl _lb_core_10format_u64
    mov w14, w0
    adrp x14, l_text_48@PAGE
    add x14, x14, l_text_48@PAGEOFF
    mov x0, x24
    mov x1, x14
    movz x2, #4
    bl _lb_core_10format_put
    mov w14, w0
    ldr x14, [x22]
    ldr x9, [sp, #0]
    ldr x15, [x9]
    mov x0, x24
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_7@PAGE
    add x14, x14, l_text_7@PAGEOFF
    mov x0, x24
    mov x1, x14
    movz x2, #1
    bl _lb_core_10format_put
    mov w14, w0
    mov w14, w19
    mov x0, x24
    mov x1, x14
    bl _lb_core_10format_u64
    mov w14, w0
    mov x0, x24
    bl _lb_core_13format_finish
    sub x16, x29, #1376
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #1376
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_core_9print_str
    ldr x19, [sp, #1384]
    ldr x20, [sp, #1376]
    ldr x21, [sp, #1368]
    ldr x22, [sp, #1360]
    ldr x23, [sp, #1352]
    ldr x24, [sp, #1344]
    ldr x25, [sp, #1336]
    ldr x26, [sp, #1328]
    ldr x27, [sp, #1320]
    ldr x28, [sp, #1312]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_debug_show
_lb_debug_show:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #17168
    sub sp, sp, x16
    str x19, [sp, #17144]
    str x20, [sp, #17136]
    str x21, [sp, #17128]
    str x22, [sp, #17120]
    str x23, [sp, #17112]
    str x24, [sp, #17104]
    str x25, [sp, #17096]
    str x26, [sp, #17088]
    str x27, [sp, #17080]
    str x28, [sp, #17072]
    sub x16, x29, #112
    str x0, [x16]
    sub x16, x29, #128
    str x1, [x16]
    sub x14, x29, #128
    ldr x14, [x14]
    cbnz x14, L7_1
    b L7_2
L7_1:
    b L7_3
L7_2:
    ldr x19, [sp, #17144]
    ldr x20, [sp, #17136]
    ldr x21, [sp, #17128]
    ldr x22, [sp, #17120]
    ldr x23, [sp, #17112]
    ldr x24, [sp, #17104]
    ldr x25, [sp, #17096]
    ldr x26, [sp, #17088]
    ldr x27, [sp, #17080]
    ldr x28, [sp, #17072]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_3:
    sub x15, x29, #112
    ldr x9, [x15]
    str x9, [sp, #48]
    ldr x9, [sp, #48]
    add x15, x9, #32
    ldr x15, [x15]
    mov x9, x14
    mov x10, x15
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_65@PAGE
    add x0, x0, l_text_65@PAGEOFF
    adrp x1, l_text_50@PAGE
    add x1, x1, l_text_50@PAGEOFF
    bl _lb_core_7trap_at
1:
    str x9, [sp, #40]
    sub x9, x29, #144
    str x9, [sp, #32]
    ldr x9, [sp, #48]
    add x15, x9, #16
    mov x10, x15
    ldr x11, [sp, #32]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x15, l_text_66@PAGE
    add x15, x15, l_text_66@PAGEOFF
    sub x22, x29, #160
    str x15, [x22]
    add x22, x22, #8
    movz x9, #3
    str x9, [x22]
    ldr x9, [sp, #32]
    add x9, x9, #8
    str x9, [sp, #24]
    ldr x9, [sp, #24]
    ldr x23, [x9]
    movz x10, #3
    cmp x23, x10
    cset w24, eq
    cbnz w24, L7_8
    b L7_157
L7_157:
    mov w14, w24
    b L7_9
L7_8:
    ldr x9, [sp, #32]
    ldr x14, [x9]
    mov x0, x14
    mov x1, x15
    mov x2, x23
    bl _memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
L7_9:
    and w15, w14, #255
    cbnz w15, L7_158
    b L7_10
L7_158:
    mov w14, w15
    b L7_11
L7_10:
    adrp x14, l_text_67@PAGE
    add x14, x14, l_text_67@PAGEOFF
    sub x15, x29, #176
    str x14, [x15]
    add x15, x15, #8
    movz x9, #5
    str x9, [x15]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    movz x10, #5
    cmp x15, x10
    cset w23, eq
    cbnz w23, L7_12
    b L7_159
L7_159:
    mov w14, w23
    b L7_13
L7_12:
    ldr x9, [sp, #32]
    ldr x23, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _memcmp
    mov w23, w0
    mov x10, #0
    cmp w23, w10
    cset w23, eq
    mov w14, w23
L7_13:
    and w15, w14, #255
    mov w14, w15
L7_11:
    and w15, w14, #255
    cbnz w15, L7_5
    b L7_6
L7_5:
    sub x14, x29, #1200
    sub x23, x29, #1224
    str x14, [x23]
    add x14, x23, #8
    movz x9, #1024
    str x9, [x14]
    add x14, x23, #16
    mov x9, #0
    str x9, [x14]
    ldr x9, [sp, #48]
    ldr x14, [x9]
    ldr x9, [sp, #48]
    add x15, x9, #8
    ldr x15, [x15]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_68@PAGE
    add x14, x14, l_text_68@PAGEOFF
    mov x0, x23
    mov x1, x14
    movz x2, #2
    bl _lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_69@PAGE
    add x14, x14, l_text_69@PAGEOFF
    mov x0, x23
    mov x1, x14
    movz x2, #3
    bl _lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #40]
    movz x16, #16696
    sub x10, x29, x16
    str x9, [x10]
    movz x16, #16704
    sub x24, x29, x16
    mov x0, x24
    ldr x1, [sp, #40]
    movz x2, #8
    bl _memcpy
    mov x14, x0
    cbnz x14, L7_97
    b L7_98
L7_98:
    adrp x0, l_text_115@PAGE
    add x0, x0, l_text_115@PAGEOFF
    adrp x1, l_text_114@PAGE
    add x1, x1, l_text_114@PAGEOFF
    bl _lb_core_7trap_at
L7_97:
    ldr x14, [x24]
L7_100:
    mov x0, x23
    mov x1, x14
    bl _lb_core_10format_i64
    mov w14, w0
    mov x0, x23
    bl _lb_core_13format_finish
    sub x16, x29, #1240
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x15, x29, #1240
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_core_9print_str
    b L7_7
L7_6:
    adrp x14, l_text_70@PAGE
    add x14, x14, l_text_70@PAGEOFF
    sub x15, x29, #1256
    str x14, [x15]
    add x15, x15, #8
    movz x9, #3
    str x9, [x15]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    movz x10, #3
    cmp x15, x10
    cset w23, eq
    cbnz w23, L7_17
    b L7_160
L7_160:
    mov w14, w23
    b L7_18
L7_17:
    ldr x9, [sp, #32]
    ldr x23, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _memcmp
    mov w23, w0
    mov x10, #0
    cmp w23, w10
    cset w23, eq
    mov w14, w23
L7_18:
    and w15, w14, #255
    cbnz w15, L7_14
    b L7_15
L7_14:
    sub x14, x29, #2280
    sub x23, x29, #2304
    str x14, [x23]
    add x14, x23, #8
    movz x9, #1024
    str x9, [x14]
    add x14, x23, #16
    mov x9, #0
    str x9, [x14]
    ldr x9, [sp, #48]
    ldr x14, [x9]
    ldr x9, [sp, #48]
    add x15, x9, #8
    ldr x15, [x15]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_68@PAGE
    add x14, x14, l_text_68@PAGEOFF
    mov x0, x23
    mov x1, x14
    movz x2, #2
    bl _lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_69@PAGE
    add x14, x14, l_text_69@PAGEOFF
    mov x0, x23
    mov x1, x14
    movz x2, #3
    bl _lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #40]
    movz x16, #16720
    sub x10, x29, x16
    str x9, [x10]
    movz x16, #16724
    sub x24, x29, x16
    mov x0, x24
    ldr x1, [sp, #40]
    movz x2, #4
    bl _memcpy
    mov x14, x0
    cbnz x14, L7_101
    b L7_102
L7_102:
    adrp x0, l_text_115@PAGE
    add x0, x0, l_text_115@PAGEOFF
    adrp x1, l_text_114@PAGE
    add x1, x1, l_text_114@PAGEOFF
    bl _lb_core_7trap_at
L7_101:
    ldrsw x14, [x24]
    movz x16, #16736
    sub x10, x29, x16
    str w14, [x10]
L7_104:
    sxtw x15, w14
    mov x0, x23
    mov x1, x15
    bl _lb_core_10format_i64
    mov w14, w0
    mov x0, x23
    bl _lb_core_13format_finish
    sub x16, x29, #2320
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x15, x29, #2320
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_core_9print_str
    b L7_16
L7_15:
    adrp x14, l_text_71@PAGE
    add x14, x14, l_text_71@PAGEOFF
    sub x15, x29, #2336
    str x14, [x15]
    add x15, x15, #8
    movz x9, #3
    str x9, [x15]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    movz x10, #3
    cmp x15, x10
    cset w23, eq
    cbnz w23, L7_22
    b L7_161
L7_161:
    mov w14, w23
    b L7_23
L7_22:
    ldr x9, [sp, #32]
    ldr x23, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _memcmp
    mov w23, w0
    mov x10, #0
    cmp w23, w10
    cset w23, eq
    mov w14, w23
L7_23:
    and w15, w14, #255
    cbnz w15, L7_19
    b L7_20
L7_19:
    sub x14, x29, #3360
    sub x23, x29, #3384
    str x14, [x23]
    add x14, x23, #8
    movz x9, #1024
    str x9, [x14]
    add x14, x23, #16
    mov x9, #0
    str x9, [x14]
    ldr x9, [sp, #48]
    ldr x14, [x9]
    ldr x9, [sp, #48]
    add x15, x9, #8
    ldr x15, [x15]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_68@PAGE
    add x14, x14, l_text_68@PAGEOFF
    mov x0, x23
    mov x1, x14
    movz x2, #2
    bl _lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_69@PAGE
    add x14, x14, l_text_69@PAGEOFF
    mov x0, x23
    mov x1, x14
    movz x2, #3
    bl _lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #40]
    movz x16, #16752
    sub x10, x29, x16
    str x9, [x10]
    movz x16, #16754
    sub x24, x29, x16
    mov x0, x24
    ldr x1, [sp, #40]
    movz x2, #2
    bl _memcpy
    mov x14, x0
    cbnz x14, L7_105
    b L7_106
L7_106:
    adrp x0, l_text_115@PAGE
    add x0, x0, l_text_115@PAGEOFF
    adrp x1, l_text_114@PAGE
    add x1, x1, l_text_114@PAGEOFF
    bl _lb_core_7trap_at
L7_105:
    ldrsh w14, [x24]
    sxth w14, w14
    movz x16, #16768
    sub x10, x29, x16
    str w14, [x10]
L7_108:
    sxtw x15, w14
    mov x0, x23
    mov x1, x15
    bl _lb_core_10format_i64
    mov w14, w0
    mov x0, x23
    bl _lb_core_13format_finish
    sub x16, x29, #3400
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x15, x29, #3400
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_core_9print_str
    b L7_21
L7_20:
    adrp x14, l_text_72@PAGE
    add x14, x14, l_text_72@PAGEOFF
    sub x15, x29, #3416
    str x14, [x15]
    add x15, x15, #8
    movz x9, #2
    str x9, [x15]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    movz x10, #2
    cmp x15, x10
    cset w23, eq
    cbnz w23, L7_27
    b L7_162
L7_162:
    mov w14, w23
    b L7_28
L7_27:
    ldr x9, [sp, #32]
    ldr x23, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _memcmp
    mov w23, w0
    mov x10, #0
    cmp w23, w10
    cset w23, eq
    mov w14, w23
L7_28:
    and w15, w14, #255
    cbnz w15, L7_24
    b L7_25
L7_24:
    movz x16, #4440
    sub x14, x29, x16
    movz x16, #4464
    sub x23, x29, x16
    str x14, [x23]
    add x14, x23, #8
    movz x9, #1024
    str x9, [x14]
    add x14, x23, #16
    mov x9, #0
    str x9, [x14]
    ldr x9, [sp, #48]
    ldr x14, [x9]
    ldr x9, [sp, #48]
    add x15, x9, #8
    ldr x15, [x15]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_68@PAGE
    add x14, x14, l_text_68@PAGEOFF
    mov x0, x23
    mov x1, x14
    movz x2, #2
    bl _lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_69@PAGE
    add x14, x14, l_text_69@PAGEOFF
    mov x0, x23
    mov x1, x14
    movz x2, #3
    bl _lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #40]
    movz x16, #16784
    sub x10, x29, x16
    str x9, [x10]
    movz x16, #16785
    sub x24, x29, x16
    mov x0, x24
    ldr x1, [sp, #40]
    movz x2, #1
    bl _memcpy
    mov x14, x0
    cbnz x14, L7_109
    b L7_110
L7_110:
    adrp x0, l_text_115@PAGE
    add x0, x0, l_text_115@PAGEOFF
    adrp x1, l_text_114@PAGE
    add x1, x1, l_text_114@PAGEOFF
    bl _lb_core_7trap_at
L7_109:
    ldrsb w14, [x24]
    sxtb w14, w14
    movz x16, #16800
    sub x10, x29, x16
    str w14, [x10]
L7_112:
    sxtw x15, w14
    mov x0, x23
    mov x1, x15
    bl _lb_core_10format_i64
    mov w14, w0
    mov x0, x23
    bl _lb_core_13format_finish
    movz x16, #4480
    sub x16, x29, x16
    str x0, [x16, #0]
    str x1, [x16, #8]
    movz x16, #4480
    sub x15, x29, x16
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_core_9print_str
    b L7_26
L7_25:
    adrp x14, l_text_73@PAGE
    add x14, x14, l_text_73@PAGEOFF
    movz x16, #4496
    sub x15, x29, x16
    str x14, [x15]
    add x15, x15, #8
    movz x9, #3
    str x9, [x15]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    movz x10, #3
    cmp x15, x10
    cset w23, eq
    cbnz w23, L7_32
    b L7_163
L7_163:
    mov w14, w23
    b L7_33
L7_32:
    ldr x9, [sp, #32]
    ldr x23, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _memcmp
    mov w23, w0
    mov x10, #0
    cmp w23, w10
    cset w23, eq
    mov w14, w23
L7_33:
    and w15, w14, #255
    cbnz w15, L7_164
    b L7_34
L7_164:
    mov w14, w15
    b L7_35
L7_34:
    adrp x14, l_text_74@PAGE
    add x14, x14, l_text_74@PAGEOFF
    movz x16, #4512
    sub x15, x29, x16
    str x14, [x15]
    add x15, x15, #8
    movz x9, #5
    str x9, [x15]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    movz x10, #5
    cmp x15, x10
    cset w23, eq
    cbnz w23, L7_36
    b L7_165
L7_165:
    mov w14, w23
    b L7_37
L7_36:
    ldr x9, [sp, #32]
    ldr x23, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _memcmp
    mov w23, w0
    mov x10, #0
    cmp w23, w10
    cset w23, eq
    mov w14, w23
L7_37:
    and w15, w14, #255
    mov w14, w15
L7_35:
    and w15, w14, #255
    cbnz w15, L7_29
    b L7_30
L7_29:
    movz x16, #5536
    sub x14, x29, x16
    movz x16, #5560
    sub x23, x29, x16
    str x14, [x23]
    add x14, x23, #8
    movz x9, #1024
    str x9, [x14]
    add x14, x23, #16
    mov x9, #0
    str x9, [x14]
    ldr x9, [sp, #48]
    ldr x14, [x9]
    ldr x9, [sp, #48]
    add x15, x9, #8
    ldr x15, [x15]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_68@PAGE
    add x14, x14, l_text_68@PAGEOFF
    mov x0, x23
    mov x1, x14
    movz x2, #2
    bl _lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_69@PAGE
    add x14, x14, l_text_69@PAGEOFF
    mov x0, x23
    mov x1, x14
    movz x2, #3
    bl _lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #40]
    movz x16, #16816
    sub x10, x29, x16
    str x9, [x10]
    movz x16, #16824
    sub x24, x29, x16
    mov x0, x24
    ldr x1, [sp, #40]
    movz x2, #8
    bl _memcpy
    mov x14, x0
    cbnz x14, L7_113
    b L7_114
L7_114:
    adrp x0, l_text_115@PAGE
    add x0, x0, l_text_115@PAGEOFF
    adrp x1, l_text_114@PAGE
    add x1, x1, l_text_114@PAGEOFF
    bl _lb_core_7trap_at
L7_113:
    ldr x14, [x24]
L7_116:
    mov x0, x23
    mov x1, x14
    bl _lb_core_10format_u64
    mov w14, w0
    mov x0, x23
    bl _lb_core_13format_finish
    movz x16, #5576
    sub x16, x29, x16
    str x0, [x16, #0]
    str x1, [x16, #8]
    movz x16, #5576
    sub x15, x29, x16
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_core_9print_str
    b L7_31
L7_30:
    adrp x14, l_text_75@PAGE
    add x14, x14, l_text_75@PAGEOFF
    movz x16, #5592
    sub x15, x29, x16
    str x14, [x15]
    add x15, x15, #8
    movz x9, #3
    str x9, [x15]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    movz x10, #3
    cmp x15, x10
    cset w23, eq
    cbnz w23, L7_41
    b L7_166
L7_166:
    mov w14, w23
    b L7_42
L7_41:
    ldr x9, [sp, #32]
    ldr x23, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _memcmp
    mov w23, w0
    mov x10, #0
    cmp w23, w10
    cset w23, eq
    mov w14, w23
L7_42:
    and w15, w14, #255
    cbnz w15, L7_167
    b L7_43
L7_167:
    mov w14, w15
    b L7_44
L7_43:
    adrp x14, l_text_76@PAGE
    add x14, x14, l_text_76@PAGEOFF
    movz x16, #5608
    sub x15, x29, x16
    str x14, [x15]
    add x15, x15, #8
    movz x9, #4
    str x9, [x15]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    movz x10, #4
    cmp x15, x10
    cset w23, eq
    cbnz w23, L7_45
    b L7_168
L7_168:
    mov w14, w23
    b L7_46
L7_45:
    ldr x9, [sp, #32]
    ldr x23, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _memcmp
    mov w23, w0
    mov x10, #0
    cmp w23, w10
    cset w23, eq
    mov w14, w23
L7_46:
    and w15, w14, #255
    mov w14, w15
L7_44:
    and w15, w14, #255
    cbnz w15, L7_38
    b L7_39
L7_38:
    movz x16, #6632
    sub x14, x29, x16
    movz x16, #6656
    sub x23, x29, x16
    str x14, [x23]
    add x14, x23, #8
    movz x9, #1024
    str x9, [x14]
    add x14, x23, #16
    mov x9, #0
    str x9, [x14]
    ldr x9, [sp, #48]
    ldr x14, [x9]
    ldr x9, [sp, #48]
    add x15, x9, #8
    ldr x15, [x15]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_68@PAGE
    add x14, x14, l_text_68@PAGEOFF
    mov x0, x23
    mov x1, x14
    movz x2, #2
    bl _lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_69@PAGE
    add x14, x14, l_text_69@PAGEOFF
    mov x0, x23
    mov x1, x14
    movz x2, #3
    bl _lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #40]
    movz x16, #16840
    sub x10, x29, x16
    str x9, [x10]
    movz x16, #16844
    sub x24, x29, x16
    mov x0, x24
    ldr x1, [sp, #40]
    movz x2, #4
    bl _memcpy
    mov x14, x0
    cbnz x14, L7_117
    b L7_118
L7_118:
    adrp x0, l_text_115@PAGE
    add x0, x0, l_text_115@PAGEOFF
    adrp x1, l_text_114@PAGE
    add x1, x1, l_text_114@PAGEOFF
    bl _lb_core_7trap_at
L7_117:
    ldr w14, [x24]
    movz x16, #16856
    sub x10, x29, x16
    str w14, [x10]
L7_120:
    mov w15, w14
    mov x0, x23
    mov x1, x15
    bl _lb_core_10format_u64
    mov w14, w0
    mov x0, x23
    bl _lb_core_13format_finish
    movz x16, #6672
    sub x16, x29, x16
    str x0, [x16, #0]
    str x1, [x16, #8]
    movz x16, #6672
    sub x15, x29, x16
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_core_9print_str
    b L7_40
L7_39:
    adrp x14, l_text_77@PAGE
    add x14, x14, l_text_77@PAGEOFF
    movz x16, #6688
    sub x15, x29, x16
    str x14, [x15]
    add x15, x15, #8
    movz x9, #3
    str x9, [x15]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    movz x10, #3
    cmp x15, x10
    cset w23, eq
    cbnz w23, L7_50
    b L7_169
L7_169:
    mov w14, w23
    b L7_51
L7_50:
    ldr x9, [sp, #32]
    ldr x23, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _memcmp
    mov w23, w0
    mov x10, #0
    cmp w23, w10
    cset w23, eq
    mov w14, w23
L7_51:
    and w15, w14, #255
    cbnz w15, L7_47
    b L7_48
L7_47:
    movz x16, #7712
    sub x14, x29, x16
    movz x16, #7736
    sub x23, x29, x16
    str x14, [x23]
    add x14, x23, #8
    movz x9, #1024
    str x9, [x14]
    add x14, x23, #16
    mov x9, #0
    str x9, [x14]
    ldr x9, [sp, #48]
    ldr x14, [x9]
    ldr x9, [sp, #48]
    add x15, x9, #8
    ldr x15, [x15]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_68@PAGE
    add x14, x14, l_text_68@PAGEOFF
    mov x0, x23
    mov x1, x14
    movz x2, #2
    bl _lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_69@PAGE
    add x14, x14, l_text_69@PAGEOFF
    mov x0, x23
    mov x1, x14
    movz x2, #3
    bl _lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #40]
    movz x16, #16872
    sub x10, x29, x16
    str x9, [x10]
    movz x16, #16874
    sub x24, x29, x16
    mov x0, x24
    ldr x1, [sp, #40]
    movz x2, #2
    bl _memcpy
    mov x14, x0
    cbnz x14, L7_121
    b L7_122
L7_122:
    adrp x0, l_text_115@PAGE
    add x0, x0, l_text_115@PAGEOFF
    adrp x1, l_text_114@PAGE
    add x1, x1, l_text_114@PAGEOFF
    bl _lb_core_7trap_at
L7_121:
    ldrh w14, [x24]
    and w14, w14, #65535
    movz x16, #16888
    sub x10, x29, x16
    str w14, [x10]
L7_124:
    mov w15, w14
    mov x0, x23
    mov x1, x15
    bl _lb_core_10format_u64
    mov w14, w0
    mov x0, x23
    bl _lb_core_13format_finish
    movz x16, #7752
    sub x16, x29, x16
    str x0, [x16, #0]
    str x1, [x16, #8]
    movz x16, #7752
    sub x15, x29, x16
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_core_9print_str
    b L7_49
L7_48:
    adrp x14, l_text_78@PAGE
    add x14, x14, l_text_78@PAGEOFF
    movz x16, #7768
    sub x15, x29, x16
    str x14, [x15]
    add x15, x15, #8
    movz x9, #2
    str x9, [x15]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    movz x10, #2
    cmp x15, x10
    cset w23, eq
    cbnz w23, L7_55
    b L7_170
L7_170:
    mov w14, w23
    b L7_56
L7_55:
    ldr x9, [sp, #32]
    ldr x23, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _memcmp
    mov w23, w0
    mov x10, #0
    cmp w23, w10
    cset w23, eq
    mov w14, w23
L7_56:
    and w15, w14, #255
    cbnz w15, L7_52
    b L7_53
L7_52:
    movz x16, #8792
    sub x14, x29, x16
    movz x16, #8816
    sub x23, x29, x16
    str x14, [x23]
    add x14, x23, #8
    movz x9, #1024
    str x9, [x14]
    add x14, x23, #16
    mov x9, #0
    str x9, [x14]
    ldr x9, [sp, #48]
    ldr x14, [x9]
    ldr x9, [sp, #48]
    add x15, x9, #8
    ldr x15, [x15]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_68@PAGE
    add x14, x14, l_text_68@PAGEOFF
    mov x0, x23
    mov x1, x14
    movz x2, #2
    bl _lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_69@PAGE
    add x14, x14, l_text_69@PAGEOFF
    mov x0, x23
    mov x1, x14
    movz x2, #3
    bl _lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #40]
    movz x16, #16904
    sub x10, x29, x16
    str x9, [x10]
    movz x16, #16905
    sub x24, x29, x16
    mov x0, x24
    ldr x1, [sp, #40]
    movz x2, #1
    bl _memcpy
    mov x14, x0
    cbnz x14, L7_125
    b L7_126
L7_126:
    adrp x0, l_text_115@PAGE
    add x0, x0, l_text_115@PAGEOFF
    adrp x1, l_text_114@PAGE
    add x1, x1, l_text_114@PAGEOFF
    bl _lb_core_7trap_at
L7_125:
    ldrb w14, [x24]
    and w14, w14, #255
    movz x16, #16920
    sub x10, x29, x16
    str w14, [x10]
L7_128:
    mov w15, w14
    mov x0, x23
    mov x1, x15
    bl _lb_core_10format_u64
    mov w14, w0
    mov x0, x23
    bl _lb_core_13format_finish
    movz x16, #8832
    sub x16, x29, x16
    str x0, [x16, #0]
    str x1, [x16, #8]
    movz x16, #8832
    sub x15, x29, x16
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_core_9print_str
    b L7_54
L7_53:
    adrp x14, l_text_79@PAGE
    add x14, x14, l_text_79@PAGEOFF
    movz x16, #8848
    sub x15, x29, x16
    str x14, [x15]
    add x15, x15, #8
    movz x9, #4
    str x9, [x15]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    movz x10, #4
    cmp x15, x10
    cset w23, eq
    cbnz w23, L7_60
    b L7_171
L7_171:
    mov w14, w23
    b L7_61
L7_60:
    ldr x9, [sp, #32]
    ldr x23, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _memcmp
    mov w23, w0
    mov x10, #0
    cmp w23, w10
    cset w23, eq
    mov w14, w23
L7_61:
    and w15, w14, #255
    cbnz w15, L7_57
    b L7_58
L7_57:
    movz x16, #9872
    sub x14, x29, x16
    movz x16, #9896
    sub x23, x29, x16
    str x14, [x23]
    add x14, x23, #8
    movz x9, #1024
    str x9, [x14]
    add x14, x23, #16
    mov x9, #0
    str x9, [x14]
    ldr x9, [sp, #48]
    ldr x14, [x9]
    ldr x9, [sp, #48]
    add x15, x9, #8
    ldr x15, [x15]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_68@PAGE
    add x14, x14, l_text_68@PAGEOFF
    mov x0, x23
    mov x1, x14
    movz x2, #2
    bl _lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_69@PAGE
    add x14, x14, l_text_69@PAGEOFF
    mov x0, x23
    mov x1, x14
    movz x2, #3
    bl _lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #40]
    movz x16, #16936
    sub x10, x29, x16
    str x9, [x10]
    movz x16, #16937
    sub x24, x29, x16
    mov x0, x24
    ldr x1, [sp, #40]
    movz x2, #1
    bl _memcpy
    mov x14, x0
    cbnz x14, L7_129
    b L7_130
L7_130:
    adrp x0, l_text_115@PAGE
    add x0, x0, l_text_115@PAGEOFF
    adrp x1, l_text_114@PAGE
    add x1, x1, l_text_114@PAGEOFF
    bl _lb_core_7trap_at
L7_129:
    ldrb w14, [x24]
    and w14, w14, #255
    movz x16, #16952
    sub x10, x29, x16
    str w14, [x10]
L7_132:
    mov x0, x23
    mov x1, x14
    bl _lb_core_11format_bool
    mov w14, w0
    mov x0, x23
    bl _lb_core_13format_finish
    movz x16, #9912
    sub x16, x29, x16
    str x0, [x16, #0]
    str x1, [x16, #8]
    movz x16, #9912
    sub x15, x29, x16
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_core_9print_str
    b L7_59
L7_58:
    adrp x14, l_text_80@PAGE
    add x14, x14, l_text_80@PAGEOFF
    movz x16, #9928
    sub x15, x29, x16
    str x14, [x15]
    add x15, x15, #8
    movz x9, #3
    str x9, [x15]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    movz x10, #3
    cmp x15, x10
    cset w23, eq
    cbnz w23, L7_65
    b L7_172
L7_172:
    mov w14, w23
    b L7_66
L7_65:
    ldr x9, [sp, #32]
    ldr x23, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _memcmp
    mov w23, w0
    mov x10, #0
    cmp w23, w10
    cset w23, eq
    mov w14, w23
L7_66:
    and w15, w14, #255
    cbnz w15, L7_62
    b L7_63
L7_62:
    movz x16, #10952
    sub x14, x29, x16
    movz x16, #10976
    sub x23, x29, x16
    str x14, [x23]
    add x14, x23, #8
    movz x9, #1024
    str x9, [x14]
    add x14, x23, #16
    mov x9, #0
    str x9, [x14]
    ldr x9, [sp, #48]
    ldr x14, [x9]
    ldr x9, [sp, #48]
    add x15, x9, #8
    ldr x15, [x15]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_68@PAGE
    add x14, x14, l_text_68@PAGEOFF
    mov x0, x23
    mov x1, x14
    movz x2, #2
    bl _lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_69@PAGE
    add x14, x14, l_text_69@PAGEOFF
    mov x0, x23
    mov x1, x14
    movz x2, #3
    bl _lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #40]
    movz x16, #16968
    sub x10, x29, x16
    str x9, [x10]
    movz x16, #16976
    sub x24, x29, x16
    mov x0, x24
    ldr x1, [sp, #40]
    movz x2, #8
    bl _memcpy
    mov x14, x0
    cbnz x14, L7_133
    b L7_134
L7_134:
    adrp x0, l_text_115@PAGE
    add x0, x0, l_text_115@PAGEOFF
    adrp x1, l_text_114@PAGE
    add x1, x1, l_text_114@PAGEOFF
    bl _lb_core_7trap_at
L7_133:
    ldr d24, [x24]
L7_136:
    fmov d16, d24
    fmov d0, d16
    mov x0, x23
    bl _lb_core_10format_f64
    mov w14, w0
    mov x0, x23
    bl _lb_core_13format_finish
    movz x16, #10992
    sub x16, x29, x16
    str x0, [x16, #0]
    str x1, [x16, #8]
    movz x16, #10992
    sub x14, x29, x16
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_core_9print_str
    b L7_64
L7_63:
    adrp x14, l_text_81@PAGE
    add x14, x14, l_text_81@PAGEOFF
    movz x16, #11008
    sub x15, x29, x16
    str x14, [x15]
    add x15, x15, #8
    movz x9, #3
    str x9, [x15]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    movz x10, #3
    cmp x15, x10
    cset w23, eq
    cbnz w23, L7_70
    b L7_173
L7_173:
    mov w14, w23
    b L7_71
L7_70:
    ldr x9, [sp, #32]
    ldr x23, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _memcmp
    mov w23, w0
    mov x10, #0
    cmp w23, w10
    cset w23, eq
    mov w14, w23
L7_71:
    and w15, w14, #255
    cbnz w15, L7_67
    b L7_68
L7_67:
    movz x16, #12032
    sub x14, x29, x16
    movz x16, #12056
    sub x23, x29, x16
    str x14, [x23]
    add x14, x23, #8
    movz x9, #1024
    str x9, [x14]
    add x14, x23, #16
    mov x9, #0
    str x9, [x14]
    ldr x9, [sp, #48]
    ldr x14, [x9]
    ldr x9, [sp, #48]
    add x15, x9, #8
    ldr x15, [x15]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_68@PAGE
    add x14, x14, l_text_68@PAGEOFF
    mov x0, x23
    mov x1, x14
    movz x2, #2
    bl _lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_69@PAGE
    add x14, x14, l_text_69@PAGEOFF
    mov x0, x23
    mov x1, x14
    movz x2, #3
    bl _lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #40]
    movz x16, #16992
    sub x10, x29, x16
    str x9, [x10]
    movz x16, #16996
    sub x24, x29, x16
    mov x0, x24
    ldr x1, [sp, #40]
    movz x2, #4
    bl _memcpy
    mov x14, x0
    cbnz x14, L7_137
    b L7_138
L7_138:
    adrp x0, l_text_115@PAGE
    add x0, x0, l_text_115@PAGEOFF
    adrp x1, l_text_114@PAGE
    add x1, x1, l_text_114@PAGEOFF
    bl _lb_core_7trap_at
L7_137:
    ldr s24, [x24]
    movz x16, #17008
    sub x10, x29, x16
    str s24, [x10]
L7_140:
    fcvt d25, s24
    fmov d16, d25
    fmov d0, d16
    mov x0, x23
    bl _lb_core_10format_f64
    mov w14, w0
    mov x0, x23
    bl _lb_core_13format_finish
    movz x16, #12072
    sub x16, x29, x16
    str x0, [x16, #0]
    str x1, [x16, #8]
    movz x16, #12072
    sub x14, x29, x16
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_core_9print_str
    b L7_69
L7_68:
    adrp x14, l_text_82@PAGE
    add x14, x14, l_text_82@PAGEOFF
    movz x16, #12088
    sub x15, x29, x16
    str x14, [x15]
    add x15, x15, #8
    movz x9, #3
    str x9, [x15]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    movz x10, #3
    cmp x15, x10
    cset w23, eq
    cbnz w23, L7_75
    b L7_174
L7_174:
    mov w14, w23
    b L7_76
L7_75:
    ldr x9, [sp, #32]
    ldr x23, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _memcmp
    mov w23, w0
    mov x10, #0
    cmp w23, w10
    cset w23, eq
    mov w14, w23
L7_76:
    and w15, w14, #255
    cbnz w15, L7_72
    b L7_73
L7_72:
    movz x16, #12104
    sub x24, x29, x16
    ldr x9, [sp, #40]
    movz x16, #17040
    sub x10, x29, x16
    str x9, [x10]
    movz x16, #17056
    sub x23, x29, x16
    mov x0, x23
    ldr x1, [sp, #40]
    movz x2, #16
    bl _memcpy
    mov x14, x0
    cbnz x14, L7_141
    b L7_142
L7_142:
    adrp x0, l_text_115@PAGE
    add x0, x0, l_text_115@PAGEOFF
    adrp x1, l_text_114@PAGE
    add x1, x1, l_text_114@PAGEOFF
    bl _lb_core_7trap_at
L7_141:
    movz x16, #17024
    sub x20, x29, x16
    mov x10, x23
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x20
    movz x16, #12120
    sub x11, x29, x16
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L7_144:
    movz x16, #12120
    sub x14, x29, x16
    mov x10, x14
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    movz x16, #13144
    sub x14, x29, x16
    movz x16, #13168
    sub x20, x29, x16
    str x14, [x20]
    add x14, x20, #8
    movz x9, #1024
    str x9, [x14]
    add x14, x20, #16
    mov x9, #0
    str x9, [x14]
    ldr x9, [sp, #48]
    ldr x14, [x9]
    ldr x9, [sp, #48]
    add x15, x9, #8
    ldr x15, [x15]
    mov x0, x20
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_68@PAGE
    add x14, x14, l_text_68@PAGEOFF
    mov x0, x20
    mov x1, x14
    movz x2, #2
    bl _lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    mov x0, x20
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_83@PAGE
    add x14, x14, l_text_83@PAGEOFF
    mov x0, x20
    mov x1, x14
    movz x2, #4
    bl _lb_core_10format_put
    mov w14, w0
    ldr x14, [x24]
    add x15, x24, #8
    ldr x15, [x15]
    mov x0, x20
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_84@PAGE
    add x14, x14, l_text_84@PAGEOFF
    mov x0, x20
    mov x1, x14
    movz x2, #1
    bl _lb_core_10format_put
    mov w14, w0
    mov x0, x20
    bl _lb_core_13format_finish
    movz x16, #13184
    sub x16, x29, x16
    str x0, [x16, #0]
    str x1, [x16, #8]
    movz x16, #13184
    sub x14, x29, x16
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_core_9print_str
    b L7_74
L7_73:
    adrp x14, l_text_85@PAGE
    add x14, x14, l_text_85@PAGEOFF
    movz x16, #13200
    sub x15, x29, x16
    str x14, [x15]
    add x15, x15, #8
    movz x9, #5
    str x9, [x15]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    movz x10, #5
    cmp x15, x10
    cset w23, eq
    cbnz w23, L7_80
    b L7_175
L7_175:
    mov w14, w23
    b L7_81
L7_80:
    ldr x9, [sp, #32]
    ldr x23, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _memcmp
    mov w23, w0
    mov x10, #0
    cmp w23, w10
    cset w23, eq
    mov w14, w23
L7_81:
    and w15, w14, #255
    cbnz w15, L7_77
    b L7_78
L7_77:
    ldr x9, [sp, #40]
    movz x16, #17072
    sub x10, x29, x16
    str x9, [x10]
    movz x16, #17080
    sub x23, x29, x16
    mov x0, x23
    ldr x1, [sp, #40]
    movz x2, #8
    bl _memcpy
    mov x14, x0
    cbnz x14, L7_145
    b L7_146
L7_146:
    adrp x0, l_text_115@PAGE
    add x0, x0, l_text_115@PAGEOFF
    adrp x1, l_text_114@PAGE
    add x1, x1, l_text_114@PAGEOFF
    bl _lb_core_7trap_at
L7_145:
    ldr x20, [x23]
L7_148:
    movz x16, #14224
    sub x14, x29, x16
    movz x16, #14248
    sub x23, x29, x16
    str x14, [x23]
    add x14, x23, #8
    movz x9, #1024
    str x9, [x14]
    add x14, x23, #16
    mov x9, #0
    str x9, [x14]
    ldr x9, [sp, #48]
    ldr x14, [x9]
    ldr x9, [sp, #48]
    add x15, x9, #8
    ldr x15, [x15]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_68@PAGE
    add x14, x14, l_text_68@PAGEOFF
    mov x0, x23
    mov x1, x14
    movz x2, #2
    bl _lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_83@PAGE
    add x14, x14, l_text_83@PAGEOFF
    mov x0, x23
    mov x1, x14
    movz x2, #4
    bl _lb_core_10format_put
    mov w14, w0
    mov x0, x20
    bl _strlen
    mov x14, x0
    movz x16, #14264
    sub x15, x29, x16
    str x20, [x15]
    add x15, x15, #8
    str x14, [x15]
    mov x0, x23
    mov x1, x20
    mov x2, x14
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_84@PAGE
    add x14, x14, l_text_84@PAGEOFF
    mov x0, x23
    mov x1, x14
    movz x2, #1
    bl _lb_core_10format_put
    mov w14, w0
    mov x0, x23
    bl _lb_core_13format_finish
    movz x16, #14280
    sub x16, x29, x16
    str x0, [x16, #0]
    str x1, [x16, #8]
    movz x16, #14280
    sub x14, x29, x16
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_core_9print_str
    b L7_79
L7_78:
    adrp x14, l_text_86@PAGE
    add x14, x14, l_text_86@PAGEOFF
    movz x16, #14296
    sub x15, x29, x16
    str x14, [x15]
    add x14, x15, #8
    movz x9, #1
    str x9, [x14]
    ldr x9, [sp, #32]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x15
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_debug_9ends_with
    mov w14, w0
    cbnz w14, L7_176
    b L7_85
L7_176:
    mov w15, w14
    b L7_86
L7_85:
    adrp x14, l_text_87@PAGE
    add x14, x14, l_text_87@PAGEOFF
    movz x16, #14312
    sub x15, x29, x16
    str x14, [x15]
    add x14, x15, #8
    movz x9, #2
    str x9, [x14]
    ldr x9, [sp, #32]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x15
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_debug_9ends_with
    mov w15, w0
L7_86:
    and w14, w15, #255
    cbnz w14, L7_82
    b L7_83
L7_82:
    movz x16, #15336
    sub x14, x29, x16
    movz x16, #15360
    sub x23, x29, x16
    str x14, [x23]
    add x14, x23, #8
    movz x9, #1024
    str x9, [x14]
    add x14, x23, #16
    mov x9, #0
    str x9, [x14]
    ldr x9, [sp, #48]
    ldr x14, [x9]
    ldr x9, [sp, #48]
    add x15, x9, #8
    ldr x15, [x15]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_68@PAGE
    add x14, x14, l_text_68@PAGEOFF
    mov x0, x23
    mov x1, x14
    movz x2, #2
    bl _lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_88@PAGE
    add x14, x14, l_text_88@PAGEOFF
    mov x0, x23
    mov x1, x14
    movz x2, #5
    bl _lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #40]
    movz x16, #17096
    sub x10, x29, x16
    str x9, [x10]
    movz x16, #17104
    sub x24, x29, x16
    mov x0, x24
    ldr x1, [sp, #40]
    movz x2, #8
    bl _memcpy
    mov x14, x0
    cbnz x14, L7_149
    b L7_150
L7_150:
    adrp x0, l_text_115@PAGE
    add x0, x0, l_text_115@PAGEOFF
    adrp x1, l_text_114@PAGE
    add x1, x1, l_text_114@PAGEOFF
    bl _lb_core_7trap_at
L7_149:
    ldr x14, [x24]
L7_152:
    mov x0, x14
    bl _lb_core_8show_hex
    movz x16, #15376
    sub x16, x29, x16
    str x0, [x16, #0]
    str x1, [x16, #8]
    movz x16, #15376
    sub x15, x29, x16
    ldr x19, [x15]
    add x15, x15, #8
    ldr x15, [x15]
    mov x0, x23
    mov x1, x19
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    mov x0, x23
    bl _lb_core_13format_finish
    movz x16, #15392
    sub x16, x29, x16
    str x0, [x16, #0]
    str x1, [x16, #8]
    movz x16, #15392
    sub x15, x29, x16
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_core_9print_str
    b L7_84
L7_83:
    ldr x9, [sp, #48]
    add x9, x9, #40
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    ldr x14, [x9]
    movz x10, #32
    cmp x14, x10
    b.ls L7_88
L7_87:
    movz x9, #32
    mov x24, x9
    b L7_89
L7_88:
    mov x24, x14
L7_89:
    movz x16, #15552
    sub x25, x29, x16
    mov x0, x25
    mov x1, #0
    movz x2, #160
    bl _memset
    movz x16, #16905
    sub x9, x29, x16
    str x9, [sp, #8]
    movz x16, #15568
    sub x26, x29, x16
    adrp x27, l_text_90@PAGE
    add x27, x27, l_text_90@PAGEOFF
    movz x16, #15584
    sub x28, x29, x16
    add x23, x28, #8
    mov x9, #0
    mov x21, x9
    mov x9, #0
    mov x19, x9
L7_90:
    cmp x19, x24
    b.hs L7_92
L7_91:
    ldr x9, [sp, #40]
    mov x10, x19
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_89@PAGE
    add x0, x0, l_text_89@PAGEOFF
    adrp x1, l_text_50@PAGE
    add x1, x1, l_text_50@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    movz x16, #16904
    sub x10, x29, x16
    str x14, [x10]
    ldr x0, [sp, #8]
    mov x1, x14
    movz x2, #1
    bl _memcpy
    mov x14, x0
    cbnz x14, L7_153
    b L7_154
L7_154:
    adrp x0, l_text_115@PAGE
    add x0, x0, l_text_115@PAGEOFF
    adrp x1, l_text_114@PAGE
    add x1, x1, l_text_114@PAGEOFF
    bl _lb_core_7trap_at
L7_153:
    ldr x9, [sp, #8]
    ldrb w14, [x9]
    and w20, w14, #255
    movz x16, #17112
    sub x10, x29, x16
    str w20, [x10]
L7_156:
    str x27, [x28]
    movz x9, #16
    str x9, [x23]
    mov x10, x28
    mov x11, x26
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    movz x10, #160
    cmp x21, x10
    b.lo 1f
    adrp x0, l_text_91@PAGE
    add x0, x0, l_text_91@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x25, x21
    and w15, w20, #255
L7_94:
    lsr w20, w15, #4
    and w20, w20, #255
    mov w20, w20
    movz x10, #16
    cmp x20, x10
    b.lo 1f
    adrp x0, l_text_91@PAGE
    add x0, x0, l_text_91@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x20, x27, x20
    ldrb w20, [x20]
    strb w20, [x14]
    add x20, x21, #1
    movz x10, #160
    cmp x20, x10
    b.lo 1f
    adrp x0, l_text_93@PAGE
    add x0, x0, l_text_93@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x20, x25, x20
    movz x10, #15
    and w22, w15, w10
    mov w22, w22
    add x22, x27, x22
    ldrb w22, [x22]
    strb w22, [x20]
    add x20, x21, #2
    movz x10, #160
    cmp x20, x10
    b.lo 1f
    adrp x0, l_text_94@PAGE
    add x0, x0, l_text_94@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x20, x25, x20
    movz x9, #32
    strb w9, [x20]
    add x20, x21, #3
    add x22, x19, #1
    mov x21, x20
    mov x19, x22
    b L7_90
L7_92:
    movz x16, #16608
    sub x14, x29, x16
    movz x16, #16632
    sub x19, x29, x16
    str x14, [x19]
    add x14, x19, #8
    movz x9, #1024
    str x9, [x14]
    add x14, x19, #16
    mov x9, #0
    str x9, [x14]
    ldr x9, [sp, #48]
    ldr x14, [x9]
    ldr x9, [sp, #48]
    add x15, x9, #8
    ldr x15, [x15]
    mov x0, x19
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_68@PAGE
    add x14, x14, l_text_68@PAGEOFF
    mov x0, x19
    mov x1, x14
    movz x2, #2
    bl _lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #24]
    ldr x15, [x9]
    mov x0, x19
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_69@PAGE
    add x14, x14, l_text_69@PAGEOFF
    mov x0, x19
    mov x1, x14
    movz x2, #3
    bl _lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #16]
    ldr x14, [x9]
    mov x0, x19
    mov x1, x14
    bl _lb_core_10format_u64
    mov w14, w0
    adrp x14, l_text_97@PAGE
    add x14, x14, l_text_97@PAGEOFF
    mov x0, x19
    mov x1, x14
    movz x2, #7
    bl _lb_core_10format_put
    mov w14, w0
    movz x10, #161
    cmp x21, x10
    b.lo 1f
    adrp x0, l_text_98@PAGE
    add x0, x0, l_text_98@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x21
    b.ls L7_95
L7_96:
    adrp x0, l_text_98@PAGE
    add x0, x0, l_text_98@PAGEOFF
    adrp x1, l_text_14@PAGE
    add x1, x1, l_text_14@PAGEOFF
    bl _lb_core_7trap_at
L7_95:
    movz x16, #16648
    sub x14, x29, x16
    str x25, [x14]
    add x14, x14, #8
    str x21, [x14]
    movz x16, #16664
    sub x14, x29, x16
    str x25, [x14]
    add x14, x14, #8
    str x21, [x14]
    mov x0, x19
    mov x1, x25
    mov x2, x21
    bl _lb_core_10format_put
    mov w14, w0
    mov x0, x19
    bl _lb_core_13format_finish
    movz x16, #16680
    sub x16, x29, x16
    str x0, [x16, #0]
    str x1, [x16, #8]
    movz x16, #16680
    sub x14, x29, x16
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_core_9print_str
L7_84:
L7_79:
L7_74:
L7_69:
L7_64:
L7_59:
L7_54:
L7_49:
L7_40:
L7_31:
L7_26:
L7_21:
L7_16:
L7_7:
    ldr x19, [sp, #17144]
    ldr x20, [sp, #17136]
    ldr x21, [sp, #17128]
    ldr x22, [sp, #17120]
    ldr x23, [sp, #17112]
    ldr x24, [sp, #17104]
    ldr x25, [sp, #17096]
    ldr x26, [sp, #17088]
    ldr x27, [sp, #17080]
    ldr x28, [sp, #17072]
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
    cbnz w14, L8_11
    b L8_4
L8_11:
    mov w15, w14
    b L8_5
L8_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
L8_5:
    and w14, w15, #255
    cbnz w14, L8_1
    b L8_2
L8_1:
    adrp x14, l_text_14@PAGE
    add x14, x14, l_text_14@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, l_text_112@PAGE
    add x14, x14, l_text_112@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L8_3
L8_2:
L8_3:
    mov x10, #0
    cmp x19, x10
    b.ls L8_7
L8_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _memcpy
    mov x14, x0
    cbnz x14, L8_9
    b L8_10
L8_10:
    adrp x0, l_text_113@PAGE
    add x0, x0, l_text_113@PAGEOFF
    adrp x1, l_text_114@PAGE
    add x1, x1, l_text_114@PAGEOFF
    bl _lb_core_7trap_at
L8_9:
    b L8_8
L8_7:
L8_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_memory_read_0g1_i64
    .weak_definition _lb_memory_read_0g1_i64
_lb_memory_read_0g1_i64:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x19, x29, #48
    sub x14, x29, #40
    ldr x14, [x14]
    mov x0, x19
    mov x1, x14
    movz x2, #8
    bl _memcpy
    mov x14, x0
    cbnz x14, L9_1
    b L9_2
L9_2:
    adrp x0, l_text_115@PAGE
    add x0, x0, l_text_115@PAGEOFF
    adrp x1, l_text_114@PAGE
    add x1, x1, l_text_114@PAGEOFF
    bl _lb_core_7trap_at
L9_1:
    ldr x14, [x19]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_3:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_read_0g1_i32
    .weak_definition _lb_memory_read_0g1_i32
_lb_memory_read_0g1_i32:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x19, x29, #44
    sub x14, x29, #40
    ldr x14, [x14]
    mov x0, x19
    mov x1, x14
    movz x2, #4
    bl _memcpy
    mov x14, x0
    cbnz x14, L10_1
    b L10_2
L10_2:
    adrp x0, l_text_115@PAGE
    add x0, x0, l_text_115@PAGEOFF
    adrp x1, l_text_114@PAGE
    add x1, x1, l_text_114@PAGEOFF
    bl _lb_core_7trap_at
L10_1:
    ldrsw x14, [x19]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_3:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_read_0g1_i16
    .weak_definition _lb_memory_read_0g1_i16
_lb_memory_read_0g1_i16:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x19, x29, #42
    sub x14, x29, #40
    ldr x14, [x14]
    mov x0, x19
    mov x1, x14
    movz x2, #2
    bl _memcpy
    mov x14, x0
    cbnz x14, L11_1
    b L11_2
L11_2:
    adrp x0, l_text_115@PAGE
    add x0, x0, l_text_115@PAGEOFF
    adrp x1, l_text_114@PAGE
    add x1, x1, l_text_114@PAGEOFF
    bl _lb_core_7trap_at
L11_1:
    ldrsh w14, [x19]
    sxth w14, w14
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_3:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_read_0g1_i8
    .weak_definition _lb_memory_read_0g1_i8
_lb_memory_read_0g1_i8:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x19, x29, #41
    sub x14, x29, #40
    ldr x14, [x14]
    mov x0, x19
    mov x1, x14
    movz x2, #1
    bl _memcpy
    mov x14, x0
    cbnz x14, L12_1
    b L12_2
L12_2:
    adrp x0, l_text_115@PAGE
    add x0, x0, l_text_115@PAGEOFF
    adrp x1, l_text_114@PAGE
    add x1, x1, l_text_114@PAGEOFF
    bl _lb_core_7trap_at
L12_1:
    ldrsb w14, [x19]
    sxtb w14, w14
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_3:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_read_0g1_u64
    .weak_definition _lb_memory_read_0g1_u64
_lb_memory_read_0g1_u64:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x19, x29, #48
    sub x14, x29, #40
    ldr x14, [x14]
    mov x0, x19
    mov x1, x14
    movz x2, #8
    bl _memcpy
    mov x14, x0
    cbnz x14, L13_1
    b L13_2
L13_2:
    adrp x0, l_text_115@PAGE
    add x0, x0, l_text_115@PAGEOFF
    adrp x1, l_text_114@PAGE
    add x1, x1, l_text_114@PAGEOFF
    bl _lb_core_7trap_at
L13_1:
    ldr x14, [x19]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_3:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_read_0g1_u32
    .weak_definition _lb_memory_read_0g1_u32
_lb_memory_read_0g1_u32:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x19, x29, #44
    sub x14, x29, #40
    ldr x14, [x14]
    mov x0, x19
    mov x1, x14
    movz x2, #4
    bl _memcpy
    mov x14, x0
    cbnz x14, L14_1
    b L14_2
L14_2:
    adrp x0, l_text_115@PAGE
    add x0, x0, l_text_115@PAGEOFF
    adrp x1, l_text_114@PAGE
    add x1, x1, l_text_114@PAGEOFF
    bl _lb_core_7trap_at
L14_1:
    ldr w14, [x19]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L14_3:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_read_0g1_u16
    .weak_definition _lb_memory_read_0g1_u16
_lb_memory_read_0g1_u16:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x19, x29, #42
    sub x14, x29, #40
    ldr x14, [x14]
    mov x0, x19
    mov x1, x14
    movz x2, #2
    bl _memcpy
    mov x14, x0
    cbnz x14, L15_1
    b L15_2
L15_2:
    adrp x0, l_text_115@PAGE
    add x0, x0, l_text_115@PAGEOFF
    adrp x1, l_text_114@PAGE
    add x1, x1, l_text_114@PAGEOFF
    bl _lb_core_7trap_at
L15_1:
    ldrh w14, [x19]
    and w14, w14, #65535
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L15_3:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_read_0g1_u8
    .weak_definition _lb_memory_read_0g1_u8
_lb_memory_read_0g1_u8:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x19, x29, #41
    sub x14, x29, #40
    ldr x14, [x14]
    mov x0, x19
    mov x1, x14
    movz x2, #1
    bl _memcpy
    mov x14, x0
    cbnz x14, L16_1
    b L16_2
L16_2:
    adrp x0, l_text_115@PAGE
    add x0, x0, l_text_115@PAGEOFF
    adrp x1, l_text_114@PAGE
    add x1, x1, l_text_114@PAGEOFF
    bl _lb_core_7trap_at
L16_1:
    ldrb w14, [x19]
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_3:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_read_0g1_bool
    .weak_definition _lb_memory_read_0g1_bool
_lb_memory_read_0g1_bool:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x19, x29, #41
    sub x14, x29, #40
    ldr x14, [x14]
    mov x0, x19
    mov x1, x14
    movz x2, #1
    bl _memcpy
    mov x14, x0
    cbnz x14, L17_1
    b L17_2
L17_2:
    adrp x0, l_text_115@PAGE
    add x0, x0, l_text_115@PAGEOFF
    adrp x1, l_text_114@PAGE
    add x1, x1, l_text_114@PAGEOFF
    bl _lb_core_7trap_at
L17_1:
    ldrb w14, [x19]
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L17_3:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_read_0g1_f64
    .weak_definition _lb_memory_read_0g1_f64
_lb_memory_read_0g1_f64:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x19, x29, #48
    sub x14, x29, #40
    ldr x14, [x14]
    mov x0, x19
    mov x1, x14
    movz x2, #8
    bl _memcpy
    mov x14, x0
    cbnz x14, L18_1
    b L18_2
L18_2:
    adrp x0, l_text_115@PAGE
    add x0, x0, l_text_115@PAGEOFF
    adrp x1, l_text_114@PAGE
    add x1, x1, l_text_114@PAGEOFF
    bl _lb_core_7trap_at
L18_1:
    ldr d24, [x19]
    fmov d16, d24
    fmov d0, d16
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L18_3:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_read_0g1_f32
    .weak_definition _lb_memory_read_0g1_f32
_lb_memory_read_0g1_f32:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x19, x29, #44
    sub x14, x29, #40
    ldr x14, [x14]
    mov x0, x19
    mov x1, x14
    movz x2, #4
    bl _memcpy
    mov x14, x0
    cbnz x14, L19_1
    b L19_2
L19_2:
    adrp x0, l_text_115@PAGE
    add x0, x0, l_text_115@PAGEOFF
    adrp x1, l_text_114@PAGE
    add x1, x1, l_text_114@PAGEOFF
    bl _lb_core_7trap_at
L19_1:
    ldr s24, [x19]
    fmov s16, s24
    fmov s0, s16
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L19_3:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_read_0g1_str
    .weak_definition _lb_memory_read_0g1_str
_lb_memory_read_0g1_str:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    str x20, [sp, #48]
    sub x16, x29, #64
    str x0, [x16]
    sub x19, x29, #80
    sub x14, x29, #64
    ldr x14, [x14]
    mov x0, x19
    mov x1, x14
    movz x2, #16
    bl _memcpy
    mov x14, x0
    cbnz x14, L20_1
    b L20_2
L20_2:
    adrp x0, l_text_115@PAGE
    add x0, x0, l_text_115@PAGEOFF
    adrp x1, l_text_114@PAGE
    add x1, x1, l_text_114@PAGEOFF
    bl _lb_core_7trap_at
L20_1:
    sub x20, x29, #48
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L20_3:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_read_0g1_5c_str
    .weak_definition _lb_memory_read_0g1_5c_str
_lb_memory_read_0g1_5c_str:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x19, x29, #48
    sub x14, x29, #40
    ldr x14, [x14]
    mov x0, x19
    mov x1, x14
    movz x2, #8
    bl _memcpy
    mov x14, x0
    cbnz x14, L21_1
    b L21_2
L21_2:
    adrp x0, l_text_115@PAGE
    add x0, x0, l_text_115@PAGEOFF
    adrp x1, l_text_114@PAGE
    add x1, x1, l_text_114@PAGEOFF
    bl _lb_core_7trap_at
L21_1:
    ldr x14, [x19]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L21_3:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_memory_read_0g1_usize
    .weak_definition _lb_memory_read_0g1_usize
_lb_memory_read_0g1_usize:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x19, x29, #48
    sub x14, x29, #40
    ldr x14, [x14]
    mov x0, x19
    mov x1, x14
    movz x2, #8
    bl _memcpy
    mov x14, x0
    cbnz x14, L22_1
    b L22_2
L22_2:
    adrp x0, l_text_115@PAGE
    add x0, x0, l_text_115@PAGEOFF
    adrp x1, l_text_114@PAGE
    add x1, x1, l_text_114@PAGEOFF
    bl _lb_core_7trap_at
L22_1:
    ldr x14, [x19]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L22_3:
    adrp x0, l_text_116@PAGE
    add x0, x0, l_text_116@PAGEOFF
    adrp x1, l_text_11@PAGE
    add x1, x1, l_text_11@PAGEOFF
    bl _lb_core_7trap_at

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_debug_0init

    .section __TEXT,__const
l_text_0:
    .asciz "src/std/debug.lucb:46:9"
l_text_1:
    .asciz "src/std/debug.lucb:47:5"
l_text_2:
    .asciz "src/std/debug.lucb:51:9"
l_text_3:
    .asciz "LUCE_DEBUG"
l_text_4:
    .asciz "src/std/debug.lucb:60:5"
l_text_5:
    .asciz "src/std/debug.lucb:62:5"
l_text_6:
    .asciz "stopped at "
l_text_7:
    .asciz ":"
l_text_8:
    .asciz " in "
l_text_9:
    .asciz "src/std/debug.lucb:83:9"
l_text_10:
    .asciz "src/std/debug.lucb:86:9"
l_text_11:
    .asciz "unreachable"
l_text_12:
    .asciz "src/std/debug.lucb:87:5"
l_text_13:
    .asciz "src/std/debug.lucb:92:5"
l_text_14:
    .asciz "index out of bounds"
l_text_15:
    .asciz "src/std/debug.lucb:99:9"
l_text_16:
    .asciz "r"
l_text_17:
    .asciz "run"
l_text_18:
    .asciz "c"
l_text_19:
    .asciz "continue"
l_text_20:
    .asciz "s"
l_text_21:
    .asciz "step"
l_text_22:
    .asciz "n"
l_text_23:
    .asciz "next"
l_text_24:
    .asciz "q"
l_text_25:
    .asciz "quit"
l_text_26:
    .asciz "b"
l_text_27:
    .asciz "break"
l_text_28:
    .asciz "p"
l_text_29:
    .asciz "print"
l_text_30:
    .asciz "locals"
l_text_31:
    .asciz "bt"
l_text_32:
    .asciz "backtrace"
l_text_33:
    .asciz "unknown command `"
l_text_34:
    .asciz "`; commands: break FILE:LINE, run, step, next, print NAME, locals, backtrace, quit"
l_text_35:
    .asciz "src/std/debug.lucb:128:9"
l_text_36:
    .asciz "src/std/debug.lucb:129:9"
l_text_37:
    .asciz "break needs FILE:LINE"
l_text_38:
    .asciz "src/std/debug.lucb:135:5"
l_text_39:
    .asciz "src/std/debug.lucb:136:5"
l_text_40:
    .asciz "src/std/debug.lucb:137:5"
l_text_41:
    .asciz "cannot set that breakpoint"
l_text_42:
    .asciz "src/std/debug.lucb:140:5"
l_text_43:
    .asciz "src/std/debug.lucb:141:5"
l_text_44:
    .asciz "src/std/debug.lucb:142:5"
l_text_45:
    .asciz "src/std/debug.lucb:143:5"
l_text_46:
    .asciz "src/std/debug.lucb:144:5"
l_text_47:
    .asciz "breakpoint "
l_text_48:
    .asciz " at "
l_text_49:
    .asciz "src/std/debug.lucb:152:9"
l_text_50:
    .asciz "integer overflow"
l_text_51:
    .asciz "src/std/debug.lucb:153:5"
l_text_52:
    .asciz "src/std/debug.lucb:159:9"
l_text_53:
    .asciz "src/std/debug.lucb:160:9"
l_text_54:
    .asciz "#"
l_text_55:
    .asciz " "
l_text_56:
    .asciz "src/std/debug.lucb:163:9"
l_text_57:
    .asciz "src/std/debug.lucb:166:5"
l_text_58:
    .asciz "src/std/debug.lucb:171:9"
l_text_59:
    .asciz "src/std/debug.lucb:174:5"
l_text_60:
    .asciz "src/std/debug.lucb:182:9"
l_text_61:
    .asciz "no local named `"
l_text_62:
    .asciz "`"
l_text_63:
    .asciz "src/std/debug.lucb:187:5"
l_text_64:
    .asciz "src/std/debug.lucb:188:5"
l_text_65:
    .asciz "src/std/debug.lucb:193:5"
l_text_66:
    .asciz "i64"
l_text_67:
    .asciz "isize"
l_text_68:
    .asciz ": "
l_text_69:
    .asciz " = "
l_text_70:
    .asciz "i32"
l_text_71:
    .asciz "i16"
l_text_72:
    .asciz "i8"
l_text_73:
    .asciz "u64"
l_text_74:
    .asciz "usize"
l_text_75:
    .asciz "u32"
l_text_76:
    .asciz "char"
l_text_77:
    .asciz "u16"
l_text_78:
    .asciz "u8"
l_text_79:
    .asciz "bool"
l_text_80:
    .asciz "f64"
l_text_81:
    .asciz "f32"
l_text_82:
    .asciz "str"
l_text_83:
    .asciz " = \""
l_text_84:
    .asciz "\""
l_text_85:
    .asciz "c.str"
l_text_86:
    .asciz "*"
l_text_87:
    .asciz "*?"
l_text_88:
    .asciz " = 0x"
l_text_89:
    .asciz "src/std/debug.lucb:233:13"
l_text_90:
    .asciz "0123456789abcdef"
l_text_91:
    .asciz "src/std/debug.lucb:235:13"
l_text_92:
    .asciz "shift count out of range"
l_text_93:
    .asciz "src/std/debug.lucb:236:13"
l_text_94:
    .asciz "src/std/debug.lucb:237:13"
l_text_95:
    .asciz "src/std/debug.lucb:238:13"
l_text_96:
    .asciz "src/std/debug.lucb:239:13"
l_text_97:
    .asciz " bytes "
l_text_98:
    .asciz "src/std/debug.lucb:240:9"
l_text_99:
    .asciz "src/std/debug.lucb:244:5"
l_text_100:
    .asciz "src/std/debug.lucb:245:9"
l_text_101:
    .asciz "src/std/debug.lucb:246:5"
l_text_102:
    .asciz "src/std/debug.lucb:251:5"
l_text_103:
    .asciz "src/std/debug.lucb:252:9"
l_text_104:
    .asciz "src/std/debug.lucb:253:5"
l_text_105:
    .asciz "src/std/debug.lucb:254:9"
l_text_106:
    .asciz "src/std/debug.lucb:255:5"
l_text_107:
    .asciz "src/std/debug.lucb:262:9"
l_text_108:
    .asciz "src/std/debug.lucb:267:9"
l_text_109:
    .asciz "src/std/debug.lucb:269:9"
l_text_110:
    .asciz "src/std/debug.lucb:270:9"
l_text_111:
    .asciz "src/std/debug.lucb:271:5"
l_text_112:
    .asciz "src/std/memory.lucb:326:9"
l_text_113:
    .asciz "src/std/memory.lucb:328:9"
l_text_114:
    .asciz "null_foreign"
l_text_115:
    .asciz "src/std/memory.lucb:342:5"
l_text_116:
    .asciz "src/std/memory.lucb:343:5"

    .section __DATA,__const
    .p2align 3
    .globl _lb_debug_activations
    .zerofill __DATA,__bss,_lb_debug_activations,12288,3
    .globl _lb_debug_depth
    .zerofill __DATA,__bss,_lb_debug_depth,8,3
    .globl _lb_debug_checked
    .zerofill __DATA,__bss,_lb_debug_checked,1,0
    .globl _lb_debug_active
    .zerofill __DATA,__bss,_lb_debug_active,1,0
    .globl _lb_debug_started
    .zerofill __DATA,__bss,_lb_debug_started,1,0
    .globl _lb_debug_stepping
    .zerofill __DATA,__bss,_lb_debug_stepping,1,0
    .globl _lb_debug_9step_over
    .zerofill __DATA,__bss,_lb_debug_9step_over,8,3
    .globl _lb_debug_breaks
    .zerofill __DATA,__bss,_lb_debug_breaks,768,3
    .globl _lb_debug_11break_count
    .zerofill __DATA,__bss,_lb_debug_11break_count,8,3
    .globl _lb_debug_names
    .zerofill __DATA,__bss,_lb_debug_names,4096,0
    .globl _lb_debug_10names_used
    .zerofill __DATA,__bss,_lb_debug_10names_used,8,3
    .globl _lb_debug_10line_bytes
    .zerofill __DATA,__bss,_lb_debug_10line_bytes,512,0

