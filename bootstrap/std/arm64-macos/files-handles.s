    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_files_handles_0init
_lb_files_handles_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_File_open
    .no_dead_strip _lb_files_File_open
_lb_files_File_open:
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
    str x28, [sp, #328]
    sub x16, x29, #160
    str x0, [x16]
    sub x16, x29, #176
    str w1, [x16]
    sub x16, x29, #192
    str w2, [x16]
    sub x14, x29, #176
    ldrb w14, [x14]
    sub x15, x29, #192
    ldr w19, [x15]
    mov x0, x14
    mov x1, x19
    sub x8, x29, #232
    bl _lb_files_15file_open_flags
    sub x15, x29, #232
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L1_2
    b L1_1
L1_2:
    add x14, x15, #8
    sub x19, x29, #144
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    ldr x24, [sp, #360]
    ldr x25, [sp, #352]
    ldr x26, [sp, #344]
    ldr x27, [sp, #336]
    ldr x28, [sp, #328]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_3:
L1_1:
    ldrsw x20, [x15]
    sub x14, x29, #160
    ldr x21, [x14]
    sub x10, x29, #400
    str x21, [x10]
    sub x10, x29, #416
    str w20, [x10]
    sub x10, x29, #432
    str w19, [x10]
    movz x16, #16
    sub sp, sp, x16
    mov w9, w19
    str x9, [sp, #0]
    mov x0, x21
    mov x1, x20
    bl _open
    movz x16, #16
    add sp, sp, x16
    mov w22, w0
    sub x23, x29, #384
    str w22, [x23]
    add x24, x23, #32
    mov x9, #0
    strb w9, [x24]
    mov x10, x23
    sub x11, x29, #272
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L1_21
L1_20:
    adrp x0, l_text_23@PAGE
    add x0, x0, l_text_23@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L1_21:
    sub x15, x29, #272
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L1_5
    b L1_4
L1_5:
    add x14, x15, #8
    sub x19, x29, #144
    add x20, x19, #8
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    ldr x24, [sp, #360]
    ldr x25, [sp, #352]
    ldr x26, [sp, #344]
    ldr x27, [sp, #336]
    ldr x28, [sp, #328]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_6:
L1_4:
    adrp x25, _lb_c_interrupted@PAGE
    add x25, x25, _lb_c_interrupted@PAGEOFF
    sub x28, x29, #312
    add x26, x28, #32
    mov w27, w22
L1_7:
    mov x10, #0
    cmp w27, w10
    cset w22, lt
    cbnz w22, L1_10
    b L1_24
L1_24:
    mov w14, w22
    b L1_11
L1_10:
    bl _lb_c_errno
    mov w14, w0
    ldrsw x15, [x25]
    cmp w14, w15
    cset w14, eq
L1_11:
    and w15, w14, #255
    cbnz w15, L1_8
    b L1_9
L1_8:
    sub x10, x29, #400
    str x21, [x10]
    sub x10, x29, #416
    str w20, [x10]
    sub x10, x29, #432
    str w19, [x10]
    movz x16, #16
    sub sp, sp, x16
    mov w9, w19
    str x9, [sp, #0]
    mov x0, x21
    mov x1, x20
    bl _open
    movz x16, #16
    add sp, sp, x16
    mov w27, w0
    str w27, [x23]
    mov x9, #0
    strb w9, [x24]
    mov x10, x23
    sub x11, x29, #312
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    b L1_23
L1_22:
    adrp x0, l_text_23@PAGE
    add x0, x0, l_text_23@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L1_23:
    ldrb w14, [x26]
    cbnz w14, L1_13
    b L1_12
L1_13:
    add x14, x28, #8
    sub x19, x29, #144
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
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
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    ldr x24, [sp, #360]
    ldr x25, [sp, #352]
    ldr x26, [sp, #344]
    ldr x27, [sp, #336]
    ldr x28, [sp, #328]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_14:
L1_12:
    b L1_7
L1_9:
    cbnz w22, L1_15
    b L1_16
L1_15:
    sub x19, x29, #144
    add x20, x19, #8
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x20]
    adrp x14, l_text_0@PAGE
    add x14, x14, l_text_0@PAGEOFF
    sub x15, x29, #328
    str x14, [x15]
    add x14, x15, #8
    movz x9, #28
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
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
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    ldr x24, [sp, #360]
    ldr x25, [sp, #352]
    ldr x26, [sp, #344]
    ldr x27, [sp, #336]
    ldr x28, [sp, #328]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_18:
    b L1_17
L1_16:
L1_17:
    sub x19, x29, #336
    mov x11, x19
    str xzr, [x11, #0]
    sub x14, x29, #344
    str w27, [x14]
    add x15, x14, #4
    movz x9, #1
    strb w9, [x15]
    mov x10, x14
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x20, x29, #144
    mov x10, x19
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x20, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
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
    ldr x28, [sp, #328]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_19:
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_File_descriptor
    .no_dead_strip _lb_files_File_descriptor
_lb_files_File_descriptor:
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
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_1:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_File_metadata
    .no_dead_strip _lb_files_File_metadata
_lb_files_File_metadata:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #384
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #352]
    str x20, [sp, #344]
    sub x16, x29, #208
    str x0, [x16]
    sub x9, x29, #208
    ldr x15, [x9]
    add x14, x15, #4
    ldrb w14, [x14]
    cbnz w14, L3_1
    b L3_2
L3_1:
    ldrsw x14, [x15]
    b L3_3
L3_2:
    sub x19, x29, #200
    add x14, x19, #128
    adrp x15, _lb_io_closed@PAGE
    add x15, x15, _lb_io_closed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_4@PAGE
    add x15, x15, l_text_4@PAGEOFF
    sub x20, x29, #224
    str x15, [x20]
    add x15, x20, #8
    movz x9, #18
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #152
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #160
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_4:
L3_3:
    mov x0, x14
    sub x8, x29, #384
    bl _lb_files_19metadata_descriptor
    sub x19, x29, #384
    add x15, x19, #152
    ldrb w15, [x15]
    cbnz w15, L3_6
    b L3_5
L3_6:
    add x14, x19, #128
    sub x20, x29, #200
    add x15, x20, #128
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #152
    movz x9, #1
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #160
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_7:
L3_5:
    sub x20, x29, #200
    mov x10, x19
    mov x11, x20
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
    ldp x12, x13, [x10, #80]
    stp x12, x13, [x11, #80]
    ldp x12, x13, [x10, #96]
    stp x12, x13, [x11, #96]
    ldp x12, x13, [x10, #112]
    stp x12, x13, [x11, #112]
    add x14, x20, #152
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #160
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_8:
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_File_truncate
    .no_dead_strip _lb_files_File_truncate
_lb_files_File_truncate:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    str x20, [sp, #120]
    str x21, [sp, #112]
    str x22, [sp, #104]
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #112
    str x1, [x16]
    sub x9, x29, #96
    ldr x15, [x9]
    add x14, x15, #4
    ldrb w14, [x14]
    cbnz w14, L4_1
    b L4_2
L4_1:
    ldrsw x19, [x15]
    b L4_3
L4_2:
    sub x19, x29, #88
    adrp x14, _lb_io_closed@PAGE
    add x14, x14, _lb_io_closed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_4@PAGE
    add x14, x14, l_text_4@PAGEOFF
    sub x15, x29, #128
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    ldr x22, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_4:
L4_3:
    sub x14, x29, #112
    ldr x20, [x14]
    mov x10, #0
    cmp x20, x10
    b.ge L4_6
L4_5:
    sub x19, x29, #88
    adrp x14, _lb_files_15invalid_options@PAGE
    add x14, x14, _lb_files_15invalid_options@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_6@PAGE
    add x14, x14, l_text_6@PAGEOFF
    sub x15, x29, #144
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
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    ldr x22, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_8:
    b L4_7
L4_6:
L4_7:
    mov x0, x19
    mov x1, x20
    bl _lb_files_ftruncate
    mov w14, w0
    adrp x21, _lb_c_interrupted@PAGE
    add x21, x21, _lb_c_interrupted@PAGEOFF
L4_9:
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w22, eq
    cbnz w22, L4_12
    b L4_18
L4_18:
    mov w14, w22
    b L4_13
L4_12:
    bl _lb_c_errno
    mov w14, w0
    ldrsw x15, [x21]
    cmp w14, w15
    cset w14, eq
L4_13:
    and w15, w14, #255
    cbnz w15, L4_10
    b L4_11
L4_10:
    mov x0, x19
    mov x1, x20
    bl _lb_files_ftruncate
    mov w14, w0
    b L4_9
L4_11:
    cbnz w22, L4_14
    b L4_15
L4_14:
    sub x19, x29, #88
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x19]
    adrp x14, l_text_7@PAGE
    add x14, x14, l_text_7@PAGEOFF
    sub x15, x29, #160
    str x14, [x15]
    add x14, x15, #8
    movz x9, #36
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    ldr x22, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_17:
    b L4_16
L4_15:
L4_16:
    sub x14, x29, #88
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    ldr x22, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_File_15set_permissions
    .no_dead_strip _lb_files_File_15set_permissions
_lb_files_File_15set_permissions:
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
    sub x16, x29, #104
    str x0, [x16]
    sub x16, x29, #120
    str w1, [x16]
    sub x9, x29, #104
    ldr x15, [x9]
    add x14, x15, #4
    ldrb w14, [x14]
    cbnz w14, L5_1
    b L5_2
L5_1:
    ldrsw x19, [x15]
    b L5_3
L5_2:
    sub x19, x29, #96
    adrp x14, _lb_io_closed@PAGE
    add x14, x14, _lb_io_closed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_4@PAGE
    add x14, x14, l_text_4@PAGEOFF
    sub x15, x29, #136
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    ldr x21, [sp, #128]
    ldr x22, [sp, #120]
    ldr x23, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_3:
    sub x14, x29, #120
    ldr w20, [x14]
    movz x10, #4095
    cmp w20, w10
    b.ls L5_6
L5_5:
    sub x19, x29, #96
    adrp x14, _lb_files_15invalid_options@PAGE
    add x14, x14, _lb_files_15invalid_options@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_8@PAGE
    add x14, x14, l_text_8@PAGEOFF
    sub x15, x29, #152
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    ldr x21, [sp, #128]
    ldr x22, [sp, #120]
    ldr x23, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_6:
L5_7:
    adrp x21, _lb_platform_macos@PAGE
    add x21, x21, _lb_platform_macos@PAGEOFF
    mov w14, w20
    and w22, w14, #65535
    adrp x23, _lb_c_interrupted@PAGE
    add x23, x23, _lb_c_interrupted@PAGEOFF
L5_9:
L5_10:
    ldrb w14, [x21]
    cbnz w14, L5_12
    b L5_13
L5_12:
    mov x0, x19
    mov x1, x22
    bl _fchmod
    mov w14, w0
    b L5_14
L5_13:
    mov x0, x19
    mov x1, x20
    bl _fchmod
    mov w14, w0
L5_14:
    mov x10, #0
    cmp w14, w10
    b.ne L5_16
L5_15:
    sub x14, x29, #96
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    ldr x21, [sp, #128]
    ldr x22, [sp, #120]
    ldr x23, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_16:
L5_17:
    bl _lb_c_errno
    mov w14, w0
    ldrsw x15, [x23]
    cmp w14, w15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L5_20
L5_19:
    sub x19, x29, #96
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x19]
    adrp x14, l_text_9@PAGE
    add x14, x14, l_text_9@PAGEOFF
    sub x15, x29, #168
    str x14, [x15]
    add x14, x15, #8
    movz x9, #37
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    ldr x21, [sp, #128]
    ldr x22, [sp, #120]
    ldr x23, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_20:
L5_21:
    b L5_9

    .p2align 2
    .globl _lb_files_File_9set_times
    .no_dead_strip _lb_files_File_9set_times
_lb_files_File_9set_times:
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
    cbnz w14, L6_1
    b L6_2
L6_1:
    ldrsw x19, [x15]
    b L6_3
L6_2:
    sub x19, x29, #104
    adrp x14, _lb_io_closed@PAGE
    add x14, x14, _lb_io_closed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_4@PAGE
    add x14, x14, l_text_4@PAGEOFF
    sub x15, x29, #160
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
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_4:
L6_3:
    sub x20, x29, #128
    add x14, x20, #8
    ldr w21, [x14]
    movz x10, #51712
    movk x10, #15258, lsl #16
    cmp w21, w10
    cset w14, hs
    cbnz w14, L6_20
    b L6_8
L6_20:
    mov w15, w14
    b L6_9
L6_8:
    sub x14, x29, #144
    add x14, x14, #8
    ldr w14, [x14]
    movz x10, #51712
    movk x10, #15258, lsl #16
    cmp w14, w10
    cset w15, hs
L6_9:
    and w14, w15, #255
    cbnz w14, L6_5
    b L6_6
L6_5:
    sub x19, x29, #104
    adrp x14, _lb_files_15invalid_options@PAGE
    add x14, x14, _lb_files_15invalid_options@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_10@PAGE
    add x14, x14, l_text_10@PAGEOFF
    sub x15, x29, #176
    str x14, [x15]
    add x14, x15, #8
    movz x9, #57
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
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_10:
    b L6_7
L6_6:
L6_7:
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
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x23
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    mov x0, x19
    mov x1, x22
    bl _futimens
    mov w14, w0
    adrp x23, _lb_c_interrupted@PAGE
    add x23, x23, _lb_c_interrupted@PAGEOFF
L6_11:
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w20, eq
    cbnz w20, L6_14
    b L6_21
L6_21:
    mov w14, w20
    b L6_15
L6_14:
    bl _lb_c_errno
    mov w14, w0
    ldrsw x15, [x23]
    cmp w14, w15
    cset w14, eq
L6_15:
    and w15, w14, #255
    cbnz w15, L6_12
    b L6_13
L6_12:
    mov x0, x19
    mov x1, x22
    bl _futimens
    mov w14, w0
    b L6_11
L6_13:
    cbnz w20, L6_16
    b L6_17
L6_16:
    sub x19, x29, #104
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x19]
    adrp x14, l_text_13@PAGE
    add x14, x14, l_text_13@PAGEOFF
    sub x15, x29, #288
    str x14, [x15]
    add x14, x15, #8
    movz x9, #36
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
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_19:
    b L6_18
L6_17:
L6_18:
    sub x14, x29, #104
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
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_File_read
    .no_dead_strip _lb_files_File_read
_lb_files_File_read:
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
    str x24, [sp, #104]
    sub x16, x29, #120
    str x0, [x16]
    sub x16, x29, #136
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #120
    ldr x15, [x9]
    add x14, x15, #4
    ldrb w14, [x14]
    cbnz w14, L7_1
    b L7_2
L7_1:
    ldrsw x19, [x15]
    b L7_3
L7_2:
    sub x19, x29, #112
    add x14, x19, #8
    adrp x15, _lb_io_closed@PAGE
    add x15, x15, _lb_io_closed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_4@PAGE
    add x15, x15, l_text_4@PAGEOFF
    sub x20, x29, #152
    str x15, [x20]
    add x15, x20, #8
    movz x9, #18
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    ldr x21, [sp, #128]
    ldr x22, [sp, #120]
    ldr x23, [sp, #112]
    ldr x24, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_4:
L7_3:
    sub x14, x29, #136
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ne L7_6
L7_5:
    sub x14, x29, #112
    mov x9, #0
    str x9, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    ldr x21, [sp, #128]
    ldr x22, [sp, #120]
    ldr x23, [sp, #112]
    ldr x24, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_8:
    b L7_7
L7_6:
L7_7:
    adrp x20, _lb_files_14transfer_limit@PAGE
    add x20, x20, _lb_files_14transfer_limit@PAGEOFF
    ldr x20, [x20]
    cmp x15, x20
    b.hs L7_10
L7_9:
    mov x20, x15
    b L7_11
L7_10:
L7_11:
    ldr x21, [x14]
    mov x0, x19
    mov x1, x21
    mov x2, x20
    bl _lb_files_6c_read
    mov x15, x0
    adrp x22, _lb_c_interrupted@PAGE
    add x22, x22, _lb_c_interrupted@PAGEOFF
    mov x23, x15
L7_12:
    mov x10, #0
    cmp x23, x10
    cset w24, lt
    cbnz w24, L7_15
    b L7_22
L7_22:
    mov w14, w24
    b L7_16
L7_15:
    bl _lb_c_errno
    mov w14, w0
    ldrsw x15, [x22]
    cmp w14, w15
    cset w14, eq
L7_16:
    and w15, w14, #255
    cbnz w15, L7_13
    b L7_14
L7_13:
    mov x0, x19
    mov x1, x21
    mov x2, x20
    bl _lb_files_6c_read
    mov x23, x0
    b L7_12
L7_14:
    cbnz w24, L7_17
    b L7_18
L7_17:
    sub x19, x29, #112
    add x20, x19, #8
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x20]
    adrp x14, l_text_14@PAGE
    add x14, x14, l_text_14@PAGEOFF
    sub x15, x29, #168
    str x14, [x15]
    add x14, x15, #8
    movz x9, #26
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    ldr x21, [sp, #128]
    ldr x22, [sp, #120]
    ldr x23, [sp, #112]
    ldr x24, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_20:
    b L7_19
L7_18:
L7_19:
    sub x14, x29, #112
    str x23, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    ldr x21, [sp, #128]
    ldr x22, [sp, #120]
    ldr x23, [sp, #112]
    ldr x24, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_21:
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_File_write
    .no_dead_strip _lb_files_File_write
_lb_files_File_write:
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
    str x24, [sp, #104]
    sub x16, x29, #120
    str x0, [x16]
    sub x16, x29, #136
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #120
    ldr x15, [x9]
    add x14, x15, #4
    ldrb w14, [x14]
    cbnz w14, L8_1
    b L8_2
L8_1:
    ldrsw x19, [x15]
    b L8_3
L8_2:
    sub x19, x29, #112
    add x14, x19, #8
    adrp x15, _lb_io_closed@PAGE
    add x15, x15, _lb_io_closed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_4@PAGE
    add x15, x15, l_text_4@PAGEOFF
    sub x20, x29, #152
    str x15, [x20]
    add x15, x20, #8
    movz x9, #18
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    ldr x21, [sp, #128]
    ldr x22, [sp, #120]
    ldr x23, [sp, #112]
    ldr x24, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_4:
L8_3:
    sub x14, x29, #136
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ne L8_6
L8_5:
    sub x14, x29, #112
    mov x9, #0
    str x9, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    ldr x21, [sp, #128]
    ldr x22, [sp, #120]
    ldr x23, [sp, #112]
    ldr x24, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_8:
    b L8_7
L8_6:
L8_7:
    adrp x20, _lb_files_14transfer_limit@PAGE
    add x20, x20, _lb_files_14transfer_limit@PAGEOFF
    ldr x20, [x20]
    cmp x15, x20
    b.hs L8_10
L8_9:
    mov x20, x15
    b L8_11
L8_10:
L8_11:
    ldr x21, [x14]
    mov x0, x19
    mov x1, x21
    mov x2, x20
    bl _lb_files_7c_write
    mov x15, x0
    adrp x22, _lb_c_interrupted@PAGE
    add x22, x22, _lb_c_interrupted@PAGEOFF
    mov x23, x15
L8_12:
    mov x10, #0
    cmp x23, x10
    cset w24, lt
    cbnz w24, L8_15
    b L8_22
L8_22:
    mov w14, w24
    b L8_16
L8_15:
    bl _lb_c_errno
    mov w14, w0
    ldrsw x15, [x22]
    cmp w14, w15
    cset w14, eq
L8_16:
    and w15, w14, #255
    cbnz w15, L8_13
    b L8_14
L8_13:
    mov x0, x19
    mov x1, x21
    mov x2, x20
    bl _lb_files_7c_write
    mov x23, x0
    b L8_12
L8_14:
    cbnz w24, L8_17
    b L8_18
L8_17:
    sub x19, x29, #112
    add x20, x19, #8
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x20]
    adrp x14, l_text_16@PAGE
    add x14, x14, l_text_16@PAGEOFF
    sub x15, x29, #168
    str x14, [x15]
    add x14, x15, #8
    movz x9, #29
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    ldr x21, [sp, #128]
    ldr x22, [sp, #120]
    ldr x23, [sp, #112]
    ldr x24, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_20:
    b L8_19
L8_18:
L8_19:
    sub x14, x29, #112
    str x23, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    ldr x21, [sp, #128]
    ldr x22, [sp, #120]
    ldr x23, [sp, #112]
    ldr x24, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_21:
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_File_seek
    .no_dead_strip _lb_files_File_seek
_lb_files_File_seek:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #160]
    str x20, [sp, #152]
    str x21, [sp, #144]
    str x22, [sp, #136]
    str x23, [sp, #128]
    str x24, [sp, #120]
    sub x16, x29, #120
    str x0, [x16]
    sub x16, x29, #136
    str x1, [x16]
    sub x16, x29, #152
    str w2, [x16]
    sub x9, x29, #120
    ldr x15, [x9]
    add x14, x15, #4
    ldrb w14, [x14]
    cbnz w14, L9_1
    b L9_2
L9_1:
    ldrsw x19, [x15]
    b L9_3
L9_2:
    sub x19, x29, #112
    add x14, x19, #8
    adrp x15, _lb_io_closed@PAGE
    add x15, x15, _lb_io_closed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_4@PAGE
    add x15, x15, l_text_4@PAGEOFF
    sub x20, x29, #168
    str x15, [x20]
    add x15, x20, #8
    movz x9, #18
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    ldr x22, [sp, #136]
    ldr x23, [sp, #128]
    ldr x24, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_4:
L9_3:
    sub x14, x29, #136
    ldr x20, [x14]
    sub x14, x29, #152
    ldrb w14, [x14]
    mov w21, w14
    mov x0, x19
    mov x1, x20
    mov x2, x21
    bl _lb_files_lseek
    mov x14, x0
    adrp x22, _lb_c_interrupted@PAGE
    add x22, x22, _lb_c_interrupted@PAGEOFF
    mov x23, x14
L9_5:
    mov x10, #0
    cmp x23, x10
    cset w24, lt
    cbnz w24, L9_8
    b L9_15
L9_15:
    mov w14, w24
    b L9_9
L9_8:
    bl _lb_c_errno
    mov w14, w0
    ldrsw x15, [x22]
    cmp w14, w15
    cset w14, eq
L9_9:
    and w15, w14, #255
    cbnz w15, L9_6
    b L9_7
L9_6:
    mov x0, x19
    mov x1, x20
    mov x2, x21
    bl _lb_files_lseek
    mov x23, x0
    b L9_5
L9_7:
    cbnz w24, L9_10
    b L9_11
L9_10:
    sub x19, x29, #112
    add x20, x19, #8
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x20]
    adrp x14, l_text_18@PAGE
    add x14, x14, l_text_18@PAGEOFF
    sub x15, x29, #184
    str x14, [x15]
    add x14, x15, #8
    movz x9, #32
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    ldr x22, [sp, #136]
    ldr x23, [sp, #128]
    ldr x24, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_13:
    b L9_12
L9_11:
L9_12:
    sub x14, x29, #112
    str x23, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    ldr x22, [sp, #136]
    ldr x23, [sp, #128]
    ldr x24, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_14:
    adrp x0, l_text_19@PAGE
    add x0, x0, l_text_19@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_File_sync
    .no_dead_strip _lb_files_File_sync
_lb_files_File_sync:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    str x20, [sp, #88]
    str x21, [sp, #80]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
    ldr x15, [x9]
    add x14, x15, #4
    ldrb w14, [x14]
    cbnz w14, L10_1
    b L10_2
L10_1:
    ldrsw x19, [x15]
    b L10_3
L10_2:
    sub x19, x29, #80
    adrp x14, _lb_io_closed@PAGE
    add x14, x14, _lb_io_closed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_4@PAGE
    add x14, x14, l_text_4@PAGEOFF
    sub x15, x29, #104
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
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    ldr x21, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_4:
L10_3:
    mov x0, x19
    bl _lb_files_fsync
    mov w14, w0
    adrp x20, _lb_c_interrupted@PAGE
    add x20, x20, _lb_c_interrupted@PAGEOFF
L10_5:
    mov x10, #0
    cmp w14, w10
    cset w21, lt
    cbnz w21, L10_8
    b L10_14
L10_14:
    mov w14, w21
    b L10_9
L10_8:
    bl _lb_c_errno
    mov w14, w0
    ldrsw x15, [x20]
    cmp w14, w15
    cset w14, eq
L10_9:
    and w15, w14, #255
    cbnz w15, L10_6
    b L10_7
L10_6:
    mov x0, x19
    bl _lb_files_fsync
    mov w14, w0
    b L10_5
L10_7:
    cbnz w21, L10_10
    b L10_11
L10_10:
    sub x19, x29, #80
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x19]
    adrp x14, l_text_20@PAGE
    add x14, x14, l_text_20@PAGEOFF
    sub x15, x29, #120
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
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    ldr x21, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_13:
    b L10_12
L10_11:
L10_12:
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
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    ldr x21, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_File_close
    .no_dead_strip _lb_files_File_close
_lb_files_File_close:
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
    cbnz w14, L11_1
    b L11_2
L11_1:
    ldrsw x20, [x19]
    b L11_3
L11_2:
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
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    ldr x21, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_4:
L11_3:
    sub x21, x29, #96
    mov x11, x21
    str xzr, [x11, #0]
    mov x10, x21
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    mov x0, x20
    bl _close
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L11_6
L11_5:
    sub x19, x29, #80
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x19]
    adrp x14, l_text_21@PAGE
    add x14, x14, l_text_21@PAGEOFF
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #28
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
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    ldr x21, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_8:
    b L11_7
L11_6:
L11_7:
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
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    ldr x21, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_File_destroy
    .no_dead_strip _lb_files_File_destroy
_lb_files_File_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #80
    bl _lb_files_File_close
    sub x15, x29, #80
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L12_4
    b L12_3
L12_4:
    sub x14, x29, #48
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L12_1
L12_3:
    b L12_2
L12_1:
L12_2:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_14classify_error
    .no_dead_strip _lb_files_14classify_error
_lb_files_14classify_error:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    str x20, [sp, #16]
    sub x16, x29, #48
    str w0, [x16]
    sub x14, x29, #48
    ldrsw x14, [x14]
    movz x10, #2
    cmp w14, w10
    b.ne L13_2
L13_1:
    adrp x14, _lb_files_missing@PAGE
    add x14, x14, _lb_files_missing@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_4:
    b L13_3
L13_2:
L13_3:
    movz x10, #1
    cmp w14, w10
    cset w15, eq
    cbnz w15, L13_69
    b L13_8
L13_69:
    mov w19, w15
    b L13_9
L13_8:
    movz x10, #13
    cmp w14, w10
    cset w19, eq
L13_9:
    and w15, w19, #255
    cbnz w15, L13_5
    b L13_6
L13_5:
    adrp x14, _lb_files_17permission_denied@PAGE
    add x14, x14, _lb_files_17permission_denied@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_10:
    b L13_7
L13_6:
L13_7:
    movz x10, #17
    cmp w14, w10
    b.ne L13_12
L13_11:
    adrp x14, _lb_files_14already_exists@PAGE
    add x14, x14, _lb_files_14already_exists@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_14:
    b L13_13
L13_12:
L13_13:
    movz x10, #28
    cmp w14, w10
    b.ne L13_16
L13_15:
    adrp x14, _lb_files_8no_space@PAGE
    add x14, x14, _lb_files_8no_space@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_18:
    b L13_17
L13_16:
L13_17:
    movz x10, #20
    cmp w14, w10
    b.ne L13_20
L13_19:
    adrp x14, _lb_files_13not_directory@PAGE
    add x14, x14, _lb_files_13not_directory@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_22:
    b L13_21
L13_20:
L13_21:
    movz x10, #21
    cmp w14, w10
    b.ne L13_24
L13_23:
    adrp x14, _lb_files_12is_directory@PAGE
    add x14, x14, _lb_files_12is_directory@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_26:
    b L13_25
L13_24:
L13_25:
    movz x10, #30
    cmp w14, w10
    b.ne L13_28
L13_27:
    adrp x14, _lb_files_20read_only_filesystem@PAGE
    add x14, x14, _lb_files_20read_only_filesystem@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_30:
    b L13_29
L13_28:
L13_29:
    adrp x15, _lb_platform_macos@PAGE
    add x15, x15, _lb_platform_macos@PAGEOFF
    ldrb w15, [x15]
    cbnz w15, L13_34
    b L13_35
L13_34:
    movz x9, #66
    mov w19, w9
    b L13_36
L13_35:
    adrp x19, _lb_platform_windows@PAGE
    add x19, x19, _lb_platform_windows@PAGEOFF
    ldrb w19, [x19]
    cbnz w19, L13_37
    b L13_38
L13_37:
    movz x9, #41
    mov w19, w9
    b L13_39
L13_38:
    movz x9, #39
    mov w19, w9
L13_39:
L13_36:
    cmp w14, w19
    b.ne L13_32
L13_31:
    adrp x14, _lb_files_9not_empty@PAGE
    add x14, x14, _lb_files_9not_empty@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_40:
    b L13_33
L13_32:
L13_33:
    movz x10, #18
    cmp w14, w10
    b.ne L13_42
L13_41:
    adrp x14, _lb_files_12cross_device@PAGE
    add x14, x14, _lb_files_12cross_device@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_44:
    b L13_43
L13_42:
L13_43:
    cbnz w15, L13_48
    b L13_49
L13_48:
    movz x9, #62
    mov w19, w9
    b L13_50
L13_49:
    movz x9, #40
    mov w19, w9
L13_50:
    cmp w14, w19
    cset w20, eq
    cbnz w20, L13_51
    b L13_70
L13_70:
    mov w19, w20
    b L13_52
L13_51:
    adrp x19, _lb_platform_windows@PAGE
    add x19, x19, _lb_platform_windows@PAGEOFF
    ldrb w19, [x19]
    mov x10, #0
    cmp w19, w10
    cset w19, eq
L13_52:
    and w20, w19, #255
    cbnz w20, L13_45
    b L13_46
L13_45:
    adrp x14, _lb_files_12symlink_loop@PAGE
    add x14, x14, _lb_files_12symlink_loop@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_53:
    b L13_47
L13_46:
L13_47:
    cbnz w15, L13_57
    b L13_58
L13_57:
    movz x9, #63
    mov w15, w9
    b L13_59
L13_58:
    adrp x15, _lb_platform_windows@PAGE
    add x15, x15, _lb_platform_windows@PAGEOFF
    ldrb w15, [x15]
    cbnz w15, L13_60
    b L13_61
L13_60:
    movz x9, #38
    mov w15, w9
    b L13_62
L13_61:
    movz x9, #36
    mov w15, w9
L13_62:
L13_59:
    cmp w14, w15
    b.ne L13_55
L13_54:
    adrp x14, _lb_files_13name_too_long@PAGE
    add x14, x14, _lb_files_13name_too_long@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_63:
    b L13_56
L13_55:
L13_56:
    adrp x15, _lb_files_17would_block_errno@PAGE
    add x15, x15, _lb_files_17would_block_errno@PAGEOFF
    ldrsw x15, [x15]
    cmp w14, w15
    b.ne L13_65
L13_64:
    adrp x14, _lb_files_11would_block@PAGE
    add x14, x14, _lb_files_11would_block@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_67:
    b L13_66
L13_65:
L13_66:
    adrp x14, _lb_files_failed@PAGE
    add x14, x14, _lb_files_failed@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_68:
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_15file_open_flags
    .no_dead_strip _lb_files_15file_open_flags
_lb_files_15file_open_flags:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #112]
    str x20, [sp, #104]
    sub x16, x29, #96
    str w0, [x16]
    sub x16, x29, #112
    str w1, [x16]
    sub x14, x29, #112
    ldr w14, [x14]
    movz x10, #4095
    cmp w14, w10
    b.ls L14_2
L14_1:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_files_15invalid_options@PAGE
    add x15, x15, _lb_files_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_8@PAGE
    add x15, x15, l_text_8@PAGEOFF
    sub x20, x29, #128
    str x15, [x20]
    add x15, x20, #8
    movz x9, #44
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
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L14_4:
    b L14_3
L14_2:
L14_3:
    adrp x14, _lb_files_13close_on_exec@PAGE
    add x14, x14, _lb_files_13close_on_exec@PAGEOFF
    ldrsw x14, [x14]
    sub x15, x29, #96
    ldrb w15, [x15]
    movz x10, #1
    cmp w15, w10
    b.ne L14_6
L14_5:
    movz x10, #2
    orr w15, w14, w10
    b L14_7
L14_6:
    movz x10, #2
    cmp w15, w10
    b.ne L14_9
L14_8:
    adrp x15, _lb_files_10write_only@PAGE
    add x15, x15, _lb_files_10write_only@PAGEOFF
    ldrsw x15, [x15]
    adrp x19, _lb_files_create@PAGE
    add x19, x19, _lb_files_create@PAGEOFF
    ldrsw x19, [x19]
    orr w15, w15, w19
    adrp x19, _lb_files_truncate@PAGE
    add x19, x19, _lb_files_truncate@PAGEOFF
    ldrsw x19, [x19]
    orr w15, w15, w19
    orr w15, w14, w15
    b L14_10
L14_9:
    movz x10, #3
    cmp w15, w10
    cset w19, eq
    cbnz w19, L14_27
    b L14_14
L14_27:
    mov w20, w19
    b L14_15
L14_14:
    movz x10, #5
    cmp w15, w10
    cset w20, eq
L14_15:
    and w19, w20, #255
    cbnz w19, L14_11
    b L14_12
L14_11:
    adrp x19, _lb_files_create@PAGE
    add x19, x19, _lb_files_create@PAGEOFF
    ldrsw x19, [x19]
    adrp x20, _lb_files_14exclusive_flag@PAGE
    add x20, x20, _lb_files_14exclusive_flag@PAGEOFF
    ldrsw x20, [x20]
    orr w20, w19, w20
    movz x10, #5
    cmp w15, w10
    b.ne L14_17
L14_16:
    movz x9, #2
    mov w15, w9
    b L14_18
L14_17:
    adrp x15, _lb_files_10write_only@PAGE
    add x15, x15, _lb_files_10write_only@PAGEOFF
    ldrsw x15, [x15]
L14_18:
    orr w19, w20, w15
    orr w19, w14, w19
    b L14_13
L14_12:
    movz x10, #4
    cmp w15, w10
    b.ne L14_20
L14_19:
    adrp x15, _lb_files_10write_only@PAGE
    add x15, x15, _lb_files_10write_only@PAGEOFF
    ldrsw x15, [x15]
    adrp x19, _lb_files_create@PAGE
    add x19, x19, _lb_files_create@PAGEOFF
    ldrsw x19, [x19]
    orr w15, w15, w19
    adrp x19, _lb_files_11append_flag@PAGE
    add x19, x19, _lb_files_11append_flag@PAGEOFF
    ldrsw x19, [x19]
    orr w15, w15, w19
    orr w15, w14, w15
    b L14_21
L14_20:
    mov x10, #0
    cmp w15, w10
    cset w19, eq
    mov x10, #0
    cmp w19, w10
    b.ne L14_23
L14_22:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_files_15invalid_options@PAGE
    add x15, x15, _lb_files_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_24@PAGE
    add x15, x15, l_text_24@PAGEOFF
    sub x20, x29, #144
    str x15, [x20]
    add x15, x20, #8
    movz x9, #25
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
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L14_25:
    b L14_24
L14_23:
L14_24:
    mov w15, w14
L14_21:
    mov w19, w15
L14_13:
    mov w15, w19
L14_10:
L14_7:
    sub x14, x29, #80
    str w15, [x14]
    add x19, x14, #32
    mov x9, #0
    strb w9, [x19]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L14_26:
    adrp x0, l_text_25@PAGE
    add x0, x0, l_text_25@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_files_handles_0init

    .section __TEXT,__const
l_text_0:
    .asciz "the file could not be opened"
l_text_1:
    .asciz "unreachable"
l_text_2:
    .asciz "src/std/files/handles.lucb:33:9"
l_text_3:
    .asciz "src/std/files/handles.lucb:38:9"
l_text_4:
    .asciz "the file is closed"
l_text_5:
    .asciz "src/std/files/handles.lucb:43:9"
l_text_6:
    .asciz "a file length cannot be negative"
l_text_7:
    .asciz "the file length could not be changed"
l_text_8:
    .asciz "file permissions must fit the Unix mode bits"
l_text_9:
    .asciz "file permissions could not be changed"
l_text_10:
    .asciz "a timestamp nanosecond fraction must be below one billion"
l_text_11:
    .asciz "src/std/files/handles.lucb:87:9"
l_text_12:
    .asciz "src/std/files/handles.lucb:89:13"
l_text_13:
    .asciz "file timestamps could not be changed"
l_text_14:
    .asciz "the file could not be read"
l_text_15:
    .asciz "src/std/files/handles.lucb:105:9"
l_text_16:
    .asciz "the file could not be written"
l_text_17:
    .asciz "src/std/files/handles.lucb:119:9"
l_text_18:
    .asciz "the file could not be positioned"
l_text_19:
    .asciz "src/std/files/handles.lucb:130:9"
l_text_20:
    .asciz "the file could not be synchronized"
l_text_21:
    .asciz "the file could not be closed"
l_text_22:
    .asciz "src/std/files/handles.lucb:183:5"
l_text_23:
    .asciz "src/std/files/handles.lucb:189:5"
l_text_24:
    .asciz "unknown file opening mode"
l_text_25:
    .asciz "src/std/files/handles.lucb:207:5"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
