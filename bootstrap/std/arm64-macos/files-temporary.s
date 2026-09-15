    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_files_temporary_0init
_lb_files_temporary_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_TemporaryFile_create
    .no_dead_strip _lb_files_TemporaryFile_create
_lb_files_TemporaryFile_create:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #656
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #624]
    str x20, [sp, #616]
    str x21, [sp, #608]
    str x22, [sp, #600]
    str x23, [sp, #592]
    str x24, [sp, #584]
    str x25, [sp, #576]
    str x26, [sp, #568]
    str x27, [sp, #560]
    str x28, [sp, #552]
    sub x16, x29, #192
    str x0, [x16]
    sub x16, x29, #208
    str w1, [x16]
    sub x20, x29, #224
    sub x14, x29, #192
    ldr x19, [x14]
    mov x0, x19
    bl _strlen
    mov x14, x0
    sub x15, x29, #240
    str x19, [x15]
    add x12, x15, #8
    str x14, [x12]
    adrp x14, l_text_0@PAGE
    add x14, x14, l_text_0@PAGEOFF
    sub x12, x29, #256
    str x14, [x12]
    add x14, x12, #8
    movz x9, #38
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x12
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #304
    bl _lb_paths_join
    sub x15, x29, #304
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L1_2
    b L1_1
L1_2:
    add x14, x15, #16
    sub x19, x29, #176
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
    ldr x19, [sp, #624]
    ldr x20, [sp, #616]
    ldr x21, [sp, #608]
    ldr x22, [sp, #600]
    ldr x23, [sp, #592]
    ldr x24, [sp, #584]
    ldr x25, [sp, #576]
    ldr x26, [sp, #568]
    ldr x27, [sp, #560]
    ldr x28, [sp, #552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_1:
    mov x10, x15
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x14, x29, #320
    adrp x9, l_text_1@PAGE
    add x9, x9, l_text_1@PAGEOFF
    str x9, [sp, #72]
    sub x12, x29, #336
    ldr x9, [sp, #72]
    str x9, [x12]
    add x13, x12, #8
    movz x9, #16
    str x9, [x13]
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x21, [x20]
    add x14, x20, #8
    ldr x14, [x14]
    mov x9, x14
    movz x10, #32
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    str x9, [sp, #64]
    sub x9, x29, #352
    str x9, [sp, #56]
    sub x9, x29, #392
    str x9, [sp, #48]
    ldr x9, [sp, #48]
    add x25, x9, #8
    sub x27, x29, #424
    add x26, x27, #24
    sub x9, x29, #448
    str x9, [sp, #0]
    sub x9, x29, #208
    str x9, [sp, #40]
    sub x19, x29, #520
    add x9, x19, #32
    str x9, [sp, #32]
    add x9, x19, #8
    str x9, [sp, #24]
    sub x9, x29, #480
    str x9, [sp, #16]
    adrp x9, _lb_files_14already_exists@PAGE
    add x9, x9, _lb_files_14already_exists@PAGEOFF
    str x9, [sp, #8]
    mov x9, #0
    mov x28, x9
L1_4:
    movz x10, #128
    cmp x28, x10
    b.hs L1_6
L1_5:
    ldr x11, [sp, #56]
    stp xzr, xzr, [x11, #0]
    ldr x9, [sp, #56]
    ldr x10, [sp, #48]
    str x9, [x10]
    movz x9, #16
    str x9, [x25]
    ldr x9, [sp, #48]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #424
    bl _lb_os_12random_bytes
    ldrb w14, [x26]
    cbnz w14, L1_10
    b L1_9
L1_10:
    sub x14, x29, #376
    mov x10, x27
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b L1_7
L1_9:
    b L1_8
L1_7:
    sub x19, x29, #176
    add x14, x19, #40
    adrp x15, _lb_files_failed@PAGE
    add x15, x15, _lb_files_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_3@PAGE
    add x15, x15, l_text_3@PAGEOFF
    sub x12, x29, #440
    str x15, [x12]
    add x15, x12, #8
    movz x9, #44
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #624]
    ldr x20, [sp, #616]
    ldr x21, [sp, #608]
    ldr x22, [sp, #600]
    ldr x23, [sp, #592]
    ldr x24, [sp, #584]
    ldr x25, [sp, #576]
    ldr x26, [sp, #568]
    ldr x27, [sp, #560]
    ldr x28, [sp, #552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_8:
    mov x9, #0
    mov x14, x9
L1_12:
    movz x10, #16
    cmp x14, x10
    b.hs L1_15
L1_13:
    lsl x15, x14, #1
    ldr x9, [sp, #64]
    mov x10, x15
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    add x13, x21, x15
    ldr x9, [sp, #56]
    add x12, x9, x14
    ldrb w24, [x12]
L1_17:
    lsr w22, w24, #4
    and w22, w22, #255
    mov w22, w22
    movz x10, #16
    cmp x22, x10
    b.lo 1f
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_21@PAGE
    add x1, x1, l_text_21@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x9, [sp, #72]
    add x22, x9, x22
    ldrb w22, [x22]
    strb w22, [x13]
    mov x9, x15
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_20@PAGE
    add x1, x1, l_text_20@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x22, x9
    add x22, x21, x22
    ldrb w23, [x12]
    movz x10, #15
    and w23, w23, w10
    mov w23, w23
    ldr x9, [sp, #72]
    add x23, x9, x23
    ldrb w23, [x23]
    strb w23, [x22]
L1_14:
    add x15, x14, #1
    mov x14, x15
    b L1_12
L1_15:
    ldr x14, [x20]
    ldr x9, [sp, #40]
    ldr w15, [x9]
    mov x0, x14
    movz x1, #5
    mov x2, x15
    sub x8, x29, #520
    bl _lb_files_File_open
    ldr x9, [sp, #32]
    ldrb w14, [x9]
    cbnz w14, L1_21
    b L1_20
L1_21:
    ldr x10, [sp, #24]
    ldr x11, [sp, #16]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b L1_18
L1_20:
    sub x21, x29, #456
    mov x10, x19
    mov x11, x21
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    b L1_19
L1_18:
    ldr x9, [sp, #16]
    ldr w14, [x9]
    ldr x9, [sp, #8]
    ldr w15, [x9]
    cmp w14, w15
    b.ne L1_23
L1_22:
    add x14, x28, #1
    mov x28, x14
    b L1_4
L1_23:
L1_24:
    sub x19, x29, #176
    add x15, x19, #40
    str w14, [x15]
    ldr x9, [sp, #16]
    add x12, x9, #8
    add x15, x15, #8
    mov x10, x12
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x15, x19, #64
    movz x9, #1
    strb w9, [x15]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #624]
    ldr x20, [sp, #616]
    ldr x21, [sp, #608]
    ldr x22, [sp, #600]
    ldr x23, [sp, #592]
    ldr x24, [sp, #584]
    ldr x25, [sp, #576]
    ldr x26, [sp, #568]
    ldr x27, [sp, #560]
    ldr x28, [sp, #552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_19:
    mov x10, x21
    ldr x11, [sp, #0]
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    sub x19, x29, #560
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    ldr x10, [sp, #0]
    mov x11, x19
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    add x14, x19, #8
    mov x10, x20
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    add x15, x19, #24
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x22, x29, #176
    mov x10, x19
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    add x14, x22, #64
    mov x9, #0
    strb w9, [x14]
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #624]
    ldr x20, [sp, #616]
    ldr x21, [sp, #608]
    ldr x22, [sp, #600]
    ldr x23, [sp, #592]
    ldr x24, [sp, #584]
    ldr x25, [sp, #576]
    ldr x26, [sp, #568]
    ldr x27, [sp, #560]
    ldr x28, [sp, #552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_6:
    sub x19, x29, #176
    add x14, x19, #40
    adrp x15, _lb_files_14already_exists@PAGE
    add x15, x15, _lb_files_14already_exists@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_8@PAGE
    add x15, x15, l_text_8@PAGEOFF
    sub x12, x29, #576
    str x15, [x12]
    add x15, x12, #8
    movz x9, #38
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #624]
    ldr x20, [sp, #616]
    ldr x21, [sp, #608]
    ldr x22, [sp, #600]
    ldr x23, [sp, #592]
    ldr x24, [sp, #584]
    ldr x25, [sp, #576]
    ldr x26, [sp, #568]
    ldr x27, [sp, #560]
    ldr x28, [sp, #552]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_TemporaryFile_path
    .no_dead_strip _lb_files_TemporaryFile_path
_lb_files_TemporaryFile_path:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #48
    str x0, [x16]
    sub x9, x29, #48
    ldr x14, [x9]
    add x14, x14, #8
    sub x19, x29, #40
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_1:
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_9@PAGE
    add x1, x1, l_text_9@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_TemporaryFile_read
    .no_dead_strip _lb_files_TemporaryFile_read
_lb_files_TemporaryFile_read:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #112]
    sub x16, x29, #80
    str x0, [x16]
    sub x16, x29, #96
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #80
    ldr x15, [x9]
    sub x14, x29, #96
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #136
    bl _lb_files_File_read
    sub x15, x29, #136
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L3_2
    b L3_1
L3_2:
    add x14, x15, #8
    sub x19, x29, #72
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
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_3:
L3_1:
    ldr x14, [x15]
    sub x12, x29, #72
    str x14, [x12]
    add x14, x12, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x12
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_4:
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_9@PAGE
    add x1, x1, l_text_9@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_TemporaryFile_write
    .no_dead_strip _lb_files_TemporaryFile_write
_lb_files_TemporaryFile_write:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #112]
    sub x16, x29, #80
    str x0, [x16]
    sub x16, x29, #96
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #80
    ldr x15, [x9]
    sub x14, x29, #96
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #136
    bl _lb_files_File_write
    sub x15, x29, #136
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L4_2
    b L4_1
L4_2:
    add x14, x15, #8
    sub x19, x29, #72
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
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_3:
L4_1:
    ldr x14, [x15]
    sub x12, x29, #72
    str x14, [x12]
    add x14, x12, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x12
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_4:
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_9@PAGE
    add x1, x1, l_text_9@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_TemporaryFile_seek
    .no_dead_strip _lb_files_TemporaryFile_seek
_lb_files_TemporaryFile_seek:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    sub x16, x29, #80
    str x0, [x16]
    sub x16, x29, #96
    str x1, [x16]
    sub x16, x29, #112
    str w2, [x16]
    sub x9, x29, #80
    ldr x12, [x9]
    sub x14, x29, #96
    ldr x14, [x14]
    sub x15, x29, #112
    ldrb w15, [x15]
    mov x0, x12
    mov x1, x14
    mov x2, x15
    sub x8, x29, #152
    bl _lb_files_File_seek
    sub x15, x29, #152
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L5_2
    b L5_1
L5_2:
    add x14, x15, #8
    sub x19, x29, #72
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
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_3:
L5_1:
    ldr x14, [x15]
    sub x12, x29, #72
    str x14, [x12]
    add x14, x12, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x12
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_4:
    adrp x0, l_text_14@PAGE
    add x0, x0, l_text_14@PAGEOFF
    adrp x1, l_text_9@PAGE
    add x1, x1, l_text_9@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_TemporaryFile_sync
    .no_dead_strip _lb_files_TemporaryFile_sync
_lb_files_TemporaryFile_sync:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    sub x16, x29, #72
    str x0, [x16]
    sub x9, x29, #72
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #104
    bl _lb_files_File_sync
    sub x15, x29, #104
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L6_2
    b L6_1
L6_2:
    sub x19, x29, #64
    mov x10, x15
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
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_3:
L6_1:
    sub x14, x29, #64
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_TemporaryFile_publish
    .no_dead_strip _lb_files_TemporaryFile_publish
_lb_files_TemporaryFile_publish:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #160]
    str x20, [sp, #152]
    sub x16, x29, #80
    str x0, [x16]
    sub x16, x29, #96
    str x1, [x16]
    sub x16, x29, #112
    str w2, [x16]
    sub x9, x29, #80
    ldr x20, [x9]
    add x19, x20, #8
    add x14, x19, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ne L7_2
L7_1:
    sub x19, x29, #72
    adrp x14, _lb_io_closed@PAGE
    add x14, x14, _lb_io_closed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_15@PAGE
    add x14, x14, l_text_15@PAGEOFF
    sub x15, x29, #128
    str x14, [x15]
    add x14, x15, #8
    movz x9, #40
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_4:
    b L7_3
L7_2:
L7_3:
    mov x0, x20
    sub x8, x29, #160
    bl _lb_files_File_close
    sub x15, x29, #160
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L7_6
    b L7_5
L7_6:
    sub x19, x29, #72
    mov x10, x15
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_7:
L7_5:
    ldr x14, [x19]
    sub x15, x29, #96
    ldr x15, [x15]
    sub x12, x29, #112
    ldrb w12, [x12]
    mov x0, x14
    mov x1, x15
    mov x2, x12
    sub x8, x29, #192
    bl _lb_files_rename
    sub x15, x29, #192
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L7_9
    b L7_8
L7_9:
    sub x19, x29, #72
    mov x10, x15
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_10:
L7_8:
    mov x0, x20
    bl _lb_files_TemporaryFile_12release_name
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_TemporaryFile_12release_name
_lb_files_TemporaryFile_12release_name:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    str x19, [sp, #152]
    str x20, [sp, #144]
    str x21, [sp, #136]
    str x22, [sp, #128]
    str x23, [sp, #120]
    str x24, [sp, #112]
    sub x16, x29, #72
    str x0, [x16]
    sub x9, x29, #72
    ldr x15, [x9]
    add x19, x15, #8
    add x14, x19, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls L8_2
L8_1:
    sub x20, x29, #88
    add x21, x15, #24
    ldr x14, [x21]
    cbnz x14, L8_4
    b L8_5
L8_4:
    sub x22, x29, #104
    mov x10, x21
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b L8_6
L8_5:
    adrp x14, l_text_16@PAGE
    add x14, x14, l_text_16@PAGEOFF
    sub x15, x29, #120
    str x14, [x15]
    add x14, x15, #8
    movz x9, #39
    str x9, [x14]
    adrp x14, l_text_17@PAGE
    add x14, x14, l_text_17@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_9@PAGE
    add x1, x1, l_text_9@PAGEOFF
    bl _lb_core_7trap_at
L8_6:
    mov x10, x22
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x23, x29, #136
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x24, x0
    mov x10, x24
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x10, x20
    mov x11, x24
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x10, x23
    mov x11, x24
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x14, l_text_18@PAGE
    add x14, x14, l_text_18@PAGEOFF
    sub x15, x29, #152
    str x14, [x15]
    add x14, x15, #8
    mov x9, #0
    str x9, [x14]
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x23, x29, #168
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    mov x10, x23
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b L8_3
L8_2:
L8_3:
    ldr x19, [sp, #152]
    ldr x20, [sp, #144]
    ldr x21, [sp, #136]
    ldr x22, [sp, #128]
    ldr x23, [sp, #120]
    ldr x24, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_TemporaryFile_11remove_name
_lb_files_TemporaryFile_11remove_name:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #112]
    str x20, [sp, #104]
    sub x16, x29, #80
    str x0, [x16]
    sub x9, x29, #80
    ldr x19, [x9]
    add x14, x19, #8
    add x15, x14, #8
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    b.ne L9_2
L9_1:
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
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_4:
    b L9_3
L9_2:
L9_3:
    ldr x15, [x14]
    mov x0, x15
    sub x8, x29, #136
    bl _lb_files_11remove_file
    sub x12, x29, #136
    add x15, x12, #24
    ldrb w15, [x15]
    cbnz w15, L9_8
    b L9_7
L9_8:
    sub x20, x29, #104
    mov x10, x12
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b L9_5
L9_7:
    b L9_6
L9_5:
    ldr w14, [x20]
    adrp x15, _lb_files_missing@PAGE
    add x15, x15, _lb_files_missing@PAGEOFF
    ldr w15, [x15]
    cmp w14, w15
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L9_10
L9_9:
    sub x19, x29, #72
    str w14, [x19]
    add x15, x20, #8
    add x12, x19, #8
    mov x10, x15
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x15, x19, #24
    movz x9, #1
    strb w9, [x15]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_12:
    b L9_11
L9_10:
L9_11:
L9_6:
    mov x0, x19
    bl _lb_files_TemporaryFile_12release_name
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
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_TemporaryFile_discard
    .no_dead_strip _lb_files_TemporaryFile_discard
_lb_files_TemporaryFile_discard:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #192]
    str x20, [sp, #184]
    sub x16, x29, #80
    str x0, [x16]
    sub x9, x29, #80
    ldr x19, [x9]
    mov x0, x19
    sub x8, x29, #136
    bl _lb_files_File_close
    sub x15, x29, #136
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L10_4
    b L10_3
L10_4:
    sub x20, x29, #104
    mov x10, x15
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b L10_1
L10_3:
    b L10_2
L10_1:
    mov x0, x19
    sub x8, x29, #192
    bl _lb_files_TemporaryFile_11remove_name
    sub x15, x29, #192
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L10_8
    b L10_7
L10_8:
    sub x14, x29, #160
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b L10_5
L10_7:
    b L10_6
L10_5:
L10_6:
    sub x19, x29, #72
    ldr w14, [x20]
    str w14, [x19]
    add x14, x20, #8
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_9:
L10_2:
    mov x0, x19
    sub x8, x29, #224
    bl _lb_files_TemporaryFile_11remove_name
    sub x15, x29, #224
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L10_11
    b L10_10
L10_11:
    sub x19, x29, #72
    mov x10, x15
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_12:
L10_10:
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_TemporaryFile_destroy
    .no_dead_strip _lb_files_TemporaryFile_destroy
_lb_files_TemporaryFile_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    sub x16, x29, #32
    str x0, [x16]
    sub x9, x29, #32
    ldr x19, [x9]
    mov x0, x19
    sub x8, x29, #88
    bl _lb_files_TemporaryFile_discard
    sub x15, x29, #88
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L11_4
    b L11_3
L11_4:
    sub x14, x29, #56
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b L11_1
L11_3:
    b L11_2
L11_1:
L11_2:
    mov x0, x19
    bl _lb_files_TemporaryFile_12release_name
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_12write_atomic
    .no_dead_strip _lb_files_12write_atomic
_lb_files_12write_atomic:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #384
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #352]
    str x20, [sp, #344]
    str x21, [sp, #336]
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #112
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #128
    str w3, [x16]
    sub x16, x29, #144
    str w4, [x16]
    sub x16, x29, #160
    str x5, [x16]
    sub x14, x29, #160
    ldr x19, [x14]
    cbnz x19, L12_4
    b L12_2
L12_4:
L12_1:
    mov x9, #0
    strb w9, [x19]
    b L12_3
L12_2:
L12_3:
    sub x21, x29, #216
    sub x14, x29, #96
    ldr x20, [x14]
    sub x14, x29, #128
    ldr w14, [x14]
    sub x15, x29, #144
    ldrb w15, [x15]
    mov x0, x20
    mov x1, x14
    mov x2, x15
    sub x8, x29, #304
    bl _lb_files_Replacement_prepare
    sub x15, x29, #304
    add x14, x15, #80
    ldrb w14, [x14]
    cbnz w14, L12_6
    b L12_5
L12_6:
    add x14, x15, #56
    sub x19, x29, #80
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
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_7:
L12_5:
    mov x10, x15
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldr x16, [x10, #48]
    str x16, [x11, #48]
    add x14, x21, #8
    sub x12, x29, #320
    str x14, [x12]
    adrp x14, _lb_vt_files_TemporaryFile_Writer@PAGE
    add x14, x14, _lb_vt_files_TemporaryFile_Writer@PAGEOFF
    add x13, x12, #8
    str x14, [x13]
    sub x14, x29, #112
    mov x9, x12
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x14
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    sub x8, x29, #352
    bl _lb_io_9write_all
    sub x12, x29, #352
    add x14, x12, #24
    ldrb w14, [x14]
    cbnz w14, L12_9
    b L12_8
L12_9:
    sub x19, x29, #80
    mov x10, x12
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    bl _lb_files_Replacement_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_10:
L12_8:
    mov x0, x21
    mov x1, x20
    movz x2, #1
    mov x3, x19
    sub x8, x29, #384
    bl _lb_files_Replacement_finish
    sub x15, x29, #384
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L12_12
    b L12_11
L12_12:
    sub x19, x29, #80
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    bl _lb_files_Replacement_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_13:
L12_11:
    mov x0, x21
    bl _lb_files_Replacement_destroy
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
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_Replacement_prepare
    .no_dead_strip _lb_files_Replacement_prepare
_lb_files_Replacement_prepare:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #528
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #496]
    str x20, [sp, #488]
    str x21, [sp, #480]
    str x22, [sp, #472]
    str x23, [sp, #464]
    str x24, [sp, #456]
    sub x16, x29, #176
    str x0, [x16]
    sub x16, x29, #192
    str w1, [x16]
    sub x16, x29, #208
    str w2, [x16]
    sub x20, x29, #224
    sub x14, x29, #176
    ldr x19, [x14]
    mov x0, x19
    bl _strlen
    mov x14, x0
    sub x15, x29, #240
    str x19, [x15]
    add x12, x15, #8
    str x14, [x12]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_paths_directory
    sub x16, x29, #256
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #256
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #304
    bl _lb_strings_copy
    sub x15, x29, #304
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L13_2
    b L13_1
L13_2:
    add x14, x15, #16
    sub x19, x29, #160
    add x12, x19, #56
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #80
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #88
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_3:
L13_1:
    mov x10, x15
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x19, x29, #312
    mov x11, x19
    str xzr, [x11, #0]
    sub x14, x29, #208
    ldrb w21, [x14]
    cbnz w21, L13_4
    b L13_5
L13_4:
    ldr x14, [x20]
    mov x0, x14
    mov x1, #0
    movz x2, #420
    sub x8, x29, #352
    bl _lb_files_File_open
    sub x15, x29, #352
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L13_8
    b L13_7
L13_8:
    add x14, x15, #8
    sub x21, x29, #160
    add x12, x21, #56
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x21, #80
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_files_File_destroy
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #88
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_9:
L13_7:
    mov x10, x15
    mov x11, x19
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    b L13_6
L13_5:
L13_6:
    sub x22, x29, #392
    ldr x14, [x20]
    sub x15, x29, #192
    ldr w15, [x15]
    mov x0, x14
    mov x1, x15
    sub x8, x29, #464
    bl _lb_files_TemporaryFile_create
    sub x15, x29, #464
    add x14, x15, #64
    ldrb w14, [x14]
    cbnz w14, L13_11
    b L13_10
L13_11:
    add x14, x15, #40
    sub x21, x29, #160
    add x12, x21, #56
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x21, #80
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_files_File_destroy
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #88
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_12:
L13_10:
    mov x10, x15
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    sub x23, x29, #520
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    mov x10, x19
    mov x11, x23
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    add x14, x23, #8
    mov x10, x22
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    add x14, x23, #48
    strb w21, [x14]
    sub x24, x29, #160
    mov x10, x23
    mov x11, x24
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldp x16, x17, [x10, #32]
    stp x16, x17, [x11, #32]
    ldr x16, [x10, #48]
    str x16, [x11, #48]
    add x14, x24, #80
    mov x9, #0
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x24
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #88
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_13:
    sub x14, x29, #224
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    adrp x0, l_text_19@PAGE
    add x0, x0, l_text_19@PAGEOFF
    adrp x1, l_text_9@PAGE
    add x1, x1, l_text_9@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_Replacement_finish
    .no_dead_strip _lb_files_Replacement_finish
_lb_files_Replacement_finish:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #336
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #304]
    str x20, [sp, #296]
    str x21, [sp, #288]
    sub x16, x29, #88
    str x0, [x16]
    sub x16, x29, #104
    str x1, [x16]
    sub x16, x29, #120
    str w2, [x16]
    sub x16, x29, #136
    str x3, [x16]
    sub x9, x29, #88
    ldr x20, [x9]
    add x19, x20, #48
    ldrb w14, [x19]
    cbnz w14, L14_1
    b L14_2
L14_1:
    add x14, x20, #8
    mov x0, x14
    sub x8, x29, #328
    bl _lb_files_File_sync
    sub x15, x29, #328
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L14_24
    b L14_23
L14_24:
    sub x21, x29, #296
    mov x10, x15
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x21, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x21
    sub x11, x29, #168
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    b L14_26
L14_25:
L14_23:
    sub x14, x29, #296
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #168
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
L14_26:
    sub x15, x29, #168
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L14_5
    b L14_4
L14_5:
    sub x19, x29, #80
    mov x10, x15
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L14_6:
L14_4:
    b L14_3
L14_2:
L14_3:
    add x14, x20, #8
    sub x15, x29, #104
    ldr x15, [x15]
    sub x12, x29, #120
    ldrb w12, [x12]
    mov x0, x14
    mov x1, x15
    mov x2, x12
    sub x8, x29, #200
    bl _lb_files_TemporaryFile_publish
    sub x15, x29, #200
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L14_8
    b L14_7
L14_8:
    sub x19, x29, #80
    mov x10, x15
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L14_9:
L14_7:
    sub x14, x29, #136
    ldr x14, [x14]
    cbnz x14, L14_13
    b L14_11
L14_13:
L14_10:
    movz x9, #1
    strb w9, [x14]
    b L14_12
L14_11:
L14_12:
    ldrb w14, [x19]
    cbnz w14, L14_14
    b L14_15
L14_14:
    mov x0, x20
    sub x8, x29, #232
    bl _lb_files_File_sync
    sub x15, x29, #232
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L14_18
    b L14_17
L14_18:
    sub x19, x29, #80
    mov x10, x15
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L14_19:
L14_17:
    mov x0, x20
    sub x8, x29, #264
    bl _lb_files_File_close
    sub x15, x29, #264
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L14_21
    b L14_20
L14_21:
    sub x19, x29, #80
    mov x10, x15
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L14_22:
L14_20:
    b L14_16
L14_15:
L14_16:
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_Replacement_destroy
    .no_dead_strip _lb_files_Replacement_destroy
_lb_files_Replacement_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    sub x16, x29, #40
    str x0, [x16]
    sub x9, x29, #40
    ldr x20, [x9]
    add x19, x20, #8
    mov x0, x19
    sub x8, x29, #96
    bl _lb_files_TemporaryFile_discard
    sub x15, x29, #96
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L15_4
    b L15_3
L15_4:
    sub x14, x29, #64
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b L15_1
L15_3:
    b L15_2
L15_1:
L15_2:
    mov x0, x19
    bl _lb_files_TemporaryFile_12release_name
L15_5:
    mov x0, x20
    bl _lb_files_File_destroy
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_files_temporary_0init

    .section __TEXT,__const
l_text_0:
    .asciz ".luce-00000000000000000000000000000000"
l_text_1:
    .asciz "0123456789abcdef"
l_text_2:
    .asciz "src/std/files/temporary.lucb:18:9"
l_text_3:
    .asciz "temporary filename randomness is unavailable"
l_text_4:
    .asciz "src/std/files/temporary.lucb:25:17"
l_text_5:
    .asciz "shift count out of range"
l_text_6:
    .asciz "src/std/files/temporary.lucb:26:17"
l_text_7:
    .asciz "src/std/files/temporary.lucb:29:21"
l_text_8:
    .asciz "no unused temporary filename was found"
l_text_9:
    .asciz "unreachable"
l_text_10:
    .asciz "src/std/files/temporary.lucb:33:9"
l_text_11:
    .asciz "src/std/files/temporary.lucb:37:9"
l_text_12:
    .asciz "src/std/files/temporary.lucb:40:9"
l_text_13:
    .asciz "src/std/files/temporary.lucb:43:9"
l_text_14:
    .asciz "src/std/files/temporary.lucb:46:9"
l_text_15:
    .asciz "the temporary file has no owned pathname"
l_text_16:
    .asciz "a temporary pathname lost its allocator"
l_text_17:
    .asciz "src/std/files/temporary.lucb:66:13"
l_text_18:
    .asciz ""
l_text_19:
    .asciz "src/std/files/temporary.lucb:128:9"
l_text_20:
    .asciz "integer overflow"
l_text_21:
    .asciz "index out of bounds"

    .section __DATA,__const
    .p2align 3
    .globl _lb_vt_files_TemporaryFile_Writer
    .weak_definition _lb_vt_files_TemporaryFile_Writer
_lb_vt_files_TemporaryFile_Writer:
    .quad _lb_files_TemporaryFile_write

.subsections_via_symbols
