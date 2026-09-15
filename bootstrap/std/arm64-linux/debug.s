    .text

    .p2align 2
    .globl lb_debug_0init
    .type lb_debug_0init, %function
lb_debug_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_debug_0init, .-lb_debug_0init

    .p2align 2
    .globl lb_debug_enter
    .type lb_debug_enter, %function
lb_debug_enter:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    str x20, [sp, #48]
    str x21, [sp, #40]
    sub x16, x29, #56
    str x0, [x16]
    adrp x19, lb_debug_depth
    add x19, x19, :lo12:lb_debug_depth
    ldr x14, [x19]
    movz x10, #512
    cmp x14, x10
    b.hs .L1_2
.L1_1:
    adrp x15, lb_debug_activations
    add x15, x15, :lo12:lb_debug_activations
    movz x10, #24
    mul x12, x14, x10
    add x20, x15, x12
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
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b .L1_3
.L1_2:
.L1_3:
    ldr x14, [x19]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_1
    add x0, x0, :lo12:.Ltext_1
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x19]
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_debug_enter, .-lb_debug_enter

    .p2align 2
    .globl lb_debug_leave
    .type lb_debug_leave, %function
lb_debug_leave:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, lb_debug_depth
    add x14, x14, :lo12:lb_debug_depth
    ldr x15, [x14]
    mov x10, #0
    cmp x15, x10
    b.ls .L2_2
.L2_1:
    mov x9, x15
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x12, x9
    str x12, [x14]
    b .L2_3
.L2_2:
.L2_3:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_debug_leave, .-lb_debug_leave

    .p2align 2
    .globl lb_debug_at
    .type lb_debug_at, %function
lb_debug_at:
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
    adrp x14, lb_debug_checked
    add x14, x14, :lo12:lb_debug_checked
    ldrb w15, [x14]
    mov x10, #0
    cmp w15, w10
    b.ne .L3_2
.L3_1:
    movz x9, #1
    strb w9, [x14]
    adrp x19, lb_debug_active
    add x19, x19, :lo12:lb_debug_active
    adrp x15, .Ltext_3
    add x15, x15, :lo12:.Ltext_3
    mov x0, x15
    bl getenv
    mov x15, x0
    mov x10, #0
    cmp x15, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    strb w15, [x19]
    b .L3_3
.L3_2:
.L3_3:
    adrp x14, lb_debug_active
    add x14, x14, :lo12:lb_debug_active
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, .L3_45
    b .L3_7
.L3_45:
    mov w15, w14
    b .L3_8
.L3_7:
    adrp x14, lb_debug_depth
    add x14, x14, :lo12:lb_debug_depth
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w15, eq
.L3_8:
    and w14, w15, #255
    cbnz w14, .L3_46
    b .L3_9
.L3_46:
    mov w15, w14
    b .L3_10
.L3_9:
    adrp x14, lb_debug_depth
    add x14, x14, :lo12:lb_debug_depth
    ldr x14, [x14]
    movz x10, #512
    cmp x14, x10
    cset w15, hi
.L3_10:
    and w14, w15, #255
    cbnz w14, .L3_4
    b .L3_5
.L3_4:
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
.L3_11:
    b .L3_6
.L3_5:
.L3_6:
    adrp x19, lb_debug_depth
    add x19, x19, :lo12:lb_debug_depth
    ldr x14, [x19]
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_4
    add x0, x0, :lo12:.Ltext_4
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    str x9, [sp, #8]
    sub x14, x29, #112
    ldr x21, [x14]
    adrp x14, lb_debug_activations
    add x14, x14, :lo12:lb_debug_activations
    ldr x9, [sp, #8]
    movz x10, #512
    cmp x9, x10
    b.lo 1f
    adrp x0, .Ltext_5
    add x0, x0, :lo12:.Ltext_5
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
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
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    adrp x14, lb_debug_started
    add x14, x14, :lo12:lb_debug_started
    ldrb w15, [x14]
    mov x10, #0
    cmp w15, w10
    b.ne .L3_13
.L3_12:
    movz x9, #1
    strb w9, [x14]
    movz x9, #1
    mov w15, w9
    b .L3_14
.L3_13:
    adrp x14, lb_debug_stepping
    add x14, x14, :lo12:lb_debug_stepping
    ldrb w14, [x14]
    cbnz w14, .L3_15
    b .L3_16
.L3_15:
    movz x9, #1
    mov w14, w9
    b .L3_17
.L3_16:
    adrp x14, lb_debug_9step_over
    add x14, x14, :lo12:lb_debug_9step_over
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w15, hi
    cbnz w15, .L3_21
    b .L3_47
.L3_47:
    mov w14, w15
    b .L3_22
.L3_21:
    ldr x15, [x19]
    cmp x15, x14
    cset w15, ls
    mov w14, w15
.L3_22:
    and w15, w14, #255
    cbnz w15, .L3_18
    b .L3_19
.L3_18:
    movz x9, #1
    mov w14, w9
    b .L3_20
.L3_19:
    add x14, x21, #16
    mov x10, x14
    sub x11, x29, #1248
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x10, x29, #1264
    str w24, [x10]
    adrp x19, lb_debug_11break_count
    add x19, x19, :lo12:lb_debug_11break_count
    sub x22, x29, #1288
    adrp x23, lb_debug_breaks
    add x23, x23, :lo12:lb_debug_breaks
    add x25, x22, #16
    sub x20, x29, #1248
    add x26, x22, #8
    add x27, x20, #8
    mov x9, #0
    mov x28, x9
.L3_30:
    ldr x14, [x19]
    cmp x28, x14
    b.hs .L3_32
.L3_31:
    movz x10, #32
    cmp x28, x10
    b.lo 1f
    adrp x0, .Ltext_9
    add x0, x0, :lo12:.Ltext_9
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
1:
    movz x10, #24
    mul x14, x28, x10
    add x14, x23, x14
    mov x10, x14
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    ldr w14, [x25]
    cmp w24, w14
    cset w14, eq
    cbnz w14, .L3_36
    b .L3_48
.L3_48:
    mov w15, w14
    b .L3_37
.L3_36:
    ldr x14, [x26]
    ldr x15, [x27]
    cmp x14, x15
    cset w15, eq
    cbnz w15, .L3_38
    b .L3_49
.L3_49:
    mov w14, w15
    b .L3_39
.L3_38:
    ldr x15, [x22]
    ldr x12, [x20]
    mov x0, x15
    mov x1, x12
    mov x2, x14
    bl memcmp
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
.L3_39:
    and w15, w14, #255
    cbnz w15, .L3_50
    b .L3_40
.L3_50:
    mov w14, w15
    b .L3_41
.L3_40:
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x22
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl lb_debug_9ends_with
    mov w14, w0
.L3_41:
    and w15, w14, #255
.L3_37:
    and w14, w15, #255
    cbnz w14, .L3_33
    b .L3_34
.L3_33:
    movz x9, #1
    sub x10, x29, #1296
    str w9, [x10]
    movz x9, #1
    mov w14, w9
    b .L3_44
.L3_42:
    b .L3_35
.L3_34:
.L3_35:
    add x14, x28, #1
    mov x28, x14
    b .L3_30
.L3_32:
    mov x9, #0
    sub x10, x29, #1296
    str w9, [x10]
    mov x9, #0
    mov w14, w9
    b .L3_44
.L3_43:
    adrp x0, .Ltext_12
    add x0, x0, :lo12:.Ltext_12
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
.L3_44:
    cbnz w14, .L3_23
    b .L3_24
.L3_23:
    movz x9, #1
    mov w14, w9
    b .L3_25
.L3_24:
    mov x9, #0
    mov w14, w9
.L3_25:
.L3_20:
.L3_17:
    mov w15, w14
.L3_14:
    and w14, w15, #255
    mov x10, #0
    cmp w14, w10
    b.ne .L3_27
.L3_26:
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
.L3_29:
    b .L3_28
.L3_27:
.L3_28:
    adrp x14, lb_debug_stepping
    add x14, x14, :lo12:lb_debug_stepping
    mov x9, #0
    strb w9, [x14]
    adrp x14, lb_debug_9step_over
    add x14, x14, :lo12:lb_debug_9step_over
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
    adrp x14, .Ltext_6
    add x14, x14, :lo12:.Ltext_6
    mov x0, x19
    mov x1, x14
    movz x2, #11
    bl lb_core_10format_put
    mov w14, w0
    add x14, x21, #16
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    mov x0, x19
    mov x1, x15
    mov x2, x14
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_7
    add x14, x14, :lo12:.Ltext_7
    mov x0, x19
    mov x1, x14
    movz x2, #1
    bl lb_core_10format_put
    mov w14, w0
    mov w14, w24
    mov x0, x19
    mov x1, x14
    bl lb_core_10format_u64
    mov w14, w0
    adrp x14, .Ltext_8
    add x14, x14, :lo12:.Ltext_8
    mov x0, x19
    mov x1, x14
    movz x2, #4
    bl lb_core_10format_put
    mov w14, w0
    ldr x14, [x21]
    add x15, x21, #8
    ldr x15, [x15]
    mov x0, x19
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    mov x0, x19
    bl lb_core_13format_finish
    sub x16, x29, #1232
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #1232
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_9print_str
    ldr x0, [sp, #8]
    bl lb_debug_prompt
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

    .size lb_debug_at, .-lb_debug_at

    .p2align 2
    .globl lb_debug_9ends_with
    .type lb_debug_9ends_with, %function
lb_debug_9ends_with:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    str x21, [sp, #72]
    str x22, [sp, #64]
    sub x16, x29, #64
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #80
    str x2, [x16]
    str x3, [x16, #8]
    sub x14, x29, #80
    add x15, x14, #8
    ldr x15, [x15]
    sub x12, x29, #64
    add x13, x12, #8
    ldr x13, [x13]
    cmp x15, x13
    b.ls .L4_2
.L4_1:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    ldr x22, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_4:
    b .L4_3
.L4_2:
.L4_3:
    ldr x20, [x12]
    sub x21, x13, x15
    add x19, x13, #1
    cmp x21, x19
    b.lo 1f
    adrp x0, .Ltext_13
    add x0, x0, :lo12:.Ltext_13
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
1:
    cmp x13, x19
    b.lo 1f
    adrp x0, .Ltext_13
    add x0, x0, :lo12:.Ltext_13
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
1:
    cmp x21, x13
    b.ls .L4_5
.L4_6:
    adrp x0, .Ltext_13
    add x0, x0, :lo12:.Ltext_13
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
.L4_5:
    add x12, x20, x21
    sub x19, x13, x21
    sub x22, x29, #96
    str x12, [x22]
    add x22, x22, #8
    str x19, [x22]
    sub x22, x29, #112
    str x12, [x22]
    add x22, x22, #8
    str x19, [x22]
    cmp x15, x19
    cset w22, eq
    cbnz w22, .L4_7
    b .L4_10
.L4_10:
    mov w14, w22
    b .L4_8
.L4_7:
    ldr x15, [x14]
    mov x0, x12
    mov x1, x15
    mov x2, x19
    bl memcmp
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
.L4_8:
    and w15, w14, #255
    and w15, w15, #255
    mov x9, x15
    mov x0, x9
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    ldr x22, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_9:
    adrp x0, .Ltext_13
    add x0, x0, :lo12:.Ltext_13
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at

    .size lb_debug_9ends_with, .-lb_debug_9ends_with

    .p2align 2
    .globl lb_debug_prompt
    .type lb_debug_prompt, %function
lb_debug_prompt:
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
    str x9, [sp, #176]
    sub x27, x29, #1641
    adrp x9, lb_debug_10line_bytes
    add x9, x9, :lo12:lb_debug_10line_bytes
    str x9, [sp, #528]
    adrp x9, lb_debug_10line_bytes
    add x9, x9, :lo12:lb_debug_10line_bytes
    str x9, [sp, #168]
    sub x9, x29, #1688
    str x9, [sp, #520]
    ldr x9, [sp, #520]
    add x9, x9, #8
    str x9, [sp, #512]
    sub x9, x29, #1704
    str x9, [sp, #504]
    ldr x9, [sp, #504]
    add x9, x9, #8
    str x9, [sp, #496]
    sub x9, x29, #1728
    str x9, [sp, #488]
    ldr x9, [sp, #488]
    add x9, x9, #16
    str x9, [sp, #480]
    sub x9, x29, #1640
    str x9, [sp, #472]
    sub x9, x29, #1672
    str x9, [sp, #544]
    sub x9, x29, #1640
    str x9, [sp, #536]
    sub x9, x29, #152
    str x9, [sp, #160]
    ldr x9, [sp, #160]
    add x9, x9, #16
    str x9, [sp, #976]
    sub x9, x29, #168
    str x9, [sp, #968]
    sub x9, x29, #184
    str x9, [sp, #152]
    sub x14, x29, #1760
    sub x9, x29, #1776
    str x9, [sp, #464]
    ldr x9, [sp, #464]
    add x9, x9, #8
    str x9, [sp, #456]
    sub x9, x29, #1792
    str x9, [sp, #448]
    ldr x9, [sp, #448]
    add x9, x9, #8
    str x9, [sp, #440]
    sub x9, x29, #1744
    str x9, [sp, #432]
    sub x9, x29, #200
    str x9, [sp, #960]
    sub x9, x29, #216
    str x9, [sp, #144]
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
    str x9, [sp, #424]
    ldr x9, [sp, #424]
    add x9, x9, #8
    str x9, [sp, #416]
    sub x9, x29, #1856
    str x9, [sp, #408]
    ldr x9, [sp, #408]
    add x9, x9, #8
    str x9, [sp, #400]
    sub x9, x29, #1808
    str x9, [sp, #392]
    sub x9, x29, #264
    str x9, [sp, #920]
    adrp x9, .Ltext_16
    add x9, x9, :lo12:.Ltext_16
    str x9, [sp, #912]
    sub x9, x29, #280
    str x9, [sp, #136]
    ldr x9, [sp, #136]
    add x9, x9, #8
    str x9, [sp, #904]
    adrp x9, .Ltext_17
    add x9, x9, :lo12:.Ltext_17
    str x9, [sp, #896]
    sub x9, x29, #296
    str x9, [sp, #128]
    ldr x9, [sp, #128]
    add x9, x9, #8
    str x9, [sp, #888]
    adrp x9, .Ltext_18
    add x9, x9, :lo12:.Ltext_18
    str x9, [sp, #880]
    sub x9, x29, #312
    str x9, [sp, #120]
    ldr x9, [sp, #120]
    add x9, x9, #8
    str x9, [sp, #872]
    adrp x9, .Ltext_19
    add x9, x9, :lo12:.Ltext_19
    str x9, [sp, #864]
    sub x9, x29, #328
    str x9, [sp, #112]
    ldr x9, [sp, #112]
    add x9, x9, #8
    str x9, [sp, #856]
    adrp x9, .Ltext_20
    add x9, x9, :lo12:.Ltext_20
    str x9, [sp, #848]
    sub x9, x29, #344
    str x9, [sp, #104]
    ldr x9, [sp, #104]
    add x9, x9, #8
    str x9, [sp, #840]
    adrp x9, .Ltext_21
    add x9, x9, :lo12:.Ltext_21
    str x9, [sp, #832]
    sub x9, x29, #360
    str x9, [sp, #96]
    ldr x9, [sp, #96]
    add x9, x9, #8
    str x9, [sp, #824]
    adrp x9, .Ltext_22
    add x9, x9, :lo12:.Ltext_22
    str x9, [sp, #816]
    sub x9, x29, #376
    str x9, [sp, #88]
    ldr x9, [sp, #88]
    add x9, x9, #8
    str x9, [sp, #808]
    adrp x9, .Ltext_23
    add x9, x9, :lo12:.Ltext_23
    str x9, [sp, #800]
    sub x9, x29, #392
    str x9, [sp, #80]
    ldr x9, [sp, #80]
    add x9, x9, #8
    str x9, [sp, #792]
    adrp x9, .Ltext_24
    add x9, x9, :lo12:.Ltext_24
    str x9, [sp, #784]
    sub x9, x29, #408
    str x9, [sp, #72]
    ldr x9, [sp, #72]
    add x9, x9, #8
    str x9, [sp, #776]
    adrp x9, .Ltext_25
    add x9, x9, :lo12:.Ltext_25
    str x9, [sp, #768]
    sub x9, x29, #424
    str x9, [sp, #64]
    ldr x9, [sp, #64]
    add x9, x9, #8
    str x9, [sp, #760]
    adrp x9, .Ltext_25
    add x9, x9, :lo12:.Ltext_25
    str x9, [sp, #752]
    sub x9, x29, #440
    str x9, [sp, #744]
    ldr x9, [sp, #744]
    add x9, x9, #8
    str x9, [sp, #736]
    adrp x9, .Ltext_26
    add x9, x9, :lo12:.Ltext_26
    str x9, [sp, #728]
    sub x9, x29, #456
    str x9, [sp, #56]
    ldr x9, [sp, #56]
    add x9, x9, #8
    str x9, [sp, #720]
    adrp x9, .Ltext_27
    add x9, x9, :lo12:.Ltext_27
    str x9, [sp, #712]
    sub x9, x29, #472
    str x9, [sp, #48]
    ldr x9, [sp, #48]
    add x9, x9, #8
    str x9, [sp, #704]
    adrp x9, .Ltext_28
    add x9, x9, :lo12:.Ltext_28
    str x9, [sp, #696]
    sub x9, x29, #488
    str x9, [sp, #40]
    ldr x9, [sp, #40]
    add x9, x9, #8
    str x9, [sp, #688]
    adrp x9, .Ltext_29
    add x9, x9, :lo12:.Ltext_29
    str x9, [sp, #680]
    sub x9, x29, #504
    str x9, [sp, #32]
    ldr x9, [sp, #32]
    add x9, x9, #8
    str x9, [sp, #672]
    adrp x9, .Ltext_30
    add x9, x9, :lo12:.Ltext_30
    str x9, [sp, #656]
    sub x9, x29, #520
    str x9, [sp, #24]
    ldr x9, [sp, #24]
    add x9, x9, #8
    str x9, [sp, #648]
    adrp x9, .Ltext_31
    add x9, x9, :lo12:.Ltext_31
    str x9, [sp, #632]
    sub x9, x29, #536
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    add x9, x9, #8
    str x9, [sp, #624]
    adrp x9, .Ltext_32
    add x9, x9, :lo12:.Ltext_32
    str x9, [sp, #616]
    sub x9, x29, #552
    str x9, [sp, #8]
    ldr x9, [sp, #8]
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
    adrp x9, .Ltext_33
    add x9, x9, :lo12:.Ltext_33
    str x9, [sp, #568]
    adrp x9, .Ltext_34
    add x9, x9, :lo12:.Ltext_34
    str x9, [sp, #560]
    sub x9, x29, #1616
    str x9, [sp, #552]
    adrp x9, lb_debug_depth
    add x9, x9, :lo12:lb_debug_depth
    str x9, [sp, #280]
    sub x9, x29, #3104
    str x9, [sp, #272]
    adrp x9, lb_debug_activations
    add x9, x9, :lo12:lb_debug_activations
    str x9, [sp, #264]
    movz x16, #4128
    sub x9, x29, x16
    str x9, [sp, #256]
    movz x16, #4152
    sub x9, x29, x16
    str x9, [sp, #248]
    ldr x9, [sp, #248]
    add x9, x9, #8
    str x9, [sp, #240]
    ldr x9, [sp, #248]
    add x9, x9, #16
    str x9, [sp, #232]
    adrp x9, .Ltext_54
    add x9, x9, :lo12:.Ltext_54
    str x9, [sp, #224]
    adrp x9, .Ltext_55
    add x9, x9, :lo12:.Ltext_55
    str x9, [sp, #216]
    adrp x9, .Ltext_48
    add x9, x9, :lo12:.Ltext_48
    str x9, [sp, #208]
    adrp x9, .Ltext_7
    add x9, x9, :lo12:.Ltext_7
    str x9, [sp, #200]
    ldr x9, [sp, #272]
    add x9, x9, #16
    str x9, [sp, #192]
    movz x16, #4168
    sub x9, x29, x16
    str x9, [sp, #184]
    sub x9, x29, #112
    str x9, [sp, #640]
    sub x22, x29, #3048
    adrp x9, lb_debug_activations
    add x9, x9, :lo12:lb_debug_activations
    str x9, [sp, #296]
    add x9, x22, #8
    str x9, [sp, #288]
    sub x9, x29, #112
    str x9, [sp, #664]
    sub x28, x29, #1912
    adrp x9, lb_debug_activations
    add x9, x9, :lo12:lb_debug_activations
    str x9, [sp, #384]
    sub x20, x29, #1888
    add x9, x20, #8
    str x9, [sp, #376]
    sub x9, x29, #2936
    str x9, [sp, #360]
    sub x9, x29, #2960
    str x9, [sp, #352]
    ldr x9, [sp, #352]
    add x9, x9, #8
    str x9, [sp, #344]
    ldr x9, [sp, #352]
    add x9, x9, #16
    str x9, [sp, #336]
    adrp x9, .Ltext_61
    add x9, x9, :lo12:.Ltext_61
    str x9, [sp, #328]
    sub x24, x29, #1888
    add x9, x24, #8
    str x9, [sp, #320]
    adrp x9, .Ltext_62
    add x9, x9, :lo12:.Ltext_62
    str x9, [sp, #312]
    sub x9, x29, #2976
    str x9, [sp, #304]
    add x9, x28, #8
    str x9, [sp, #368]
.L5_1:
.L5_2:
    mov x9, #0
    mov x19, x9
.L5_93:
    movz x10, #512
    cmp x19, x10
    b.hs .L5_95
.L5_94:
    mov x11, x27
    strb wzr, [x11, #0]
    mov x0, #0
    mov x1, x27
    movz x2, #1
    bl read
    mov x14, x0
    mov x10, #0
    cmp x14, x10
    b.gt .L5_97
.L5_96:
    mov x10, #0
    cmp x19, x10
    b.ne .L5_100
.L5_99:
    ldr x11, [sp, #544]
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    ldr x10, [sp, #544]
    ldr x11, [sp, #536]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    ldr x10, [sp, #536]
    sub x11, x29, #152
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x9, #0
    mov x19, x9
    mov x9, #0
    mov x21, x9
    b .L5_111
.L5_100:
.L5_101:
    b .L5_95
.L5_97:
.L5_98:
    ldrb w14, [x27]
    movz x10, #10
    cmp w14, w10
    b.ne .L5_105
.L5_104:
    b .L5_95
.L5_105:
.L5_106:
    ldr x9, [sp, #528]
    add x15, x9, x19
    strb w14, [x15]
    add x15, x19, #1
    mov x19, x15
    b .L5_93
.L5_95:
    movz x10, #513
    cmp x19, x10
    b.lo 1f
    adrp x0, .Ltext_111
    add x0, x0, :lo12:.Ltext_111
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x19
    b.ls .L5_108
.L5_109:
    adrp x0, .Ltext_111
    add x0, x0, :lo12:.Ltext_111
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
.L5_108:
    ldr x9, [sp, #168]
    ldr x10, [sp, #520]
    str x9, [x10]
    ldr x10, [sp, #512]
    str x19, [x10]
    ldr x9, [sp, #168]
    ldr x10, [sp, #504]
    str x9, [x10]
    ldr x10, [sp, #496]
    str x19, [x10]
    ldr x10, [sp, #504]
    ldr x11, [sp, #488]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    movz x9, #1
    ldr x10, [sp, #480]
    strb w9, [x10]
    ldr x10, [sp, #488]
    ldr x11, [sp, #472]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    ldr x10, [sp, #472]
    sub x11, x29, #152
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    ldr x9, [sp, #168]
    mov x21, x9
.L5_111:
    ldr x9, [sp, #976]
    ldrb w14, [x9]
    cbnz w14, .L5_4
    b .L5_5
.L5_4:
    ldr x10, [sp, #160]
    ldr x11, [sp, #968]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b .L5_6
.L5_5:
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
.L5_6:
    ldr x10, [sp, #968]
    ldr x11, [sp, #176]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x10, [sp, #176]
    sub x11, x29, #1760
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    mov x23, x9
.L5_112:
    cmp x23, x19
    cset w14, lo
    cbnz w14, .L5_115
    b .L5_171
.L5_171:
    mov w15, w14
    b .L5_116
.L5_115:
    add x14, x23, x21
    ldrb w14, [x14]
    movz x10, #32
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L5_116:
    and w14, w15, #255
    cbnz w14, .L5_113
    b .L5_114
.L5_113:
    mov x9, x23
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_100
    add x0, x0, :lo12:.Ltext_100
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x14, x9
    mov x23, x14
    b .L5_112
.L5_114:
    add x25, x19, #1
    mov x9, #0
    cmp x9, x25
    b.lo 1f
    adrp x0, .Ltext_101
    add x0, x0, :lo12:.Ltext_101
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
1:
    cmp x23, x25
    b.lo 1f
    adrp x0, .Ltext_101
    add x0, x0, :lo12:.Ltext_101
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x23
    b.ls .L5_117
.L5_118:
    adrp x0, .Ltext_101
    add x0, x0, :lo12:.Ltext_101
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
.L5_117:
    ldr x10, [sp, #464]
    str x21, [x10]
    ldr x10, [sp, #456]
    str x23, [x10]
    ldr x10, [sp, #448]
    str x21, [x10]
    ldr x10, [sp, #440]
    str x23, [x10]
    ldr x10, [sp, #448]
    ldr x11, [sp, #432]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x10, [sp, #432]
    sub x11, x29, #200
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
.L5_120:
    ldr x10, [sp, #960]
    ldr x11, [sp, #152]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    cmp x19, x25
    b.lo 1f
    adrp x0, .Ltext_15
    add x0, x0, :lo12:.Ltext_15
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
1:
    cmp x23, x19
    b.ls .L5_8
.L5_9:
    adrp x0, .Ltext_15
    add x0, x0, :lo12:.Ltext_15
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
.L5_8:
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
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x9, #0
    mov x14, x9
.L5_121:
    cmp x14, x26
    cset w15, lo
    cbnz w15, .L5_124
    b .L5_172
.L5_172:
    mov w12, w15
    b .L5_125
.L5_124:
    add x15, x25, x14
    ldrb w15, [x15]
    movz x10, #32
    cmp w15, w10
    cset w12, eq
.L5_125:
    and w15, w12, #255
    cbnz w15, .L5_122
    b .L5_123
.L5_122:
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_103
    add x0, x0, :lo12:.Ltext_103
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x15, x9
    mov x14, x15
    b .L5_121
.L5_123:
    mov x15, x26
.L5_126:
    cmp x15, x14
    cset w12, hi
    cbnz w12, .L5_129
    b .L5_173
.L5_173:
    mov w13, w12
    b .L5_130
.L5_129:
    mov x9, x15
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_104
    add x0, x0, :lo12:.Ltext_104
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x12, x9
    cmp x12, x26
    b.lo 1f
    adrp x0, .Ltext_104
    add x0, x0, :lo12:.Ltext_104
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
1:
    add x12, x25, x12
    ldrb w13, [x12]
    movz x10, #32
    cmp w13, w10
    cset w13, eq
    cbnz w13, .L5_174
    b .L5_131
.L5_174:
    mov w12, w13
    b .L5_132
.L5_131:
    ldrb w13, [x12]
    movz x10, #13
    cmp w13, w10
    cset w13, eq
    mov w12, w13
.L5_132:
    and w13, w12, #255
.L5_130:
    and w12, w13, #255
    cbnz w12, .L5_127
    b .L5_128
.L5_127:
    mov x9, x15
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_105
    add x0, x0, :lo12:.Ltext_105
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x12, x9
    mov x15, x12
    b .L5_126
.L5_128:
    add x12, x26, #1
    cmp x14, x12
    b.lo 1f
    adrp x0, .Ltext_106
    add x0, x0, :lo12:.Ltext_106
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
1:
    cmp x15, x12
    b.lo 1f
    adrp x0, .Ltext_106
    add x0, x0, :lo12:.Ltext_106
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
1:
    cmp x14, x15
    b.ls .L5_133
.L5_134:
    adrp x0, .Ltext_106
    add x0, x0, :lo12:.Ltext_106
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
.L5_133:
    add x12, x25, x14
    sub x13, x15, x14
    ldr x10, [sp, #424]
    str x12, [x10]
    ldr x10, [sp, #416]
    str x13, [x10]
    ldr x10, [sp, #408]
    str x12, [x10]
    ldr x10, [sp, #400]
    str x13, [x10]
    ldr x10, [sp, #408]
    ldr x11, [sp, #392]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x10, [sp, #392]
    sub x11, x29, #264
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
.L5_136:
    ldr x10, [sp, #920]
    ldr x11, [sp, #144]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x9, [sp, #912]
    ldr x10, [sp, #136]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #904]
    str x9, [x10]
    movz x10, #1
    cmp x23, x10
    cset w19, eq
    cbnz w19, .L5_13
    b .L5_175
.L5_175:
    mov w14, w19
    b .L5_14
.L5_13:
    mov x0, x21
    ldr x1, [sp, #912]
    mov x2, x23
    bl memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
.L5_14:
    and w15, w14, #255
    cbnz w15, .L5_176
    b .L5_15
.L5_176:
    mov w14, w15
    b .L5_16
.L5_15:
    ldr x9, [sp, #896]
    ldr x10, [sp, #128]
    str x9, [x10]
    movz x9, #3
    ldr x10, [sp, #888]
    str x9, [x10]
    movz x10, #3
    cmp x23, x10
    cset w14, eq
    cbnz w14, .L5_17
    b .L5_177
.L5_177:
    mov w15, w14
    b .L5_18
.L5_17:
    mov x0, x21
    ldr x1, [sp, #896]
    mov x2, x23
    bl memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L5_18:
    and w14, w15, #255
.L5_16:
    and w15, w14, #255
    cbnz w15, .L5_178
    b .L5_19
.L5_178:
    mov w14, w15
    b .L5_20
.L5_19:
    ldr x9, [sp, #880]
    ldr x10, [sp, #120]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #872]
    str x9, [x10]
    cbnz w19, .L5_21
    b .L5_179
.L5_179:
    mov w14, w19
    b .L5_22
.L5_21:
    mov x0, x21
    ldr x1, [sp, #880]
    mov x2, x23
    bl memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
.L5_22:
    and w15, w14, #255
    mov w14, w15
.L5_20:
    and w15, w14, #255
    cbnz w15, .L5_180
    b .L5_23
.L5_180:
    mov w14, w15
    b .L5_24
.L5_23:
    ldr x9, [sp, #864]
    ldr x10, [sp, #112]
    str x9, [x10]
    movz x9, #8
    ldr x10, [sp, #856]
    str x9, [x10]
    movz x10, #8
    cmp x23, x10
    cset w14, eq
    cbnz w14, .L5_25
    b .L5_181
.L5_181:
    mov w15, w14
    b .L5_26
.L5_25:
    mov x0, x21
    ldr x1, [sp, #864]
    mov x2, x23
    bl memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L5_26:
    and w14, w15, #255
.L5_24:
    and w15, w14, #255
    cbnz w15, .L5_10
    b .L5_11
.L5_10:
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
.L5_11:
.L5_12:
    ldr x9, [sp, #848]
    ldr x10, [sp, #104]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #840]
    str x9, [x10]
    cbnz w19, .L5_31
    b .L5_182
.L5_182:
    mov w14, w19
    b .L5_32
.L5_31:
    mov x0, x21
    ldr x1, [sp, #848]
    mov x2, x23
    bl memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
.L5_32:
    and w15, w14, #255
    cbnz w15, .L5_183
    b .L5_33
.L5_183:
    mov w14, w15
    b .L5_34
.L5_33:
    ldr x9, [sp, #832]
    ldr x10, [sp, #96]
    str x9, [x10]
    movz x9, #4
    ldr x10, [sp, #824]
    str x9, [x10]
    movz x10, #4
    cmp x23, x10
    cset w14, eq
    cbnz w14, .L5_35
    b .L5_184
.L5_184:
    mov w15, w14
    b .L5_36
.L5_35:
    mov x0, x21
    ldr x1, [sp, #832]
    mov x2, x23
    bl memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L5_36:
    and w14, w15, #255
.L5_34:
    and w15, w14, #255
    cbnz w15, .L5_28
    b .L5_29
.L5_28:
    adrp x14, lb_debug_stepping
    add x14, x14, :lo12:lb_debug_stepping
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
.L5_29:
.L5_30:
    ldr x9, [sp, #816]
    ldr x10, [sp, #88]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #808]
    str x9, [x10]
    cbnz w19, .L5_41
    b .L5_185
.L5_185:
    mov w14, w19
    b .L5_42
.L5_41:
    mov x0, x21
    ldr x1, [sp, #816]
    mov x2, x23
    bl memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
.L5_42:
    and w15, w14, #255
    cbnz w15, .L5_186
    b .L5_43
.L5_186:
    mov w14, w15
    b .L5_44
.L5_43:
    ldr x9, [sp, #800]
    ldr x10, [sp, #80]
    str x9, [x10]
    movz x9, #4
    ldr x10, [sp, #792]
    str x9, [x10]
    movz x10, #4
    cmp x23, x10
    cset w14, eq
    cbnz w14, .L5_45
    b .L5_187
.L5_187:
    mov w15, w14
    b .L5_46
.L5_45:
    mov x0, x21
    ldr x1, [sp, #800]
    mov x2, x23
    bl memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L5_46:
    and w14, w15, #255
.L5_44:
    and w15, w14, #255
    cbnz w15, .L5_38
    b .L5_39
.L5_38:
    adrp x14, lb_debug_9step_over
    add x14, x14, :lo12:lb_debug_9step_over
    adrp x15, lb_debug_depth
    add x15, x15, :lo12:lb_debug_depth
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
.L5_39:
.L5_40:
    ldr x9, [sp, #784]
    ldr x10, [sp, #72]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #776]
    str x9, [x10]
    cbnz w19, .L5_51
    b .L5_188
.L5_188:
    mov w14, w19
    b .L5_52
.L5_51:
    mov x0, x21
    ldr x1, [sp, #784]
    mov x2, x23
    bl memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
.L5_52:
    and w15, w14, #255
    cbnz w15, .L5_189
    b .L5_53
.L5_189:
    mov w14, w15
    b .L5_54
.L5_53:
    ldr x9, [sp, #768]
    ldr x10, [sp, #64]
    str x9, [x10]
    movz x9, #4
    ldr x10, [sp, #760]
    str x9, [x10]
    movz x10, #4
    cmp x23, x10
    cset w14, eq
    cbnz w14, .L5_55
    b .L5_190
.L5_190:
    mov w15, w14
    b .L5_56
.L5_55:
    mov x0, x21
    ldr x1, [sp, #768]
    mov x2, x23
    bl memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L5_56:
    and w14, w15, #255
.L5_54:
    and w15, w14, #255
    cbnz w15, .L5_48
    b .L5_49
.L5_48:
    ldr x9, [sp, #752]
    ldr x10, [sp, #744]
    str x9, [x10]
    movz x9, #4
    ldr x10, [sp, #736]
    str x9, [x10]
    ldr x9, [sp, #744]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_9print_str
    mov x0, #0
    bl exit
    b .L5_50
.L5_49:
.L5_50:
    ldr x9, [sp, #728]
    ldr x10, [sp, #56]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #720]
    str x9, [x10]
    cbnz w19, .L5_60
    b .L5_191
.L5_191:
    mov w14, w19
    b .L5_61
.L5_60:
    mov x0, x21
    ldr x1, [sp, #728]
    mov x2, x23
    bl memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
.L5_61:
    and w15, w14, #255
    cbnz w15, .L5_192
    b .L5_62
.L5_192:
    mov w14, w15
    b .L5_63
.L5_62:
    ldr x9, [sp, #712]
    ldr x10, [sp, #48]
    str x9, [x10]
    movz x9, #5
    ldr x10, [sp, #704]
    str x9, [x10]
    movz x10, #5
    cmp x23, x10
    cset w14, eq
    cbnz w14, .L5_64
    b .L5_193
.L5_193:
    mov w15, w14
    b .L5_65
.L5_64:
    mov x0, x21
    ldr x1, [sp, #712]
    mov x2, x23
    bl memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L5_65:
    and w14, w15, #255
.L5_63:
    and w15, w14, #255
    cbnz w15, .L5_57
    b .L5_58
.L5_57:
    ldr x9, [sp, #144]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_debug_9add_break
    b .L5_59
.L5_58:
    ldr x9, [sp, #696]
    ldr x10, [sp, #40]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #688]
    str x9, [x10]
    cbnz w19, .L5_69
    b .L5_194
.L5_194:
    mov w14, w19
    b .L5_70
.L5_69:
    mov x0, x21
    ldr x1, [sp, #696]
    mov x2, x23
    bl memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
.L5_70:
    and w15, w14, #255
    cbnz w15, .L5_195
    b .L5_71
.L5_195:
    mov w14, w15
    b .L5_72
.L5_71:
    ldr x9, [sp, #680]
    ldr x10, [sp, #32]
    str x9, [x10]
    movz x9, #5
    ldr x10, [sp, #672]
    str x9, [x10]
    movz x10, #5
    cmp x23, x10
    cset w14, eq
    cbnz w14, .L5_73
    b .L5_196
.L5_196:
    mov w15, w14
    b .L5_74
.L5_73:
    mov x0, x21
    ldr x1, [sp, #680]
    mov x2, x23
    bl memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L5_74:
    and w14, w15, #255
.L5_72:
    and w15, w14, #255
    cbnz w15, .L5_66
    b .L5_67
.L5_66:
    ldr x9, [sp, #664]
    ldr x19, [x9]
    sub x10, x29, #1872
    str x19, [x10]
    ldr x10, [sp, #144]
    sub x11, x29, #1888
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    movz x10, #512
    cmp x19, x10
    b.lo 1f
    adrp x0, .Ltext_59
    add x0, x0, :lo12:.Ltext_59
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
1:
    movz x10, #24
    mul x14, x19, x10
    ldr x9, [sp, #384]
    add x14, x9, x14
    mov x10, x14
    mov x11, x28
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    ldr x19, [x28]
    cbnz x19, .L5_137
    b .L5_138
.L5_137:
    b .L5_139
.L5_138:
    b .L5_152
.L5_139:
    add x21, x19, #32
    mov x9, #0
    mov x23, x9
.L5_141:
    ldr x14, [x21]
    cmp x23, x14
    b.hs .L5_143
.L5_142:
    sub x10, x29, #2992
    str x19, [x10]
    sub x10, x29, #3008
    str x23, [x10]
    mov x9, x19
    movz x10, #40
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_63
    add x0, x0, :lo12:.Ltext_63
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x23
    movz x10, #48
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_63
    add x0, x0, :lo12:.Ltext_63
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x15, x9
    mov x9, x14
    mov x10, x15
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_63
    add x0, x0, :lo12:.Ltext_63
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x25, x9
.L5_151:
    add x14, x25, #8
    ldr x14, [x14]
    ldr x9, [sp, #376]
    ldr x15, [x9]
    cmp x14, x15
    cset w15, eq
    cbnz w15, .L5_147
    b .L5_197
.L5_197:
    mov w14, w15
    b .L5_148
.L5_147:
    ldr x15, [x25]
    ldr x12, [x20]
    mov x0, x15
    mov x1, x12
    mov x2, x14
    bl memcmp
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
.L5_148:
    and w15, w14, #255
    cbnz w15, .L5_144
    b .L5_145
.L5_144:
    ldr x9, [sp, #368]
    ldr x14, [x9]
    mov x0, x25
    mov x1, x14
    bl lb_debug_show
    b .L5_152
.L5_145:
.L5_146:
    add x14, x23, #1
    mov x23, x14
    b .L5_141
.L5_143:
    ldr x9, [sp, #360]
    ldr x10, [sp, #352]
    str x9, [x10]
    movz x9, #1024
    ldr x10, [sp, #344]
    str x9, [x10]
    mov x9, #0
    ldr x10, [sp, #336]
    str x9, [x10]
    ldr x0, [sp, #352]
    ldr x1, [sp, #328]
    movz x2, #16
    bl lb_core_10format_put
    mov w14, w0
    ldr x14, [x24]
    ldr x9, [sp, #320]
    ldr x15, [x9]
    ldr x0, [sp, #352]
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    ldr x0, [sp, #352]
    ldr x1, [sp, #312]
    movz x2, #1
    bl lb_core_10format_put
    mov w14, w0
    ldr x0, [sp, #352]
    bl lb_core_13format_finish
    sub x16, x29, #2976
    str x0, [x16, #0]
    str x1, [x16, #8]
    ldr x9, [sp, #304]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_9print_str
.L5_152:
    b .L5_68
.L5_67:
    ldr x9, [sp, #656]
    ldr x10, [sp, #24]
    str x9, [x10]
    movz x9, #6
    ldr x10, [sp, #648]
    str x9, [x10]
    movz x10, #6
    cmp x23, x10
    cset w14, eq
    cbnz w14, .L5_78
    b .L5_198
.L5_198:
    mov w15, w14
    b .L5_79
.L5_78:
    mov x0, x21
    ldr x1, [sp, #656]
    mov x2, x23
    bl memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L5_79:
    and w14, w15, #255
    cbnz w14, .L5_75
    b .L5_76
.L5_75:
    ldr x9, [sp, #640]
    ldr x14, [x9]
    sub x10, x29, #3024
    str x14, [x10]
    movz x10, #512
    cmp x14, x10
    b.lo 1f
    adrp x0, .Ltext_57
    add x0, x0, :lo12:.Ltext_57
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
1:
    movz x10, #24
    mul x14, x14, x10
    ldr x9, [sp, #296]
    add x14, x9, x14
    mov x10, x14
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    ldr x19, [x22]
    cbnz x19, .L5_153
    b .L5_154
.L5_153:
    b .L5_155
.L5_154:
    b .L5_162
.L5_155:
    add x21, x19, #32
    mov x9, #0
    mov x23, x9
.L5_157:
    ldr x14, [x21]
    cmp x23, x14
    b.hs .L5_159
.L5_158:
    sub x10, x29, #3064
    str x19, [x10]
    sub x10, x29, #3080
    str x23, [x10]
    mov x9, x19
    movz x10, #40
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_63
    add x0, x0, :lo12:.Ltext_63
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x23
    movz x10, #48
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_63
    add x0, x0, :lo12:.Ltext_63
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x15, x9
    mov x9, x14
    mov x10, x15
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_63
    add x0, x0, :lo12:.Ltext_63
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x14, x9
.L5_161:
    ldr x9, [sp, #288]
    ldr x15, [x9]
    mov x0, x14
    mov x1, x15
    bl lb_debug_show
    add x15, x23, #1
    mov x23, x15
    b .L5_157
.L5_159:
.L5_162:
    b .L5_77
.L5_76:
    ldr x9, [sp, #632]
    ldr x10, [sp, #16]
    str x9, [x10]
    movz x9, #2
    ldr x10, [sp, #624]
    str x9, [x10]
    movz x10, #2
    cmp x23, x10
    cset w14, eq
    cbnz w14, .L5_83
    b .L5_199
.L5_199:
    mov w15, w14
    b .L5_84
.L5_83:
    mov x0, x21
    ldr x1, [sp, #632]
    mov x2, x23
    bl memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L5_84:
    and w14, w15, #255
    cbnz w14, .L5_200
    b .L5_85
.L5_200:
    mov w15, w14
    b .L5_86
.L5_85:
    ldr x9, [sp, #616]
    ldr x10, [sp, #8]
    str x9, [x10]
    movz x9, #9
    ldr x10, [sp, #608]
    str x9, [x10]
    movz x10, #9
    cmp x23, x10
    cset w14, eq
    cbnz w14, .L5_87
    b .L5_201
.L5_201:
    mov w15, w14
    b .L5_88
.L5_87:
    mov x0, x21
    ldr x1, [sp, #616]
    mov x2, x23
    bl memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L5_88:
    and w14, w15, #255
    mov w15, w14
.L5_86:
    and w14, w15, #255
    cbnz w14, .L5_80
    b .L5_81
.L5_80:
    ldr x9, [sp, #280]
    ldr x14, [x9]
    mov x9, #0
    mov x19, x9
.L5_163:
    mov x10, #0
    cmp x14, x10
    b.ls .L5_165
.L5_164:
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_52
    add x0, x0, :lo12:.Ltext_52
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x21, x9
    movz x10, #512
    cmp x21, x10
    b.lo 1f
    adrp x0, .Ltext_53
    add x0, x0, :lo12:.Ltext_53
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
1:
    movz x10, #24
    mul x15, x21, x10
    ldr x9, [sp, #264]
    add x15, x9, x15
    mov x10, x15
    ldr x11, [sp, #272]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    ldr x9, [sp, #272]
    ldr x23, [x9]
    cbnz x23, .L5_169
    b .L5_167
.L5_169:
.L5_166:
    ldr x9, [sp, #256]
    ldr x10, [sp, #248]
    str x9, [x10]
    movz x9, #1024
    ldr x10, [sp, #240]
    str x9, [x10]
    mov x9, #0
    ldr x10, [sp, #232]
    str x9, [x10]
    ldr x0, [sp, #248]
    ldr x1, [sp, #224]
    movz x2, #1
    bl lb_core_10format_put
    mov w14, w0
    ldr x0, [sp, #248]
    mov x1, x19
    bl lb_core_10format_u64
    mov w14, w0
    ldr x0, [sp, #248]
    ldr x1, [sp, #216]
    movz x2, #1
    bl lb_core_10format_put
    mov w14, w0
    ldr x14, [x23]
    add x15, x23, #8
    ldr x15, [x15]
    ldr x0, [sp, #248]
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    ldr x0, [sp, #248]
    ldr x1, [sp, #208]
    movz x2, #4
    bl lb_core_10format_put
    mov w14, w0
    add x14, x23, #16
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    ldr x0, [sp, #248]
    mov x1, x15
    mov x2, x14
    bl lb_core_10format_put
    mov w14, w0
    ldr x0, [sp, #248]
    ldr x1, [sp, #200]
    movz x2, #1
    bl lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #192]
    ldr w14, [x9]
    mov w14, w14
    ldr x0, [sp, #248]
    mov x1, x14
    bl lb_core_10format_u64
    mov w14, w0
    ldr x0, [sp, #248]
    bl lb_core_13format_finish
    movz x16, #4168
    sub x16, x29, x16
    str x0, [x16, #0]
    str x1, [x16, #8]
    ldr x9, [sp, #184]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_9print_str
    b .L5_168
.L5_167:
.L5_168:
    mov x9, x19
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_56
    add x0, x0, :lo12:.Ltext_56
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x15, x9
    mov x14, x21
    mov x19, x15
    b .L5_163
.L5_165:
.L5_170:
    b .L5_82
.L5_81:
    mov x10, #0
    cmp x23, x10
    b.ne .L5_90
.L5_89:
    b .L5_1
.L5_90:
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
    bl lb_core_10format_put
    mov w14, w0
    ldr x0, [sp, #592]
    mov x1, x21
    mov x2, x23
    bl lb_core_10format_put
    mov w14, w0
    ldr x0, [sp, #592]
    ldr x1, [sp, #560]
    movz x2, #82
    bl lb_core_10format_put
    mov w14, w0
    ldr x0, [sp, #592]
    bl lb_core_13format_finish
    sub x16, x29, #1616
    str x0, [x16, #0]
    str x1, [x16, #8]
    ldr x9, [sp, #552]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_9print_str
.L5_91:
.L5_82:
.L5_77:
.L5_68:
.L5_59:
    b .L5_1

    .size lb_debug_prompt, .-lb_debug_prompt

    .p2align 2
    .globl lb_debug_9add_break
    .type lb_debug_9add_break, %function
lb_debug_9add_break:
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
    mov x12, x19
.L6_1:
    mov x10, #0
    cmp x12, x10
    b.hi .L6_2
.L6_42:
    mov x20, x19
    b .L6_3
.L6_2:
    mov x9, x12
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_35
    add x0, x0, :lo12:.Ltext_35
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x13, x9
    cmp x13, x19
    b.lo 1f
    adrp x0, .Ltext_36
    add x0, x0, :lo12:.Ltext_36
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
1:
    add x20, x13, x15
    ldrb w20, [x20]
    movz x10, #58
    cmp w20, w10
    b.ne .L6_5
.L6_4:
    mov x20, x13
    b .L6_3
.L6_7:
    b .L6_6
.L6_5:
.L6_6:
    mov x12, x13
    b .L6_1
.L6_3:
    cmp x19, x20
    b.ne .L6_9
.L6_8:
    adrp x14, .Ltext_37
    add x14, x14, :lo12:.Ltext_37
    sub x15, x29, #128
    str x14, [x15]
    add x14, x15, #8
    movz x9, #21
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_9print_str
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
.L6_11:
    b .L6_10
.L6_9:
.L6_10:
    sub x22, x29, #144
    ldr x23, [x14]
    add x21, x19, #1
    mov x9, #0
    cmp x9, x21
    b.lo 1f
    adrp x0, .Ltext_38
    add x0, x0, :lo12:.Ltext_38
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
1:
    cmp x20, x21
    b.lo 1f
    adrp x0, .Ltext_38
    add x0, x0, :lo12:.Ltext_38
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x20
    b.ls .L6_12
.L6_13:
    adrp x0, .Ltext_38
    add x0, x0, :lo12:.Ltext_38
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
.L6_12:
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
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x15, x20, #1
    cmp x15, x21
    b.lo 1f
    adrp x0, .Ltext_39
    add x0, x0, :lo12:.Ltext_39
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
1:
    cmp x19, x21
    b.lo 1f
    adrp x0, .Ltext_39
    add x0, x0, :lo12:.Ltext_39
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
1:
    cmp x15, x19
    b.ls .L6_14
.L6_15:
    adrp x0, .Ltext_39
    add x0, x0, :lo12:.Ltext_39
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
.L6_14:
    add x21, x23, x15
    sub x24, x19, x15
    sub x14, x29, #192
    str x21, [x14]
    add x14, x14, #8
    str x24, [x14]
    sub x14, x29, #208
    str x21, [x14]
    add x12, x14, #8
    str x24, [x12]
    mov x10, x14
    sub x11, x29, #1392
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x14, x29, #1392
    mov x9, #0
    mov w14, w9
    mov x9, #0
    mov x12, x9
.L6_28:
    cmp x12, x24
    b.hs .L6_31
.L6_29:
    add x15, x21, x12
    ldrb w15, [x15]
    and w15, w15, #255
    movz x10, #48
    cmp w15, w10
    cset w13, lo
    cbnz w13, .L6_43
    b .L6_35
.L6_43:
    mov w19, w13
    b .L6_36
.L6_35:
    movz x10, #57
    cmp w15, w10
    cset w19, hi
.L6_36:
    and w13, w19, #255
    cbnz w13, .L6_32
    b .L6_33
.L6_32:
    mov x9, #0
    sub x10, x29, #1400
    str w9, [x10]
    mov x9, #0
    mov w19, w9
    b .L6_41
.L6_37:
    b .L6_34
.L6_33:
.L6_34:
    mov w9, w14
    movz x10, #10
    mov w9, w9
    mov w10, w10
    mul x9, x9, x10
    cmp x9, w9, uxtw
    b.eq 1f
    adrp x0, .Ltext_49
    add x0, x0, :lo12:.Ltext_49
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov w19, w9
    sub w23, w15, #48
    and w13, w23, #255
    cmp w13, w23
    b.eq .L6_38
.L6_39:
    adrp x0, .Ltext_49
    add x0, x0, :lo12:.Ltext_49
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
.L6_38:
    mov w14, w23
    mov w9, w14
    mov w10, w19
    adds w9, w9, w10
    b.cc 1f
    adrp x0, .Ltext_49
    add x0, x0, :lo12:.Ltext_49
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov w14, w9
.L6_30:
    add x15, x12, #1
    mov x12, x15
    b .L6_28
.L6_31:
    sub x10, x29, #1400
    str w14, [x10]
    mov w19, w14
    b .L6_41
.L6_40:
    adrp x0, .Ltext_51
    add x0, x0, :lo12:.Ltext_51
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
.L6_41:
    mov x10, #0
    cmp w19, w10
    cset w14, eq
    cbnz w14, .L6_44
    b .L6_19
.L6_44:
    mov w15, w14
    b .L6_20
.L6_19:
    adrp x14, lb_debug_11break_count
    add x14, x14, :lo12:lb_debug_11break_count
    ldr x14, [x14]
    movz x10, #32
    cmp x14, x10
    cset w15, eq
.L6_20:
    and w14, w15, #255
    cbnz w14, .L6_45
    b .L6_21
.L6_45:
    mov w15, w14
    b .L6_22
.L6_21:
    adrp x14, lb_debug_10names_used
    add x14, x14, :lo12:lb_debug_10names_used
    ldr x14, [x14]
    mov x9, x14
    mov x10, x20
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_40
    add x0, x0, :lo12:.Ltext_40
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x14, x9
    movz x10, #4096
    cmp x14, x10
    cset w15, hi
.L6_22:
    and w14, w15, #255
    cbnz w14, .L6_16
    b .L6_17
.L6_16:
    adrp x14, .Ltext_41
    add x14, x14, :lo12:.Ltext_41
    sub x15, x29, #224
    str x14, [x15]
    add x14, x15, #8
    movz x9, #26
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_9print_str
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
.L6_23:
    b .L6_18
.L6_17:
.L6_18:
    adrp x23, lb_debug_names
    add x23, x23, :lo12:lb_debug_names
    adrp x21, lb_debug_10names_used
    add x21, x21, :lo12:lb_debug_10names_used
    ldr x15, [x21]
    movz x10, #4097
    cmp x15, x10
    b.lo 1f
    adrp x0, .Ltext_42
    add x0, x0, :lo12:.Ltext_42
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
1:
    movz x10, #4096
    cmp x15, x10
    b.ls .L6_24
.L6_25:
    adrp x0, .Ltext_42
    add x0, x0, :lo12:.Ltext_42
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
.L6_24:
    add x14, x23, x15
    movz x9, #4096
    sub x12, x9, x15
    sub x13, x29, #240
    str x14, [x13]
    add x14, x13, #8
    str x12, [x14]
    add x24, x22, #8
    mov x9, x13
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x22
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x20
    bl lb_memory_copy_0g1_u8
    sub x25, x29, #256
    ldr x12, [x21]
    ldr x14, [x24]
    mov x9, x14
    mov x10, x12
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_43
    add x0, x0, :lo12:.Ltext_43
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x26, x9
    movz x10, #4097
    cmp x12, x10
    b.lo 1f
    adrp x0, .Ltext_43
    add x0, x0, :lo12:.Ltext_43
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
1:
    movz x10, #4097
    cmp x26, x10
    b.lo 1f
    adrp x0, .Ltext_43
    add x0, x0, :lo12:.Ltext_43
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
1:
    cmp x12, x26
    b.ls .L6_26
.L6_27:
    adrp x0, .Ltext_43
    add x0, x0, :lo12:.Ltext_43
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
.L6_26:
    add x14, x23, x12
    sub x15, x26, x12
    sub x13, x29, #272
    str x14, [x13]
    add x13, x13, #8
    str x15, [x13]
    sub x13, x29, #288
    str x14, [x13]
    add x14, x13, #8
    str x15, [x14]
    mov x10, x13
    mov x11, x25
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    str x26, [x21]
    adrp x20, lb_debug_11break_count
    add x20, x20, :lo12:lb_debug_11break_count
    ldr x14, [x20]
    adrp x15, lb_debug_breaks
    add x15, x15, :lo12:lb_debug_breaks
    movz x10, #32
    cmp x14, x10
    b.lo 1f
    adrp x0, .Ltext_45
    add x0, x0, :lo12:.Ltext_45
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
1:
    movz x10, #24
    mul x14, x14, x10
    add x27, x15, x14
    sub x28, x29, #312
    mov x11, x28
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    mov x10, x25
    mov x11, x28
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x28, #16
    str w19, [x14]
    mov x10, x28
    mov x11, x27
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    ldr x14, [x20]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_46
    add x0, x0, :lo12:.Ltext_46
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x20]
    sub x14, x29, #1336
    sub x27, x29, #1360
    str x14, [x27]
    add x14, x27, #8
    movz x9, #1024
    str x9, [x14]
    add x14, x27, #16
    mov x9, #0
    str x9, [x14]
    adrp x14, .Ltext_47
    add x14, x14, :lo12:.Ltext_47
    mov x0, x27
    mov x1, x14
    movz x2, #11
    bl lb_core_10format_put
    mov w14, w0
    ldr x14, [x20]
    mov x0, x27
    mov x1, x14
    bl lb_core_10format_u64
    mov w14, w0
    adrp x14, .Ltext_48
    add x14, x14, :lo12:.Ltext_48
    mov x0, x27
    mov x1, x14
    movz x2, #4
    bl lb_core_10format_put
    mov w14, w0
    ldr x14, [x22]
    ldr x15, [x24]
    mov x0, x27
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_7
    add x14, x14, :lo12:.Ltext_7
    mov x0, x27
    mov x1, x14
    movz x2, #1
    bl lb_core_10format_put
    mov w14, w0
    mov w14, w19
    mov x0, x27
    mov x1, x14
    bl lb_core_10format_u64
    mov w14, w0
    mov x0, x27
    bl lb_core_13format_finish
    sub x16, x29, #1376
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #1376
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_9print_str
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

    .size lb_debug_9add_break, .-lb_debug_9add_break

    .p2align 2
    .globl lb_debug_show
    .type lb_debug_show, %function
lb_debug_show:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #17152
    sub sp, sp, x16
    str x19, [sp, #17128]
    str x20, [sp, #17120]
    str x21, [sp, #17112]
    str x22, [sp, #17104]
    str x23, [sp, #17096]
    str x24, [sp, #17088]
    str x25, [sp, #17080]
    str x26, [sp, #17072]
    str x27, [sp, #17064]
    str x28, [sp, #17056]
    sub x16, x29, #112
    str x0, [x16]
    sub x16, x29, #128
    str x1, [x16]
    sub x14, x29, #128
    ldr x14, [x14]
    cbnz x14, .L7_1
    b .L7_2
.L7_1:
    b .L7_3
.L7_2:
    ldr x19, [sp, #17128]
    ldr x20, [sp, #17120]
    ldr x21, [sp, #17112]
    ldr x22, [sp, #17104]
    ldr x23, [sp, #17096]
    ldr x24, [sp, #17088]
    ldr x25, [sp, #17080]
    ldr x26, [sp, #17072]
    ldr x27, [sp, #17064]
    ldr x28, [sp, #17056]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_3:
    sub x15, x29, #112
    ldr x9, [x15]
    str x9, [sp, #32]
    ldr x9, [sp, #32]
    add x15, x9, #32
    ldr x15, [x15]
    mov x9, x14
    mov x10, x15
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_65
    add x0, x0, :lo12:.Ltext_65
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    str x9, [sp, #24]
    sub x9, x29, #144
    str x9, [sp, #16]
    ldr x9, [sp, #32]
    add x15, x9, #16
    mov x10, x15
    ldr x11, [sp, #16]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x15, .Ltext_66
    add x15, x15, :lo12:.Ltext_66
    sub x12, x29, #160
    str x15, [x12]
    add x12, x12, #8
    movz x9, #3
    str x9, [x12]
    ldr x9, [sp, #16]
    add x9, x9, #8
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    ldr x12, [x9]
    movz x10, #3
    cmp x12, x10
    cset w13, eq
    cbnz w13, .L7_8
    b .L7_157
.L7_157:
    mov w14, w13
    b .L7_9
.L7_8:
    ldr x9, [sp, #16]
    ldr x14, [x9]
    mov x0, x14
    mov x1, x15
    mov x2, x12
    bl memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
.L7_9:
    and w15, w14, #255
    cbnz w15, .L7_158
    b .L7_10
.L7_158:
    mov w14, w15
    b .L7_11
.L7_10:
    adrp x14, .Ltext_67
    add x14, x14, :lo12:.Ltext_67
    sub x15, x29, #176
    str x14, [x15]
    add x15, x15, #8
    movz x9, #5
    str x9, [x15]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    movz x10, #5
    cmp x15, x10
    cset w12, eq
    cbnz w12, .L7_12
    b .L7_159
.L7_159:
    mov w14, w12
    b .L7_13
.L7_12:
    ldr x9, [sp, #16]
    ldr x12, [x9]
    mov x0, x12
    mov x1, x14
    mov x2, x15
    bl memcmp
    mov w12, w0
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    mov w14, w12
.L7_13:
    and w15, w14, #255
    mov w14, w15
.L7_11:
    and w15, w14, #255
    cbnz w15, .L7_5
    b .L7_6
.L7_5:
    sub x14, x29, #1200
    sub x23, x29, #1224
    str x14, [x23]
    add x14, x23, #8
    movz x9, #1024
    str x9, [x14]
    add x14, x23, #16
    mov x9, #0
    str x9, [x14]
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #32]
    add x15, x9, #8
    ldr x15, [x15]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_68
    add x14, x14, :lo12:.Ltext_68
    mov x0, x23
    mov x1, x14
    movz x2, #2
    bl lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #16]
    ldr x14, [x9]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_69
    add x14, x14, :lo12:.Ltext_69
    mov x0, x23
    mov x1, x14
    movz x2, #3
    bl lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #24]
    movz x16, #16696
    sub x10, x29, x16
    str x9, [x10]
    movz x16, #16704
    sub x24, x29, x16
    mov x0, x24
    ldr x1, [sp, #24]
    movz x2, #8
    bl memcpy
    mov x14, x0
    cbnz x14, .L7_97
    b .L7_98
.L7_98:
    adrp x0, .Ltext_115
    add x0, x0, :lo12:.Ltext_115
    adrp x1, .Ltext_114
    add x1, x1, :lo12:.Ltext_114
    bl lb_core_7trap_at
.L7_97:
    ldr x14, [x24]
.L7_100:
    mov x0, x23
    mov x1, x14
    bl lb_core_10format_i64
    mov w14, w0
    mov x0, x23
    bl lb_core_13format_finish
    sub x16, x29, #1240
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x15, x29, #1240
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_9print_str
    b .L7_7
.L7_6:
    adrp x14, .Ltext_70
    add x14, x14, :lo12:.Ltext_70
    sub x15, x29, #1256
    str x14, [x15]
    add x15, x15, #8
    movz x9, #3
    str x9, [x15]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    movz x10, #3
    cmp x15, x10
    cset w12, eq
    cbnz w12, .L7_17
    b .L7_160
.L7_160:
    mov w14, w12
    b .L7_18
.L7_17:
    ldr x9, [sp, #16]
    ldr x12, [x9]
    mov x0, x12
    mov x1, x14
    mov x2, x15
    bl memcmp
    mov w12, w0
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    mov w14, w12
.L7_18:
    and w15, w14, #255
    cbnz w15, .L7_14
    b .L7_15
.L7_14:
    sub x14, x29, #2280
    sub x23, x29, #2304
    str x14, [x23]
    add x14, x23, #8
    movz x9, #1024
    str x9, [x14]
    add x14, x23, #16
    mov x9, #0
    str x9, [x14]
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #32]
    add x15, x9, #8
    ldr x15, [x15]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_68
    add x14, x14, :lo12:.Ltext_68
    mov x0, x23
    mov x1, x14
    movz x2, #2
    bl lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #16]
    ldr x14, [x9]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_69
    add x14, x14, :lo12:.Ltext_69
    mov x0, x23
    mov x1, x14
    movz x2, #3
    bl lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #24]
    movz x16, #16720
    sub x10, x29, x16
    str x9, [x10]
    movz x16, #16724
    sub x24, x29, x16
    mov x0, x24
    ldr x1, [sp, #24]
    movz x2, #4
    bl memcpy
    mov x14, x0
    cbnz x14, .L7_101
    b .L7_102
.L7_102:
    adrp x0, .Ltext_115
    add x0, x0, :lo12:.Ltext_115
    adrp x1, .Ltext_114
    add x1, x1, :lo12:.Ltext_114
    bl lb_core_7trap_at
.L7_101:
    ldrsw x14, [x24]
    movz x16, #16736
    sub x10, x29, x16
    str w14, [x10]
.L7_104:
    sxtw x15, w14
    mov x0, x23
    mov x1, x15
    bl lb_core_10format_i64
    mov w14, w0
    mov x0, x23
    bl lb_core_13format_finish
    sub x16, x29, #2320
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x15, x29, #2320
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_9print_str
    b .L7_16
.L7_15:
    adrp x14, .Ltext_71
    add x14, x14, :lo12:.Ltext_71
    sub x15, x29, #2336
    str x14, [x15]
    add x15, x15, #8
    movz x9, #3
    str x9, [x15]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    movz x10, #3
    cmp x15, x10
    cset w12, eq
    cbnz w12, .L7_22
    b .L7_161
.L7_161:
    mov w14, w12
    b .L7_23
.L7_22:
    ldr x9, [sp, #16]
    ldr x12, [x9]
    mov x0, x12
    mov x1, x14
    mov x2, x15
    bl memcmp
    mov w12, w0
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    mov w14, w12
.L7_23:
    and w15, w14, #255
    cbnz w15, .L7_19
    b .L7_20
.L7_19:
    sub x14, x29, #3360
    sub x23, x29, #3384
    str x14, [x23]
    add x14, x23, #8
    movz x9, #1024
    str x9, [x14]
    add x14, x23, #16
    mov x9, #0
    str x9, [x14]
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #32]
    add x15, x9, #8
    ldr x15, [x15]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_68
    add x14, x14, :lo12:.Ltext_68
    mov x0, x23
    mov x1, x14
    movz x2, #2
    bl lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #16]
    ldr x14, [x9]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_69
    add x14, x14, :lo12:.Ltext_69
    mov x0, x23
    mov x1, x14
    movz x2, #3
    bl lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #24]
    movz x16, #16752
    sub x10, x29, x16
    str x9, [x10]
    movz x16, #16754
    sub x24, x29, x16
    mov x0, x24
    ldr x1, [sp, #24]
    movz x2, #2
    bl memcpy
    mov x14, x0
    cbnz x14, .L7_105
    b .L7_106
.L7_106:
    adrp x0, .Ltext_115
    add x0, x0, :lo12:.Ltext_115
    adrp x1, .Ltext_114
    add x1, x1, :lo12:.Ltext_114
    bl lb_core_7trap_at
.L7_105:
    ldrsh w14, [x24]
    sxth w14, w14
    movz x16, #16768
    sub x10, x29, x16
    str w14, [x10]
.L7_108:
    sxtw x15, w14
    mov x0, x23
    mov x1, x15
    bl lb_core_10format_i64
    mov w14, w0
    mov x0, x23
    bl lb_core_13format_finish
    sub x16, x29, #3400
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x15, x29, #3400
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_9print_str
    b .L7_21
.L7_20:
    adrp x14, .Ltext_72
    add x14, x14, :lo12:.Ltext_72
    sub x15, x29, #3416
    str x14, [x15]
    add x15, x15, #8
    movz x9, #2
    str x9, [x15]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    movz x10, #2
    cmp x15, x10
    cset w12, eq
    cbnz w12, .L7_27
    b .L7_162
.L7_162:
    mov w14, w12
    b .L7_28
.L7_27:
    ldr x9, [sp, #16]
    ldr x12, [x9]
    mov x0, x12
    mov x1, x14
    mov x2, x15
    bl memcmp
    mov w12, w0
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    mov w14, w12
.L7_28:
    and w15, w14, #255
    cbnz w15, .L7_24
    b .L7_25
.L7_24:
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
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #32]
    add x15, x9, #8
    ldr x15, [x15]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_68
    add x14, x14, :lo12:.Ltext_68
    mov x0, x23
    mov x1, x14
    movz x2, #2
    bl lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #16]
    ldr x14, [x9]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_69
    add x14, x14, :lo12:.Ltext_69
    mov x0, x23
    mov x1, x14
    movz x2, #3
    bl lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #24]
    movz x16, #16784
    sub x10, x29, x16
    str x9, [x10]
    movz x16, #16785
    sub x24, x29, x16
    mov x0, x24
    ldr x1, [sp, #24]
    movz x2, #1
    bl memcpy
    mov x14, x0
    cbnz x14, .L7_109
    b .L7_110
.L7_110:
    adrp x0, .Ltext_115
    add x0, x0, :lo12:.Ltext_115
    adrp x1, .Ltext_114
    add x1, x1, :lo12:.Ltext_114
    bl lb_core_7trap_at
.L7_109:
    ldrsb w14, [x24]
    sxtb w14, w14
    movz x16, #16800
    sub x10, x29, x16
    str w14, [x10]
.L7_112:
    sxtw x15, w14
    mov x0, x23
    mov x1, x15
    bl lb_core_10format_i64
    mov w14, w0
    mov x0, x23
    bl lb_core_13format_finish
    movz x16, #4480
    sub x16, x29, x16
    str x0, [x16, #0]
    str x1, [x16, #8]
    movz x16, #4480
    sub x15, x29, x16
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_9print_str
    b .L7_26
.L7_25:
    adrp x14, .Ltext_73
    add x14, x14, :lo12:.Ltext_73
    movz x16, #4496
    sub x15, x29, x16
    str x14, [x15]
    add x15, x15, #8
    movz x9, #3
    str x9, [x15]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    movz x10, #3
    cmp x15, x10
    cset w12, eq
    cbnz w12, .L7_32
    b .L7_163
.L7_163:
    mov w14, w12
    b .L7_33
.L7_32:
    ldr x9, [sp, #16]
    ldr x12, [x9]
    mov x0, x12
    mov x1, x14
    mov x2, x15
    bl memcmp
    mov w12, w0
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    mov w14, w12
.L7_33:
    and w15, w14, #255
    cbnz w15, .L7_164
    b .L7_34
.L7_164:
    mov w14, w15
    b .L7_35
.L7_34:
    adrp x14, .Ltext_74
    add x14, x14, :lo12:.Ltext_74
    movz x16, #4512
    sub x15, x29, x16
    str x14, [x15]
    add x15, x15, #8
    movz x9, #5
    str x9, [x15]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    movz x10, #5
    cmp x15, x10
    cset w12, eq
    cbnz w12, .L7_36
    b .L7_165
.L7_165:
    mov w14, w12
    b .L7_37
.L7_36:
    ldr x9, [sp, #16]
    ldr x12, [x9]
    mov x0, x12
    mov x1, x14
    mov x2, x15
    bl memcmp
    mov w12, w0
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    mov w14, w12
.L7_37:
    and w15, w14, #255
    mov w14, w15
.L7_35:
    and w15, w14, #255
    cbnz w15, .L7_29
    b .L7_30
.L7_29:
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
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #32]
    add x15, x9, #8
    ldr x15, [x15]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_68
    add x14, x14, :lo12:.Ltext_68
    mov x0, x23
    mov x1, x14
    movz x2, #2
    bl lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #16]
    ldr x14, [x9]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_69
    add x14, x14, :lo12:.Ltext_69
    mov x0, x23
    mov x1, x14
    movz x2, #3
    bl lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #24]
    movz x16, #16816
    sub x10, x29, x16
    str x9, [x10]
    movz x16, #16824
    sub x24, x29, x16
    mov x0, x24
    ldr x1, [sp, #24]
    movz x2, #8
    bl memcpy
    mov x14, x0
    cbnz x14, .L7_113
    b .L7_114
.L7_114:
    adrp x0, .Ltext_115
    add x0, x0, :lo12:.Ltext_115
    adrp x1, .Ltext_114
    add x1, x1, :lo12:.Ltext_114
    bl lb_core_7trap_at
.L7_113:
    ldr x14, [x24]
.L7_116:
    mov x0, x23
    mov x1, x14
    bl lb_core_10format_u64
    mov w14, w0
    mov x0, x23
    bl lb_core_13format_finish
    movz x16, #5576
    sub x16, x29, x16
    str x0, [x16, #0]
    str x1, [x16, #8]
    movz x16, #5576
    sub x15, x29, x16
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_9print_str
    b .L7_31
.L7_30:
    adrp x14, .Ltext_75
    add x14, x14, :lo12:.Ltext_75
    movz x16, #5592
    sub x15, x29, x16
    str x14, [x15]
    add x15, x15, #8
    movz x9, #3
    str x9, [x15]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    movz x10, #3
    cmp x15, x10
    cset w12, eq
    cbnz w12, .L7_41
    b .L7_166
.L7_166:
    mov w14, w12
    b .L7_42
.L7_41:
    ldr x9, [sp, #16]
    ldr x12, [x9]
    mov x0, x12
    mov x1, x14
    mov x2, x15
    bl memcmp
    mov w12, w0
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    mov w14, w12
.L7_42:
    and w15, w14, #255
    cbnz w15, .L7_167
    b .L7_43
.L7_167:
    mov w14, w15
    b .L7_44
.L7_43:
    adrp x14, .Ltext_76
    add x14, x14, :lo12:.Ltext_76
    movz x16, #5608
    sub x15, x29, x16
    str x14, [x15]
    add x15, x15, #8
    movz x9, #4
    str x9, [x15]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    movz x10, #4
    cmp x15, x10
    cset w12, eq
    cbnz w12, .L7_45
    b .L7_168
.L7_168:
    mov w14, w12
    b .L7_46
.L7_45:
    ldr x9, [sp, #16]
    ldr x12, [x9]
    mov x0, x12
    mov x1, x14
    mov x2, x15
    bl memcmp
    mov w12, w0
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    mov w14, w12
.L7_46:
    and w15, w14, #255
    mov w14, w15
.L7_44:
    and w15, w14, #255
    cbnz w15, .L7_38
    b .L7_39
.L7_38:
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
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #32]
    add x15, x9, #8
    ldr x15, [x15]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_68
    add x14, x14, :lo12:.Ltext_68
    mov x0, x23
    mov x1, x14
    movz x2, #2
    bl lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #16]
    ldr x14, [x9]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_69
    add x14, x14, :lo12:.Ltext_69
    mov x0, x23
    mov x1, x14
    movz x2, #3
    bl lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #24]
    movz x16, #16840
    sub x10, x29, x16
    str x9, [x10]
    movz x16, #16844
    sub x24, x29, x16
    mov x0, x24
    ldr x1, [sp, #24]
    movz x2, #4
    bl memcpy
    mov x14, x0
    cbnz x14, .L7_117
    b .L7_118
.L7_118:
    adrp x0, .Ltext_115
    add x0, x0, :lo12:.Ltext_115
    adrp x1, .Ltext_114
    add x1, x1, :lo12:.Ltext_114
    bl lb_core_7trap_at
.L7_117:
    ldr w14, [x24]
    movz x16, #16856
    sub x10, x29, x16
    str w14, [x10]
.L7_120:
    mov w15, w14
    mov x0, x23
    mov x1, x15
    bl lb_core_10format_u64
    mov w14, w0
    mov x0, x23
    bl lb_core_13format_finish
    movz x16, #6672
    sub x16, x29, x16
    str x0, [x16, #0]
    str x1, [x16, #8]
    movz x16, #6672
    sub x15, x29, x16
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_9print_str
    b .L7_40
.L7_39:
    adrp x14, .Ltext_77
    add x14, x14, :lo12:.Ltext_77
    movz x16, #6688
    sub x15, x29, x16
    str x14, [x15]
    add x15, x15, #8
    movz x9, #3
    str x9, [x15]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    movz x10, #3
    cmp x15, x10
    cset w12, eq
    cbnz w12, .L7_50
    b .L7_169
.L7_169:
    mov w14, w12
    b .L7_51
.L7_50:
    ldr x9, [sp, #16]
    ldr x12, [x9]
    mov x0, x12
    mov x1, x14
    mov x2, x15
    bl memcmp
    mov w12, w0
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    mov w14, w12
.L7_51:
    and w15, w14, #255
    cbnz w15, .L7_47
    b .L7_48
.L7_47:
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
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #32]
    add x15, x9, #8
    ldr x15, [x15]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_68
    add x14, x14, :lo12:.Ltext_68
    mov x0, x23
    mov x1, x14
    movz x2, #2
    bl lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #16]
    ldr x14, [x9]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_69
    add x14, x14, :lo12:.Ltext_69
    mov x0, x23
    mov x1, x14
    movz x2, #3
    bl lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #24]
    movz x16, #16872
    sub x10, x29, x16
    str x9, [x10]
    movz x16, #16874
    sub x24, x29, x16
    mov x0, x24
    ldr x1, [sp, #24]
    movz x2, #2
    bl memcpy
    mov x14, x0
    cbnz x14, .L7_121
    b .L7_122
.L7_122:
    adrp x0, .Ltext_115
    add x0, x0, :lo12:.Ltext_115
    adrp x1, .Ltext_114
    add x1, x1, :lo12:.Ltext_114
    bl lb_core_7trap_at
.L7_121:
    ldrh w14, [x24]
    and w14, w14, #65535
    movz x16, #16888
    sub x10, x29, x16
    str w14, [x10]
.L7_124:
    mov w15, w14
    mov x0, x23
    mov x1, x15
    bl lb_core_10format_u64
    mov w14, w0
    mov x0, x23
    bl lb_core_13format_finish
    movz x16, #7752
    sub x16, x29, x16
    str x0, [x16, #0]
    str x1, [x16, #8]
    movz x16, #7752
    sub x15, x29, x16
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_9print_str
    b .L7_49
.L7_48:
    adrp x14, .Ltext_78
    add x14, x14, :lo12:.Ltext_78
    movz x16, #7768
    sub x15, x29, x16
    str x14, [x15]
    add x15, x15, #8
    movz x9, #2
    str x9, [x15]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    movz x10, #2
    cmp x15, x10
    cset w12, eq
    cbnz w12, .L7_55
    b .L7_170
.L7_170:
    mov w14, w12
    b .L7_56
.L7_55:
    ldr x9, [sp, #16]
    ldr x12, [x9]
    mov x0, x12
    mov x1, x14
    mov x2, x15
    bl memcmp
    mov w12, w0
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    mov w14, w12
.L7_56:
    and w15, w14, #255
    cbnz w15, .L7_52
    b .L7_53
.L7_52:
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
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #32]
    add x15, x9, #8
    ldr x15, [x15]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_68
    add x14, x14, :lo12:.Ltext_68
    mov x0, x23
    mov x1, x14
    movz x2, #2
    bl lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #16]
    ldr x14, [x9]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_69
    add x14, x14, :lo12:.Ltext_69
    mov x0, x23
    mov x1, x14
    movz x2, #3
    bl lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #24]
    movz x16, #16904
    sub x10, x29, x16
    str x9, [x10]
    movz x16, #16905
    sub x24, x29, x16
    mov x0, x24
    ldr x1, [sp, #24]
    movz x2, #1
    bl memcpy
    mov x14, x0
    cbnz x14, .L7_125
    b .L7_126
.L7_126:
    adrp x0, .Ltext_115
    add x0, x0, :lo12:.Ltext_115
    adrp x1, .Ltext_114
    add x1, x1, :lo12:.Ltext_114
    bl lb_core_7trap_at
.L7_125:
    ldrb w14, [x24]
    and w14, w14, #255
    movz x16, #16920
    sub x10, x29, x16
    str w14, [x10]
.L7_128:
    mov w15, w14
    mov x0, x23
    mov x1, x15
    bl lb_core_10format_u64
    mov w14, w0
    mov x0, x23
    bl lb_core_13format_finish
    movz x16, #8832
    sub x16, x29, x16
    str x0, [x16, #0]
    str x1, [x16, #8]
    movz x16, #8832
    sub x15, x29, x16
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_9print_str
    b .L7_54
.L7_53:
    adrp x14, .Ltext_79
    add x14, x14, :lo12:.Ltext_79
    movz x16, #8848
    sub x15, x29, x16
    str x14, [x15]
    add x15, x15, #8
    movz x9, #4
    str x9, [x15]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    movz x10, #4
    cmp x15, x10
    cset w12, eq
    cbnz w12, .L7_60
    b .L7_171
.L7_171:
    mov w14, w12
    b .L7_61
.L7_60:
    ldr x9, [sp, #16]
    ldr x12, [x9]
    mov x0, x12
    mov x1, x14
    mov x2, x15
    bl memcmp
    mov w12, w0
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    mov w14, w12
.L7_61:
    and w15, w14, #255
    cbnz w15, .L7_57
    b .L7_58
.L7_57:
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
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #32]
    add x15, x9, #8
    ldr x15, [x15]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_68
    add x14, x14, :lo12:.Ltext_68
    mov x0, x23
    mov x1, x14
    movz x2, #2
    bl lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #16]
    ldr x14, [x9]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_69
    add x14, x14, :lo12:.Ltext_69
    mov x0, x23
    mov x1, x14
    movz x2, #3
    bl lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #24]
    movz x16, #16936
    sub x10, x29, x16
    str x9, [x10]
    movz x16, #16937
    sub x24, x29, x16
    mov x0, x24
    ldr x1, [sp, #24]
    movz x2, #1
    bl memcpy
    mov x14, x0
    cbnz x14, .L7_129
    b .L7_130
.L7_130:
    adrp x0, .Ltext_115
    add x0, x0, :lo12:.Ltext_115
    adrp x1, .Ltext_114
    add x1, x1, :lo12:.Ltext_114
    bl lb_core_7trap_at
.L7_129:
    ldrb w14, [x24]
    and w14, w14, #255
    movz x16, #16952
    sub x10, x29, x16
    str w14, [x10]
.L7_132:
    mov x0, x23
    mov x1, x14
    bl lb_core_11format_bool
    mov w14, w0
    mov x0, x23
    bl lb_core_13format_finish
    movz x16, #9912
    sub x16, x29, x16
    str x0, [x16, #0]
    str x1, [x16, #8]
    movz x16, #9912
    sub x15, x29, x16
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_9print_str
    b .L7_59
.L7_58:
    adrp x14, .Ltext_80
    add x14, x14, :lo12:.Ltext_80
    movz x16, #9928
    sub x15, x29, x16
    str x14, [x15]
    add x15, x15, #8
    movz x9, #3
    str x9, [x15]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    movz x10, #3
    cmp x15, x10
    cset w12, eq
    cbnz w12, .L7_65
    b .L7_172
.L7_172:
    mov w14, w12
    b .L7_66
.L7_65:
    ldr x9, [sp, #16]
    ldr x12, [x9]
    mov x0, x12
    mov x1, x14
    mov x2, x15
    bl memcmp
    mov w12, w0
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    mov w14, w12
.L7_66:
    and w15, w14, #255
    cbnz w15, .L7_62
    b .L7_63
.L7_62:
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
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #32]
    add x15, x9, #8
    ldr x15, [x15]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_68
    add x14, x14, :lo12:.Ltext_68
    mov x0, x23
    mov x1, x14
    movz x2, #2
    bl lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #16]
    ldr x14, [x9]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_69
    add x14, x14, :lo12:.Ltext_69
    mov x0, x23
    mov x1, x14
    movz x2, #3
    bl lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #24]
    movz x16, #16968
    sub x10, x29, x16
    str x9, [x10]
    movz x16, #16976
    sub x24, x29, x16
    mov x0, x24
    ldr x1, [sp, #24]
    movz x2, #8
    bl memcpy
    mov x14, x0
    cbnz x14, .L7_133
    b .L7_134
.L7_134:
    adrp x0, .Ltext_115
    add x0, x0, :lo12:.Ltext_115
    adrp x1, .Ltext_114
    add x1, x1, :lo12:.Ltext_114
    bl lb_core_7trap_at
.L7_133:
    ldr d24, [x24]
.L7_136:
    fmov d16, d24
    fmov d0, d16
    mov x0, x23
    bl lb_core_10format_f64
    mov w14, w0
    mov x0, x23
    bl lb_core_13format_finish
    movz x16, #10992
    sub x16, x29, x16
    str x0, [x16, #0]
    str x1, [x16, #8]
    movz x16, #10992
    sub x14, x29, x16
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_9print_str
    b .L7_64
.L7_63:
    adrp x14, .Ltext_81
    add x14, x14, :lo12:.Ltext_81
    movz x16, #11008
    sub x15, x29, x16
    str x14, [x15]
    add x15, x15, #8
    movz x9, #3
    str x9, [x15]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    movz x10, #3
    cmp x15, x10
    cset w12, eq
    cbnz w12, .L7_70
    b .L7_173
.L7_173:
    mov w14, w12
    b .L7_71
.L7_70:
    ldr x9, [sp, #16]
    ldr x12, [x9]
    mov x0, x12
    mov x1, x14
    mov x2, x15
    bl memcmp
    mov w12, w0
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    mov w14, w12
.L7_71:
    and w15, w14, #255
    cbnz w15, .L7_67
    b .L7_68
.L7_67:
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
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #32]
    add x15, x9, #8
    ldr x15, [x15]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_68
    add x14, x14, :lo12:.Ltext_68
    mov x0, x23
    mov x1, x14
    movz x2, #2
    bl lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #16]
    ldr x14, [x9]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_69
    add x14, x14, :lo12:.Ltext_69
    mov x0, x23
    mov x1, x14
    movz x2, #3
    bl lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #24]
    movz x16, #16992
    sub x10, x29, x16
    str x9, [x10]
    movz x16, #16996
    sub x24, x29, x16
    mov x0, x24
    ldr x1, [sp, #24]
    movz x2, #4
    bl memcpy
    mov x14, x0
    cbnz x14, .L7_137
    b .L7_138
.L7_138:
    adrp x0, .Ltext_115
    add x0, x0, :lo12:.Ltext_115
    adrp x1, .Ltext_114
    add x1, x1, :lo12:.Ltext_114
    bl lb_core_7trap_at
.L7_137:
    ldr s24, [x24]
    movz x16, #17008
    sub x10, x29, x16
    str s24, [x10]
.L7_140:
    fcvt d25, s24
    fmov d16, d25
    fmov d0, d16
    mov x0, x23
    bl lb_core_10format_f64
    mov w14, w0
    mov x0, x23
    bl lb_core_13format_finish
    movz x16, #12072
    sub x16, x29, x16
    str x0, [x16, #0]
    str x1, [x16, #8]
    movz x16, #12072
    sub x14, x29, x16
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_9print_str
    b .L7_69
.L7_68:
    adrp x14, .Ltext_82
    add x14, x14, :lo12:.Ltext_82
    movz x16, #12088
    sub x15, x29, x16
    str x14, [x15]
    add x15, x15, #8
    movz x9, #3
    str x9, [x15]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    movz x10, #3
    cmp x15, x10
    cset w12, eq
    cbnz w12, .L7_75
    b .L7_174
.L7_174:
    mov w14, w12
    b .L7_76
.L7_75:
    ldr x9, [sp, #16]
    ldr x12, [x9]
    mov x0, x12
    mov x1, x14
    mov x2, x15
    bl memcmp
    mov w12, w0
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    mov w14, w12
.L7_76:
    and w15, w14, #255
    cbnz w15, .L7_72
    b .L7_73
.L7_72:
    movz x16, #12104
    sub x24, x29, x16
    ldr x9, [sp, #24]
    movz x16, #17040
    sub x10, x29, x16
    str x9, [x10]
    movz x16, #17056
    sub x23, x29, x16
    mov x0, x23
    ldr x1, [sp, #24]
    movz x2, #16
    bl memcpy
    mov x14, x0
    cbnz x14, .L7_141
    b .L7_142
.L7_142:
    adrp x0, .Ltext_115
    add x0, x0, :lo12:.Ltext_115
    adrp x1, .Ltext_114
    add x1, x1, :lo12:.Ltext_114
    bl lb_core_7trap_at
.L7_141:
    movz x16, #17024
    sub x20, x29, x16
    mov x10, x23
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x10, x20
    movz x16, #12120
    sub x11, x29, x16
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
.L7_144:
    movz x16, #12120
    sub x14, x29, x16
    mov x10, x14
    mov x11, x24
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #32]
    add x15, x9, #8
    ldr x15, [x15]
    mov x0, x20
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_68
    add x14, x14, :lo12:.Ltext_68
    mov x0, x20
    mov x1, x14
    movz x2, #2
    bl lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #16]
    ldr x14, [x9]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    mov x0, x20
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_83
    add x14, x14, :lo12:.Ltext_83
    mov x0, x20
    mov x1, x14
    movz x2, #4
    bl lb_core_10format_put
    mov w14, w0
    ldr x14, [x24]
    add x15, x24, #8
    ldr x15, [x15]
    mov x0, x20
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_84
    add x14, x14, :lo12:.Ltext_84
    mov x0, x20
    mov x1, x14
    movz x2, #1
    bl lb_core_10format_put
    mov w14, w0
    mov x0, x20
    bl lb_core_13format_finish
    movz x16, #13184
    sub x16, x29, x16
    str x0, [x16, #0]
    str x1, [x16, #8]
    movz x16, #13184
    sub x14, x29, x16
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_9print_str
    b .L7_74
.L7_73:
    adrp x14, .Ltext_85
    add x14, x14, :lo12:.Ltext_85
    movz x16, #13200
    sub x15, x29, x16
    str x14, [x15]
    add x15, x15, #8
    movz x9, #5
    str x9, [x15]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    movz x10, #5
    cmp x15, x10
    cset w12, eq
    cbnz w12, .L7_80
    b .L7_175
.L7_175:
    mov w14, w12
    b .L7_81
.L7_80:
    ldr x9, [sp, #16]
    ldr x12, [x9]
    mov x0, x12
    mov x1, x14
    mov x2, x15
    bl memcmp
    mov w12, w0
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    mov w14, w12
.L7_81:
    and w15, w14, #255
    cbnz w15, .L7_77
    b .L7_78
.L7_77:
    ldr x9, [sp, #24]
    movz x16, #17072
    sub x10, x29, x16
    str x9, [x10]
    movz x16, #17080
    sub x23, x29, x16
    mov x0, x23
    ldr x1, [sp, #24]
    movz x2, #8
    bl memcpy
    mov x14, x0
    cbnz x14, .L7_145
    b .L7_146
.L7_146:
    adrp x0, .Ltext_115
    add x0, x0, :lo12:.Ltext_115
    adrp x1, .Ltext_114
    add x1, x1, :lo12:.Ltext_114
    bl lb_core_7trap_at
.L7_145:
    ldr x20, [x23]
.L7_148:
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
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #32]
    add x15, x9, #8
    ldr x15, [x15]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_68
    add x14, x14, :lo12:.Ltext_68
    mov x0, x23
    mov x1, x14
    movz x2, #2
    bl lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #16]
    ldr x14, [x9]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_83
    add x14, x14, :lo12:.Ltext_83
    mov x0, x23
    mov x1, x14
    movz x2, #4
    bl lb_core_10format_put
    mov w14, w0
    mov x0, x20
    bl strlen
    mov x14, x0
    movz x16, #14264
    sub x15, x29, x16
    str x20, [x15]
    add x15, x15, #8
    str x14, [x15]
    mov x0, x23
    mov x1, x20
    mov x2, x14
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_84
    add x14, x14, :lo12:.Ltext_84
    mov x0, x23
    mov x1, x14
    movz x2, #1
    bl lb_core_10format_put
    mov w14, w0
    mov x0, x23
    bl lb_core_13format_finish
    movz x16, #14280
    sub x16, x29, x16
    str x0, [x16, #0]
    str x1, [x16, #8]
    movz x16, #14280
    sub x14, x29, x16
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_9print_str
    b .L7_79
.L7_78:
    adrp x14, .Ltext_86
    add x14, x14, :lo12:.Ltext_86
    movz x16, #14296
    sub x15, x29, x16
    str x14, [x15]
    add x14, x15, #8
    movz x9, #1
    str x9, [x14]
    ldr x9, [sp, #16]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x15
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl lb_debug_9ends_with
    mov w14, w0
    cbnz w14, .L7_176
    b .L7_85
.L7_176:
    mov w15, w14
    b .L7_86
.L7_85:
    adrp x14, .Ltext_87
    add x14, x14, :lo12:.Ltext_87
    movz x16, #14312
    sub x15, x29, x16
    str x14, [x15]
    add x14, x15, #8
    movz x9, #2
    str x9, [x14]
    ldr x9, [sp, #16]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x15
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl lb_debug_9ends_with
    mov w15, w0
.L7_86:
    and w14, w15, #255
    cbnz w14, .L7_82
    b .L7_83
.L7_82:
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
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #32]
    add x15, x9, #8
    ldr x15, [x15]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_68
    add x14, x14, :lo12:.Ltext_68
    mov x0, x23
    mov x1, x14
    movz x2, #2
    bl lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #16]
    ldr x14, [x9]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_88
    add x14, x14, :lo12:.Ltext_88
    mov x0, x23
    mov x1, x14
    movz x2, #5
    bl lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #24]
    movz x16, #17096
    sub x10, x29, x16
    str x9, [x10]
    movz x16, #17104
    sub x24, x29, x16
    mov x0, x24
    ldr x1, [sp, #24]
    movz x2, #8
    bl memcpy
    mov x14, x0
    cbnz x14, .L7_149
    b .L7_150
.L7_150:
    adrp x0, .Ltext_115
    add x0, x0, :lo12:.Ltext_115
    adrp x1, .Ltext_114
    add x1, x1, :lo12:.Ltext_114
    bl lb_core_7trap_at
.L7_149:
    ldr x14, [x24]
.L7_152:
    mov x0, x14
    bl lb_core_8show_hex
    movz x16, #15376
    sub x16, x29, x16
    str x0, [x16, #0]
    str x1, [x16, #8]
    movz x16, #15376
    sub x15, x29, x16
    ldr x12, [x15]
    add x15, x15, #8
    ldr x15, [x15]
    mov x0, x23
    mov x1, x12
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    mov x0, x23
    bl lb_core_13format_finish
    movz x16, #15392
    sub x16, x29, x16
    str x0, [x16, #0]
    str x1, [x16, #8]
    movz x16, #15392
    sub x15, x29, x16
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_9print_str
    b .L7_84
.L7_83:
    ldr x9, [sp, #32]
    add x9, x9, #40
    str x9, [sp, #0]
    ldr x9, [sp, #0]
    ldr x14, [x9]
    movz x10, #32
    cmp x14, x10
    b.ls .L7_88
.L7_87:
    movz x9, #32
    mov x24, x9
    b .L7_89
.L7_88:
    mov x24, x14
.L7_89:
    movz x16, #15552
    sub x25, x29, x16
    mov x0, x25
    mov x1, #0
    movz x2, #160
    bl _memset
    movz x16, #16905
    sub x22, x29, x16
    movz x16, #15568
    sub x26, x29, x16
    adrp x27, .Ltext_90
    add x27, x27, :lo12:.Ltext_90
    movz x16, #15584
    sub x28, x29, x16
    add x23, x28, #8
    mov x9, #0
    mov x21, x9
    mov x9, #0
    mov x19, x9
.L7_90:
    cmp x19, x24
    b.hs .L7_92
.L7_91:
    ldr x9, [sp, #24]
    mov x10, x19
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_89
    add x0, x0, :lo12:.Ltext_89
    adrp x1, .Ltext_50
    add x1, x1, :lo12:.Ltext_50
    bl lb_core_7trap_at
1:
    mov x14, x9
    movz x16, #16904
    sub x10, x29, x16
    str x14, [x10]
    mov x0, x22
    mov x1, x14
    movz x2, #1
    bl memcpy
    mov x14, x0
    cbnz x14, .L7_153
    b .L7_154
.L7_154:
    adrp x0, .Ltext_115
    add x0, x0, :lo12:.Ltext_115
    adrp x1, .Ltext_114
    add x1, x1, :lo12:.Ltext_114
    bl lb_core_7trap_at
.L7_153:
    ldrb w14, [x22]
    and w20, w14, #255
    movz x16, #17112
    sub x10, x29, x16
    str w20, [x10]
.L7_156:
    str x27, [x28]
    movz x9, #16
    str x9, [x23]
    mov x10, x28
    mov x11, x26
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    movz x10, #160
    cmp x21, x10
    b.lo 1f
    adrp x0, .Ltext_91
    add x0, x0, :lo12:.Ltext_91
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
1:
    add x14, x25, x21
    and w15, w20, #255
.L7_94:
    lsr w12, w15, #4
    and w12, w12, #255
    mov w12, w12
    movz x10, #16
    cmp x12, x10
    b.lo 1f
    adrp x0, .Ltext_91
    add x0, x0, :lo12:.Ltext_91
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
1:
    add x12, x27, x12
    ldrb w12, [x12]
    strb w12, [x14]
    add x12, x21, #1
    movz x10, #160
    cmp x12, x10
    b.lo 1f
    adrp x0, .Ltext_93
    add x0, x0, :lo12:.Ltext_93
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
1:
    add x12, x25, x12
    movz x10, #15
    and w13, w15, w10
    mov w13, w13
    add x13, x27, x13
    ldrb w13, [x13]
    strb w13, [x12]
    add x12, x21, #2
    movz x10, #160
    cmp x12, x10
    b.lo 1f
    adrp x0, .Ltext_94
    add x0, x0, :lo12:.Ltext_94
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
1:
    add x12, x25, x12
    movz x9, #32
    strb w9, [x12]
    add x12, x21, #3
    add x13, x19, #1
    mov x21, x12
    mov x19, x13
    b .L7_90
.L7_92:
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
    ldr x9, [sp, #32]
    ldr x14, [x9]
    ldr x9, [sp, #32]
    add x15, x9, #8
    ldr x15, [x15]
    mov x0, x19
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_68
    add x14, x14, :lo12:.Ltext_68
    mov x0, x19
    mov x1, x14
    movz x2, #2
    bl lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #16]
    ldr x14, [x9]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    mov x0, x19
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_69
    add x14, x14, :lo12:.Ltext_69
    mov x0, x19
    mov x1, x14
    movz x2, #3
    bl lb_core_10format_put
    mov w14, w0
    ldr x9, [sp, #0]
    ldr x14, [x9]
    mov x0, x19
    mov x1, x14
    bl lb_core_10format_u64
    mov w14, w0
    adrp x14, .Ltext_97
    add x14, x14, :lo12:.Ltext_97
    mov x0, x19
    mov x1, x14
    movz x2, #7
    bl lb_core_10format_put
    mov w14, w0
    movz x10, #161
    cmp x21, x10
    b.lo 1f
    adrp x0, .Ltext_98
    add x0, x0, :lo12:.Ltext_98
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x21
    b.ls .L7_95
.L7_96:
    adrp x0, .Ltext_98
    add x0, x0, :lo12:.Ltext_98
    adrp x1, .Ltext_14
    add x1, x1, :lo12:.Ltext_14
    bl lb_core_7trap_at
.L7_95:
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
    bl lb_core_10format_put
    mov w14, w0
    mov x0, x19
    bl lb_core_13format_finish
    movz x16, #16680
    sub x16, x29, x16
    str x0, [x16, #0]
    str x1, [x16, #8]
    movz x16, #16680
    sub x14, x29, x16
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_9print_str
.L7_84:
.L7_79:
.L7_74:
.L7_69:
.L7_64:
.L7_59:
.L7_54:
.L7_49:
.L7_40:
.L7_31:
.L7_26:
.L7_21:
.L7_16:
.L7_7:
    ldr x19, [sp, #17128]
    ldr x20, [sp, #17120]
    ldr x21, [sp, #17112]
    ldr x22, [sp, #17104]
    ldr x23, [sp, #17096]
    ldr x24, [sp, #17088]
    ldr x25, [sp, #17080]
    ldr x26, [sp, #17072]
    ldr x27, [sp, #17064]
    ldr x28, [sp, #17056]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_debug_show, .-lb_debug_show

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
    adrp x14, .Ltext_14
    add x14, x14, :lo12:.Ltext_14
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, .Ltext_112
    add x14, x14, :lo12:.Ltext_112
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
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl memcpy
    mov x14, x0
    cbnz x14, .L8_9
    b .L8_10
.L8_10:
    adrp x0, .Ltext_113
    add x0, x0, :lo12:.Ltext_113
    adrp x1, .Ltext_114
    add x1, x1, :lo12:.Ltext_114
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

    .size lb_memory_copy_0g1_u8, .-lb_memory_copy_0g1_u8

    .p2align 2
    .weak lb_memory_read_0g1_i64
    .type lb_memory_read_0g1_i64, %function
lb_memory_read_0g1_i64:
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
    bl memcpy
    mov x14, x0
    cbnz x14, .L9_1
    b .L9_2
.L9_2:
    adrp x0, .Ltext_115
    add x0, x0, :lo12:.Ltext_115
    adrp x1, .Ltext_114
    add x1, x1, :lo12:.Ltext_114
    bl lb_core_7trap_at
.L9_1:
    ldr x14, [x19]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_3:
    adrp x0, .Ltext_116
    add x0, x0, :lo12:.Ltext_116
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at

    .size lb_memory_read_0g1_i64, .-lb_memory_read_0g1_i64

    .p2align 2
    .weak lb_memory_read_0g1_i32
    .type lb_memory_read_0g1_i32, %function
lb_memory_read_0g1_i32:
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
    bl memcpy
    mov x14, x0
    cbnz x14, .L10_1
    b .L10_2
.L10_2:
    adrp x0, .Ltext_115
    add x0, x0, :lo12:.Ltext_115
    adrp x1, .Ltext_114
    add x1, x1, :lo12:.Ltext_114
    bl lb_core_7trap_at
.L10_1:
    ldrsw x14, [x19]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L10_3:
    adrp x0, .Ltext_116
    add x0, x0, :lo12:.Ltext_116
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at

    .size lb_memory_read_0g1_i32, .-lb_memory_read_0g1_i32

    .p2align 2
    .weak lb_memory_read_0g1_i16
    .type lb_memory_read_0g1_i16, %function
lb_memory_read_0g1_i16:
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
    bl memcpy
    mov x14, x0
    cbnz x14, .L11_1
    b .L11_2
.L11_2:
    adrp x0, .Ltext_115
    add x0, x0, :lo12:.Ltext_115
    adrp x1, .Ltext_114
    add x1, x1, :lo12:.Ltext_114
    bl lb_core_7trap_at
.L11_1:
    ldrsh w14, [x19]
    sxth w14, w14
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_3:
    adrp x0, .Ltext_116
    add x0, x0, :lo12:.Ltext_116
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at

    .size lb_memory_read_0g1_i16, .-lb_memory_read_0g1_i16

    .p2align 2
    .weak lb_memory_read_0g1_i8
    .type lb_memory_read_0g1_i8, %function
lb_memory_read_0g1_i8:
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
    bl memcpy
    mov x14, x0
    cbnz x14, .L12_1
    b .L12_2
.L12_2:
    adrp x0, .Ltext_115
    add x0, x0, :lo12:.Ltext_115
    adrp x1, .Ltext_114
    add x1, x1, :lo12:.Ltext_114
    bl lb_core_7trap_at
.L12_1:
    ldrsb w14, [x19]
    sxtb w14, w14
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L12_3:
    adrp x0, .Ltext_116
    add x0, x0, :lo12:.Ltext_116
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at

    .size lb_memory_read_0g1_i8, .-lb_memory_read_0g1_i8

    .p2align 2
    .weak lb_memory_read_0g1_u64
    .type lb_memory_read_0g1_u64, %function
lb_memory_read_0g1_u64:
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
    bl memcpy
    mov x14, x0
    cbnz x14, .L13_1
    b .L13_2
.L13_2:
    adrp x0, .Ltext_115
    add x0, x0, :lo12:.Ltext_115
    adrp x1, .Ltext_114
    add x1, x1, :lo12:.Ltext_114
    bl lb_core_7trap_at
.L13_1:
    ldr x14, [x19]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L13_3:
    adrp x0, .Ltext_116
    add x0, x0, :lo12:.Ltext_116
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at

    .size lb_memory_read_0g1_u64, .-lb_memory_read_0g1_u64

    .p2align 2
    .weak lb_memory_read_0g1_u32
    .type lb_memory_read_0g1_u32, %function
lb_memory_read_0g1_u32:
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
    bl memcpy
    mov x14, x0
    cbnz x14, .L14_1
    b .L14_2
.L14_2:
    adrp x0, .Ltext_115
    add x0, x0, :lo12:.Ltext_115
    adrp x1, .Ltext_114
    add x1, x1, :lo12:.Ltext_114
    bl lb_core_7trap_at
.L14_1:
    ldr w14, [x19]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L14_3:
    adrp x0, .Ltext_116
    add x0, x0, :lo12:.Ltext_116
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at

    .size lb_memory_read_0g1_u32, .-lb_memory_read_0g1_u32

    .p2align 2
    .weak lb_memory_read_0g1_u16
    .type lb_memory_read_0g1_u16, %function
lb_memory_read_0g1_u16:
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
    bl memcpy
    mov x14, x0
    cbnz x14, .L15_1
    b .L15_2
.L15_2:
    adrp x0, .Ltext_115
    add x0, x0, :lo12:.Ltext_115
    adrp x1, .Ltext_114
    add x1, x1, :lo12:.Ltext_114
    bl lb_core_7trap_at
.L15_1:
    ldrh w14, [x19]
    and w14, w14, #65535
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L15_3:
    adrp x0, .Ltext_116
    add x0, x0, :lo12:.Ltext_116
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at

    .size lb_memory_read_0g1_u16, .-lb_memory_read_0g1_u16

    .p2align 2
    .weak lb_memory_read_0g1_u8
    .type lb_memory_read_0g1_u8, %function
lb_memory_read_0g1_u8:
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
    bl memcpy
    mov x14, x0
    cbnz x14, .L16_1
    b .L16_2
.L16_2:
    adrp x0, .Ltext_115
    add x0, x0, :lo12:.Ltext_115
    adrp x1, .Ltext_114
    add x1, x1, :lo12:.Ltext_114
    bl lb_core_7trap_at
.L16_1:
    ldrb w14, [x19]
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L16_3:
    adrp x0, .Ltext_116
    add x0, x0, :lo12:.Ltext_116
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at

    .size lb_memory_read_0g1_u8, .-lb_memory_read_0g1_u8

    .p2align 2
    .weak lb_memory_read_0g1_bool
    .type lb_memory_read_0g1_bool, %function
lb_memory_read_0g1_bool:
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
    bl memcpy
    mov x14, x0
    cbnz x14, .L17_1
    b .L17_2
.L17_2:
    adrp x0, .Ltext_115
    add x0, x0, :lo12:.Ltext_115
    adrp x1, .Ltext_114
    add x1, x1, :lo12:.Ltext_114
    bl lb_core_7trap_at
.L17_1:
    ldrb w14, [x19]
    and w14, w14, #255
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L17_3:
    adrp x0, .Ltext_116
    add x0, x0, :lo12:.Ltext_116
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at

    .size lb_memory_read_0g1_bool, .-lb_memory_read_0g1_bool

    .p2align 2
    .weak lb_memory_read_0g1_f64
    .type lb_memory_read_0g1_f64, %function
lb_memory_read_0g1_f64:
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
    bl memcpy
    mov x14, x0
    cbnz x14, .L18_1
    b .L18_2
.L18_2:
    adrp x0, .Ltext_115
    add x0, x0, :lo12:.Ltext_115
    adrp x1, .Ltext_114
    add x1, x1, :lo12:.Ltext_114
    bl lb_core_7trap_at
.L18_1:
    ldr d24, [x19]
    fmov d16, d24
    fmov d0, d16
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L18_3:
    adrp x0, .Ltext_116
    add x0, x0, :lo12:.Ltext_116
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at

    .size lb_memory_read_0g1_f64, .-lb_memory_read_0g1_f64

    .p2align 2
    .weak lb_memory_read_0g1_f32
    .type lb_memory_read_0g1_f32, %function
lb_memory_read_0g1_f32:
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
    bl memcpy
    mov x14, x0
    cbnz x14, .L19_1
    b .L19_2
.L19_2:
    adrp x0, .Ltext_115
    add x0, x0, :lo12:.Ltext_115
    adrp x1, .Ltext_114
    add x1, x1, :lo12:.Ltext_114
    bl lb_core_7trap_at
.L19_1:
    ldr s24, [x19]
    fmov s16, s24
    fmov s0, s16
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L19_3:
    adrp x0, .Ltext_116
    add x0, x0, :lo12:.Ltext_116
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at

    .size lb_memory_read_0g1_f32, .-lb_memory_read_0g1_f32

    .p2align 2
    .weak lb_memory_read_0g1_str
    .type lb_memory_read_0g1_str, %function
lb_memory_read_0g1_str:
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
    bl memcpy
    mov x14, x0
    cbnz x14, .L20_1
    b .L20_2
.L20_2:
    adrp x0, .Ltext_115
    add x0, x0, :lo12:.Ltext_115
    adrp x1, .Ltext_114
    add x1, x1, :lo12:.Ltext_114
    bl lb_core_7trap_at
.L20_1:
    sub x20, x29, #48
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L20_3:
    adrp x0, .Ltext_116
    add x0, x0, :lo12:.Ltext_116
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at

    .size lb_memory_read_0g1_str, .-lb_memory_read_0g1_str

    .p2align 2
    .weak lb_memory_read_0g1_5c_str
    .type lb_memory_read_0g1_5c_str, %function
lb_memory_read_0g1_5c_str:
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
    bl memcpy
    mov x14, x0
    cbnz x14, .L21_1
    b .L21_2
.L21_2:
    adrp x0, .Ltext_115
    add x0, x0, :lo12:.Ltext_115
    adrp x1, .Ltext_114
    add x1, x1, :lo12:.Ltext_114
    bl lb_core_7trap_at
.L21_1:
    ldr x14, [x19]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L21_3:
    adrp x0, .Ltext_116
    add x0, x0, :lo12:.Ltext_116
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at

    .size lb_memory_read_0g1_5c_str, .-lb_memory_read_0g1_5c_str

    .p2align 2
    .weak lb_memory_read_0g1_usize
    .type lb_memory_read_0g1_usize, %function
lb_memory_read_0g1_usize:
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
    bl memcpy
    mov x14, x0
    cbnz x14, .L22_1
    b .L22_2
.L22_2:
    adrp x0, .Ltext_115
    add x0, x0, :lo12:.Ltext_115
    adrp x1, .Ltext_114
    add x1, x1, :lo12:.Ltext_114
    bl lb_core_7trap_at
.L22_1:
    ldr x14, [x19]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L22_3:
    adrp x0, .Ltext_116
    add x0, x0, :lo12:.Ltext_116
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at

    .size lb_memory_read_0g1_usize, .-lb_memory_read_0g1_usize

    .section .init_array,"aw"
    .p2align 3
    .quad lb_debug_0init

    .section .rodata
.Ltext_0:
    .asciz "src/std/debug.lucb:45:9"
.Ltext_1:
    .asciz "src/std/debug.lucb:46:5"
.Ltext_2:
    .asciz "src/std/debug.lucb:50:9"
.Ltext_3:
    .asciz "LUCE_DEBUG"
.Ltext_4:
    .asciz "src/std/debug.lucb:59:5"
.Ltext_5:
    .asciz "src/std/debug.lucb:61:5"
.Ltext_6:
    .asciz "stopped at "
.Ltext_7:
    .asciz ":"
.Ltext_8:
    .asciz " in "
.Ltext_9:
    .asciz "src/std/debug.lucb:82:9"
.Ltext_10:
    .asciz "src/std/debug.lucb:85:9"
.Ltext_11:
    .asciz "unreachable"
.Ltext_12:
    .asciz "src/std/debug.lucb:86:5"
.Ltext_13:
    .asciz "src/std/debug.lucb:91:5"
.Ltext_14:
    .asciz "index out of bounds"
.Ltext_15:
    .asciz "src/std/debug.lucb:98:9"
.Ltext_16:
    .asciz "r"
.Ltext_17:
    .asciz "run"
.Ltext_18:
    .asciz "c"
.Ltext_19:
    .asciz "continue"
.Ltext_20:
    .asciz "s"
.Ltext_21:
    .asciz "step"
.Ltext_22:
    .asciz "n"
.Ltext_23:
    .asciz "next"
.Ltext_24:
    .asciz "q"
.Ltext_25:
    .asciz "quit"
.Ltext_26:
    .asciz "b"
.Ltext_27:
    .asciz "break"
.Ltext_28:
    .asciz "p"
.Ltext_29:
    .asciz "print"
.Ltext_30:
    .asciz "locals"
.Ltext_31:
    .asciz "bt"
.Ltext_32:
    .asciz "backtrace"
.Ltext_33:
    .asciz "unknown command `"
.Ltext_34:
    .asciz "`; commands: break FILE:LINE, run, step, next, print NAME, locals, backtrace, quit"
.Ltext_35:
    .asciz "src/std/debug.lucb:127:9"
.Ltext_36:
    .asciz "src/std/debug.lucb:128:9"
.Ltext_37:
    .asciz "break needs FILE:LINE"
.Ltext_38:
    .asciz "src/std/debug.lucb:134:5"
.Ltext_39:
    .asciz "src/std/debug.lucb:135:5"
.Ltext_40:
    .asciz "src/std/debug.lucb:136:5"
.Ltext_41:
    .asciz "cannot set that breakpoint"
.Ltext_42:
    .asciz "src/std/debug.lucb:139:5"
.Ltext_43:
    .asciz "src/std/debug.lucb:140:5"
.Ltext_44:
    .asciz "src/std/debug.lucb:141:5"
.Ltext_45:
    .asciz "src/std/debug.lucb:142:5"
.Ltext_46:
    .asciz "src/std/debug.lucb:143:5"
.Ltext_47:
    .asciz "breakpoint "
.Ltext_48:
    .asciz " at "
.Ltext_49:
    .asciz "src/std/debug.lucb:151:9"
.Ltext_50:
    .asciz "integer overflow"
.Ltext_51:
    .asciz "src/std/debug.lucb:152:5"
.Ltext_52:
    .asciz "src/std/debug.lucb:158:9"
.Ltext_53:
    .asciz "src/std/debug.lucb:159:9"
.Ltext_54:
    .asciz "#"
.Ltext_55:
    .asciz " "
.Ltext_56:
    .asciz "src/std/debug.lucb:162:9"
.Ltext_57:
    .asciz "src/std/debug.lucb:165:5"
.Ltext_58:
    .asciz "src/std/debug.lucb:170:9"
.Ltext_59:
    .asciz "src/std/debug.lucb:173:5"
.Ltext_60:
    .asciz "src/std/debug.lucb:181:9"
.Ltext_61:
    .asciz "no local named `"
.Ltext_62:
    .asciz "`"
.Ltext_63:
    .asciz "src/std/debug.lucb:186:5"
.Ltext_64:
    .asciz "src/std/debug.lucb:187:5"
.Ltext_65:
    .asciz "src/std/debug.lucb:192:5"
.Ltext_66:
    .asciz "i64"
.Ltext_67:
    .asciz "isize"
.Ltext_68:
    .asciz ": "
.Ltext_69:
    .asciz " = "
.Ltext_70:
    .asciz "i32"
.Ltext_71:
    .asciz "i16"
.Ltext_72:
    .asciz "i8"
.Ltext_73:
    .asciz "u64"
.Ltext_74:
    .asciz "usize"
.Ltext_75:
    .asciz "u32"
.Ltext_76:
    .asciz "char"
.Ltext_77:
    .asciz "u16"
.Ltext_78:
    .asciz "u8"
.Ltext_79:
    .asciz "bool"
.Ltext_80:
    .asciz "f64"
.Ltext_81:
    .asciz "f32"
.Ltext_82:
    .asciz "str"
.Ltext_83:
    .asciz " = \""
.Ltext_84:
    .asciz "\""
.Ltext_85:
    .asciz "c.str"
.Ltext_86:
    .asciz "*"
.Ltext_87:
    .asciz "*?"
.Ltext_88:
    .asciz " = 0x"
.Ltext_89:
    .asciz "src/std/debug.lucb:232:13"
.Ltext_90:
    .asciz "0123456789abcdef"
.Ltext_91:
    .asciz "src/std/debug.lucb:234:13"
.Ltext_92:
    .asciz "shift count out of range"
.Ltext_93:
    .asciz "src/std/debug.lucb:235:13"
.Ltext_94:
    .asciz "src/std/debug.lucb:236:13"
.Ltext_95:
    .asciz "src/std/debug.lucb:237:13"
.Ltext_96:
    .asciz "src/std/debug.lucb:238:13"
.Ltext_97:
    .asciz " bytes "
.Ltext_98:
    .asciz "src/std/debug.lucb:239:9"
.Ltext_99:
    .asciz "src/std/debug.lucb:243:5"
.Ltext_100:
    .asciz "src/std/debug.lucb:244:9"
.Ltext_101:
    .asciz "src/std/debug.lucb:245:5"
.Ltext_102:
    .asciz "src/std/debug.lucb:250:5"
.Ltext_103:
    .asciz "src/std/debug.lucb:251:9"
.Ltext_104:
    .asciz "src/std/debug.lucb:252:5"
.Ltext_105:
    .asciz "src/std/debug.lucb:253:9"
.Ltext_106:
    .asciz "src/std/debug.lucb:254:5"
.Ltext_107:
    .asciz "src/std/debug.lucb:261:9"
.Ltext_108:
    .asciz "src/std/debug.lucb:266:9"
.Ltext_109:
    .asciz "src/std/debug.lucb:268:9"
.Ltext_110:
    .asciz "src/std/debug.lucb:269:9"
.Ltext_111:
    .asciz "src/std/debug.lucb:270:5"
.Ltext_112:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_113:
    .asciz "src/std/memory.lucb:330:9"
.Ltext_114:
    .asciz "null_foreign"
.Ltext_115:
    .asciz "src/std/memory.lucb:344:5"
.Ltext_116:
    .asciz "src/std/memory.lucb:345:5"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_debug_activations
    .type lb_debug_activations, %object
    .p2align 3
lb_debug_activations:
    .zero 12288

    .bss
    .globl lb_debug_depth
    .type lb_debug_depth, %object
    .p2align 3
lb_debug_depth:
    .zero 8

    .bss
    .globl lb_debug_checked
    .type lb_debug_checked, %object
    .p2align 0
lb_debug_checked:
    .zero 1

    .bss
    .globl lb_debug_active
    .type lb_debug_active, %object
    .p2align 0
lb_debug_active:
    .zero 1

    .bss
    .globl lb_debug_started
    .type lb_debug_started, %object
    .p2align 0
lb_debug_started:
    .zero 1

    .bss
    .globl lb_debug_stepping
    .type lb_debug_stepping, %object
    .p2align 0
lb_debug_stepping:
    .zero 1

    .bss
    .globl lb_debug_9step_over
    .type lb_debug_9step_over, %object
    .p2align 3
lb_debug_9step_over:
    .zero 8

    .bss
    .globl lb_debug_breaks
    .type lb_debug_breaks, %object
    .p2align 3
lb_debug_breaks:
    .zero 768

    .bss
    .globl lb_debug_11break_count
    .type lb_debug_11break_count, %object
    .p2align 3
lb_debug_11break_count:
    .zero 8

    .bss
    .globl lb_debug_names
    .type lb_debug_names, %object
    .p2align 0
lb_debug_names:
    .zero 4096

    .bss
    .globl lb_debug_10names_used
    .type lb_debug_10names_used, %object
    .p2align 3
lb_debug_10names_used:
    .zero 8

    .bss
    .globl lb_debug_10line_bytes
    .type lb_debug_10line_bytes, %object
    .p2align 0
lb_debug_10line_bytes:
    .zero 512


    .section .note.GNU-stack,"",%progbits
