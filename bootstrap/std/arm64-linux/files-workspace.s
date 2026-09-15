    .text

    .p2align 2
    .globl lb_files_workspace_0init
    .type lb_files_workspace_0init, %function
lb_files_workspace_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_files_workspace_0init, .-lb_files_workspace_0init

    .p2align 2
    .globl lb_files_canonical
    .type lb_files_canonical, %function
lb_files_canonical:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #160]
    str x20, [sp, #152]
    sub x16, x29, #104
    str x0, [x16]
    sub x14, x29, #104
    ldr x14, [x14]
    mov x0, x14
    mov x1, #0
    bl realpath
    mov x19, x0
    cbnz x19, .L1_1
    b .L1_2
.L1_1:
    b .L1_3
.L1_2:
    sub x19, x29, #88
    add x20, x19, #16
    bl lb_c_errno
    mov w14, w0
    mov x0, x14
    bl lb_files_14classify_error
    mov w14, w0
    str w14, [x20]
    adrp x14, .Ltext_0
    add x14, x14, :lo12:.Ltext_0
    sub x15, x29, #120
    str x14, [x15]
    add x14, x15, #8
    movz x9, #41
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_4:
.L1_3:
    mov x0, x19
    bl strlen
    mov x14, x0
    sub x15, x29, #136
    str x19, [x15]
    add x12, x15, #8
    str x14, [x12]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #184
    bl lb_strings_copy
    sub x15, x29, #184
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, .L1_6
    b .L1_5
.L1_6:
    add x14, x15, #16
    sub x20, x29, #88
    add x12, x20, #16
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #40
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl free
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_7:
.L1_5:
    sub x20, x29, #88
    mov x10, x15
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #40
    mov x9, #0
    strb w9, [x14]
    mov x0, x19
    bl free
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_8:
    mov x0, x14
    bl free
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_files_canonical, .-lb_files_canonical

    .p2align 2
    .globl lb_files_26create_temporary_directory
    .type lb_files_26create_temporary_directory, %function
lb_files_26create_temporary_directory:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #512
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #480]
    str x20, [sp, #472]
    str x21, [sp, #464]
    str x22, [sp, #456]
    str x23, [sp, #448]
    str x24, [sp, #440]
    str x25, [sp, #432]
    str x26, [sp, #424]
    str x27, [sp, #416]
    str x28, [sp, #408]
    sub x16, x29, #168
    str x0, [x16]
    sub x16, x29, #184
    str w1, [x16]
    sub x20, x29, #200
    sub x14, x29, #168
    ldr x19, [x14]
    mov x0, x19
    bl strlen
    mov x14, x0
    sub x15, x29, #216
    str x19, [x15]
    add x12, x15, #8
    str x14, [x12]
    adrp x14, .Ltext_3
    add x14, x14, :lo12:.Ltext_3
    sub x12, x29, #232
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
    sub x8, x29, #280
    bl lb_paths_join
    sub x15, x29, #280
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, .L2_2
    b .L2_1
.L2_2:
    add x14, x15, #16
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
    ldr x19, [sp, #480]
    ldr x20, [sp, #472]
    ldr x21, [sp, #464]
    ldr x22, [sp, #456]
    ldr x23, [sp, #448]
    ldr x24, [sp, #440]
    ldr x25, [sp, #432]
    ldr x26, [sp, #424]
    ldr x27, [sp, #416]
    ldr x28, [sp, #408]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_1:
    mov x10, x15
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x14, x29, #296
    adrp x9, .Ltext_4
    add x9, x9, :lo12:.Ltext_4
    str x9, [sp, #56]
    sub x12, x29, #312
    ldr x9, [sp, #56]
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
    adrp x0, .Ltext_5
    add x0, x0, :lo12:.Ltext_5
    adrp x1, .Ltext_16
    add x1, x1, :lo12:.Ltext_16
    bl lb_core_7trap_at
1:
    str x9, [sp, #48]
    sub x9, x29, #328
    str x9, [sp, #40]
    sub x9, x29, #344
    str x9, [sp, #32]
    ldr x9, [sp, #32]
    add x25, x9, #8
    sub x27, x29, #376
    add x26, x27, #24
    sub x9, x29, #184
    str x9, [sp, #24]
    sub x19, x29, #432
    add x9, x19, #24
    str x9, [sp, #16]
    sub x9, x29, #400
    str x9, [sp, #8]
    adrp x9, lb_files_14already_exists
    add x9, x9, :lo12:lb_files_14already_exists
    str x9, [sp, #0]
    mov x9, #0
    mov x28, x9
.L2_4:
    movz x10, #128
    cmp x28, x10
    b.hs .L2_6
.L2_5:
    ldr x11, [sp, #40]
    stp xzr, xzr, [x11, #0]
    ldr x9, [sp, #40]
    ldr x10, [sp, #32]
    str x9, [x10]
    movz x9, #16
    str x9, [x25]
    ldr x9, [sp, #32]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #376
    bl lb_os_12random_bytes
    ldrb w14, [x26]
    cbnz w14, .L2_8
    b .L2_7
.L2_8:
    sub x19, x29, #152
    add x14, x19, #16
    mov x10, x27
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_strings_release
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #480]
    ldr x20, [sp, #472]
    ldr x21, [sp, #464]
    ldr x22, [sp, #456]
    ldr x23, [sp, #448]
    ldr x24, [sp, #440]
    ldr x25, [sp, #432]
    ldr x26, [sp, #424]
    ldr x27, [sp, #416]
    ldr x28, [sp, #408]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_7:
    mov x9, #0
    mov x14, x9
.L2_10:
    movz x10, #16
    cmp x14, x10
    b.hs .L2_13
.L2_11:
    lsl x15, x14, #1
    ldr x9, [sp, #48]
    mov x10, x15
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_16
    add x1, x1, :lo12:.Ltext_16
    bl lb_core_7trap_at
1:
    mov x15, x9
    add x13, x21, x15
    ldr x9, [sp, #40]
    add x12, x9, x14
    ldrb w24, [x12]
.L2_15:
    lsr w22, w24, #4
    and w22, w22, #255
    mov w22, w22
    movz x10, #16
    cmp x22, x10
    b.lo 1f
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_17
    add x1, x1, :lo12:.Ltext_17
    bl lb_core_7trap_at
1:
    ldr x9, [sp, #56]
    add x22, x9, x22
    ldrb w22, [x22]
    strb w22, [x13]
    mov x9, x15
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_8
    add x0, x0, :lo12:.Ltext_8
    adrp x1, .Ltext_16
    add x1, x1, :lo12:.Ltext_16
    bl lb_core_7trap_at
1:
    mov x22, x9
    add x22, x21, x22
    ldrb w23, [x12]
    movz x10, #15
    and w23, w23, w10
    mov w23, w23
    ldr x9, [sp, #56]
    add x23, x9, x23
    ldrb w23, [x23]
    strb w23, [x22]
.L2_12:
    add x15, x14, #1
    mov x14, x15
    b .L2_10
.L2_13:
    ldr x14, [x20]
    ldr x9, [sp, #24]
    ldr w15, [x9]
    mov x0, x14
    mov x1, x15
    sub x8, x29, #432
    bl lb_files_16create_directory
    ldr x9, [sp, #16]
    ldrb w14, [x9]
    cbnz w14, .L2_19
    b .L2_18
.L2_19:
    mov x10, x19
    ldr x11, [sp, #8]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b .L2_16
.L2_18:
    b .L2_17
.L2_16:
    ldr x9, [sp, #8]
    ldr w14, [x9]
    ldr x9, [sp, #0]
    ldr w15, [x9]
    cmp w14, w15
    b.ne .L2_21
.L2_20:
    add x14, x28, #1
    mov x28, x14
    b .L2_4
.L2_21:
.L2_22:
    sub x19, x29, #152
    add x15, x19, #16
    str w14, [x15]
    ldr x9, [sp, #8]
    add x12, x9, #8
    add x15, x15, #8
    mov x10, x12
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x15, x19, #40
    movz x9, #1
    strb w9, [x15]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_strings_release
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #480]
    ldr x20, [sp, #472]
    ldr x21, [sp, #464]
    ldr x22, [sp, #456]
    ldr x23, [sp, #448]
    ldr x24, [sp, #440]
    ldr x25, [sp, #432]
    ldr x26, [sp, #424]
    ldr x27, [sp, #416]
    ldr x28, [sp, #408]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_17:
    sub x19, x29, #152
    mov x10, x20
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
    ldr x19, [sp, #480]
    ldr x20, [sp, #472]
    ldr x21, [sp, #464]
    ldr x22, [sp, #456]
    ldr x23, [sp, #448]
    ldr x24, [sp, #440]
    ldr x25, [sp, #432]
    ldr x26, [sp, #424]
    ldr x27, [sp, #416]
    ldr x28, [sp, #408]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_6:
    sub x19, x29, #152
    add x14, x19, #16
    adrp x15, lb_files_14already_exists
    add x15, x15, :lo12:lb_files_14already_exists
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_10
    add x15, x15, :lo12:.Ltext_10
    sub x12, x29, #448
    str x15, [x12]
    add x15, x12, #8
    movz x9, #44
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #40
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_strings_release
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #480]
    ldr x20, [sp, #472]
    ldr x21, [sp, #464]
    ldr x22, [sp, #456]
    ldr x23, [sp, #448]
    ldr x24, [sp, #440]
    ldr x25, [sp, #432]
    ldr x26, [sp, #424]
    ldr x27, [sp, #416]
    ldr x28, [sp, #408]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_files_26create_temporary_directory, .-lb_files_26create_temporary_directory

    .p2align 2
    .globl lb_files_11remove_tree
    .type lb_files_11remove_tree, %function
lb_files_11remove_tree:
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
    bl lb_files_metadata
    sub x15, x29, #592
    add x14, x15, #152
    ldrb w14, [x14]
    cbnz w14, .L3_4
    b .L3_3
.L3_4:
    add x14, x15, #128
    sub x19, x29, #432
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b .L3_1
.L3_3:
    sub x21, x29, #408
    mov x10, x15
    mov x11, x21
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
    b .L3_2
.L3_1:
    ldr w14, [x19]
    adrp x15, lb_files_missing
    add x15, x15, :lo12:lb_files_missing
    ldr w15, [x15]
    cmp w14, w15
    b.ne .L3_6
.L3_5:
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
.L3_8:
    b .L3_7
.L3_6:
.L3_7:
    sub x20, x29, #136
    str w14, [x20]
    add x15, x19, #8
    add x12, x20, #8
    mov x10, x15
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
.L3_9:
.L3_2:
    mov x10, x21
    mov x11, x20
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
    ldrb w14, [x20]
    movz x10, #2
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L3_11
.L3_10:
    mov x0, x19
    sub x8, x29, #624
    bl lb_files_11remove_file
    sub x15, x29, #624
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L3_14
    b .L3_13
.L3_14:
    sub x19, x29, #136
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
.L3_15:
.L3_13:
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
.L3_16:
    b .L3_12
.L3_11:
.L3_12:
    sub x20, x29, #640
    mov x0, x19
    sub x8, x29, #688
    bl lb_files_list
    sub x15, x29, #688
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, .L3_18
    b .L3_17
.L3_18:
    add x14, x15, #16
    sub x19, x29, #136
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
.L3_19:
.L3_17:
    mov x10, x15
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
.L3_20:
    cmp x28, x22
    b.hs .L3_23
.L3_21:
    lsl x14, x28, #4
    add x14, x21, x14
    mov x10, x14
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x0, x19
    bl strlen
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
    bl lb_paths_join
    ldrb w14, [x26]
    cbnz w14, .L3_25
    b .L3_24
.L3_25:
    ldr x9, [sp, #8]
    add x14, x9, #16
    sub x19, x29, #136
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_files_12release_list
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
.L3_26:
.L3_24:
    ldr x10, [sp, #8]
    ldr x11, [sp, #16]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x9, [sp, #16]
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #816
    bl lb_files_11remove_tree
    ldr x9, [sp, #24]
    ldrb w14, [x9]
    cbnz w14, .L3_28
    b .L3_27
.L3_28:
    sub x19, x29, #136
    mov x10, x27
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    ldr x9, [sp, #16]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_strings_release
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_files_12release_list
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
.L3_29:
.L3_27:
    ldr x9, [sp, #16]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_strings_release
.L3_22:
    add x14, x28, #1
    mov x28, x14
    b .L3_20
.L3_23:
    mov x0, x19
    sub x8, x29, #848
    bl lb_files_16remove_directory
    sub x15, x29, #848
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L3_31
    b .L3_30
.L3_31:
    sub x19, x29, #136
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_files_12release_list
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
.L3_32:
.L3_30:
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_files_12release_list
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

    .size lb_files_11remove_tree, .-lb_files_11remove_tree

    .p2align 2
    .globl lb_files_TemporaryDirectory_init
    .type lb_files_TemporaryDirectory_init, %function
lb_files_TemporaryDirectory_init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #208]
    str x20, [sp, #200]
    str x21, [sp, #192]
    sub x16, x29, #88
    str x0, [x16]
    sub x16, x29, #104
    str x1, [x16]
    sub x9, x29, #88
    ldr x20, [x9]
    sub x21, x29, #120
    sub x14, x29, #104
    ldr x19, [x14]
    mov x0, x19
    bl strlen
    mov x14, x0
    sub x15, x29, #152
    str x19, [x15]
    add x15, x15, #8
    str x14, [x15]
    mov x10, #0
    cmp x14, x10
    b.ls .L4_2
.L4_1:
    mov x0, x19
    bl strlen
    mov x14, x0
    sub x15, x29, #168
    str x19, [x15]
    add x12, x15, #8
    str x14, [x12]
    sub x14, x29, #136
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b .L4_3
.L4_2:
    bl lb_io_path_temp
    sub x16, x29, #184
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #184
    sub x15, x29, #136
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
.L4_3:
    sub x14, x29, #136
    mov x10, x14
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x14, [x21]
    mov x0, x14
    movz x1, #448
    sub x8, x29, #232
    bl lb_files_26create_temporary_directory
    sub x15, x29, #232
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, .L4_5
    b .L4_4
.L4_5:
    add x14, x15, #16
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_6:
.L4_4:
    mov x10, x15
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #16
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x12, x0
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x14, x29, #80
    add x12, x14, #24
    mov x9, #0
    strb w9, [x12]
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

    .size lb_files_TemporaryDirectory_init, .-lb_files_TemporaryDirectory_init

    .p2align 2
    .globl lb_files_TemporaryDirectory_path
    .type lb_files_TemporaryDirectory_path, %function
lb_files_TemporaryDirectory_path:
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
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x16, x19
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_1:
    adrp x0, .Ltext_12
    add x0, x0, :lo12:.Ltext_12
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_files_TemporaryDirectory_path, .-lb_files_TemporaryDirectory_path

    .p2align 2
    .globl lb_files_TemporaryDirectory_12release_name
    .type lb_files_TemporaryDirectory_12release_name, %function
lb_files_TemporaryDirectory_12release_name:
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
    b.ls .L6_2
.L6_1:
    sub x20, x29, #88
    add x21, x19, #16
    ldr x14, [x21]
    cbnz x14, .L6_4
    b .L6_5
.L6_4:
    sub x22, x29, #104
    mov x10, x21
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b .L6_6
.L6_5:
    adrp x14, .Ltext_13
    add x14, x14, :lo12:.Ltext_13
    sub x15, x29, #120
    str x14, [x15]
    add x14, x15, #8
    movz x9, #40
    str x9, [x14]
    adrp x14, .Ltext_14
    add x14, x14, :lo12:.Ltext_14
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    adrp x0, .Ltext_14
    add x0, x0, :lo12:.Ltext_14
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at
.L6_6:
    mov x10, x22
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x23, x29, #136
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
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
    bl lb_strings_release
    mov x10, x23
    mov x11, x24
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x14, .Ltext_15
    add x14, x14, :lo12:.Ltext_15
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
    b .L6_3
.L6_2:
.L6_3:
    ldr x19, [sp, #152]
    ldr x20, [sp, #144]
    ldr x21, [sp, #136]
    ldr x22, [sp, #128]
    ldr x23, [sp, #120]
    ldr x24, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_files_TemporaryDirectory_12release_name, .-lb_files_TemporaryDirectory_12release_name

    .p2align 2
    .globl lb_files_TemporaryDirectory_close
    .type lb_files_TemporaryDirectory_close, %function
lb_files_TemporaryDirectory_close:
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
    b.ne .L7_2
.L7_1:
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
.L7_4:
    b .L7_3
.L7_2:
.L7_3:
    ldr x14, [x19]
    mov x0, x14
    sub x8, x29, #104
    bl lb_files_11remove_tree
    sub x15, x29, #104
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L7_6
    b .L7_5
.L7_6:
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
.L7_7:
.L7_5:
    mov x0, x19
    bl lb_files_TemporaryDirectory_12release_name
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

    .size lb_files_TemporaryDirectory_close, .-lb_files_TemporaryDirectory_close

    .p2align 2
    .globl lb_files_TemporaryDirectory_destroy
    .type lb_files_TemporaryDirectory_destroy, %function
lb_files_TemporaryDirectory_destroy:
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
    bl lb_files_TemporaryDirectory_close
    sub x15, x29, #88
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L8_4
    b .L8_3
.L8_4:
    sub x14, x29, #56
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b .L8_1
.L8_3:
    b .L8_2
.L8_1:
.L8_2:
    mov x0, x19
    bl lb_files_TemporaryDirectory_12release_name
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_files_TemporaryDirectory_destroy, .-lb_files_TemporaryDirectory_destroy

    .section .init_array,"aw"
    .p2align 3
    .quad lb_files_workspace_0init

    .section .rodata
.Ltext_0:
    .asciz "the filesystem path could not be resolved"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/files/workspace.lucb:33:5"
.Ltext_3:
    .asciz ".luce-00000000000000000000000000000000"
.Ltext_4:
    .asciz "0123456789abcdef"
.Ltext_5:
    .asciz "src/std/files/workspace.lucb:42:5"
.Ltext_6:
    .asciz "src/std/files/workspace.lucb:48:13"
.Ltext_7:
    .asciz "shift count out of range"
.Ltext_8:
    .asciz "src/std/files/workspace.lucb:49:13"
.Ltext_9:
    .asciz "src/std/files/workspace.lucb:52:17"
.Ltext_10:
    .asciz "no unused temporary directory name was found"
.Ltext_11:
    .asciz "src/std/files/workspace.lucb:56:5"
.Ltext_12:
    .asciz "src/std/files/workspace.lucb:90:9"
.Ltext_13:
    .asciz "a temporary directory lost its allocator"
.Ltext_14:
    .asciz "src/std/files/workspace.lucb:94:13"
.Ltext_15:
    .asciz ""
.Ltext_16:
    .asciz "integer overflow"
.Ltext_17:
    .asciz "index out of bounds"

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
