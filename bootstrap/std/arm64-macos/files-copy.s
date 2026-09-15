    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_files_copy_0init
_lb_files_copy_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_9copy_file
    .no_dead_strip _lb_files_9copy_file
_lb_files_9copy_file:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #6304
    sub sp, sp, x16
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #6272]
    str x20, [sp, #6264]
    str x21, [sp, #6256]
    str x22, [sp, #6248]
    str x23, [sp, #6240]
    str x24, [sp, #6232]
    str x25, [sp, #6224]
    str x26, [sp, #6216]
    sub x16, x29, #144
    str x0, [x16]
    sub x16, x29, #160
    str x1, [x16]
    sub x16, x29, #176
    str x2, [x16]
    sub x16, x29, #192
    str w3, [x16]
    sub x16, x29, #208
    str w4, [x16]
    sub x16, x29, #224
    str w5, [x16]
    sub x16, x29, #240
    str x6, [x16]
    sub x14, x29, #240
    ldr x19, [x14]
    cbnz x19, L1_4
    b L1_2
L1_4:
L1_1:
    mov x9, #0
    strb w9, [x19]
    b L1_3
L1_2:
L1_3:
    sub x20, x29, #248
    sub x14, x29, #144
    ldr x14, [x14]
    mov x0, x14
    mov x1, #0
    movz x2, #420
    sub x8, x29, #288
    bl _lb_files_File_open
    sub x15, x29, #288
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L1_6
    b L1_5
L1_6:
    add x14, x15, #8
    sub x19, x29, #128
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
    ldr x19, [sp, #6272]
    ldr x20, [sp, #6264]
    ldr x21, [sp, #6256]
    ldr x22, [sp, #6248]
    ldr x23, [sp, #6240]
    ldr x24, [sp, #6232]
    ldr x25, [sp, #6224]
    ldr x26, [sp, #6216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_5:
    mov x10, x15
    mov x11, x20
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    sub x21, x29, #416
    mov x0, x20
    sub x8, x29, #576
    bl _lb_files_File_metadata
    sub x22, x29, #576
    add x14, x22, #152
    ldrb w14, [x14]
    cbnz w14, L1_9
    b L1_8
L1_9:
    add x14, x22, #128
    sub x19, x29, #128
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
    mov x0, x20
    bl _lb_files_File_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #6272]
    ldr x20, [sp, #6264]
    ldr x21, [sp, #6256]
    ldr x22, [sp, #6248]
    ldr x23, [sp, #6240]
    ldr x24, [sp, #6232]
    ldr x25, [sp, #6224]
    ldr x26, [sp, #6216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_8:
    mov x10, x22
    mov x11, x21
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
    ldrb w14, [x21]
    movz x10, #2
    cmp w14, w10
    b.ne L1_12
L1_11:
    sub x19, x29, #128
    add x14, x19, #8
    adrp x15, _lb_files_12is_directory@PAGE
    add x15, x15, _lb_files_12is_directory@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_0@PAGE
    add x15, x15, l_text_0@PAGEOFF
    sub x21, x29, #592
    str x15, [x21]
    add x15, x21, #8
    movz x9, #42
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_files_File_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #6272]
    ldr x20, [sp, #6264]
    ldr x21, [sp, #6256]
    ldr x22, [sp, #6248]
    ldr x23, [sp, #6240]
    ldr x24, [sp, #6232]
    ldr x25, [sp, #6224]
    ldr x26, [sp, #6216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_12:
L1_13:
    sub x14, x29, #160
    ldr x22, [x14]
    movz x16, #5584
    sub x10, x29, x16
    str x22, [x10]
    movz x16, #5712
    sub x23, x29, x16
    mov x0, x22
    mov x1, #0
    movz x16, #6024
    sub x8, x29, x16
    bl _lb_files_metadata
    movz x16, #6024
    sub x15, x29, x16
    add x14, x15, #152
    ldrb w14, [x14]
    cbnz w14, L1_64
    b L1_63
L1_64:
    add x14, x15, #128
    movz x16, #5864
    sub x23, x29, x16
    mov x10, x14
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L1_61
L1_63:
    movz x16, #5840
    sub x24, x29, x16
    mov x10, x15
    mov x11, x24
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
    b L1_62
L1_61:
    ldr w14, [x23]
    adrp x15, _lb_files_missing@PAGE
    add x15, x15, _lb_files_missing@PAGEOFF
    ldr w15, [x15]
    cmp w14, w15
    b.ne L1_66
L1_65:
    movz x16, #6160
    sub x23, x29, x16
    mov x0, x23
    mov x1, #0
    movz x2, #136
    bl _memset
    movz x16, #5568
    sub x24, x29, x16
    mov x0, x24
    mov x1, x23
    movz x2, #136
    bl _memcpy
    add x14, x24, #160
    mov x9, #0
    strb w9, [x14]
    sub x0, x29, #760
    mov x1, x24
    movz x2, #168
    bl _memcpy
    b L1_71
L1_66:
L1_67:
    movz x16, #5568
    sub x24, x29, x16
    add x15, x24, #136
    str w14, [x15]
    add x25, x23, #8
    add x15, x15, #8
    mov x10, x25
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x15, x24, #160
    movz x9, #1
    strb w9, [x15]
    sub x0, x29, #760
    mov x1, x24
    movz x2, #168
    bl _memcpy
    b L1_71
L1_62:
    mov x10, x24
    mov x11, x23
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
    movz x16, #6296
    sub x25, x29, x16
    mov x10, x23
    mov x11, x25
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
    add x14, x25, #128
    movz x9, #1
    strb w9, [x14]
    movz x16, #5568
    sub x26, x29, x16
    mov x0, x26
    mov x1, x25
    movz x2, #136
    bl _memcpy
    add x14, x26, #160
    mov x9, #0
    strb w9, [x14]
    sub x0, x29, #760
    mov x1, x26
    movz x2, #168
    bl _memcpy
L1_71:
    sub x15, x29, #760
    add x14, x15, #160
    ldrb w14, [x14]
    cbnz w14, L1_19
    b L1_18
L1_19:
    add x14, x15, #136
    sub x19, x29, #128
    add x21, x19, #8
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_files_File_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #6272]
    ldr x20, [sp, #6264]
    ldr x21, [sp, #6256]
    ldr x22, [sp, #6248]
    ldr x23, [sp, #6240]
    ldr x24, [sp, #6232]
    ldr x25, [sp, #6224]
    ldr x26, [sp, #6216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_18:
    add x14, x15, #128
    ldrb w14, [x14]
    cbnz w14, L1_21
    b L1_16
L1_21:
    sub x23, x29, #888
    mov x10, x15
    mov x11, x23
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
L1_15:
    sub x14, x29, #192
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    b.ne L1_23
L1_22:
    sub x19, x29, #128
    add x14, x19, #8
    adrp x15, _lb_files_14already_exists@PAGE
    add x15, x15, _lb_files_14already_exists@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_1@PAGE
    add x15, x15, l_text_1@PAGEOFF
    sub x21, x29, #904
    str x15, [x21]
    add x15, x21, #8
    movz x9, #35
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_files_File_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #6272]
    ldr x20, [sp, #6264]
    ldr x21, [sp, #6256]
    ldr x22, [sp, #6248]
    ldr x23, [sp, #6240]
    ldr x24, [sp, #6232]
    ldr x25, [sp, #6224]
    ldr x26, [sp, #6216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_23:
L1_24:
    add x14, x21, #16
    ldr x14, [x14]
    add x15, x23, #16
    ldr x15, [x15]
    cmp x14, x15
    cset w14, eq
    cbnz w14, L1_29
    b L1_72
L1_72:
    mov w15, w14
    b L1_30
L1_29:
    add x14, x21, #24
    ldr x14, [x14]
    add x15, x23, #24
    ldr x15, [x15]
    cmp x14, x15
    cset w15, eq
L1_30:
    and w14, w15, #255
    cbnz w14, L1_26
    b L1_27
L1_26:
    sub x19, x29, #128
    add x14, x19, #8
    adrp x15, _lb_files_15invalid_options@PAGE
    add x15, x15, _lb_files_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_2@PAGE
    add x15, x15, l_text_2@PAGEOFF
    sub x21, x29, #920
    str x15, [x21]
    add x15, x21, #8
    movz x9, #45
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_files_File_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #6272]
    ldr x20, [sp, #6264]
    ldr x21, [sp, #6256]
    ldr x22, [sp, #6248]
    ldr x23, [sp, #6240]
    ldr x24, [sp, #6232]
    ldr x25, [sp, #6224]
    ldr x26, [sp, #6216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_27:
L1_28:
    ldrb w14, [x23]
    movz x10, #2
    cmp w14, w10
    b.ne L1_33
L1_32:
    sub x19, x29, #128
    add x14, x19, #8
    adrp x15, _lb_files_12is_directory@PAGE
    add x15, x15, _lb_files_12is_directory@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_3@PAGE
    add x15, x15, l_text_3@PAGEOFF
    sub x21, x29, #936
    str x15, [x21]
    add x15, x21, #8
    movz x9, #35
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_files_File_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #6272]
    ldr x20, [sp, #6264]
    ldr x21, [sp, #6256]
    ldr x22, [sp, #6248]
    ldr x23, [sp, #6240]
    ldr x24, [sp, #6232]
    ldr x25, [sp, #6224]
    ldr x26, [sp, #6216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_33:
L1_34:
    b L1_17
L1_16:
L1_17:
    sub x21, x29, #992
    sub x14, x29, #208
    ldr w14, [x14]
    sub x15, x29, #224
    ldrb w15, [x15]
    mov x0, x22
    mov x1, x14
    mov x2, x15
    sub x8, x29, #1080
    bl _lb_files_Replacement_prepare
    sub x15, x29, #1080
    add x14, x15, #80
    ldrb w14, [x14]
    cbnz w14, L1_37
    b L1_36
L1_37:
    add x14, x15, #56
    sub x19, x29, #128
    add x21, x19, #8
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_files_File_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #6272]
    ldr x20, [sp, #6264]
    ldr x21, [sp, #6256]
    ldr x22, [sp, #6248]
    ldr x23, [sp, #6240]
    ldr x24, [sp, #6232]
    ldr x25, [sp, #6224]
    ldr x26, [sp, #6216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_36:
    mov x10, x15
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    movz x16, #5176
    sub x23, x29, x16
    mov x0, x23
    mov x1, #0
    movz x2, #4096
    bl _memset
    movz x16, #5192
    sub x14, x29, x16
    str x20, [x14]
    adrp x24, _lb_vt_files_File_Reader@PAGE
    add x24, x24, _lb_vt_files_File_Reader@PAGEOFF
    add x25, x14, #8
    str x24, [x25]
    add x24, x21, #8
    movz x16, #5208
    sub x25, x29, x16
    str x24, [x25]
    adrp x24, _lb_vt_files_TemporaryFile_Writer@PAGE
    add x24, x24, _lb_vt_files_TemporaryFile_Writer@PAGEOFF
    add x26, x25, #8
    str x24, [x26]
    movz x16, #5224
    sub x24, x29, x16
    str x23, [x24]
    add x26, x24, #8
    movz x9, #4096
    str x9, [x26]
    sub x26, x29, #176
    ldr x26, [x26]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x25
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x9, x24
    ldr x4, [x9]
    ldr x5, [x9, #8]
    mov x6, x26
    mov x7, #0
    movz x16, #5264
    sub x8, x29, x16
    bl _lb_io_10copy_limit
    movz x16, #5264
    sub x24, x29, x16
    add x14, x24, #32
    ldrb w14, [x14]
    cbnz w14, L1_40
    b L1_39
L1_40:
    add x14, x24, #8
    sub x19, x29, #128
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
    mov x0, x21
    bl _lb_files_Replacement_destroy
    mov x0, x20
    bl _lb_files_File_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #6272]
    ldr x20, [sp, #6264]
    ldr x21, [sp, #6256]
    ldr x22, [sp, #6248]
    ldr x23, [sp, #6240]
    ldr x24, [sp, #6232]
    ldr x25, [sp, #6224]
    ldr x26, [sp, #6216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_39:
    ldr x25, [x24]
    cmp x26, x25
    b.ne L1_43
L1_42:
L1_48:
    movz x16, #5280
    sub x14, x29, x16
    str x23, [x14]
    add x15, x14, #8
    movz x9, #1
    str x9, [x15]
    mov x0, x20
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    movz x16, #5320
    sub x8, x29, x16
    bl _lb_files_File_read
    movz x16, #5320
    sub x15, x29, x16
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L1_51
    b L1_50
L1_51:
    add x14, x15, #8
    sub x19, x29, #128
    add x22, x19, #8
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    bl _lb_files_Replacement_destroy
    mov x0, x20
    bl _lb_files_File_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #6272]
    ldr x20, [sp, #6264]
    ldr x21, [sp, #6256]
    ldr x22, [sp, #6248]
    ldr x23, [sp, #6240]
    ldr x24, [sp, #6232]
    ldr x25, [sp, #6224]
    ldr x26, [sp, #6216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_50:
    ldr x14, [x15]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L1_46
L1_45:
    sub x19, x29, #128
    add x14, x19, #8
    adrp x15, _lb_files_9too_large@PAGE
    add x15, x15, _lb_files_9too_large@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_6@PAGE
    add x15, x15, l_text_6@PAGEOFF
    movz x16, #5336
    sub x22, x29, x16
    str x15, [x22]
    add x15, x22, #8
    movz x9, #43
    str x9, [x15]
    add x14, x14, #8
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    bl _lb_files_Replacement_destroy
    mov x0, x20
    bl _lb_files_File_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #6272]
    ldr x20, [sp, #6264]
    ldr x21, [sp, #6256]
    ldr x22, [sp, #6248]
    ldr x23, [sp, #6240]
    ldr x24, [sp, #6232]
    ldr x25, [sp, #6224]
    ldr x26, [sp, #6216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_46:
L1_47:
    b L1_44
L1_43:
L1_44:
    mov x0, x20
    movz x16, #5368
    sub x8, x29, x16
    bl _lb_files_File_close
    movz x16, #5368
    sub x15, x29, x16
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L1_55
    b L1_54
L1_55:
    sub x19, x29, #128
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    bl _lb_files_Replacement_destroy
    mov x0, x20
    bl _lb_files_File_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #6272]
    ldr x20, [sp, #6264]
    ldr x21, [sp, #6256]
    ldr x22, [sp, #6248]
    ldr x23, [sp, #6240]
    ldr x24, [sp, #6232]
    ldr x25, [sp, #6224]
    ldr x26, [sp, #6216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_54:
    sub x14, x29, #192
    ldrb w14, [x14]
    mov x0, x21
    mov x1, x22
    mov x2, x14
    mov x3, x19
    movz x16, #5400
    sub x8, x29, x16
    bl _lb_files_Replacement_finish
    movz x16, #5400
    sub x15, x29, x16
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L1_58
    b L1_57
L1_58:
    sub x19, x29, #128
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    bl _lb_files_Replacement_destroy
    mov x0, x20
    bl _lb_files_File_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #6272]
    ldr x20, [sp, #6264]
    ldr x21, [sp, #6256]
    ldr x22, [sp, #6248]
    ldr x23, [sp, #6240]
    ldr x24, [sp, #6232]
    ldr x25, [sp, #6224]
    ldr x26, [sp, #6216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_57:
    sub x19, x29, #128
    str x25, [x19]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x0, x21
    bl _lb_files_Replacement_destroy
    mov x0, x20
    bl _lb_files_File_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #6272]
    ldr x20, [sp, #6264]
    ldr x21, [sp, #6256]
    ldr x22, [sp, #6248]
    ldr x23, [sp, #6240]
    ldr x24, [sp, #6232]
    ldr x25, [sp, #6224]
    ldr x26, [sp, #6216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_files_copy_0init

    .section __TEXT,__const
l_text_0:
    .asciz "a directory cannot be copied as file bytes"
l_text_1:
    .asciz "the copy destination already exists"
l_text_2:
    .asciz "source and destination identify the same file"
l_text_3:
    .asciz "the copy destination is a directory"
l_text_4:
    .asciz "src/std/files/copy.lucb:30:9"
l_text_5:
    .asciz "index out of bounds"
l_text_6:
    .asciz "the copy source exceeds the requested limit"
l_text_7:
    .asciz "unreachable"
l_text_8:
    .asciz "src/std/files/copy.lucb:34:5"
l_text_9:
    .asciz "src/std/files/copy.lucb:41:5"

    .section __DATA,__const
    .p2align 3
    .globl _lb_vt_files_File_Reader
    .weak_definition _lb_vt_files_File_Reader
_lb_vt_files_File_Reader:
    .quad _lb_files_File_read
    .globl _lb_vt_files_TemporaryFile_Writer
    .weak_definition _lb_vt_files_TemporaryFile_Writer
_lb_vt_files_TemporaryFile_Writer:
    .quad _lb_files_TemporaryFile_write

.subsections_via_symbols
