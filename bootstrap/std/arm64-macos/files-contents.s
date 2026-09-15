    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_files_contents_0init
_lb_files_contents_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_read
    .no_dead_strip _lb_files_read
_lb_files_read:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    str x20, [sp, #120]
    sub x16, x29, #104
    str x0, [x16]
    sub x14, x29, #104
    ldr x14, [x14]
    mov x0, x14
    movn x1, #0
    sub x8, x29, #152
    bl _lb_files_10read_limit
    sub x15, x29, #152
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L1_2
    b L1_1
L1_2:
    add x14, x15, #16
    sub x19, x29, #88
    add x20, x19, #16
    mov x10, x14
    mov x11, x20
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_3:
L1_1:
    sub x19, x29, #88
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_4:
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_10read_limit
    .no_dead_strip _lb_files_10read_limit
_lb_files_10read_limit:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #4960
    sub sp, sp, x16
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #4928]
    str x20, [sp, #4920]
    str x21, [sp, #4912]
    str x22, [sp, #4904]
    str x23, [sp, #4896]
    str x24, [sp, #4888]
    str x25, [sp, #4880]
    str x26, [sp, #4872]
    str x27, [sp, #4864]
    str x28, [sp, #4856]
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
    bl _lb_files_File_open
    sub x15, x29, #232
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L2_2
    b L2_1
L2_2:
    add x14, x15, #8
    sub x19, x29, #152
    add x20, x19, #16
    mov x10, x14
    mov x11, x20
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
    ldr x19, [sp, #4928]
    ldr x20, [sp, #4920]
    ldr x21, [sp, #4912]
    ldr x22, [sp, #4904]
    ldr x23, [sp, #4896]
    ldr x24, [sp, #4888]
    ldr x25, [sp, #4880]
    ldr x26, [sp, #4872]
    ldr x27, [sp, #4864]
    ldr x28, [sp, #4856]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_1:
    mov x10, x15
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x9, x29, #248
    str x9, [sp, #240]
    ldr x11, [sp, #240]
    stp xzr, xzr, [x11, #0]
    movz x16, #4344
    sub x21, x29, x16
    mov x0, x21
    mov x1, #0
    movz x2, #4096
    bl _memset
    sub x9, x29, #184
    str x9, [sp, #232]
    movz x16, #4360
    sub x9, x29, x16
    str x9, [sp, #224]
    ldr x9, [sp, #224]
    add x9, x9, #8
    str x9, [sp, #216]
    movz x16, #4400
    sub x9, x29, x16
    str x9, [sp, #40]
    ldr x9, [sp, #40]
    add x25, x9, #32
    ldr x9, [sp, #240]
    add x9, x9, #8
    str x9, [sp, #208]
    movz x16, #4424
    sub x9, x29, x16
    str x9, [sp, #200]
    movz x16, #4440
    sub x9, x29, x16
    str x9, [sp, #32]
    ldr x9, [sp, #32]
    add x9, x9, #8
    str x9, [sp, #192]
    movz x16, #4560
    sub x9, x29, x16
    str x9, [sp, #24]
    ldr x9, [sp, #24]
    add x9, x9, #40
    str x9, [sp, #80]
    movz x16, #4488
    sub x9, x29, x16
    str x9, [sp, #16]
    movz x16, #4512
    sub x9, x29, x16
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x9, x9, #16
    str x9, [sp, #152]
    ldr x9, [sp, #16]
    add x9, x9, #8
    str x9, [sp, #104]
    ldr x9, [sp, #16]
    add x9, x9, #40
    str x9, [sp, #96]
    ldr x9, [sp, #16]
    add x9, x9, #16
    str x9, [sp, #144]
    adrp x9, l_text_10@PAGE
    add x9, x9, l_text_10@PAGEOFF
    str x9, [sp, #136]
    ldr x9, [sp, #144]
    add x9, x9, #8
    str x9, [sp, #128]
    ldr x9, [sp, #144]
    add x9, x9, #16
    str x9, [sp, #120]
    ldr x9, [sp, #16]
    add x9, x9, #40
    str x9, [sp, #112]
    ldr x9, [sp, #16]
    add x28, x9, #16
    adrp x9, l_text_7@PAGE
    add x9, x9, l_text_7@PAGEOFF
    str x9, [sp, #184]
    add x9, x28, #8
    str x9, [sp, #176]
    add x9, x28, #16
    str x9, [sp, #168]
    ldr x9, [sp, #16]
    add x9, x9, #40
    str x9, [sp, #160]
    ldr x9, [sp, #16]
    add x9, x9, #40
    str x9, [sp, #88]
    movz x16, #4576
    sub x9, x29, x16
    str x9, [sp, #72]
    ldr x9, [sp, #72]
    add x9, x9, #8
    str x9, [sp, #64]
    movz x16, #4592
    sub x9, x29, x16
    str x9, [sp, #56]
    ldr x9, [sp, #56]
    add x9, x9, #8
    str x9, [sp, #48]
    mov x9, #0
    mov x27, x9
L2_4:
L2_5:
    ldr x9, [sp, #232]
    ldr x20, [x9]
    mov x9, x20
    mov x10, x27
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_19@PAGE
    add x1, x1, l_text_19@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x10, #0
    cmp x14, x10
    cset w26, eq
    cbnz w26, L2_7
    b L2_8
L2_7:
    movz x9, #1
    mov x14, x9
    b L2_9
L2_8:
    movz x10, #4096
    cmp x14, x10
    b.hs L2_11
L2_10:
    mov x15, x14
    b L2_12
L2_11:
    movz x9, #4096
    mov x15, x9
L2_12:
    mov x14, x15
L2_9:
    movz x10, #4097
    cmp x14, x10
    b.lo 1f
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x14
    b.ls L2_13
L2_14:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
L2_13:
    ldr x10, [sp, #224]
    str x21, [x10]
    ldr x10, [sp, #216]
    str x14, [x10]
    mov x0, x19
    ldr x9, [sp, #224]
    ldr x1, [x9]
    ldr x2, [x9, #8]
    movz x16, #4400
    sub x8, x29, x16
    bl _lb_files_File_read
    ldrb w15, [x25]
    cbnz w15, L2_16
    b L2_15
L2_16:
    ldr x9, [sp, #40]
    add x14, x9, #8
    sub x20, x29, #152
    add x15, x20, #16
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #240]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_files_14release_buffer
    mov x0, x19
    bl _lb_files_File_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4928]
    ldr x20, [sp, #4920]
    ldr x21, [sp, #4912]
    ldr x22, [sp, #4904]
    ldr x23, [sp, #4896]
    ldr x24, [sp, #4888]
    ldr x25, [sp, #4880]
    ldr x26, [sp, #4872]
    ldr x27, [sp, #4864]
    ldr x28, [sp, #4856]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_15:
    ldr x9, [sp, #40]
    ldr x22, [x9]
    mov x10, #0
    cmp x22, x10
    b.ne L2_19
L2_18:
    b L2_6
L2_19:
L2_20:
    cbnz w26, L2_22
    b L2_23
L2_22:
    sub x20, x29, #152
    add x14, x20, #16
    adrp x15, _lb_files_9too_large@PAGE
    add x15, x15, _lb_files_9too_large@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_5@PAGE
    add x15, x15, l_text_5@PAGEOFF
    movz x16, #4416
    sub x21, x29, x16
    str x15, [x21]
    add x15, x21, #8
    movz x9, #31
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #240]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_files_14release_buffer
    mov x0, x19
    bl _lb_files_File_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4928]
    ldr x20, [sp, #4920]
    ldr x21, [sp, #4912]
    ldr x22, [sp, #4904]
    ldr x23, [sp, #4896]
    ldr x24, [sp, #4888]
    ldr x25, [sp, #4880]
    ldr x26, [sp, #4872]
    ldr x27, [sp, #4864]
    ldr x28, [sp, #4856]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_23:
L2_24:
    mov x9, x22
    mov x10, x27
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_19@PAGE
    add x1, x1, l_text_19@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x26, x9
    ldr x9, [sp, #208]
    ldr x14, [x9]
    cmp x26, x14
    b.ls L2_27
L2_26:
    mov x0, x14
    movz x1, #2
    movz x2, #64
    ldr x3, [sp, #200]
    bl _lb_core_6qmul_u
    mov w15, w0
    ldr x9, [sp, #200]
    ldr x23, [x9]
    ldr x10, [sp, #32]
    str x23, [x10]
    ldr x10, [sp, #192]
    strb w15, [x10]
    ldr x9, [sp, #192]
    ldrb w15, [x9]
    cbnz w15, L2_29
    b L2_30
L2_29:
    mov x14, x23
    b L2_31
L2_30:
    mov x14, x20
L2_31:
    movz x10, #4096
    cmp x14, x10
    b.hs L2_33
L2_32:
    movz x9, #4096
    mov x14, x9
    b L2_34
L2_33:
L2_34:
    cmp x14, x26
    b.hs L2_36
L2_35:
    mov x14, x26
    b L2_37
L2_36:
L2_37:
    cmp x14, x20
    b.ls L2_39
L2_38:
    mov x23, x20
    b L2_40
L2_39:
    mov x23, x14
L2_40:
    ldr x9, [sp, #208]
    ldr x14, [x9]
    mov x10, #0
    cmp x14, x10
    b.ne L2_42
L2_41:
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    movz x10, #16384, lsl #48
    cmp x23, x10
    b.ls L2_45
L2_44:
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x28]
    ldr x9, [sp, #184]
    ldr x10, [sp, #176]
    str x9, [x10]
    movz x9, #47
    ldr x10, [sp, #168]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #160]
    strb w9, [x10]
    b L2_46
L2_45:
    ldr x14, [x15]
    add x20, x15, #8
    ldr x20, [x20]
    cbnz x20, L2_47
    b L2_48
L2_48:
    adrp x0, l_text_9@PAGE
    add x0, x0, l_text_9@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L2_47:
    ldr x15, [x20]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x23
    movz x2, #1
    movz x16, #4512
    sub x8, x29, x16
    ldr x17, [sp], #16
    blr x17
    ldr x9, [sp, #152]
    ldrb w15, [x9]
    mov x10, #0
    cmp x23, x10
    cset w24, ne
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    and w15, w24, w15
    cbnz w15, L2_49
    b L2_50
L2_49:
    movz x9, #1
    movk x9, #3178, lsl #16
    ldr x10, [sp, #144]
    str w9, [x10]
    ldr x9, [sp, #136]
    ldr x10, [sp, #128]
    str x9, [x10]
    movz x9, #16
    ldr x10, [sp, #120]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #112]
    strb w9, [x10]
    b L2_46
L2_50:
    ldr x9, [sp, #8]
    ldr x14, [x9]
    ldr x10, [sp, #16]
    str x14, [x10]
    ldr x10, [sp, #104]
    str x23, [x10]
    mov x9, #0
    ldr x10, [sp, #96]
    strb w9, [x10]
L2_46:
    ldr x9, [sp, #88]
    ldrb w14, [x9]
    cbnz w14, L2_52
    b L2_51
L2_52:
    ldr x9, [sp, #16]
    add x14, x9, #16
    sub x20, x29, #152
    add x15, x20, #16
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #240]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_files_14release_buffer
    mov x0, x19
    bl _lb_files_File_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4928]
    ldr x20, [sp, #4920]
    ldr x21, [sp, #4912]
    ldr x22, [sp, #4904]
    ldr x23, [sp, #4896]
    ldr x24, [sp, #4888]
    ldr x25, [sp, #4880]
    ldr x26, [sp, #4872]
    ldr x27, [sp, #4864]
    ldr x28, [sp, #4856]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_51:
    ldr x10, [sp, #16]
    ldr x11, [sp, #240]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L2_43
L2_42:
    ldr x9, [sp, #240]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x23
    movz x16, #4560
    sub x8, x29, x16
    bl _lb_memory_grow
    ldr x9, [sp, #80]
    ldrb w14, [x9]
    cbnz w14, L2_55
    b L2_54
L2_55:
    ldr x9, [sp, #24]
    add x14, x9, #16
    sub x20, x29, #152
    add x15, x20, #16
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #240]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_files_14release_buffer
    mov x0, x19
    bl _lb_files_File_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4928]
    ldr x20, [sp, #4920]
    ldr x21, [sp, #4912]
    ldr x22, [sp, #4904]
    ldr x23, [sp, #4896]
    ldr x24, [sp, #4888]
    ldr x25, [sp, #4880]
    ldr x26, [sp, #4872]
    ldr x27, [sp, #4864]
    ldr x28, [sp, #4856]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_54:
    ldr x10, [sp, #24]
    ldr x11, [sp, #240]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L2_43:
    b L2_28
L2_27:
L2_28:
    ldr x9, [sp, #240]
    ldr x15, [x9]
    ldr x9, [sp, #208]
    ldr x20, [x9]
    add x14, x20, #1
    cmp x27, x14
    b.lo 1f
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x20, x14
    b.lo 1f
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x27, x20
    b.ls L2_57
L2_58:
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
L2_57:
    add x14, x27, x15
    sub x23, x20, x27
    ldr x10, [sp, #72]
    str x14, [x10]
    ldr x10, [sp, #64]
    str x23, [x10]
    ldr x10, [sp, #56]
    str x21, [x10]
    movz x9, #4096
    ldr x10, [sp, #48]
    str x9, [x10]
    ldr x9, [sp, #72]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x9, [sp, #56]
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x22
    bl _lb_memory_copy_0g1_u8
    mov x27, x26
    b L2_4
L2_6:
    mov x0, x19
    movz x16, #4624
    sub x8, x29, x16
    bl _lb_files_File_close
    movz x16, #4624
    sub x15, x29, x16
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L2_60
    b L2_59
L2_60:
    sub x20, x29, #152
    add x14, x20, #16
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #240]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_files_14release_buffer
    mov x0, x19
    bl _lb_files_File_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4928]
    ldr x20, [sp, #4920]
    ldr x21, [sp, #4912]
    ldr x22, [sp, #4904]
    ldr x23, [sp, #4896]
    ldr x24, [sp, #4888]
    ldr x25, [sp, #4880]
    ldr x26, [sp, #4872]
    ldr x27, [sp, #4864]
    ldr x28, [sp, #4856]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_59:
    ldr x9, [sp, #240]
    add x14, x9, #8
    ldr x14, [x14]
    cmp x14, x27
    cset w14, eq
    cbnz w14, L2_65
    b L2_79
L2_79:
    mov w15, w14
    b L2_66
L2_65:
    mov x10, #0
    cmp x27, x10
    cset w15, hi
L2_66:
    and w14, w15, #255
    cbnz w14, L2_62
    b L2_63
L2_62:
    sub x20, x29, #152
    ldr x10, [sp, #240]
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #40
    mov x9, #0
    strb w9, [x14]
    mov x0, x19
    bl _lb_files_File_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4928]
    ldr x20, [sp, #4920]
    ldr x21, [sp, #4912]
    ldr x22, [sp, #4904]
    ldr x23, [sp, #4896]
    ldr x24, [sp, #4888]
    ldr x25, [sp, #4880]
    ldr x26, [sp, #4872]
    ldr x27, [sp, #4864]
    ldr x28, [sp, #4856]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_63:
L2_64:
    movz x16, #4640
    sub x20, x29, x16
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    movz x16, #4688
    sub x21, x29, x16
    movz x10, #16384, lsl #48
    cmp x27, x10
    b.ls L2_69
L2_68:
    add x14, x21, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_7@PAGE
    add x15, x15, l_text_7@PAGEOFF
    add x22, x14, #8
    str x15, [x22]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x21, #40
    movz x9, #1
    strb w9, [x14]
    b L2_70
L2_69:
    ldr x14, [x15]
    add x22, x15, #8
    ldr x22, [x22]
    cbnz x22, L2_71
    b L2_72
L2_72:
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L2_71:
    ldr x15, [x22]
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
    sub x24, x29, x16
    add x15, x24, #16
    ldrb w15, [x15]
    mov x10, #0
    cmp x27, x10
    cset w23, ne
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    and w15, w23, w15
    cbnz w15, L2_73
    b L2_74
L2_73:
    add x14, x21, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_10@PAGE
    add x15, x15, l_text_10@PAGEOFF
    add x22, x14, #8
    str x15, [x22]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x21, #40
    movz x9, #1
    strb w9, [x14]
    b L2_70
L2_74:
    ldr x14, [x24]
    str x14, [x21]
    add x14, x21, #8
    str x27, [x14]
    add x14, x21, #40
    mov x9, #0
    strb w9, [x14]
L2_70:
    add x14, x21, #40
    ldrb w14, [x14]
    cbnz w14, L2_76
    b L2_75
L2_76:
    add x14, x21, #16
    sub x20, x29, #152
    add x15, x20, #16
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #240]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_files_14release_buffer
    mov x0, x19
    bl _lb_files_File_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4928]
    ldr x20, [sp, #4920]
    ldr x21, [sp, #4912]
    ldr x22, [sp, #4904]
    ldr x23, [sp, #4896]
    ldr x24, [sp, #4888]
    ldr x25, [sp, #4880]
    ldr x26, [sp, #4872]
    ldr x27, [sp, #4864]
    ldr x28, [sp, #4856]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_75:
    mov x10, x21
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x9, [sp, #240]
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x27
    bl _lb_memory_copy_0g1_u8
    ldr x9, [sp, #240]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_files_14release_buffer
    sub x22, x29, #152
    mov x10, x20
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #40
    mov x9, #0
    strb w9, [x14]
    mov x0, x19
    bl _lb_files_File_destroy
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #4928]
    ldr x20, [sp, #4920]
    ldr x21, [sp, #4912]
    ldr x22, [sp, #4904]
    ldr x23, [sp, #4896]
    ldr x24, [sp, #4888]
    ldr x25, [sp, #4880]
    ldr x26, [sp, #4872]
    ldr x27, [sp, #4864]
    ldr x28, [sp, #4856]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_write
    .no_dead_strip _lb_files_write
_lb_files_write:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #208]
    str x20, [sp, #200]
    str x21, [sp, #192]
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #112
    str x1, [x16]
    str x2, [x16, #8]
    sub x19, x29, #120
    sub x14, x29, #96
    ldr x14, [x14]
    mov x0, x14
    movz x1, #2
    movz x2, #420
    sub x8, x29, #160
    bl _lb_files_File_open
    sub x15, x29, #160
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L3_2
    b L3_1
L3_2:
    add x14, x15, #8
    sub x19, x29, #80
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_3:
L3_1:
    mov x10, x15
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x14, x29, #176
    str x19, [x14]
    adrp x20, _lb_vt_files_File_Writer@PAGE
    add x20, x20, _lb_vt_files_File_Writer@PAGEOFF
    add x21, x14, #8
    str x20, [x21]
    sub x20, x29, #112
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x20
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    sub x8, x29, #208
    bl _lb_io_9write_all
    sub x20, x29, #208
    add x14, x20, #24
    ldrb w14, [x14]
    cbnz w14, L3_5
    b L3_4
L3_5:
    sub x21, x29, #80
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_files_File_destroy
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_6:
L3_4:
    mov x0, x19
    sub x8, x29, #240
    bl _lb_files_File_close
    sub x15, x29, #240
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L3_8
    b L3_7
L3_8:
    sub x20, x29, #80
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_files_File_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_9:
L3_7:
    mov x0, x19
    bl _lb_files_File_destroy
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_14release_buffer
_lb_files_14release_buffer:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    str x20, [sp, #48]
    str x21, [sp, #40]
    sub x16, x29, #56
    str x0, [x16]
    str x1, [x16, #8]
    sub x14, x29, #56
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ls L4_2
L4_1:
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    sub x20, x29, #72
    ldr x21, [x14]
    str x21, [x20]
    add x21, x20, #8
    str x15, [x21]
    ldr x21, [x19]
    add x19, x19, #8
    ldr x19, [x19]
    cbnz x19, L4_5
    b L4_4
L4_5:
    add x14, x19, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x20
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L4_4:
    b L4_3
L4_2:
L4_3:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_memory_copy_0g1_u8
    .weak_definition _lb_memory_copy_0g1_u8
    .no_dead_strip _lb_memory_copy_0g1_u8
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
    cbnz w14, L5_11
    b L5_4
L5_11:
    mov w15, w14
    b L5_5
L5_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
L5_5:
    and w14, w15, #255
    cbnz w14, L5_1
    b L5_2
L5_1:
    adrp x14, l_text_4@PAGE
    add x14, x14, l_text_4@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, l_text_16@PAGE
    add x14, x14, l_text_16@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L5_3
L5_2:
L5_3:
    mov x10, #0
    cmp x19, x10
    b.ls L5_7
L5_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _memcpy
    mov x14, x0
    cbnz x14, L5_9
    b L5_10
L5_10:
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_18@PAGE
    add x1, x1, l_text_18@PAGEOFF
    bl _lb_core_7trap_at
L5_9:
    b L5_8
L5_7:
L5_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_files_contents_0init

    .section __TEXT,__const
l_text_0:
    .asciz "unreachable"
l_text_1:
    .asciz "src/std/files/contents.lucb:5:5"
l_text_2:
    .asciz "src/std/files/contents.lucb:19:9"
l_text_3:
    .asciz "src/std/files/contents.lucb:21:9"
l_text_4:
    .asciz "index out of bounds"
l_text_5:
    .asciz "the file exceeds the read limit"
l_text_6:
    .asciz "src/std/files/contents.lucb:26:9"
l_text_7:
    .asciz "memory.exhausted: the allocation size overflows"
l_text_8:
    .asciz "memory.unset"
l_text_9:
    .asciz "src/std/files/contents.lucb:36:17"
l_text_10:
    .asciz "memory.exhausted"
l_text_11:
    .asciz "src/std/files/contents.lucb:39:9"
l_text_12:
    .asciz "src/std/files/contents.lucb:40:9"
l_text_13:
    .asciz "src/std/files/contents.lucb:44:5"
l_text_14:
    .asciz "src/std/files/contents.lucb:47:5"
l_text_15:
    .asciz "src/std/files/contents.lucb:60:9"
l_text_16:
    .asciz "src/std/memory.lucb:326:9"
l_text_17:
    .asciz "src/std/memory.lucb:328:9"
l_text_18:
    .asciz "null_foreign"
l_text_19:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3
    .globl _lb_vt_files_File_Writer
    .weak_definition _lb_vt_files_File_Writer
_lb_vt_files_File_Writer:
    .quad _lb_files_File_write

.subsections_via_symbols
