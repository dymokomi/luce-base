    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_files_workspace_0init
_lb_files_workspace_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_canonical
    .no_dead_strip _lb_files_canonical
_lb_files_canonical:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #160]
    str x20, [sp, #152]
    str x21, [sp, #144]
    sub x16, x29, #112
    str x0, [x16]
    sub x14, x29, #112
    ldr x14, [x14]
    mov x0, x14
    mov x1, #0
    bl _realpath
    mov x19, x0
    cbnz x19, L1_1
    b L1_2
L1_1:
    b L1_3
L1_2:
    sub x19, x29, #96
    add x20, x19, #16
    bl _lb_c_errno
    mov w14, w0
    mov x0, x14
    bl _lb_files_14classify_error
    mov w14, w0
    str w14, [x20]
    adrp x14, l_text_0@PAGE
    add x14, x14, l_text_0@PAGEOFF
    sub x15, x29, #128
    str x14, [x15]
    add x14, x15, #8
    movz x9, #41
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_4:
L1_3:
    mov x0, x19
    bl _strlen
    mov x14, x0
    sub x15, x29, #144
    str x19, [x15]
    add x20, x15, #8
    str x14, [x20]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #192
    bl _lb_strings_copy
    sub x15, x29, #192
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L1_6
    b L1_5
L1_6:
    add x14, x15, #16
    sub x20, x29, #96
    add x21, x20, #16
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _free
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_7:
L1_5:
    sub x20, x29, #96
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #40
    mov x9, #0
    strb w9, [x14]
    mov x0, x19
    bl _free
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_8:
    mov x0, x14
    bl _free
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_26create_temporary_directory
    .no_dead_strip _lb_files_26create_temporary_directory
_lb_files_26create_temporary_directory:
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
    str x27, [sp, #432]
    str x28, [sp, #424]
    sub x16, x29, #168
    str x0, [x16]
    sub x16, x29, #184
    str w1, [x16]
    sub x20, x29, #200
    sub x14, x29, #168
    ldr x19, [x14]
    mov x0, x19
    bl _strlen
    mov x14, x0
    sub x15, x29, #216
    str x19, [x15]
    add x19, x15, #8
    str x14, [x19]
    adrp x14, l_text_3@PAGE
    add x14, x14, l_text_3@PAGEOFF
    sub x19, x29, #232
    str x14, [x19]
    add x14, x19, #8
    movz x9, #38
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x19
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #280
    bl _lb_paths_join
    sub x15, x29, #280
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L2_2
    b L2_1
L2_2:
    add x14, x15, #16
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
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    ldr x27, [sp, #432]
    ldr x28, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_1:
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #296
    adrp x9, l_text_4@PAGE
    add x9, x9, l_text_4@PAGEOFF
    str x9, [sp, #72]
    sub x21, x29, #312
    ldr x9, [sp, #72]
    str x9, [x21]
    add x22, x21, #8
    movz x9, #16
    str x9, [x22]
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x21, [x20]
    add x14, x20, #8
    ldr x14, [x14]
    mov x9, x14
    movz x10, #32
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_16@PAGE
    add x1, x1, l_text_16@PAGEOFF
    bl _lb_core_7trap_at
1:
    str x9, [sp, #64]
    sub x9, x29, #328
    str x9, [sp, #56]
    sub x9, x29, #344
    str x9, [sp, #48]
    ldr x9, [sp, #48]
    add x9, x9, #8
    str x9, [sp, #40]
    sub x27, x29, #376
    add x9, x27, #24
    str x9, [sp, #32]
    sub x9, x29, #184
    str x9, [sp, #24]
    sub x19, x29, #432
    add x9, x19, #24
    str x9, [sp, #16]
    sub x9, x29, #400
    str x9, [sp, #8]
    adrp x9, _lb_files_14already_exists@PAGE
    add x9, x9, _lb_files_14already_exists@PAGEOFF
    str x9, [sp, #0]
    mov x9, #0
    mov x28, x9
L2_4:
    movz x10, #128
    cmp x28, x10
    b.hs L2_6
L2_5:
    ldr x11, [sp, #56]
    stp xzr, xzr, [x11, #0]
    ldr x9, [sp, #56]
    ldr x10, [sp, #48]
    str x9, [x10]
    movz x9, #16
    ldr x10, [sp, #40]
    str x9, [x10]
    ldr x9, [sp, #48]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #376
    bl _lb_os_12random_bytes
    ldr x9, [sp, #32]
    ldrb w14, [x9]
    cbnz w14, L2_8
    b L2_7
L2_8:
    sub x19, x29, #152
    add x14, x19, #16
    mov x10, x27
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
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
    ldr x27, [sp, #432]
    ldr x28, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_7:
    mov x9, #0
    mov x14, x9
L2_10:
    movz x10, #16
    cmp x14, x10
    b.hs L2_13
L2_11:
    lsl x15, x14, #1
    ldr x9, [sp, #64]
    mov x10, x15
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_16@PAGE
    add x1, x1, l_text_16@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    add x25, x21, x15
    ldr x9, [sp, #56]
    add x24, x9, x14
    ldrb w26, [x24]
L2_15:
    lsr w22, w26, #4
    and w22, w22, #255
    mov w22, w22
    movz x10, #16
    cmp x22, x10
    b.lo 1f
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    ldr x9, [sp, #72]
    add x22, x9, x22
    ldrb w22, [x22]
    strb w22, [x25]
    mov x9, x15
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_8@PAGE
    add x0, x0, l_text_8@PAGEOFF
    adrp x1, l_text_16@PAGE
    add x1, x1, l_text_16@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x22, x9
    add x22, x21, x22
    ldrb w23, [x24]
    movz x10, #15
    and w23, w23, w10
    mov w23, w23
    ldr x9, [sp, #72]
    add x23, x9, x23
    ldrb w23, [x23]
    strb w23, [x22]
L2_12:
    add x15, x14, #1
    mov x14, x15
    b L2_10
L2_13:
    ldr x14, [x20]
    ldr x9, [sp, #24]
    ldr w15, [x9]
    mov x0, x14
    mov x1, x15
    sub x8, x29, #432
    bl _lb_files_16create_directory
    ldr x9, [sp, #16]
    ldrb w14, [x9]
    cbnz w14, L2_19
    b L2_18
L2_19:
    mov x10, x19
    ldr x11, [sp, #8]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L2_16
L2_18:
    b L2_17
L2_16:
    ldr x9, [sp, #8]
    ldr w14, [x9]
    ldr x9, [sp, #0]
    ldr w15, [x9]
    cmp w14, w15
    b.ne L2_21
L2_20:
    add x14, x28, #1
    mov x28, x14
    b L2_4
L2_21:
L2_22:
    sub x19, x29, #152
    add x15, x19, #16
    str w14, [x15]
    ldr x9, [sp, #8]
    add x21, x9, #8
    add x15, x15, #8
    mov x10, x21
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x15, x19, #40
    movz x9, #1
    strb w9, [x15]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
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
    ldr x27, [sp, #432]
    ldr x28, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_17:
    sub x19, x29, #152
    mov x10, x20
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
    ldr x19, [sp, #496]
    ldr x20, [sp, #488]
    ldr x21, [sp, #480]
    ldr x22, [sp, #472]
    ldr x23, [sp, #464]
    ldr x24, [sp, #456]
    ldr x25, [sp, #448]
    ldr x26, [sp, #440]
    ldr x27, [sp, #432]
    ldr x28, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_6:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, _lb_files_14already_exists@PAGE
    add x15, x15, _lb_files_14already_exists@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_10@PAGE
    add x15, x15, l_text_10@PAGEOFF
    sub x21, x29, #448
    str x15, [x21]
    add x15, x21, #8
    movz x9, #44
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
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
    ldr x27, [sp, #432]
    ldr x28, [sp, #424]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_11remove_tree
    .no_dead_strip _lb_files_11remove_tree
_lb_files_11remove_tree:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #880
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #848]
    str x20, [sp, #840]
    str x21, [sp, #832]
    str x22, [sp, #824]
    str x23, [sp, #816]
    str x24, [sp, #808]
    str x25, [sp, #800]
    str x26, [sp, #792]
    str x27, [sp, #784]
    str x28, [sp, #776]
    sub x16, x29, #152
    str x0, [x16]
    sub x20, x29, #280
    sub x14, x29, #152
    ldr x19, [x14]
    mov x0, x19
    mov x1, #0
    sub x8, x29, #592
    bl _lb_files_metadata
    sub x15, x29, #592
    add x14, x15, #152
    ldrb w14, [x14]
    cbnz w14, L3_4
    b L3_3
L3_4:
    add x14, x15, #128
    sub x19, x29, #432
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L3_1
L3_3:
    sub x21, x29, #408
    mov x10, x15
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
    b L3_2
L3_1:
    ldr w14, [x19]
    adrp x15, _lb_files_missing@PAGE
    add x15, x15, _lb_files_missing@PAGEOFF
    ldr w15, [x15]
    cmp w14, w15
    b.ne L3_6
L3_5:
    sub x14, x29, #136
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
    ldr x19, [sp, #848]
    ldr x20, [sp, #840]
    ldr x21, [sp, #832]
    ldr x22, [sp, #824]
    ldr x23, [sp, #816]
    ldr x24, [sp, #808]
    ldr x25, [sp, #800]
    ldr x26, [sp, #792]
    ldr x27, [sp, #784]
    ldr x28, [sp, #776]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_8:
    b L3_7
L3_6:
L3_7:
    sub x20, x29, #136
    str w14, [x20]
    add x15, x19, #8
    add x21, x20, #8
    mov x10, x15
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x15, x20, #24
    movz x9, #1
    strb w9, [x15]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #848]
    ldr x20, [sp, #840]
    ldr x21, [sp, #832]
    ldr x22, [sp, #824]
    ldr x23, [sp, #816]
    ldr x24, [sp, #808]
    ldr x25, [sp, #800]
    ldr x26, [sp, #792]
    ldr x27, [sp, #784]
    ldr x28, [sp, #776]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_9:
L3_2:
    mov x10, x21
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
    ldrb w14, [x20]
    movz x10, #2
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L3_11
L3_10:
    mov x0, x19
    sub x8, x29, #624
    bl _lb_files_11remove_file
    sub x15, x29, #624
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L3_14
    b L3_13
L3_14:
    sub x19, x29, #136
    mov x10, x15
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
    ldr x19, [sp, #848]
    ldr x20, [sp, #840]
    ldr x21, [sp, #832]
    ldr x22, [sp, #824]
    ldr x23, [sp, #816]
    ldr x24, [sp, #808]
    ldr x25, [sp, #800]
    ldr x26, [sp, #792]
    ldr x27, [sp, #784]
    ldr x28, [sp, #776]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_15:
L3_13:
    sub x14, x29, #136
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
    ldr x19, [sp, #848]
    ldr x20, [sp, #840]
    ldr x21, [sp, #832]
    ldr x22, [sp, #824]
    ldr x23, [sp, #816]
    ldr x24, [sp, #808]
    ldr x25, [sp, #800]
    ldr x26, [sp, #792]
    ldr x27, [sp, #784]
    ldr x28, [sp, #776]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_16:
    b L3_12
L3_11:
L3_12:
    sub x20, x29, #640
    mov x0, x19
    sub x8, x29, #688
    bl _lb_files_list
    sub x15, x29, #688
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L3_18
    b L3_17
L3_18:
    add x14, x15, #16
    sub x19, x29, #136
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
    ldr x19, [sp, #848]
    ldr x20, [sp, #840]
    ldr x21, [sp, #832]
    ldr x22, [sp, #824]
    ldr x23, [sp, #816]
    ldr x24, [sp, #808]
    ldr x25, [sp, #800]
    ldr x26, [sp, #792]
    ldr x27, [sp, #784]
    ldr x28, [sp, #776]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_19:
L3_17:
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x21, [x20]
    add x14, x20, #8
    ldr x22, [x14]
    sub x23, x29, #704
    sub x9, x29, #720
    str x9, [sp, #16]
    sub x24, x29, #736
    add x25, x24, #8
    sub x9, x29, #784
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x26, x9, #40
    sub x27, x29, #816
    add x9, x27, #24
    str x9, [sp, #24]
    mov x9, #0
    mov x28, x9
L3_20:
    cmp x28, x22
    b.hs L3_23
L3_21:
    lsl x14, x28, #4
    add x14, x21, x14
    mov x10, x14
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x0, x19
    bl _strlen
    mov x14, x0
    str x19, [x24]
    str x14, [x25]
    mov x9, x24
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x23
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #784
    bl _lb_paths_join
    ldrb w14, [x26]
    cbnz w14, L3_25
    b L3_24
L3_25:
    ldr x9, [sp, #8]
    add x14, x9, #16
    sub x19, x29, #136
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_files_12release_list
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #848]
    ldr x20, [sp, #840]
    ldr x21, [sp, #832]
    ldr x22, [sp, #824]
    ldr x23, [sp, #816]
    ldr x24, [sp, #808]
    ldr x25, [sp, #800]
    ldr x26, [sp, #792]
    ldr x27, [sp, #784]
    ldr x28, [sp, #776]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_26:
L3_24:
    ldr x10, [sp, #8]
    ldr x11, [sp, #16]
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x9, [sp, #16]
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #816
    bl _lb_files_11remove_tree
    ldr x9, [sp, #24]
    ldrb w14, [x9]
    cbnz w14, L3_28
    b L3_27
L3_28:
    sub x19, x29, #136
    mov x10, x27
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #16]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_files_12release_list
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #848]
    ldr x20, [sp, #840]
    ldr x21, [sp, #832]
    ldr x22, [sp, #824]
    ldr x23, [sp, #816]
    ldr x24, [sp, #808]
    ldr x25, [sp, #800]
    ldr x26, [sp, #792]
    ldr x27, [sp, #784]
    ldr x28, [sp, #776]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_29:
L3_27:
    ldr x9, [sp, #16]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
L3_22:
    add x14, x28, #1
    mov x28, x14
    b L3_20
L3_23:
    mov x0, x19
    sub x8, x29, #848
    bl _lb_files_16remove_directory
    sub x15, x29, #848
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L3_31
    b L3_30
L3_31:
    sub x19, x29, #136
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_files_12release_list
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #848]
    ldr x20, [sp, #840]
    ldr x21, [sp, #832]
    ldr x22, [sp, #824]
    ldr x23, [sp, #816]
    ldr x24, [sp, #808]
    ldr x25, [sp, #800]
    ldr x26, [sp, #792]
    ldr x27, [sp, #784]
    ldr x28, [sp, #776]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_32:
L3_30:
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_files_12release_list
    sub x14, x29, #136
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
    ldr x19, [sp, #848]
    ldr x20, [sp, #840]
    ldr x21, [sp, #832]
    ldr x22, [sp, #824]
    ldr x23, [sp, #816]
    ldr x24, [sp, #808]
    ldr x25, [sp, #800]
    ldr x26, [sp, #792]
    ldr x27, [sp, #784]
    ldr x28, [sp, #776]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_TemporaryDirectory_init
    .no_dead_strip _lb_files_TemporaryDirectory_init
_lb_files_TemporaryDirectory_init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #208]
    str x20, [sp, #200]
    str x21, [sp, #192]
    str x22, [sp, #184]
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #112
    str x1, [x16]
    sub x9, x29, #96
    ldr x20, [x9]
    sub x21, x29, #128
    sub x14, x29, #112
    ldr x19, [x14]
    mov x0, x19
    bl _strlen
    mov x14, x0
    sub x15, x29, #160
    str x19, [x15]
    add x15, x15, #8
    str x14, [x15]
    mov x10, #0
    cmp x14, x10
    b.ls L4_2
L4_1:
    mov x0, x19
    bl _strlen
    mov x14, x0
    sub x15, x29, #176
    str x19, [x15]
    add x22, x15, #8
    str x14, [x22]
    sub x14, x29, #144
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L4_3
L4_2:
    bl _lb_io_path_temp
    sub x16, x29, #192
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #192
    sub x15, x29, #144
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
L4_3:
    sub x14, x29, #144
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x21]
    mov x0, x14
    movz x1, #448
    sub x8, x29, #240
    bl _lb_files_26create_temporary_directory
    sub x15, x29, #240
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L4_5
    b L4_4
L4_5:
    add x14, x15, #16
    sub x19, x29, #88
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
    ldr x22, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_6:
L4_4:
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #16
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #88
    add x19, x14, #24
    mov x9, #0
    strb w9, [x19]
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
    ldr x22, [sp, #184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_TemporaryDirectory_path
    .no_dead_strip _lb_files_TemporaryDirectory_path
_lb_files_TemporaryDirectory_path:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #48
    str x0, [x16]
    sub x9, x29, #48
    ldr x14, [x9]
    sub x19, x29, #40
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_1:
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_TemporaryDirectory_12release_name
_lb_files_TemporaryDirectory_12release_name:
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
    ldr x19, [x9]
    add x14, x19, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls L6_2
L6_1:
    sub x20, x29, #88
    add x21, x19, #16
    ldr x14, [x21]
    cbnz x14, L6_4
    b L6_5
L6_4:
    sub x22, x29, #104
    mov x10, x21
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L6_6
L6_5:
    adrp x14, l_text_13@PAGE
    add x14, x14, l_text_13@PAGEOFF
    sub x15, x29, #120
    str x14, [x15]
    add x14, x15, #8
    movz x9, #40
    str x9, [x14]
    adrp x14, l_text_14@PAGE
    add x14, x14, l_text_14@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_14@PAGE
    add x0, x0, l_text_14@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L6_6:
    mov x10, x22
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x23, x29, #136
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x24, x0
    mov x10, x24
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x20
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x10, x23
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, l_text_15@PAGE
    add x14, x14, l_text_15@PAGEOFF
    sub x15, x29, #152
    str x14, [x15]
    add x14, x15, #8
    mov x9, #0
    str x9, [x14]
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x23, x29, #168
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    mov x10, x23
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L6_3
L6_2:
L6_3:
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
    .globl _lb_files_TemporaryDirectory_close
    .no_dead_strip _lb_files_TemporaryDirectory_close
_lb_files_TemporaryDirectory_close:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    sub x16, x29, #72
    str x0, [x16]
    sub x9, x29, #72
    ldr x19, [x9]
    add x14, x19, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ne L7_2
L7_1:
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
L7_4:
    b L7_3
L7_2:
L7_3:
    ldr x14, [x19]
    mov x0, x14
    sub x8, x29, #104
    bl _lb_files_11remove_tree
    sub x15, x29, #104
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L7_6
    b L7_5
L7_6:
    sub x19, x29, #64
    mov x10, x15
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
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_7:
L7_5:
    mov x0, x19
    bl _lb_files_TemporaryDirectory_12release_name
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
    .globl _lb_files_TemporaryDirectory_destroy
    .no_dead_strip _lb_files_TemporaryDirectory_destroy
_lb_files_TemporaryDirectory_destroy:
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
    bl _lb_files_TemporaryDirectory_close
    sub x15, x29, #88
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L8_4
    b L8_3
L8_4:
    sub x14, x29, #56
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L8_1
L8_3:
    b L8_2
L8_1:
L8_2:
    mov x0, x19
    bl _lb_files_TemporaryDirectory_12release_name
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_files_workspace_0init

    .section __TEXT,__const
l_text_0:
    .asciz "the filesystem path could not be resolved"
l_text_1:
    .asciz "unreachable"
l_text_2:
    .asciz "src/std/files/workspace.lucb:33:5"
l_text_3:
    .asciz ".luce-00000000000000000000000000000000"
l_text_4:
    .asciz "0123456789abcdef"
l_text_5:
    .asciz "src/std/files/workspace.lucb:42:5"
l_text_6:
    .asciz "src/std/files/workspace.lucb:48:13"
l_text_7:
    .asciz "shift count out of range"
l_text_8:
    .asciz "src/std/files/workspace.lucb:49:13"
l_text_9:
    .asciz "src/std/files/workspace.lucb:52:17"
l_text_10:
    .asciz "no unused temporary directory name was found"
l_text_11:
    .asciz "src/std/files/workspace.lucb:56:5"
l_text_12:
    .asciz "src/std/files/workspace.lucb:90:9"
l_text_13:
    .asciz "a temporary directory lost its allocator"
l_text_14:
    .asciz "src/std/files/workspace.lucb:94:13"
l_text_15:
    .asciz ""
l_text_16:
    .asciz "integer overflow"
l_text_17:
    .asciz "index out of bounds"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
