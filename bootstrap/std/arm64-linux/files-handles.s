    .text

    .p2align 2
    .globl lb_files_handles_0init
    .type lb_files_handles_0init, %function
lb_files_handles_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_files_handles_0init, .-lb_files_handles_0init

    .p2align 2
    .globl lb_files_File_open
    .type lb_files_File_open, %function
lb_files_File_open:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #432
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #400]
    str x20, [sp, #392]
    str x21, [sp, #384]
    str x22, [sp, #376]
    str x23, [sp, #368]
    str x24, [sp, #360]
    str x25, [sp, #352]
    str x26, [sp, #344]
    str x27, [sp, #336]
    sub x16, x29, #152
    str x0, [x16]
    sub x16, x29, #168
    str w1, [x16]
    sub x16, x29, #184
    str w2, [x16]
    sub x14, x29, #168
    ldrb w14, [x14]
    sub x15, x29, #184
    ldr w19, [x15]
    mov x0, x14
    mov x1, x19
    sub x8, x29, #224
    bl lb_files_15file_open_flags
    sub x15, x29, #224
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L1_2
    b .L1_1
.L1_2:
    add x14, x15, #8
    sub x19, x29, #136
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    ldr x24, [sp, #360]
    ldr x25, [sp, #352]
    ldr x26, [sp, #344]
    ldr x27, [sp, #336]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_3:
.L1_1:
    ldrsw x20, [x15]
    sub x14, x29, #152
    ldr x21, [x14]
    sub x10, x29, #392
    str x21, [x10]
    sub x10, x29, #408
    str w20, [x10]
    sub x10, x29, #424
    str w19, [x10]
    mov x0, x21
    mov x1, x20
    mov x2, x19
    bl open
    mov w22, w0
    sub x23, x29, #376
    str w22, [x23]
    add x24, x23, #32
    mov x9, #0
    strb w9, [x24]
    mov x10, x23
    sub x11, x29, #264
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    b .L1_21
.L1_20:
    adrp x0, .Ltext_24
    add x0, x0, :lo12:.Ltext_24
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at
.L1_21:
    sub x15, x29, #264
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L1_5
    b .L1_4
.L1_5:
    add x14, x15, #8
    sub x19, x29, #136
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    ldr x24, [sp, #360]
    ldr x25, [sp, #352]
    ldr x26, [sp, #344]
    ldr x27, [sp, #336]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_6:
.L1_4:
    sub x27, x29, #304
    add x25, x27, #32
    mov w26, w22
.L1_7:
    mov x10, #0
    cmp w26, w10
    cset w22, lt
    cbnz w22, .L1_10
    b .L1_24
.L1_24:
    mov w14, w22
    b .L1_11
.L1_10:
    bl lb_c_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    cset w14, eq
.L1_11:
    and w15, w14, #255
    cbnz w15, .L1_8
    b .L1_9
.L1_8:
    sub x10, x29, #392
    str x21, [x10]
    sub x10, x29, #408
    str w20, [x10]
    sub x10, x29, #424
    str w19, [x10]
    mov x0, x21
    mov x1, x20
    mov x2, x19
    bl open
    mov w26, w0
    str w26, [x23]
    mov x9, #0
    strb w9, [x24]
    mov x10, x23
    sub x11, x29, #304
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    b .L1_23
.L1_22:
    adrp x0, .Ltext_24
    add x0, x0, :lo12:.Ltext_24
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at
.L1_23:
    ldrb w14, [x25]
    cbnz w14, .L1_13
    b .L1_12
.L1_13:
    add x14, x27, #8
    sub x19, x29, #136
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    ldr x24, [sp, #360]
    ldr x25, [sp, #352]
    ldr x26, [sp, #344]
    ldr x27, [sp, #336]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_14:
.L1_12:
    b .L1_7
.L1_9:
    cbnz w22, .L1_15
    b .L1_16
.L1_15:
    sub x19, x29, #136
    add x20, x19, #8
    bl lb_c_errno
    mov w14, w0
    mov x0, x14
    bl lb_files_14classify_error
    mov w14, w0
    str w14, [x20]
    adrp x14, .Ltext_0
    add x14, x14, :lo12:.Ltext_0
    sub x15, x29, #320
    str x14, [x15]
    add x14, x15, #8
    movz x9, #28
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    ldr x24, [sp, #360]
    ldr x25, [sp, #352]
    ldr x26, [sp, #344]
    ldr x27, [sp, #336]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_18:
    b .L1_17
.L1_16:
.L1_17:
    sub x19, x29, #328
    mov x11, x19
    str xzr, [x11, #0]
    sub x14, x29, #336
    str w26, [x14]
    add x15, x14, #4
    movz x9, #1
    strb w9, [x15]
    mov x10, x14
    mov x11, x19
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    sub x20, x29, #136
    mov x10, x19
    mov x11, x20
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    add x14, x20, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    ldr x24, [sp, #360]
    ldr x25, [sp, #352]
    ldr x26, [sp, #344]
    ldr x27, [sp, #336]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_19:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_files_File_open, .-lb_files_File_open

    .p2align 2
    .globl lb_files_File_descriptor
    .type lb_files_File_descriptor, %function
lb_files_File_descriptor:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x9, x29, #40
    ldr x14, [x9]
    sub x19, x29, #32
    mov x10, x14
    mov x11, x19
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_1:
    adrp x0, .Ltext_3
    add x0, x0, :lo12:.Ltext_3
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_files_File_descriptor, .-lb_files_File_descriptor

    .p2align 2
    .globl lb_files_File_metadata
    .type lb_files_File_metadata, %function
lb_files_File_metadata:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #384
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #352]
    sub x16, x29, #200
    str x0, [x16]
    sub x9, x29, #200
    ldr x15, [x9]
    add x14, x15, #4
    ldrb w14, [x14]
    cbnz w14, .L3_1
    b .L3_2
.L3_1:
    ldrsw x14, [x15]
    b .L3_3
.L3_2:
    sub x19, x29, #192
    add x14, x19, #128
    adrp x15, lb_io_closed
    add x15, x15, :lo12:lb_io_closed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_4
    add x15, x15, :lo12:.Ltext_4
    sub x12, x29, #216
    str x15, [x12]
    add x15, x12, #8
    movz x9, #18
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #152
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #160
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_4:
.L3_3:
    mov x0, x14
    sub x8, x29, #376
    bl lb_files_19metadata_descriptor
    sub x12, x29, #376
    add x15, x12, #152
    ldrb w15, [x15]
    cbnz w15, .L3_6
    b .L3_5
.L3_6:
    add x14, x12, #128
    sub x19, x29, #192
    add x15, x19, #128
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #152
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #160
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_7:
.L3_5:
    sub x19, x29, #192
    mov x10, x12
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
    ldp x16, x17, [x10, #112]
    stp x16, x17, [x11, #112]
    add x14, x19, #152
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #160
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_8:
    adrp x0, .Ltext_5
    add x0, x0, :lo12:.Ltext_5
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_files_File_metadata, .-lb_files_File_metadata

    .p2align 2
    .globl lb_files_File_truncate
    .type lb_files_File_truncate, %function
lb_files_File_truncate:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    str x20, [sp, #120]
    str x21, [sp, #112]
    sub x16, x29, #88
    str x0, [x16]
    sub x16, x29, #104
    str x1, [x16]
    sub x9, x29, #88
    ldr x15, [x9]
    add x14, x15, #4
    ldrb w14, [x14]
    cbnz w14, .L4_1
    b .L4_2
.L4_1:
    ldrsw x19, [x15]
    b .L4_3
.L4_2:
    sub x19, x29, #80
    adrp x14, lb_io_closed
    add x14, x14, :lo12:lb_io_closed
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_4
    add x14, x14, :lo12:.Ltext_4
    sub x15, x29, #120
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_4:
.L4_3:
    sub x14, x29, #104
    ldr x20, [x14]
    mov x10, #0
    cmp x20, x10
    b.ge .L4_6
.L4_5:
    sub x19, x29, #80
    adrp x14, lb_files_15invalid_options
    add x14, x14, :lo12:lb_files_15invalid_options
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_6
    add x14, x14, :lo12:.Ltext_6
    sub x15, x29, #136
    str x14, [x15]
    add x14, x15, #8
    movz x9, #32
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_8:
    b .L4_7
.L4_6:
.L4_7:
    mov x0, x19
    mov x1, x20
    bl lb_files_ftruncate
    mov w14, w0
.L4_9:
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w21, eq
    cbnz w21, .L4_12
    b .L4_18
.L4_18:
    mov w14, w21
    b .L4_13
.L4_12:
    bl lb_c_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    cset w14, eq
.L4_13:
    and w15, w14, #255
    cbnz w15, .L4_10
    b .L4_11
.L4_10:
    mov x0, x19
    mov x1, x20
    bl lb_files_ftruncate
    mov w14, w0
    b .L4_9
.L4_11:
    cbnz w21, .L4_14
    b .L4_15
.L4_14:
    sub x19, x29, #80
    bl lb_c_errno
    mov w14, w0
    mov x0, x14
    bl lb_files_14classify_error
    mov w14, w0
    str w14, [x19]
    adrp x14, .Ltext_7
    add x14, x14, :lo12:.Ltext_7
    sub x15, x29, #152
    str x14, [x15]
    add x14, x15, #8
    movz x9, #36
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_17:
    b .L4_16
.L4_15:
.L4_16:
    sub x14, x29, #80
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_files_File_truncate, .-lb_files_File_truncate

    .p2align 2
    .globl lb_files_File_15set_permissions
    .type lb_files_File_15set_permissions, %function
lb_files_File_15set_permissions:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #112]
    str x20, [sp, #104]
    sub x16, x29, #80
    str x0, [x16]
    sub x16, x29, #96
    str w1, [x16]
    sub x9, x29, #80
    ldr x15, [x9]
    add x14, x15, #4
    ldrb w14, [x14]
    cbnz w14, .L5_1
    b .L5_2
.L5_1:
    ldrsw x19, [x15]
    b .L5_3
.L5_2:
    sub x19, x29, #72
    adrp x14, lb_io_closed
    add x14, x14, :lo12:lb_io_closed
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_4
    add x14, x14, :lo12:.Ltext_4
    sub x15, x29, #112
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_3:
    sub x14, x29, #96
    ldr w20, [x14]
    movz x10, #4095
    cmp w20, w10
    b.ls .L5_6
.L5_5:
    sub x19, x29, #72
    adrp x14, lb_files_15invalid_options
    add x14, x14, :lo12:lb_files_15invalid_options
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_8
    add x14, x14, :lo12:.Ltext_8
    sub x15, x29, #128
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_6:
.L5_7:
.L5_9:
.L5_10:
    mov x0, x19
    mov x1, x20
    bl fchmod
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne .L5_13
.L5_12:
    sub x14, x29, #72
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_13:
.L5_14:
    bl lb_c_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L5_17
.L5_16:
    sub x19, x29, #72
    bl lb_c_errno
    mov w14, w0
    mov x0, x14
    bl lb_files_14classify_error
    mov w14, w0
    str w14, [x19]
    adrp x14, .Ltext_9
    add x14, x14, :lo12:.Ltext_9
    sub x15, x29, #144
    str x14, [x15]
    add x14, x15, #8
    movz x9, #37
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_17:
.L5_18:
    b .L5_9

    .size lb_files_File_15set_permissions, .-lb_files_File_15set_permissions

    .p2align 2
    .globl lb_files_File_9set_times
    .type lb_files_File_9set_times, %function
lb_files_File_9set_times:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #288
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #256]
    str x20, [sp, #248]
    str x21, [sp, #240]
    str x22, [sp, #232]
    str x23, [sp, #224]
    str x24, [sp, #216]
    sub x16, x29, #112
    str x0, [x16]
    sub x16, x29, #128
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #144
    str x3, [x16]
    str x4, [x16, #8]
    sub x9, x29, #112
    ldr x15, [x9]
    add x14, x15, #4
    ldrb w14, [x14]
    cbnz w14, .L6_1
    b .L6_2
.L6_1:
    ldrsw x19, [x15]
    b .L6_3
.L6_2:
    sub x19, x29, #104
    adrp x14, lb_io_closed
    add x14, x14, :lo12:lb_io_closed
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_4
    add x14, x14, :lo12:.Ltext_4
    sub x15, x29, #160
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_4:
.L6_3:
    sub x20, x29, #128
    add x14, x20, #8
    ldr w21, [x14]
    movz x10, #51712
    movk x10, #15258, lsl #16
    cmp w21, w10
    cset w14, hs
    cbnz w14, .L6_20
    b .L6_8
.L6_20:
    mov w15, w14
    b .L6_9
.L6_8:
    sub x14, x29, #144
    add x14, x14, #8
    ldr w14, [x14]
    movz x10, #51712
    movk x10, #15258, lsl #16
    cmp w14, w10
    cset w15, hs
.L6_9:
    and w14, w15, #255
    cbnz w14, .L6_5
    b .L6_6
.L6_5:
    sub x19, x29, #104
    adrp x14, lb_files_15invalid_options
    add x14, x14, :lo12:lb_files_15invalid_options
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_10
    add x14, x14, :lo12:.Ltext_10
    sub x15, x29, #176
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_10:
    b .L6_7
.L6_6:
.L6_7:
    sub x22, x29, #208
    sub x23, x29, #240
    sub x24, x29, #256
    mov x11, x24
    stp xzr, xzr, [x11, #0]
    ldr x14, [x20]
    str x14, [x24]
    mov w14, w21
    add x15, x24, #8
    str x14, [x15]
    mov x10, x24
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x24, x29, #272
    mov x11, x24
    stp xzr, xzr, [x11, #0]
    sub x14, x29, #144
    ldr x15, [x14]
    str x15, [x24]
    add x14, x14, #8
    ldr w14, [x14]
    mov w14, w14
    add x15, x24, #8
    str x14, [x15]
    add x14, x23, #16
    mov x10, x24
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x10, x23
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    mov x0, x19
    mov x1, x22
    bl futimens
    mov w14, w0
.L6_11:
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w20, eq
    cbnz w20, .L6_14
    b .L6_21
.L6_21:
    mov w14, w20
    b .L6_15
.L6_14:
    bl lb_c_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    cset w14, eq
.L6_15:
    and w15, w14, #255
    cbnz w15, .L6_12
    b .L6_13
.L6_12:
    mov x0, x19
    mov x1, x22
    bl futimens
    mov w14, w0
    b .L6_11
.L6_13:
    cbnz w20, .L6_16
    b .L6_17
.L6_16:
    sub x19, x29, #104
    bl lb_c_errno
    mov w14, w0
    mov x0, x14
    bl lb_files_14classify_error
    mov w14, w0
    str w14, [x19]
    adrp x14, .Ltext_13
    add x14, x14, :lo12:.Ltext_13
    sub x15, x29, #288
    str x14, [x15]
    add x14, x15, #8
    movz x9, #36
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_19:
    b .L6_18
.L6_17:
.L6_18:
    sub x14, x29, #104
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_files_File_9set_times, .-lb_files_File_9set_times

    .p2align 2
    .globl lb_files_File_read
    .type lb_files_File_read, %function
lb_files_File_read:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    str x20, [sp, #120]
    str x21, [sp, #112]
    str x22, [sp, #104]
    str x23, [sp, #96]
    sub x16, x29, #112
    str x0, [x16]
    sub x16, x29, #128
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #112
    ldr x15, [x9]
    add x14, x15, #4
    ldrb w14, [x14]
    cbnz w14, .L7_1
    b .L7_2
.L7_1:
    ldrsw x19, [x15]
    b .L7_3
.L7_2:
    sub x19, x29, #104
    add x14, x19, #8
    adrp x15, lb_io_closed
    add x15, x15, :lo12:lb_io_closed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_4
    add x15, x15, :lo12:.Ltext_4
    sub x12, x29, #144
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    ldr x22, [sp, #104]
    ldr x23, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_4:
.L7_3:
    sub x14, x29, #128
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ne .L7_6
.L7_5:
    sub x14, x29, #104
    mov x9, #0
    str x9, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    ldr x22, [sp, #104]
    ldr x23, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_8:
    b .L7_7
.L7_6:
.L7_7:
    movz x10, #16384, lsl #16
    cmp x15, x10
    b.hs .L7_10
.L7_9:
    mov x20, x15
    b .L7_11
.L7_10:
    movz x9, #16384, lsl #16
    mov x20, x9
.L7_11:
    ldr x21, [x14]
    mov x0, x19
    mov x1, x21
    mov x2, x20
    bl lb_files_6c_read
    mov x15, x0
    mov x22, x15
.L7_12:
    mov x10, #0
    cmp x22, x10
    cset w23, lt
    cbnz w23, .L7_15
    b .L7_22
.L7_22:
    mov w14, w23
    b .L7_16
.L7_15:
    bl lb_c_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    cset w14, eq
.L7_16:
    and w15, w14, #255
    cbnz w15, .L7_13
    b .L7_14
.L7_13:
    mov x0, x19
    mov x1, x21
    mov x2, x20
    bl lb_files_6c_read
    mov x22, x0
    b .L7_12
.L7_14:
    cbnz w23, .L7_17
    b .L7_18
.L7_17:
    sub x19, x29, #104
    add x20, x19, #8
    bl lb_c_errno
    mov w14, w0
    mov x0, x14
    bl lb_files_14classify_error
    mov w14, w0
    str w14, [x20]
    adrp x14, .Ltext_14
    add x14, x14, :lo12:.Ltext_14
    sub x15, x29, #160
    str x14, [x15]
    add x14, x15, #8
    movz x9, #26
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    ldr x22, [sp, #104]
    ldr x23, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_20:
    b .L7_19
.L7_18:
.L7_19:
    sub x14, x29, #104
    str x22, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    ldr x22, [sp, #104]
    ldr x23, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_21:
    adrp x0, .Ltext_15
    add x0, x0, :lo12:.Ltext_15
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_files_File_read, .-lb_files_File_read

    .p2align 2
    .globl lb_files_File_write
    .type lb_files_File_write, %function
lb_files_File_write:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    str x20, [sp, #120]
    str x21, [sp, #112]
    str x22, [sp, #104]
    str x23, [sp, #96]
    sub x16, x29, #112
    str x0, [x16]
    sub x16, x29, #128
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #112
    ldr x15, [x9]
    add x14, x15, #4
    ldrb w14, [x14]
    cbnz w14, .L8_1
    b .L8_2
.L8_1:
    ldrsw x19, [x15]
    b .L8_3
.L8_2:
    sub x19, x29, #104
    add x14, x19, #8
    adrp x15, lb_io_closed
    add x15, x15, :lo12:lb_io_closed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_4
    add x15, x15, :lo12:.Ltext_4
    sub x12, x29, #144
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    ldr x22, [sp, #104]
    ldr x23, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_4:
.L8_3:
    sub x14, x29, #128
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ne .L8_6
.L8_5:
    sub x14, x29, #104
    mov x9, #0
    str x9, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    ldr x22, [sp, #104]
    ldr x23, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_8:
    b .L8_7
.L8_6:
.L8_7:
    movz x10, #16384, lsl #16
    cmp x15, x10
    b.hs .L8_10
.L8_9:
    mov x20, x15
    b .L8_11
.L8_10:
    movz x9, #16384, lsl #16
    mov x20, x9
.L8_11:
    ldr x21, [x14]
    mov x0, x19
    mov x1, x21
    mov x2, x20
    bl lb_files_7c_write
    mov x15, x0
    mov x22, x15
.L8_12:
    mov x10, #0
    cmp x22, x10
    cset w23, lt
    cbnz w23, .L8_15
    b .L8_22
.L8_22:
    mov w14, w23
    b .L8_16
.L8_15:
    bl lb_c_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    cset w14, eq
.L8_16:
    and w15, w14, #255
    cbnz w15, .L8_13
    b .L8_14
.L8_13:
    mov x0, x19
    mov x1, x21
    mov x2, x20
    bl lb_files_7c_write
    mov x22, x0
    b .L8_12
.L8_14:
    cbnz w23, .L8_17
    b .L8_18
.L8_17:
    sub x19, x29, #104
    add x20, x19, #8
    bl lb_c_errno
    mov w14, w0
    mov x0, x14
    bl lb_files_14classify_error
    mov w14, w0
    str w14, [x20]
    adrp x14, .Ltext_16
    add x14, x14, :lo12:.Ltext_16
    sub x15, x29, #160
    str x14, [x15]
    add x14, x15, #8
    movz x9, #29
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    ldr x22, [sp, #104]
    ldr x23, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_20:
    b .L8_19
.L8_18:
.L8_19:
    sub x14, x29, #104
    str x22, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    ldr x22, [sp, #104]
    ldr x23, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_21:
    adrp x0, .Ltext_17
    add x0, x0, :lo12:.Ltext_17
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_files_File_write, .-lb_files_File_write

    .p2align 2
    .globl lb_files_File_seek
    .type lb_files_File_seek, %function
lb_files_File_seek:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #144]
    str x20, [sp, #136]
    str x21, [sp, #128]
    str x22, [sp, #120]
    str x23, [sp, #112]
    sub x16, x29, #112
    str x0, [x16]
    sub x16, x29, #128
    str x1, [x16]
    sub x16, x29, #144
    str w2, [x16]
    sub x9, x29, #112
    ldr x15, [x9]
    add x14, x15, #4
    ldrb w14, [x14]
    cbnz w14, .L9_1
    b .L9_2
.L9_1:
    ldrsw x19, [x15]
    b .L9_3
.L9_2:
    sub x19, x29, #104
    add x14, x19, #8
    adrp x15, lb_io_closed
    add x15, x15, :lo12:lb_io_closed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_4
    add x15, x15, :lo12:.Ltext_4
    sub x12, x29, #160
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    ldr x21, [sp, #128]
    ldr x22, [sp, #120]
    ldr x23, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_4:
.L9_3:
    sub x14, x29, #128
    ldr x20, [x14]
    sub x14, x29, #144
    ldrb w14, [x14]
    mov w21, w14
    mov x0, x19
    mov x1, x20
    mov x2, x21
    bl lb_files_lseek
    mov x14, x0
    mov x22, x14
.L9_5:
    mov x10, #0
    cmp x22, x10
    cset w23, lt
    cbnz w23, .L9_8
    b .L9_15
.L9_15:
    mov w14, w23
    b .L9_9
.L9_8:
    bl lb_c_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    cset w14, eq
.L9_9:
    and w15, w14, #255
    cbnz w15, .L9_6
    b .L9_7
.L9_6:
    mov x0, x19
    mov x1, x20
    mov x2, x21
    bl lb_files_lseek
    mov x22, x0
    b .L9_5
.L9_7:
    cbnz w23, .L9_10
    b .L9_11
.L9_10:
    sub x19, x29, #104
    add x20, x19, #8
    bl lb_c_errno
    mov w14, w0
    mov x0, x14
    bl lb_files_14classify_error
    mov w14, w0
    str w14, [x20]
    adrp x14, .Ltext_18
    add x14, x14, :lo12:.Ltext_18
    sub x15, x29, #176
    str x14, [x15]
    add x14, x15, #8
    movz x9, #32
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    ldr x21, [sp, #128]
    ldr x22, [sp, #120]
    ldr x23, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_13:
    b .L9_12
.L9_11:
.L9_12:
    sub x14, x29, #104
    str x22, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    ldr x21, [sp, #128]
    ldr x22, [sp, #120]
    ldr x23, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_14:
    adrp x0, .Ltext_19
    add x0, x0, :lo12:.Ltext_19
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_files_File_seek, .-lb_files_File_seek

    .p2align 2
    .globl lb_files_File_sync
    .type lb_files_File_sync, %function
lb_files_File_sync:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    str x20, [sp, #72]
    sub x16, x29, #80
    str x0, [x16]
    sub x9, x29, #80
    ldr x15, [x9]
    add x14, x15, #4
    ldrb w14, [x14]
    cbnz w14, .L10_1
    b .L10_2
.L10_1:
    ldrsw x19, [x15]
    b .L10_3
.L10_2:
    sub x19, x29, #72
    adrp x14, lb_io_closed
    add x14, x14, :lo12:lb_io_closed
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_4
    add x14, x14, :lo12:.Ltext_4
    sub x15, x29, #96
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L10_4:
.L10_3:
    mov x0, x19
    bl lb_files_fsync
    mov w14, w0
.L10_5:
    mov x10, #0
    cmp w14, w10
    cset w20, lt
    cbnz w20, .L10_8
    b .L10_14
.L10_14:
    mov w14, w20
    b .L10_9
.L10_8:
    bl lb_c_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    cset w14, eq
.L10_9:
    and w15, w14, #255
    cbnz w15, .L10_6
    b .L10_7
.L10_6:
    mov x0, x19
    bl lb_files_fsync
    mov w14, w0
    b .L10_5
.L10_7:
    cbnz w20, .L10_10
    b .L10_11
.L10_10:
    sub x19, x29, #72
    bl lb_c_errno
    mov w14, w0
    mov x0, x14
    bl lb_files_14classify_error
    mov w14, w0
    str w14, [x19]
    adrp x14, .Ltext_20
    add x14, x14, :lo12:.Ltext_20
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #34
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L10_13:
    b .L10_12
.L10_11:
.L10_12:
    sub x14, x29, #72
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_files_File_sync, .-lb_files_File_sync

    .p2align 2
    .globl lb_files_File_close
    .type lb_files_File_close, %function
lb_files_File_close:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    str x20, [sp, #72]
    str x21, [sp, #64]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
    ldr x19, [x9]
    add x14, x19, #4
    ldrb w14, [x14]
    cbnz w14, .L11_1
    b .L11_2
.L11_1:
    ldrsw x20, [x19]
    b .L11_3
.L11_2:
    sub x14, x29, #80
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    ldr x21, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_4:
.L11_3:
    sub x21, x29, #96
    mov x11, x21
    str xzr, [x11, #0]
    mov x10, x21
    mov x11, x19
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    mov x0, x20
    bl close
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L11_6
.L11_5:
    sub x19, x29, #80
    bl lb_c_errno
    mov w14, w0
    mov x0, x14
    bl lb_files_14classify_error
    mov w14, w0
    str w14, [x19]
    adrp x14, .Ltext_21
    add x14, x14, :lo12:.Ltext_21
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #28
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    ldr x21, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_8:
    b .L11_7
.L11_6:
.L11_7:
    sub x14, x29, #80
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    ldr x21, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_files_File_close, .-lb_files_File_close

    .p2align 2
    .globl lb_files_File_destroy
    .type lb_files_File_destroy, %function
lb_files_File_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #80
    bl lb_files_File_close
    sub x15, x29, #80
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L12_4
    b .L12_3
.L12_4:
    sub x14, x29, #48
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b .L12_1
.L12_3:
    b .L12_2
.L12_1:
.L12_2:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_files_File_destroy, .-lb_files_File_destroy

    .p2align 2
    .globl lb_files_14classify_error
    .type lb_files_14classify_error, %function
lb_files_14classify_error:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str w0, [x16]
    sub x14, x29, #32
    ldrsw x14, [x14]
    movz x10, #2
    cmp w14, w10
    b.ne .L13_2
.L13_1:
    adrp x14, lb_files_missing
    add x14, x14, :lo12:lb_files_missing
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L13_4:
    b .L13_3
.L13_2:
.L13_3:
    movz x10, #1
    cmp w14, w10
    cset w15, eq
    cbnz w15, .L13_54
    b .L13_8
.L13_54:
    mov w12, w15
    b .L13_9
.L13_8:
    movz x10, #13
    cmp w14, w10
    cset w12, eq
.L13_9:
    and w15, w12, #255
    cbnz w15, .L13_5
    b .L13_6
.L13_5:
    adrp x14, lb_files_17permission_denied
    add x14, x14, :lo12:lb_files_17permission_denied
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L13_10:
    b .L13_7
.L13_6:
.L13_7:
    movz x10, #17
    cmp w14, w10
    b.ne .L13_12
.L13_11:
    adrp x14, lb_files_14already_exists
    add x14, x14, :lo12:lb_files_14already_exists
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L13_14:
    b .L13_13
.L13_12:
.L13_13:
    movz x10, #28
    cmp w14, w10
    b.ne .L13_16
.L13_15:
    adrp x14, lb_files_8no_space
    add x14, x14, :lo12:lb_files_8no_space
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L13_18:
    b .L13_17
.L13_16:
.L13_17:
    movz x10, #20
    cmp w14, w10
    b.ne .L13_20
.L13_19:
    adrp x14, lb_files_13not_directory
    add x14, x14, :lo12:lb_files_13not_directory
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L13_22:
    b .L13_21
.L13_20:
.L13_21:
    movz x10, #21
    cmp w14, w10
    b.ne .L13_24
.L13_23:
    adrp x14, lb_files_12is_directory
    add x14, x14, :lo12:lb_files_12is_directory
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L13_26:
    b .L13_25
.L13_24:
.L13_25:
    movz x10, #30
    cmp w14, w10
    b.ne .L13_28
.L13_27:
    adrp x14, lb_files_20read_only_filesystem
    add x14, x14, :lo12:lb_files_20read_only_filesystem
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L13_30:
    b .L13_29
.L13_28:
.L13_29:
    movz x10, #39
    cmp w14, w10
    b.ne .L13_32
.L13_31:
    adrp x14, lb_files_9not_empty
    add x14, x14, :lo12:lb_files_9not_empty
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L13_34:
    b .L13_33
.L13_32:
.L13_33:
    movz x10, #18
    cmp w14, w10
    b.ne .L13_36
.L13_35:
    adrp x14, lb_files_12cross_device
    add x14, x14, :lo12:lb_files_12cross_device
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L13_38:
    b .L13_37
.L13_36:
.L13_37:
    movz x10, #40
    cmp w14, w10
    cset w15, eq
    cbnz w15, .L13_42
    b .L13_55
.L13_55:
    mov w12, w15
    b .L13_43
.L13_42:
    movz x9, #1
    mov w12, w9
.L13_43:
    and w15, w12, #255
    cbnz w15, .L13_39
    b .L13_40
.L13_39:
    adrp x14, lb_files_12symlink_loop
    add x14, x14, :lo12:lb_files_12symlink_loop
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L13_44:
    b .L13_41
.L13_40:
.L13_41:
    movz x10, #36
    cmp w14, w10
    b.ne .L13_46
.L13_45:
    adrp x14, lb_files_13name_too_long
    add x14, x14, :lo12:lb_files_13name_too_long
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L13_48:
    b .L13_47
.L13_46:
.L13_47:
    movz x10, #11
    cmp w14, w10
    b.ne .L13_50
.L13_49:
    adrp x14, lb_files_11would_block
    add x14, x14, :lo12:lb_files_11would_block
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L13_52:
    b .L13_51
.L13_50:
.L13_51:
    adrp x14, lb_files_failed
    add x14, x14, :lo12:lb_files_failed
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L13_53:
    adrp x0, .Ltext_22
    add x0, x0, :lo12:.Ltext_22
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_files_14classify_error, .-lb_files_14classify_error

    .p2align 2
    .globl lb_files_15file_open_flags
    .type lb_files_15file_open_flags, %function
lb_files_15file_open_flags:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #112]
    sub x16, x29, #88
    str w0, [x16]
    sub x16, x29, #104
    str w1, [x16]
    sub x14, x29, #104
    ldr w14, [x14]
    movz x10, #4095
    cmp w14, w10
    b.ls .L14_2
.L14_1:
    sub x19, x29, #72
    add x14, x19, #8
    adrp x15, lb_files_15invalid_options
    add x15, x15, :lo12:lb_files_15invalid_options
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_8
    add x15, x15, :lo12:.Ltext_8
    sub x12, x29, #120
    str x15, [x12]
    add x15, x12, #8
    movz x9, #44
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L14_4:
    b .L14_3
.L14_2:
.L14_3:
    sub x14, x29, #88
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    cbnz w15, .L14_5
    b .L14_6
.L14_5:
    movz x9, #8, lsl #16
    mov w14, w9
    b .L14_7
.L14_6:
    movz x10, #1
    cmp w14, w10
    b.ne .L14_9
.L14_8:
    movz x9, #2
    movk x9, #8, lsl #16
    mov w14, w9
    b .L14_10
.L14_9:
    movz x10, #2
    cmp w14, w10
    b.ne .L14_12
.L14_11:
    movz x9, #577
    movk x9, #8, lsl #16
    mov w14, w9
    b .L14_13
.L14_12:
    movz x10, #3
    cmp w14, w10
    cset w12, eq
    cbnz w12, .L14_30
    b .L14_17
.L14_30:
    mov w13, w12
    b .L14_18
.L14_17:
    movz x10, #5
    cmp w14, w10
    cset w13, eq
.L14_18:
    and w12, w13, #255
    cbnz w12, .L14_14
    b .L14_15
.L14_14:
    movz x10, #5
    cmp w14, w10
    b.ne .L14_20
.L14_19:
    movz x9, #2
    mov w14, w9
    b .L14_21
.L14_20:
    movz x9, #1
    mov w14, w9
.L14_21:
    movz x10, #192
    orr w15, w14, w10
    movz x10, #8, lsl #16
    orr w15, w15, w10
    b .L14_16
.L14_15:
    movz x10, #4
    cmp w14, w10
    b.ne .L14_23
.L14_22:
    movz x9, #1089
    movk x9, #8, lsl #16
    mov w15, w9
    b .L14_24
.L14_23:
    mov x10, #0
    cmp w15, w10
    b.ne .L14_26
.L14_25:
    sub x19, x29, #72
    add x14, x19, #8
    adrp x15, lb_files_15invalid_options
    add x15, x15, :lo12:lb_files_15invalid_options
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_25
    add x15, x15, :lo12:.Ltext_25
    sub x12, x29, #136
    str x15, [x12]
    add x15, x12, #8
    movz x9, #25
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L14_28:
    b .L14_27
.L14_26:
.L14_27:
    movz x9, #8, lsl #16
    mov w15, w9
.L14_24:
.L14_16:
    mov w14, w15
.L14_13:
.L14_10:
.L14_7:
    sub x15, x29, #72
    str w14, [x15]
    add x12, x15, #32
    mov x9, #0
    strb w9, [x12]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L14_29:
    adrp x0, .Ltext_26
    add x0, x0, :lo12:.Ltext_26
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_files_15file_open_flags, .-lb_files_15file_open_flags

    .section .init_array,"aw"
    .p2align 3
    .quad lb_files_handles_0init

    .section .rodata
.Ltext_0:
    .asciz "the file could not be opened"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/files/handles.lucb:33:9"
.Ltext_3:
    .asciz "src/std/files/handles.lucb:38:9"
.Ltext_4:
    .asciz "the file is closed"
.Ltext_5:
    .asciz "src/std/files/handles.lucb:43:9"
.Ltext_6:
    .asciz "a file length cannot be negative"
.Ltext_7:
    .asciz "the file length could not be changed"
.Ltext_8:
    .asciz "file permissions must fit the Unix mode bits"
.Ltext_9:
    .asciz "file permissions could not be changed"
.Ltext_10:
    .asciz "a timestamp nanosecond fraction must be below one billion"
.Ltext_11:
    .asciz "src/std/files/handles.lucb:87:9"
.Ltext_12:
    .asciz "src/std/files/handles.lucb:89:13"
.Ltext_13:
    .asciz "file timestamps could not be changed"
.Ltext_14:
    .asciz "the file could not be read"
.Ltext_15:
    .asciz "src/std/files/handles.lucb:105:9"
.Ltext_16:
    .asciz "the file could not be written"
.Ltext_17:
    .asciz "src/std/files/handles.lucb:119:9"
.Ltext_18:
    .asciz "the file could not be positioned"
.Ltext_19:
    .asciz "src/std/files/handles.lucb:130:9"
.Ltext_20:
    .asciz "the file could not be synchronized"
.Ltext_21:
    .asciz "the file could not be closed"
.Ltext_22:
    .asciz "src/std/files/handles.lucb:185:5"
.Ltext_23:
    .asciz "src/std/files/handles.lucb:213:5"
.Ltext_24:
    .asciz "src/std/files/handles.lucb:219:5"
.Ltext_25:
    .asciz "unknown file opening mode"
.Ltext_26:
    .asciz "src/std/files/handles.lucb:239:5"

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
