    .text

    .p2align 2
    .globl lb_files_contents_0init
    .type lb_files_contents_0init, %function
lb_files_contents_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_files_contents_0init, .-lb_files_contents_0init

    .p2align 2
    .globl lb_files_read
    .type lb_files_read, %function
lb_files_read:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #112]
    sub x16, x29, #96
    str x0, [x16]
    sub x14, x29, #96
    ldr x14, [x14]
    mov x0, x14
    movn x1, #0
    sub x8, x29, #144
    bl lb_files_10read_limit
    sub x15, x29, #144
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, .L1_2
    b .L1_1
.L1_2:
    add x14, x15, #16
    sub x19, x29, #80
    add x12, x19, #16
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_3:
.L1_1:
    sub x19, x29, #80
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #40
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_4:
    adrp x0, .Ltext_1
    add x0, x0, :lo12:.Ltext_1
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_files_read, .-lb_files_read

    .p2align 2
    .globl lb_files_10read_limit
    .type lb_files_10read_limit, %function
lb_files_10read_limit:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #4944
    sub sp, sp, x16
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #4912]
    str x20, [sp, #4904]
    str x21, [sp, #4896]
    str x22, [sp, #4888]
    str x23, [sp, #4880]
    str x24, [sp, #4872]
    str x25, [sp, #4864]
    str x26, [sp, #4856]
    str x27, [sp, #4848]
    str x28, [sp, #4840]
    sub x16, x29, #168
    str x0, [x16]
    sub x16, x29, #184
    str x1, [x16]
    sub x19, x29, #192
    sub x14, x29, #168
    ldr x14, [x14]
    mov x0, x14
    mov x1, #0
    movz x2, #420
    sub x8, x29, #232
    bl lb_files_File_open
    sub x15, x29, #232
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L2_2
    b .L2_1
.L2_2:
    add x14, x15, #8
    sub x19, x29, #152
    add x12, x19, #16
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
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
    ldr x19, [sp, #4912]
    ldr x20, [sp, #4904]
    ldr x21, [sp, #4896]
    ldr x22, [sp, #4888]
    ldr x23, [sp, #4880]
    ldr x24, [sp, #4872]
    ldr x25, [sp, #4864]
    ldr x26, [sp, #4856]
    ldr x27, [sp, #4848]
    ldr x28, [sp, #4840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_1:
    mov x10, x15
    mov x11, x19
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    sub x9, x29, #248
    str x9, [sp, #224]
    ldr x11, [sp, #224]
    stp xzr, xzr, [x11, #0]
    movz x16, #4344
    sub x21, x29, x16
    mov x0, x21
    mov x1, #0
    movz x2, #4096
    bl _memset
    sub x9, x29, #184
    str x9, [sp, #216]
    movz x16, #4360
    sub x9, x29, x16
    str x9, [sp, #208]
    ldr x9, [sp, #208]
    add x24, x9, #8
    movz x16, #4400
    sub x9, x29, x16
    str x9, [sp, #32]
    ldr x9, [sp, #32]
    add x25, x9, #32
    ldr x9, [sp, #224]
    add x9, x9, #8
    str x9, [sp, #200]
    movz x16, #4424
    sub x9, x29, x16
    str x9, [sp, #192]
    movz x16, #4440
    sub x9, x29, x16
    str x9, [sp, #24]
    ldr x9, [sp, #24]
    add x9, x9, #8
    str x9, [sp, #184]
    movz x16, #4560
    sub x9, x29, x16
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    add x9, x9, #40
    str x9, [sp, #72]
    movz x16, #4488
    sub x9, x29, x16
    str x9, [sp, #8]
    movz x16, #4512
    sub x9, x29, x16
    str x9, [sp, #0]
    ldr x9, [sp, #0]
    add x9, x9, #16
    str x9, [sp, #144]
    ldr x9, [sp, #8]
    add x9, x9, #8
    str x9, [sp, #96]
    ldr x9, [sp, #8]
    add x9, x9, #40
    str x9, [sp, #88]
    ldr x9, [sp, #8]
    add x9, x9, #16
    str x9, [sp, #136]
    adrp x9, .Ltext_10
    add x9, x9, :lo12:.Ltext_10
    str x9, [sp, #128]
    ldr x9, [sp, #136]
    add x9, x9, #8
    str x9, [sp, #120]
    ldr x9, [sp, #136]
    add x9, x9, #16
    str x9, [sp, #112]
    ldr x9, [sp, #8]
    add x9, x9, #40
    str x9, [sp, #104]
    ldr x9, [sp, #8]
    add x28, x9, #16
    adrp x9, .Ltext_7
    add x9, x9, :lo12:.Ltext_7
    str x9, [sp, #176]
    add x9, x28, #8
    str x9, [sp, #168]
    add x9, x28, #16
    str x9, [sp, #160]
    ldr x9, [sp, #8]
    add x9, x9, #40
    str x9, [sp, #152]
    ldr x9, [sp, #8]
    add x9, x9, #40
    str x9, [sp, #80]
    movz x16, #4576
    sub x9, x29, x16
    str x9, [sp, #64]
    ldr x9, [sp, #64]
    add x9, x9, #8
    str x9, [sp, #56]
    movz x16, #4592
    sub x9, x29, x16
    str x9, [sp, #48]
    ldr x9, [sp, #48]
    add x9, x9, #8
    str x9, [sp, #40]
    mov x9, #0
    mov x27, x9
.L2_4:
.L2_5:
    ldr x9, [sp, #216]
    ldr x20, [x9]
    mov x9, x20
    mov x10, x27
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_19
    add x1, x1, :lo12:.Ltext_19
    bl lb_core_7trap_at
1:
    mov x14, x9
    mov x10, #0
    cmp x14, x10
    cset w26, eq
    cbnz w26, .L2_7
    b .L2_8
.L2_7:
    movz x9, #1
    mov x14, x9
    b .L2_9
.L2_8:
    movz x10, #4096
    cmp x14, x10
    b.hs .L2_11
.L2_10:
    mov x15, x14
    b .L2_12
.L2_11:
    movz x9, #4096
    mov x15, x9
.L2_12:
    mov x14, x15
.L2_9:
    movz x10, #4097
    cmp x14, x10
    b.lo 1f
    adrp x0, .Ltext_3
    add x0, x0, :lo12:.Ltext_3
    adrp x1, .Ltext_4
    add x1, x1, :lo12:.Ltext_4
    bl lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x14
    b.ls .L2_13
.L2_14:
    adrp x0, .Ltext_3
    add x0, x0, :lo12:.Ltext_3
    adrp x1, .Ltext_4
    add x1, x1, :lo12:.Ltext_4
    bl lb_core_7trap_at
.L2_13:
    ldr x10, [sp, #208]
    str x21, [x10]
    str x14, [x24]
    mov x0, x19
    ldr x9, [sp, #208]
    ldr x1, [x9]
    ldr x2, [x9, #8]
    movz x16, #4400
    sub x8, x29, x16
    bl lb_files_File_read
    ldrb w15, [x25]
    cbnz w15, .L2_16
    b .L2_15
.L2_16:
    ldr x9, [sp, #32]
    add x14, x9, #8
    sub x20, x29, #152
    add x15, x20, #16
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #224]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_files_14release_buffer
    mov x0, x19
    bl lb_files_File_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4912]
    ldr x20, [sp, #4904]
    ldr x21, [sp, #4896]
    ldr x22, [sp, #4888]
    ldr x23, [sp, #4880]
    ldr x24, [sp, #4872]
    ldr x25, [sp, #4864]
    ldr x26, [sp, #4856]
    ldr x27, [sp, #4848]
    ldr x28, [sp, #4840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_15:
    ldr x9, [sp, #32]
    ldr x22, [x9]
    mov x10, #0
    cmp x22, x10
    b.ne .L2_19
.L2_18:
    b .L2_6
.L2_19:
.L2_20:
    cbnz w26, .L2_22
    b .L2_23
.L2_22:
    sub x20, x29, #152
    add x14, x20, #16
    adrp x15, lb_files_9too_large
    add x15, x15, :lo12:lb_files_9too_large
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_5
    add x15, x15, :lo12:.Ltext_5
    movz x16, #4416
    sub x12, x29, x16
    str x15, [x12]
    add x15, x12, #8
    movz x9, #31
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #224]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_files_14release_buffer
    mov x0, x19
    bl lb_files_File_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4912]
    ldr x20, [sp, #4904]
    ldr x21, [sp, #4896]
    ldr x22, [sp, #4888]
    ldr x23, [sp, #4880]
    ldr x24, [sp, #4872]
    ldr x25, [sp, #4864]
    ldr x26, [sp, #4856]
    ldr x27, [sp, #4848]
    ldr x28, [sp, #4840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_23:
.L2_24:
    mov x9, x22
    mov x10, x27
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_19
    add x1, x1, :lo12:.Ltext_19
    bl lb_core_7trap_at
1:
    mov x26, x9
    ldr x9, [sp, #200]
    ldr x14, [x9]
    cmp x26, x14
    b.ls .L2_27
.L2_26:
    mov x0, x14
    movz x1, #2
    movz x2, #64
    ldr x3, [sp, #192]
    bl lb_core_6qmul_u
    mov w15, w0
    ldr x9, [sp, #192]
    ldr x12, [x9]
    ldr x10, [sp, #24]
    str x12, [x10]
    ldr x10, [sp, #184]
    strb w15, [x10]
    ldr x9, [sp, #184]
    ldrb w15, [x9]
    cbnz w15, .L2_29
    b .L2_30
.L2_29:
    mov x14, x12
    b .L2_31
.L2_30:
    mov x14, x20
.L2_31:
    movz x10, #4096
    cmp x14, x10
    b.hs .L2_33
.L2_32:
    movz x9, #4096
    mov x14, x9
    b .L2_34
.L2_33:
.L2_34:
    cmp x14, x26
    b.hs .L2_36
.L2_35:
    mov x14, x26
    b .L2_37
.L2_36:
.L2_37:
    cmp x14, x20
    b.ls .L2_39
.L2_38:
    mov x23, x20
    b .L2_40
.L2_39:
    mov x23, x14
.L2_40:
    ldr x9, [sp, #200]
    ldr x14, [x9]
    mov x10, #0
    cmp x14, x10
    b.ne .L2_42
.L2_41:
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x15, x0
    movz x10, #16384, lsl #48
    cmp x23, x10
    b.ls .L2_45
.L2_44:
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x28]
    ldr x9, [sp, #176]
    ldr x10, [sp, #168]
    str x9, [x10]
    movz x9, #47
    ldr x10, [sp, #160]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #152]
    strb w9, [x10]
    b .L2_46
.L2_45:
    ldr x14, [x15]
    add x12, x15, #8
    ldr x12, [x12]
    cbnz x12, .L2_47
    b .L2_48
.L2_48:
    adrp x0, .Ltext_9
    add x0, x0, :lo12:.Ltext_9
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
.L2_47:
    ldr x15, [x12]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x23
    movz x2, #1
    movz x16, #4512
    sub x8, x29, x16
    ldr x17, [sp], #16
    blr x17
    ldr x9, [sp, #144]
    ldrb w15, [x9]
    mov x10, #0
    cmp x23, x10
    cset w13, ne
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    and w15, w13, w15
    cbnz w15, .L2_49
    b .L2_50
.L2_49:
    movz x9, #1
    movk x9, #3178, lsl #16
    ldr x10, [sp, #136]
    str w9, [x10]
    ldr x9, [sp, #128]
    ldr x10, [sp, #120]
    str x9, [x10]
    movz x9, #16
    ldr x10, [sp, #112]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #104]
    strb w9, [x10]
    b .L2_46
.L2_50:
    ldr x9, [sp, #0]
    ldr x14, [x9]
    ldr x10, [sp, #8]
    str x14, [x10]
    ldr x10, [sp, #96]
    str x23, [x10]
    mov x9, #0
    ldr x10, [sp, #88]
    strb w9, [x10]
.L2_46:
    ldr x9, [sp, #80]
    ldrb w14, [x9]
    cbnz w14, .L2_52
    b .L2_51
.L2_52:
    ldr x9, [sp, #8]
    add x14, x9, #16
    sub x20, x29, #152
    add x15, x20, #16
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #224]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_files_14release_buffer
    mov x0, x19
    bl lb_files_File_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4912]
    ldr x20, [sp, #4904]
    ldr x21, [sp, #4896]
    ldr x22, [sp, #4888]
    ldr x23, [sp, #4880]
    ldr x24, [sp, #4872]
    ldr x25, [sp, #4864]
    ldr x26, [sp, #4856]
    ldr x27, [sp, #4848]
    ldr x28, [sp, #4840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_51:
    ldr x10, [sp, #8]
    ldr x11, [sp, #224]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b .L2_43
.L2_42:
    ldr x9, [sp, #224]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x23
    movz x16, #4560
    sub x8, x29, x16
    bl lb_memory_grow
    ldr x9, [sp, #72]
    ldrb w14, [x9]
    cbnz w14, .L2_55
    b .L2_54
.L2_55:
    ldr x9, [sp, #16]
    add x14, x9, #16
    sub x20, x29, #152
    add x15, x20, #16
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #224]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_files_14release_buffer
    mov x0, x19
    bl lb_files_File_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4912]
    ldr x20, [sp, #4904]
    ldr x21, [sp, #4896]
    ldr x22, [sp, #4888]
    ldr x23, [sp, #4880]
    ldr x24, [sp, #4872]
    ldr x25, [sp, #4864]
    ldr x26, [sp, #4856]
    ldr x27, [sp, #4848]
    ldr x28, [sp, #4840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_54:
    ldr x10, [sp, #16]
    ldr x11, [sp, #224]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
.L2_43:
    b .L2_28
.L2_27:
.L2_28:
    ldr x9, [sp, #224]
    ldr x15, [x9]
    ldr x9, [sp, #200]
    ldr x12, [x9]
    add x14, x12, #1
    cmp x27, x14
    b.lo 1f
    adrp x0, .Ltext_11
    add x0, x0, :lo12:.Ltext_11
    adrp x1, .Ltext_4
    add x1, x1, :lo12:.Ltext_4
    bl lb_core_7trap_at
1:
    cmp x12, x14
    b.lo 1f
    adrp x0, .Ltext_11
    add x0, x0, :lo12:.Ltext_11
    adrp x1, .Ltext_4
    add x1, x1, :lo12:.Ltext_4
    bl lb_core_7trap_at
1:
    cmp x27, x12
    b.ls .L2_57
.L2_58:
    adrp x0, .Ltext_11
    add x0, x0, :lo12:.Ltext_11
    adrp x1, .Ltext_4
    add x1, x1, :lo12:.Ltext_4
    bl lb_core_7trap_at
.L2_57:
    add x14, x27, x15
    sub x13, x12, x27
    ldr x10, [sp, #64]
    str x14, [x10]
    ldr x10, [sp, #56]
    str x13, [x10]
    ldr x10, [sp, #48]
    str x21, [x10]
    movz x9, #4096
    ldr x10, [sp, #40]
    str x9, [x10]
    ldr x9, [sp, #64]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x9, [sp, #48]
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x22
    bl lb_memory_copy_0g1_u8
    mov x27, x26
    b .L2_4
.L2_6:
    mov x0, x19
    movz x16, #4624
    sub x8, x29, x16
    bl lb_files_File_close
    movz x16, #4624
    sub x15, x29, x16
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L2_60
    b .L2_59
.L2_60:
    sub x20, x29, #152
    add x14, x20, #16
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #224]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_files_14release_buffer
    mov x0, x19
    bl lb_files_File_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4912]
    ldr x20, [sp, #4904]
    ldr x21, [sp, #4896]
    ldr x22, [sp, #4888]
    ldr x23, [sp, #4880]
    ldr x24, [sp, #4872]
    ldr x25, [sp, #4864]
    ldr x26, [sp, #4856]
    ldr x27, [sp, #4848]
    ldr x28, [sp, #4840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_59:
    ldr x9, [sp, #224]
    add x14, x9, #8
    ldr x14, [x14]
    cmp x14, x27
    cset w14, eq
    cbnz w14, .L2_65
    b .L2_79
.L2_79:
    mov w15, w14
    b .L2_66
.L2_65:
    mov x10, #0
    cmp x27, x10
    cset w15, hi
.L2_66:
    and w14, w15, #255
    cbnz w14, .L2_62
    b .L2_63
.L2_62:
    sub x20, x29, #152
    ldr x10, [sp, #224]
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #40
    mov x9, #0
    strb w9, [x14]
    mov x0, x19
    bl lb_files_File_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4912]
    ldr x20, [sp, #4904]
    ldr x21, [sp, #4896]
    ldr x22, [sp, #4888]
    ldr x23, [sp, #4880]
    ldr x24, [sp, #4872]
    ldr x25, [sp, #4864]
    ldr x26, [sp, #4856]
    ldr x27, [sp, #4848]
    ldr x28, [sp, #4840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_63:
.L2_64:
    movz x16, #4640
    sub x20, x29, x16
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x15, x0
    movz x16, #4688
    sub x21, x29, x16
    movz x10, #16384, lsl #48
    cmp x27, x10
    b.ls .L2_69
.L2_68:
    add x14, x21, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_7
    add x15, x15, :lo12:.Ltext_7
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x21, #40
    movz x9, #1
    strb w9, [x14]
    b .L2_70
.L2_69:
    ldr x14, [x15]
    add x12, x15, #8
    ldr x12, [x12]
    cbnz x12, .L2_71
    b .L2_72
.L2_72:
    adrp x0, .Ltext_13
    add x0, x0, :lo12:.Ltext_13
    adrp x1, .Ltext_8
    add x1, x1, :lo12:.Ltext_8
    bl lb_core_7trap_at
.L2_71:
    ldr x15, [x12]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x27
    movz x2, #1
    movz x16, #4712
    sub x8, x29, x16
    ldr x17, [sp], #16
    blr x17
    movz x16, #4712
    sub x22, x29, x16
    add x15, x22, #16
    ldrb w15, [x15]
    mov x10, #0
    cmp x27, x10
    cset w13, ne
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    and w15, w13, w15
    cbnz w15, .L2_73
    b .L2_74
.L2_73:
    add x14, x21, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_10
    add x15, x15, :lo12:.Ltext_10
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x21, #40
    movz x9, #1
    strb w9, [x14]
    b .L2_70
.L2_74:
    ldr x14, [x22]
    str x14, [x21]
    add x14, x21, #8
    str x27, [x14]
    add x14, x21, #40
    mov x9, #0
    strb w9, [x14]
.L2_70:
    add x14, x21, #40
    ldrb w14, [x14]
    cbnz w14, .L2_76
    b .L2_75
.L2_76:
    add x14, x21, #16
    sub x20, x29, #152
    add x15, x20, #16
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #224]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_files_14release_buffer
    mov x0, x19
    bl lb_files_File_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4912]
    ldr x20, [sp, #4904]
    ldr x21, [sp, #4896]
    ldr x22, [sp, #4888]
    ldr x23, [sp, #4880]
    ldr x24, [sp, #4872]
    ldr x25, [sp, #4864]
    ldr x26, [sp, #4856]
    ldr x27, [sp, #4848]
    ldr x28, [sp, #4840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_75:
    mov x10, x21
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x9, [sp, #224]
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x27
    bl lb_memory_copy_0g1_u8
    ldr x9, [sp, #224]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_files_14release_buffer
    sub x22, x29, #152
    mov x10, x20
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x22, #40
    mov x9, #0
    strb w9, [x14]
    mov x0, x19
    bl lb_files_File_destroy
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4912]
    ldr x20, [sp, #4904]
    ldr x21, [sp, #4896]
    ldr x22, [sp, #4888]
    ldr x23, [sp, #4880]
    ldr x24, [sp, #4872]
    ldr x25, [sp, #4864]
    ldr x26, [sp, #4856]
    ldr x27, [sp, #4848]
    ldr x28, [sp, #4840]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_files_10read_limit, .-lb_files_10read_limit

    .p2align 2
    .globl lb_files_write
    .type lb_files_write, %function
lb_files_write:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #208]
    str x20, [sp, #200]
    sub x16, x29, #88
    str x0, [x16]
    sub x16, x29, #104
    str x1, [x16]
    str x2, [x16, #8]
    sub x19, x29, #112
    sub x14, x29, #88
    ldr x14, [x14]
    mov x0, x14
    movz x1, #2
    movz x2, #420
    sub x8, x29, #152
    bl lb_files_File_open
    sub x15, x29, #152
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L3_2
    b .L3_1
.L3_2:
    add x14, x15, #8
    sub x19, x29, #72
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_3:
.L3_1:
    mov x10, x15
    mov x11, x19
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    sub x14, x29, #168
    str x19, [x14]
    adrp x12, lb_vt_files_File_Writer
    add x12, x12, :lo12:lb_vt_files_File_Writer
    add x13, x14, #8
    str x12, [x13]
    sub x12, x29, #104
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x12
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    sub x8, x29, #200
    bl lb_io_9write_all
    sub x12, x29, #200
    add x14, x12, #24
    ldrb w14, [x14]
    cbnz w14, .L3_5
    b .L3_4
.L3_5:
    sub x20, x29, #72
    mov x10, x12
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl lb_files_File_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_6:
.L3_4:
    mov x0, x19
    sub x8, x29, #232
    bl lb_files_File_close
    sub x15, x29, #232
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L3_8
    b .L3_7
.L3_8:
    sub x20, x29, #72
    mov x10, x15
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl lb_files_File_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_9:
.L3_7:
    mov x0, x19
    bl lb_files_File_destroy
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_files_write, .-lb_files_write

    .p2align 2
    .globl lb_files_14release_buffer
    .type lb_files_14release_buffer, %function
lb_files_14release_buffer:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    sub x16, x29, #40
    str x0, [x16]
    str x1, [x16, #8]
    sub x14, x29, #40
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ls .L4_2
.L4_1:
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x12, x0
    sub x13, x29, #56
    ldr x19, [x14]
    str x19, [x13]
    add x19, x13, #8
    str x15, [x19]
    ldr x19, [x12]
    add x12, x12, #8
    ldr x12, [x12]
    cbnz x12, .L4_5
    b .L4_4
.L4_5:
    add x14, x12, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x19
    mov x9, x13
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L4_4:
    b .L4_3
.L4_2:
.L4_3:
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_files_14release_buffer, .-lb_files_14release_buffer

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
    cbnz w14, .L5_11
    b .L5_4
.L5_11:
    mov w15, w14
    b .L5_5
.L5_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
.L5_5:
    and w14, w15, #255
    cbnz w14, .L5_1
    b .L5_2
.L5_1:
    adrp x14, .Ltext_4
    add x14, x14, :lo12:.Ltext_4
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, .Ltext_16
    add x14, x14, :lo12:.Ltext_16
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    b .L5_3
.L5_2:
.L5_3:
    mov x10, #0
    cmp x19, x10
    b.ls .L5_7
.L5_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl memcpy
    mov x14, x0
    cbnz x14, .L5_9
    b .L5_10
.L5_10:
    adrp x0, .Ltext_17
    add x0, x0, :lo12:.Ltext_17
    adrp x1, .Ltext_18
    add x1, x1, :lo12:.Ltext_18
    bl lb_core_7trap_at
.L5_9:
    b .L5_8
.L5_7:
.L5_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_memory_copy_0g1_u8, .-lb_memory_copy_0g1_u8

    .section .init_array,"aw"
    .p2align 3
    .quad lb_files_contents_0init

    .section .rodata
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/files/contents.lucb:5:5"
.Ltext_2:
    .asciz "src/std/files/contents.lucb:19:9"
.Ltext_3:
    .asciz "src/std/files/contents.lucb:21:9"
.Ltext_4:
    .asciz "index out of bounds"
.Ltext_5:
    .asciz "the file exceeds the read limit"
.Ltext_6:
    .asciz "src/std/files/contents.lucb:26:9"
.Ltext_7:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_8:
    .asciz "memory.unset"
.Ltext_9:
    .asciz "src/std/files/contents.lucb:36:17"
.Ltext_10:
    .asciz "memory.exhausted"
.Ltext_11:
    .asciz "src/std/files/contents.lucb:39:9"
.Ltext_12:
    .asciz "src/std/files/contents.lucb:40:9"
.Ltext_13:
    .asciz "src/std/files/contents.lucb:44:5"
.Ltext_14:
    .asciz "src/std/files/contents.lucb:47:5"
.Ltext_15:
    .asciz "src/std/files/contents.lucb:60:9"
.Ltext_16:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_17:
    .asciz "src/std/memory.lucb:330:9"
.Ltext_18:
    .asciz "null_foreign"
.Ltext_19:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3
    .weak lb_vt_files_File_Writer
lb_vt_files_File_Writer:
    .quad lb_files_File_write


    .section .note.GNU-stack,"",%progbits
