    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_files_entries_0init
_lb_files_entries_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_exists
    .no_dead_strip _lb_files_exists
_lb_files_exists:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    sub x16, x29, #32
    str x0, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    mov x0, x14
    sub x8, x29, #96
    bl _lb_files_14exists_checked
    sub x15, x29, #96
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L1_4
    b L1_3
L1_4:
    add x14, x15, #8
    sub x12, x29, #56
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b L1_1
L1_3:
    ldrb w14, [x15]
    b L1_2
L1_1:
    mov x9, #0
    mov w14, w9
    b L1_2
L1_5:
L1_2:
    and w15, w14, #255
    and w15, w15, #255
    mov x9, x15
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_6:
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_14exists_checked
    .no_dead_strip _lb_files_14exists_checked
_lb_files_14exists_checked:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    str x20, [sp, #72]
    sub x16, x29, #96
    str x0, [x16]
    sub x14, x29, #96
    ldr x19, [x14]
    mov x0, x19
    mov x1, #0
    bl _access
    mov w14, w0
    mov w20, w14
L2_1:
    mov x10, #0
    cmp w20, w10
    cset w14, lt
    cbnz w14, L2_4
    b L2_17
L2_17:
    mov w15, w14
    b L2_5
L2_4:
    bl _lb_c_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    cset w15, eq
L2_5:
    and w14, w15, #255
    cbnz w14, L2_2
    b L2_3
L2_2:
    mov x0, x19
    mov x1, #0
    bl _access
    mov w20, w0
    b L2_1
L2_3:
    mov x10, #0
    cmp w20, w10
    b.ne L2_7
L2_6:
    sub x14, x29, #80
    movz x9, #1
    strb w9, [x14]
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
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_9:
    b L2_8
L2_7:
L2_8:
    bl _lb_c_errno
    mov w14, w0
    movz x10, #2
    cmp w14, w10
    cset w15, eq
    cbnz w15, L2_18
    b L2_13
L2_18:
    mov w12, w15
    b L2_14
L2_13:
    movz x10, #20
    cmp w14, w10
    cset w12, eq
L2_14:
    and w15, w12, #255
    cbnz w15, L2_10
    b L2_11
L2_10:
    sub x14, x29, #80
    mov x9, #0
    strb w9, [x14]
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
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_15:
    b L2_12
L2_11:
L2_12:
    sub x19, x29, #80
    add x20, x19, #8
    mov x0, x14
    bl _lb_files_14classify_error
    mov w15, w0
    str w15, [x20]
    adrp x15, l_text_2@PAGE
    add x15, x15, l_text_2@PAGEOFF
    sub x12, x29, #112
    str x15, [x12]
    add x15, x12, #8
    movz x9, #31
    str x9, [x15]
    add x15, x20, #8
    mov x10, x12
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x15, x19, #32
    movz x9, #1
    strb w9, [x15]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_16:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_16create_directory
    .no_dead_strip _lb_files_16create_directory
_lb_files_16create_directory:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    sub x16, x29, #80
    str x0, [x16]
    sub x16, x29, #96
    str w1, [x16]
    sub x14, x29, #96
    ldr w14, [x14]
    movz x10, #4095
    cmp w14, w10
    b.ls L3_2
L3_1:
    sub x19, x29, #64
    adrp x14, _lb_files_15invalid_options@PAGE
    add x14, x14, _lb_files_15invalid_options@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_4@PAGE
    add x14, x14, l_text_4@PAGEOFF
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #49
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
    ldr x19, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_4:
    b L3_3
L3_2:
L3_3:
    sub x15, x29, #80
    ldr x15, [x15]
    mov w12, w14
    and w12, w12, #65535
    mov x0, x15
    mov x1, x12
    bl _mkdir
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L3_6
L3_5:
    sub x19, x29, #64
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x19]
    adrp x14, l_text_5@PAGE
    add x14, x14, l_text_5@PAGEOFF
    sub x15, x29, #128
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
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_8:
    b L3_7
L3_6:
L3_7:
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
    ldr x19, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_11remove_file
    .no_dead_strip _lb_files_11remove_file
_lb_files_11remove_file:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #64]
    sub x16, x29, #80
    str x0, [x16]
    sub x14, x29, #80
    ldr x14, [x14]
    mov x0, x14
    bl _unlink
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L4_2
L4_1:
    sub x19, x29, #64
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x19]
    adrp x14, l_text_6@PAGE
    add x14, x14, l_text_6@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #35
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
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_4:
    b L4_3
L4_2:
L4_3:
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
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_16remove_directory
    .no_dead_strip _lb_files_16remove_directory
_lb_files_16remove_directory:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #64]
    sub x16, x29, #80
    str x0, [x16]
    sub x14, x29, #80
    ldr x14, [x14]
    mov x0, x14
    bl _rmdir
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L5_2
L5_1:
    sub x19, x29, #64
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x19]
    adrp x14, l_text_7@PAGE
    add x14, x14, l_text_7@PAGEOFF
    sub x15, x29, #96
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
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_4:
    b L5_3
L5_2:
L5_3:
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
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_rename
    .no_dead_strip _lb_files_rename
_lb_files_rename:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    sub x16, x29, #80
    str x0, [x16]
    sub x16, x29, #96
    str x1, [x16]
    sub x16, x29, #112
    str w2, [x16]
    sub x14, x29, #112
    ldrb w14, [x14]
    cbnz w14, L6_1
    b L6_2
L6_1:
    sub x14, x29, #80
    ldr x14, [x14]
    sub x15, x29, #96
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    bl _rename
    mov w14, w0
    b L6_3
L6_2:
    sub x14, x29, #80
    ldr x14, [x14]
    sub x15, x29, #96
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    movz x2, #4
    bl _renamex_np
    mov w14, w0
L6_3:
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L6_5
L6_4:
    sub x19, x29, #64
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x19]
    adrp x14, l_text_8@PAGE
    add x14, x14, l_text_8@PAGEOFF
    sub x15, x29, #128
    str x14, [x15]
    add x14, x15, #8
    movz x9, #30
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
    ldr x19, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_7:
    b L6_6
L6_5:
L6_6:
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
    ldr x19, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_14create_symlink
    .no_dead_strip _lb_files_14create_symlink
_lb_files_14create_symlink:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    sub x16, x29, #80
    str x0, [x16]
    sub x16, x29, #96
    str x1, [x16]
    sub x16, x29, #112
    str x2, [x16]
    sub x14, x29, #80
    ldr x14, [x14]
    sub x15, x29, #96
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    bl _symlink
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L7_2
L7_1:
    sub x19, x29, #64
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x19]
    adrp x14, l_text_9@PAGE
    add x14, x14, l_text_9@PAGEOFF
    sub x15, x29, #128
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
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
    ldr x19, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_4:
    b L7_3
L7_2:
L7_3:
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
    ldr x19, [sp, #96]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_16create_hard_link
    .no_dead_strip _lb_files_16create_hard_link
_lb_files_16create_hard_link:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    sub x16, x29, #80
    str x0, [x16]
    sub x16, x29, #96
    str x1, [x16]
    sub x14, x29, #80
    ldr x14, [x14]
    sub x15, x29, #96
    ldr x15, [x15]
    movn x0, #1
    mov x1, x14
    movn x2, #1
    mov x3, x15
    mov x4, #0
    bl _linkat
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L8_2
L8_1:
    sub x19, x29, #64
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x19]
    adrp x14, l_text_10@PAGE
    add x14, x14, l_text_10@PAGEOFF
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
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_4:
    b L8_3
L8_2:
L8_3:
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
    .globl _lb_files_12read_symlink
    .no_dead_strip _lb_files_12read_symlink
_lb_files_12read_symlink:
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
    str x25, [sp, #448]
    str x26, [sp, #440]
    sub x16, x29, #152
    str x0, [x16]
    sub x16, x29, #168
    str x1, [x16]
    sub x14, x29, #168
    ldr x19, [x14]
    sub x20, x29, #176
    mov x0, x19
    movz x1, #1
    movz x2, #64
    mov x3, x20
    bl _lb_core_6qadd_u
    mov w14, w0
    sub x15, x29, #192
    ldr x20, [x20]
    str x20, [x15]
    add x15, x15, #8
    strb w14, [x15]
    ldrb w14, [x15]
    cbnz w14, L9_1
    b L9_2
L9_1:
    b L9_3
L9_2:
    sub x19, x29, #136
    add x14, x19, #16
    adrp x15, _lb_memory_exhausted@PAGE
    add x15, x15, _lb_memory_exhausted@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_11@PAGE
    add x15, x15, l_text_11@PAGEOFF
    sub x12, x29, #208
    str x15, [x12]
    add x15, x12, #8
    movz x9, #31
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_4:
L9_3:
    sub x21, x29, #224
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x22, x0
    sub x23, x29, #272
    movz x10, #16384, lsl #48
    cmp x20, x10
    b.ls L9_6
L9_5:
    add x14, x23, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_12@PAGE
    add x15, x15, l_text_12@PAGEOFF
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b L9_7
L9_6:
    ldr x14, [x22]
    add x15, x22, #8
    ldr x15, [x15]
    cbnz x15, L9_8
    b L9_9
L9_9:
    adrp x0, l_text_14@PAGE
    add x0, x0, l_text_14@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
L9_8:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x20
    movz x2, #1
    sub x8, x29, #296
    ldr x17, [sp], #16
    blr x17
    sub x24, x29, #296
    add x12, x24, #16
    ldrb w12, [x12]
    mov x10, #0
    cmp x20, x10
    cset w13, ne
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    and w12, w13, w12
    cbnz w12, L9_10
    b L9_11
L9_10:
    add x14, x23, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_15@PAGE
    add x15, x15, l_text_15@PAGEOFF
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b L9_7
L9_11:
    ldr x14, [x24]
    str x14, [x23]
    add x14, x23, #8
    str x20, [x14]
    add x14, x23, #40
    mov x9, #0
    strb w9, [x14]
L9_7:
    add x14, x23, #40
    ldrb w14, [x14]
    cbnz w14, L9_13
    b L9_12
L9_13:
    add x14, x23, #16
    sub x19, x29, #136
    add x15, x19, #16
    mov x10, x14
    mov x11, x15
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
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_14:
L9_12:
    mov x10, x23
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x14, x29, #152
    ldr x20, [x14]
    ldr x14, [x21]
    add x24, x21, #8
    ldr x15, [x24]
    mov x0, x20
    mov x1, x14
    mov x2, x15
    bl _readlink
    mov x14, x0
    mov x25, x14
L9_15:
    mov x10, #0
    cmp x25, x10
    cset w23, lt
    cbnz w23, L9_18
    b L9_51
L9_51:
    mov w14, w23
    b L9_19
L9_18:
    bl _lb_c_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    cset w14, eq
L9_19:
    and w15, w14, #255
    cbnz w15, L9_16
    b L9_17
L9_16:
    ldr x14, [x21]
    ldr x15, [x24]
    mov x0, x20
    mov x1, x14
    mov x2, x15
    bl _readlink
    mov x25, x0
    b L9_15
L9_17:
    cbnz w23, L9_20
    b L9_21
L9_20:
    sub x19, x29, #136
    add x20, x19, #16
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x20]
    adrp x14, l_text_16@PAGE
    add x14, x14, l_text_16@PAGEOFF
    sub x15, x29, #312
    str x14, [x15]
    add x14, x15, #8
    movz x9, #35
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #328
    ldr x15, [x21]
    ldr x12, [x24]
    str x15, [x14]
    add x15, x14, #8
    str x12, [x15]
    ldr x15, [x22]
    add x12, x22, #8
    ldr x12, [x12]
    cbnz x12, L9_24
    b L9_23
L9_24:
    add x13, x12, #16
    ldr x13, [x13]
    mov x17, x13
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L9_23:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_25:
    b L9_22
L9_21:
L9_22:
    cmp x25, x19
    b.ls L9_27
L9_26:
    sub x19, x29, #136
    add x14, x19, #16
    adrp x15, _lb_files_9too_large@PAGE
    add x15, x15, _lb_files_9too_large@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_18@PAGE
    add x15, x15, l_text_18@PAGEOFF
    sub x12, x29, #344
    str x15, [x12]
    add x15, x12, #8
    movz x9, #43
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #360
    ldr x15, [x21]
    ldr x12, [x24]
    str x15, [x14]
    add x15, x14, #8
    str x12, [x15]
    ldr x15, [x22]
    add x12, x22, #8
    ldr x12, [x12]
    cbnz x12, L9_30
    b L9_29
L9_30:
    add x13, x12, #16
    ldr x13, [x13]
    mov x17, x13
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L9_29:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_31:
    b L9_28
L9_27:
L9_28:
    sub x19, x29, #376
    mov x9, x25
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_27@PAGE
    add x1, x1, l_text_27@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    sub x23, x29, #424
    movz x10, #16384, lsl #48
    cmp x20, x10
    b.ls L9_33
L9_32:
    add x14, x23, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_12@PAGE
    add x15, x15, l_text_12@PAGEOFF
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b L9_34
L9_33:
    ldr x14, [x22]
    add x15, x22, #8
    ldr x15, [x15]
    cbnz x15, L9_35
    b L9_36
L9_36:
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
L9_35:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x20
    movz x2, #1
    sub x8, x29, #448
    ldr x17, [sp], #16
    blr x17
    sub x26, x29, #448
    add x12, x26, #16
    ldrb w12, [x12]
    mov x10, #0
    cmp x20, x10
    cset w13, ne
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    and w12, w13, w12
    cbnz w12, L9_37
    b L9_38
L9_37:
    add x14, x23, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_15@PAGE
    add x15, x15, l_text_15@PAGEOFF
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x23, #40
    movz x9, #1
    strb w9, [x14]
    b L9_34
L9_38:
    ldr x14, [x26]
    str x14, [x23]
    add x14, x23, #8
    str x20, [x14]
    add x14, x23, #40
    mov x9, #0
    strb w9, [x14]
L9_34:
    add x14, x23, #40
    ldrb w14, [x14]
    cbnz w14, L9_40
    b L9_39
L9_40:
    add x14, x23, #16
    sub x19, x29, #136
    add x15, x19, #16
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #464
    ldr x15, [x21]
    ldr x12, [x24]
    str x15, [x14]
    add x15, x14, #8
    str x12, [x15]
    ldr x15, [x22]
    add x12, x22, #8
    ldr x12, [x12]
    cbnz x12, L9_42
    b L9_41
L9_42:
    add x13, x12, #16
    ldr x13, [x13]
    mov x17, x13
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L9_41:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_43:
L9_39:
    mov x10, x23
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x21
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x25
    bl _lb_memory_copy_0g1_u8
    ldr x14, [x19]
    add x15, x19, #8
    ldr x12, [x15]
    cmp x25, x12
    b.lo 1f
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_23@PAGE
    add x1, x1, l_text_23@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x14, x14, x25
    mov x9, #0
    strb w9, [x14]
    ldr x12, [x19]
    ldr x14, [x15]
    add x14, x14, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_23@PAGE
    add x1, x1, l_text_23@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x25, x14
    b.lo 1f
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_23@PAGE
    add x1, x1, l_text_23@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x25
    b.ls L9_44
L9_45:
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_23@PAGE
    add x1, x1, l_text_23@PAGEOFF
    bl _lb_core_7trap_at
L9_44:
    sub x14, x29, #480
    str x12, [x14]
    add x14, x14, #8
    str x25, [x14]
    sub x14, x29, #496
    str x12, [x14]
    add x15, x14, #8
    str x25, [x15]
    sub x19, x29, #136
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #40
    mov x9, #0
    strb w9, [x14]
    sub x14, x29, #512
    ldr x15, [x21]
    ldr x13, [x24]
    str x15, [x14]
    add x15, x14, #8
    str x13, [x15]
    ldr x15, [x22]
    add x13, x22, #8
    ldr x13, [x13]
    cbnz x13, L9_47
    b L9_46
L9_47:
    add x12, x13, #16
    ldr x12, [x12]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L9_46:
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_48:
    sub x14, x29, #224
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    sub x12, x29, #528
    ldr x13, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    mov x9, x14
    movz x10, #1
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_27@PAGE
    add x1, x1, l_text_27@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x13, [x12]
    add x12, x12, #8
    str x14, [x12]
    ldr x13, [x15]
    add x14, x15, #8
    ldr x14, [x14]
    cbnz x14, L9_50
    b L9_49
L9_50:
    add x15, x14, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x13
    mov x9, x12
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L9_49:
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

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
    cbnz w14, L10_11
    b L10_4
L10_11:
    mov w15, w14
    b L10_5
L10_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
L10_5:
    and w14, w15, #255
    cbnz w14, L10_1
    b L10_2
L10_1:
    adrp x14, l_text_23@PAGE
    add x14, x14, l_text_23@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, l_text_24@PAGE
    add x14, x14, l_text_24@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L10_3
L10_2:
L10_3:
    mov x10, #0
    cmp x19, x10
    b.ls L10_7
L10_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _memcpy
    mov x14, x0
    cbnz x14, L10_9
    b L10_10
L10_10:
    adrp x0, l_text_25@PAGE
    add x0, x0, l_text_25@PAGEOFF
    adrp x1, l_text_26@PAGE
    add x1, x1, l_text_26@PAGEOFF
    bl _lb_core_7trap_at
L10_9:
    b L10_8
L10_7:
L10_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_files_entries_0init

    .section __TEXT,__const
l_text_0:
    .asciz "unreachable"
l_text_1:
    .asciz "src/std/files/entries.lucb:8:9"
l_text_2:
    .asciz "the path could not be inspected"
l_text_3:
    .asciz "src/std/files/entries.lucb:30:5"
l_text_4:
    .asciz "directory permissions must fit the Unix mode bits"
l_text_5:
    .asciz "the directory could not be created"
l_text_6:
    .asciz "the file entry could not be removed"
l_text_7:
    .asciz "the directory could not be removed"
l_text_8:
    .asciz "the entry could not be renamed"
l_text_9:
    .asciz "the symbolic link could not be created"
l_text_10:
    .asciz "the hard link could not be created"
l_text_11:
    .asciz "the link target limit overflows"
l_text_12:
    .asciz "memory.exhausted: the allocation size overflows"
l_text_13:
    .asciz "memory.unset"
l_text_14:
    .asciz "src/std/files/entries.lucb:136:5"
l_text_15:
    .asciz "memory.exhausted"
l_text_16:
    .asciz "the symbolic link could not be read"
l_text_17:
    .asciz "src/std/files/entries.lucb:142:9"
l_text_18:
    .asciz "the link target exceeds the requested limit"
l_text_19:
    .asciz "src/std/files/entries.lucb:144:9"
l_text_20:
    .asciz "src/std/files/entries.lucb:146:5"
l_text_21:
    .asciz "src/std/files/entries.lucb:148:5"
l_text_22:
    .asciz "src/std/files/entries.lucb:149:5"
l_text_23:
    .asciz "index out of bounds"
l_text_24:
    .asciz "src/std/memory.lucb:328:9"
l_text_25:
    .asciz "src/std/memory.lucb:330:9"
l_text_26:
    .asciz "null_foreign"
l_text_27:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
