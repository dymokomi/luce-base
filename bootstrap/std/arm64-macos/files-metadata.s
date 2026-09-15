    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_files_metadata_0init
_lb_files_metadata_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_9file_kind
_lb_files_9file_kind:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str w0, [x16]
    sub x14, x29, #32
    ldr w14, [x14]
    movz x10, #61440
    and w14, w14, w10
    movz x10, #32768
    cmp w14, w10
    b.ne L1_2
L1_1:
    movz x9, #1
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_4:
    b L1_3
L1_2:
L1_3:
    movz x10, #16384
    cmp w14, w10
    b.ne L1_6
L1_5:
    movz x9, #2
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_8:
    b L1_7
L1_6:
L1_7:
    movz x10, #40960
    cmp w14, w10
    b.ne L1_10
L1_9:
    movz x9, #3
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_12:
    b L1_11
L1_10:
L1_11:
    movz x10, #4096
    cmp w14, w10
    b.ne L1_14
L1_13:
    movz x9, #4
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_16:
    b L1_15
L1_14:
L1_15:
    movz x10, #49152
    cmp w14, w10
    b.ne L1_18
L1_17:
    movz x9, #5
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_20:
    b L1_19
L1_18:
L1_19:
    movz x10, #24576
    cmp w14, w10
    b.ne L1_22
L1_21:
    movz x9, #6
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_24:
    b L1_23
L1_22:
L1_23:
    movz x10, #8192
    cmp w14, w10
    b.ne L1_26
L1_25:
    movz x9, #7
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_28:
    b L1_27
L1_26:
L1_27:
    mov x9, #0
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_29:
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_12mac_metadata
_lb_files_12mac_metadata:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #624
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #592]
    str x20, [sp, #584]
    str x21, [sp, #576]
    str x22, [sp, #568]
    str x23, [sp, #560]
    str x24, [sp, #552]
    str x25, [sp, #544]
    sub x16, x29, #352
    str x0, [x16]
    sub x0, x29, #352
    ldr x1, [x0]
    movz x2, #144
    bl _memcpy
    sub x25, x29, #480
    mov x11, x25
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    stp xzr, xzr, [x11, #112]
    sub x19, x29, #352
    add x20, x19, #4
    ldrh w14, [x20]
    mov w14, w14
    mov x0, x14
    bl _lb_files_9file_kind
    mov w14, w0
    strb w14, [x25]
    ldrh w14, [x20]
    mov w14, w14
    movz x10, #4095
    and w14, w14, w10
    add x15, x25, #4
    str w14, [x15]
    add x14, x19, #96
    ldr x14, [x14]
    add x15, x25, #8
    str x14, [x15]
    ldrsw x14, [x19]
    sxtw x14, w14
    mov w14, w14
    add x15, x25, #16
    str x14, [x15]
    add x14, x19, #8
    ldr x14, [x14]
    add x15, x25, #24
    str x14, [x15]
    add x14, x19, #6
    ldrh w14, [x14]
    mov w14, w14
    add x15, x25, #32
    str x14, [x15]
    add x14, x19, #16
    ldr w14, [x14]
    add x15, x25, #40
    str w14, [x15]
    add x14, x19, #20
    ldr w14, [x14]
    add x15, x25, #44
    str w14, [x15]
    add x14, x19, #104
    ldr x14, [x14]
    add x15, x25, #48
    str x14, [x15]
    add x14, x19, #32
    mov x10, x14
    sub x11, x29, #600
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x20, x29, #616
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    sub x21, x29, #600
    ldr x14, [x21]
    str x14, [x20]
    add x22, x21, #8
    ldr x14, [x22]
    add x23, x20, #8
    str w14, [x23]
    sub x24, x29, #584
    mov x10, x20
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x24
    sub x11, x29, #496
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L2_3
L2_2:
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L2_3:
    sub x14, x29, #496
    add x15, x25, #56
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #48
    mov x10, x14
    sub x11, x29, #600
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    ldr x14, [x21]
    str x14, [x20]
    ldr x14, [x22]
    str w14, [x23]
    mov x10, x20
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x24
    sub x11, x29, #512
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L2_5
L2_4:
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L2_5:
    sub x14, x29, #512
    add x15, x25, #72
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #64
    mov x10, x14
    sub x11, x29, #600
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    ldr x14, [x21]
    str x14, [x20]
    ldr x14, [x22]
    str w14, [x23]
    mov x10, x20
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x24
    sub x11, x29, #528
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L2_7
L2_6:
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L2_7:
    sub x14, x29, #528
    add x15, x25, #88
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #80
    mov x10, x14
    sub x11, x29, #600
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    ldr x14, [x21]
    str x14, [x20]
    ldr x14, [x22]
    str w14, [x23]
    mov x10, x20
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x24
    sub x11, x29, #544
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L2_9
L2_8:
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L2_9:
    sub x14, x29, #544
    sub x19, x29, #568
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #16
    movz x9, #1
    strb w9, [x14]
    add x14, x25, #104
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    sub x19, x29, #208
    mov x10, x25
    mov x11, x19
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
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #128
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #592]
    ldr x20, [sp, #584]
    ldr x21, [sp, #576]
    ldr x22, [sp, #568]
    ldr x23, [sp, #560]
    ldr x24, [sp, #552]
    ldr x25, [sp, #544]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_1:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_metadata
    .no_dead_strip _lb_files_metadata
_lb_files_metadata:
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
    sub x16, x29, #240
    str x0, [x16]
    sub x16, x29, #256
    str w1, [x16]
    sub x19, x29, #400
    mov x0, x19
    mov x1, #0
    movz x2, #144
    bl _memset
    sub x20, x29, #256
    sub x22, x29, #240
    sub x21, x29, #240
    adrp x23, _lb_c_interrupted@PAGE
    add x23, x23, _lb_c_interrupted@PAGEOFF
L3_1:
L3_2:
    ldrb w14, [x20]
    cbnz w14, L3_4
    b L3_5
L3_4:
    ldr x14, [x21]
    mov x0, x14
    mov x1, x19
    bl _stat
    mov w14, w0
    b L3_6
L3_5:
    ldr x14, [x22]
    mov x0, x14
    mov x1, x19
    bl _lstat
    mov w14, w0
L3_6:
    mov x10, #0
    cmp w14, w10
    b.ne L3_8
L3_7:
    mov x9, x19
    mov x0, x9
    sub x8, x29, #528
    bl _lb_files_12mac_metadata
    sub x14, x29, #528
    sub x20, x29, #224
    mov x10, x14
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
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr x22, [sp, #488]
    ldr x23, [sp, #480]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_8:
L3_9:
    bl _lb_c_errno
    mov w14, w0
    ldrsw x15, [x23]
    cmp w14, w15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L3_12
L3_11:
    sub x19, x29, #224
    add x20, x19, #128
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x20]
    adrp x14, l_text_6@PAGE
    add x14, x14, l_text_6@PAGEOFF
    sub x15, x29, #544
    str x14, [x15]
    add x14, x15, #8
    movz x9, #31
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
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
    ldr x19, [sp, #512]
    ldr x20, [sp, #504]
    ldr x21, [sp, #496]
    ldr x22, [sp, #488]
    ldr x23, [sp, #480]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_12:
L3_13:
    b L3_1

    .p2align 2
    .globl _lb_files_19metadata_descriptor
    .no_dead_strip _lb_files_19metadata_descriptor
_lb_files_19metadata_descriptor:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #512
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #480]
    str x20, [sp, #472]
    str x21, [sp, #464]
    sub x16, x29, #224
    str w0, [x16]
    sub x19, x29, #368
    mov x0, x19
    mov x1, #0
    movz x2, #144
    bl _memset
    sub x20, x29, #224
    adrp x21, _lb_c_interrupted@PAGE
    add x21, x21, _lb_c_interrupted@PAGEOFF
L4_1:
L4_2:
    ldrsw x14, [x20]
    mov x0, x14
    mov x1, x19
    bl _fstat
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L4_5
L4_4:
    mov x9, x19
    mov x0, x9
    sub x8, x29, #496
    bl _lb_files_12mac_metadata
    sub x14, x29, #496
    sub x20, x29, #208
    mov x10, x14
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
    ldr x19, [sp, #480]
    ldr x20, [sp, #472]
    ldr x21, [sp, #464]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_5:
L4_6:
    bl _lb_c_errno
    mov w14, w0
    ldrsw x15, [x21]
    cmp w14, w15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L4_9
L4_8:
    sub x19, x29, #208
    add x20, x19, #128
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x20]
    adrp x14, l_text_8@PAGE
    add x14, x14, l_text_8@PAGEOFF
    sub x15, x29, #512
    str x14, [x15]
    add x14, x15, #8
    movz x9, #36
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
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
    ldr x19, [sp, #480]
    ldr x20, [sp, #472]
    ldr x21, [sp, #464]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_9:
L4_10:
    b L4_1

    .p2align 2
    .globl _lb_files_11metadata_at
    .no_dead_strip _lb_files_11metadata_at
_lb_files_11metadata_at:
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
    sub x16, x29, #240
    str w0, [x16]
    sub x16, x29, #256
    str x1, [x16]
    sub x16, x29, #272
    str w2, [x16]
    sub x14, x29, #272
    ldrb w14, [x14]
    cbnz w14, L5_1
    b L5_2
L5_1:
    mov x9, #0
    mov w19, w9
    b L5_3
L5_2:
    adrp x14, _lb_files_17at_no_follow_flag@PAGE
    add x14, x14, _lb_files_17at_no_follow_flag@PAGEOFF
    ldrsw x19, [x14]
L5_3:
    sub x20, x29, #416
    mov x0, x20
    mov x1, #0
    movz x2, #144
    bl _memset
    sub x21, x29, #240
    sub x22, x29, #256
    adrp x23, _lb_c_interrupted@PAGE
    add x23, x23, _lb_c_interrupted@PAGEOFF
L5_4:
L5_5:
    ldrsw x14, [x21]
    ldr x15, [x22]
    mov x0, x14
    mov x1, x15
    mov x2, x20
    mov x3, x19
    bl _fstatat
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L5_8
L5_7:
    mov x9, x20
    mov x0, x9
    sub x8, x29, #544
    bl _lb_files_12mac_metadata
    sub x14, x29, #544
    sub x19, x29, #224
    mov x10, x14
    mov x11, x19
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
    add x14, x19, #152
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #160
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #528]
    ldr x20, [sp, #520]
    ldr x21, [sp, #512]
    ldr x22, [sp, #504]
    ldr x23, [sp, #496]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_8:
L5_9:
    bl _lb_c_errno
    mov w14, w0
    ldrsw x15, [x23]
    cmp w14, w15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L5_12
L5_11:
    sub x19, x29, #224
    add x20, x19, #128
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x20]
    adrp x14, l_text_10@PAGE
    add x14, x14, l_text_10@PAGEOFF
    sub x15, x29, #560
    str x14, [x15]
    add x14, x15, #8
    movz x9, #42
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
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
    ldr x19, [sp, #528]
    ldr x20, [sp, #520]
    ldr x21, [sp, #512]
    ldr x22, [sp, #504]
    ldr x23, [sp, #496]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_12:
L5_13:
    b L5_4

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_files_metadata_0init

    .section __TEXT,__const
l_text_0:
    .asciz "unreachable"
l_text_1:
    .asciz "src/std/files/metadata.lucb:133:5"
l_text_2:
    .asciz "src/std/files/metadata.lucb:136:5"
l_text_3:
    .asciz "src/std/files/metadata.lucb:139:5"
l_text_4:
    .asciz "src/std/files/metadata.lucb:147:5"
l_text_5:
    .asciz "src/std/files/metadata.lucb:154:5"
l_text_6:
    .asciz "file metadata could not be read"
l_text_7:
    .asciz "src/std/files/metadata.lucb:175:17"
l_text_8:
    .asciz "open-file metadata could not be read"
l_text_9:
    .asciz "src/std/files/metadata.lucb:202:17"
l_text_10:
    .asciz "directory-entry metadata could not be read"
l_text_11:
    .asciz "src/std/files/metadata.lucb:231:17"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
