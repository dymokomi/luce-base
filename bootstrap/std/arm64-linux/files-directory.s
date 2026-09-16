    .text

    .p2align 2
    .globl lb_files_directory_0init
    .type lb_files_directory_0init, %function
lb_files_directory_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_files_directory_0init, .-lb_files_directory_0init

    .p2align 2
    .globl lb_files_Directory_open
    .type lb_files_Directory_open, %function
lb_files_Directory_open:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #112]
    sub x16, x29, #88
    str x0, [x16]
    sub x16, x29, #104
    str w1, [x16]
    adrp x14, lb_files_20current_directory_fd
    add x14, x14, :lo12:lb_files_20current_directory_fd
    ldrsw x14, [x14]
    sub x15, x29, #88
    ldr x15, [x15]
    sub x12, x29, #104
    ldrb w12, [x12]
    mov x0, x14
    mov x1, x15
    mov x2, x12
    sub x8, x29, #144
    bl lb_files_17open_directory_at
    sub x15, x29, #144
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L1_2
    b .L1_1
.L1_2:
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_3:
.L1_1:
    sub x19, x29, #72
    mov x10, x15
    mov x11, x19
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    add x14, x19, #32
    mov x9, #0
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
.L1_4:
    adrp x0, .Ltext_1
    add x0, x0, :lo12:.Ltext_1
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_files_Directory_open, .-lb_files_Directory_open

    .p2align 2
    .globl lb_files_Directory_descriptor
    .type lb_files_Directory_descriptor, %function
lb_files_Directory_descriptor:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    str x20, [sp, #88]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
    ldr x14, [x9]
    ldr x14, [x14]
    cbnz x14, .L2_1
    b .L2_2
.L2_1:
    b .L2_3
.L2_2:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, lb_io_closed
    add x15, x15, :lo12:lb_io_closed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_2
    add x15, x15, :lo12:.Ltext_2
    sub x12, x29, #104
    str x15, [x12]
    add x15, x12, #8
    movz x9, #23
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
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_4:
.L2_3:
    mov x0, x14
    bl dirfd
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    b.ge .L2_6
.L2_5:
    sub x19, x29, #80
    add x20, x19, #8
    bl lb_c_errno
    mov w14, w0
    mov x0, x14
    bl lb_files_14classify_error
    mov w14, w0
    str w14, [x20]
    adrp x14, .Ltext_3
    add x14, x14, :lo12:.Ltext_3
    sub x15, x29, #120
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
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
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_8:
    b .L2_7
.L2_6:
.L2_7:
    sub x14, x29, #80
    str w15, [x14]
    add x12, x14, #32
    mov x9, #0
    strb w9, [x12]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_9:
    adrp x0, .Ltext_4
    add x0, x0, :lo12:.Ltext_4
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_files_Directory_descriptor, .-lb_files_Directory_descriptor

    .p2align 2
    .globl lb_files_Directory_metadata
    .type lb_files_Directory_metadata, %function
lb_files_Directory_metadata:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #400
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #368]
    sub x16, x29, #200
    str x0, [x16]
    sub x9, x29, #200
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #240
    bl lb_files_Directory_descriptor
    sub x15, x29, #240
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L3_2
    b .L3_1
.L3_2:
    add x14, x15, #8
    sub x19, x29, #192
    add x12, x19, #128
    mov x10, x14
    mov x11, x12
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
    ldr x19, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_3:
.L3_1:
    ldrsw x14, [x15]
    mov x0, x14
    sub x8, x29, #400
    bl lb_files_19metadata_descriptor
    sub x12, x29, #400
    add x14, x12, #152
    ldrb w14, [x14]
    cbnz w14, .L3_5
    b .L3_4
.L3_5:
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
    ldr x19, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_6:
.L3_4:
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
    ldr x19, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_7:
    adrp x0, .Ltext_5
    add x0, x0, :lo12:.Ltext_5
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_files_Directory_metadata, .-lb_files_Directory_metadata

    .p2align 2
    .globl lb_files_Directory_14entry_metadata
    .type lb_files_Directory_14entry_metadata, %function
lb_files_Directory_14entry_metadata:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #432
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #400]
    sub x16, x29, #200
    str x0, [x16]
    sub x16, x29, #216
    str x1, [x16]
    sub x16, x29, #232
    str w2, [x16]
    sub x9, x29, #200
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #272
    bl lb_files_Directory_descriptor
    sub x15, x29, #272
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L4_2
    b .L4_1
.L4_2:
    add x14, x15, #8
    sub x19, x29, #192
    add x12, x19, #128
    mov x10, x14
    mov x11, x12
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
    ldr x19, [sp, #400]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_3:
.L4_1:
    ldrsw x14, [x15]
    sub x12, x29, #216
    ldr x12, [x12]
    sub x13, x29, #232
    ldrb w13, [x13]
    mov x0, x14
    mov x1, x12
    mov x2, x13
    sub x8, x29, #432
    bl lb_files_11metadata_at
    sub x12, x29, #432
    add x14, x12, #152
    ldrb w14, [x14]
    cbnz w14, .L4_5
    b .L4_4
.L4_5:
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
    ldr x19, [sp, #400]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_6:
.L4_4:
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
    ldr x19, [sp, #400]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_7:
    adrp x0, .Ltext_6
    add x0, x0, :lo12:.Ltext_6
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_files_Directory_14entry_metadata, .-lb_files_Directory_14entry_metadata

    .p2align 2
    .globl lb_files_Directory_14open_directory
    .type lb_files_Directory_14open_directory, %function
lb_files_Directory_14open_directory:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #160]
    sub x16, x29, #80
    str x0, [x16]
    sub x16, x29, #96
    str x1, [x16]
    sub x16, x29, #112
    str w2, [x16]
    sub x9, x29, #80
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #152
    bl lb_files_Directory_descriptor
    sub x15, x29, #152
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L5_2
    b .L5_1
.L5_2:
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_3:
.L5_1:
    ldrsw x14, [x15]
    sub x12, x29, #96
    ldr x12, [x12]
    sub x13, x29, #112
    ldrb w13, [x13]
    mov x0, x14
    mov x1, x12
    mov x2, x13
    sub x8, x29, #192
    bl lb_files_17open_directory_at
    sub x12, x29, #192
    add x14, x12, #32
    ldrb w14, [x14]
    cbnz w14, .L5_5
    b .L5_4
.L5_5:
    add x14, x12, #8
    sub x19, x29, #72
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
    ldr x19, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_6:
.L5_4:
    sub x19, x29, #72
    mov x10, x12
    mov x11, x19
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L5_7:
    adrp x0, .Ltext_7
    add x0, x0, :lo12:.Ltext_7
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_files_Directory_14open_directory, .-lb_files_Directory_14open_directory

    .p2align 2
    .globl lb_files_Directory_9open_file
    .type lb_files_Directory_9open_file, %function
lb_files_Directory_9open_file:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #320
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #288]
    str x20, [sp, #280]
    str x21, [sp, #272]
    str x22, [sp, #264]
    str x23, [sp, #256]
    str x24, [sp, #248]
    sub x16, x29, #120
    str x0, [x16]
    sub x16, x29, #136
    str x1, [x16]
    sub x16, x29, #152
    str w2, [x16]
    sub x16, x29, #168
    str w3, [x16]
    sub x16, x29, #184
    str w4, [x16]
    sub x16, x29, #200
    str w5, [x16]
    sub x9, x29, #120
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #240
    bl lb_files_Directory_descriptor
    sub x15, x29, #240
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L6_2
    b .L6_1
.L6_2:
    add x14, x15, #8
    sub x19, x29, #112
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_3:
.L6_1:
    ldrsw x19, [x15]
    sub x14, x29, #152
    ldrb w14, [x14]
    sub x12, x29, #168
    ldr w20, [x12]
    mov x0, x14
    mov x1, x20
    sub x8, x29, #280
    bl lb_files_15file_open_flags
    sub x12, x29, #280
    add x14, x12, #32
    ldrb w14, [x14]
    cbnz w14, .L6_5
    b .L6_4
.L6_5:
    add x14, x12, #8
    sub x19, x29, #112
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_6:
.L6_4:
    ldrsw x14, [x12]
    sub x15, x29, #184
    ldrb w15, [x15]
    mov x10, #0
    cmp w15, w10
    b.ne .L6_8
.L6_7:
    movz x10, #32768
    orr w15, w14, w10
    b .L6_9
.L6_8:
    mov w15, w14
.L6_9:
    sub x14, x29, #200
    ldrb w14, [x14]
    cbnz w14, .L6_10
    b .L6_11
.L6_10:
    movz x10, #2048
    orr w14, w15, w10
    mov w21, w14
    b .L6_12
.L6_11:
    mov w21, w15
.L6_12:
    sub x14, x29, #136
    ldr x22, [x14]
    mov x0, x19
    mov x1, x22
    mov x2, x21
    mov x3, x20
    bl openat
    mov w14, w0
    mov w23, w14
.L6_13:
    mov x10, #0
    cmp w23, w10
    cset w24, lt
    cbnz w24, .L6_16
    b .L6_23
.L6_23:
    mov w14, w24
    b .L6_17
.L6_16:
    bl lb_c_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    cset w14, eq
.L6_17:
    and w15, w14, #255
    cbnz w15, .L6_14
    b .L6_15
.L6_14:
    mov x0, x19
    mov x1, x22
    mov x2, x21
    mov x3, x20
    bl openat
    mov w23, w0
    b .L6_13
.L6_15:
    cbnz w24, .L6_18
    b .L6_19
.L6_18:
    sub x19, x29, #112
    add x20, x19, #8
    bl lb_c_errno
    mov w14, w0
    mov x0, x14
    bl lb_files_14classify_error
    mov w14, w0
    str w14, [x20]
    adrp x14, .Ltext_8
    add x14, x14, :lo12:.Ltext_8
    sub x15, x29, #296
    str x14, [x15]
    add x14, x15, #8
    movz x9, #47
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_21:
    b .L6_20
.L6_19:
.L6_20:
    sub x19, x29, #304
    mov x11, x19
    str xzr, [x11, #0]
    sub x14, x29, #312
    str w23, [x14]
    add x15, x14, #4
    movz x9, #1
    strb w9, [x15]
    mov x10, x14
    mov x11, x19
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    sub x20, x29, #112
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
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L6_22:
    adrp x0, .Ltext_9
    add x0, x0, :lo12:.Ltext_9
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_files_Directory_9open_file, .-lb_files_Directory_9open_file

    .p2align 2
    .globl lb_files_Directory_next
    .type lb_files_Directory_next, %function
lb_files_Directory_next:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #384
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #352]
    str x20, [sp, #344]
    str x21, [sp, #336]
    str x22, [sp, #328]
    str x23, [sp, #320]
    str x24, [sp, #312]
    str x25, [sp, #304]
    str x26, [sp, #296]
    str x27, [sp, #288]
    str x28, [sp, #280]
    sub x16, x29, #168
    str x0, [x16]
    sub x9, x29, #168
    ldr x14, [x9]
    ldr x9, [x14]
    str x9, [sp, #0]
    ldr x9, [sp, #0]
    cbnz x9, .L7_1
    b .L7_2
.L7_1:
    b .L7_3
.L7_2:
    sub x19, x29, #160
    add x14, x19, #24
    adrp x15, lb_io_closed
    add x15, x15, :lo12:lb_io_closed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_2
    add x15, x15, :lo12:.Ltext_2
    sub x12, x29, #184
    str x15, [x12]
    add x15, x12, #8
    movz x9, #23
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    ldr x26, [sp, #296]
    ldr x27, [sp, #288]
    ldr x28, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_3:
    sub x28, x29, #200
    sub x27, x29, #256
    add x20, x27, #48
    add x21, x27, #16
    sub x22, x29, #272
    adrp x23, .Ltext_10
    add x23, x23, :lo12:.Ltext_10
    sub x26, x29, #312
    add x24, x26, #8
    add x9, x28, #8
    str x9, [sp, #24]
    adrp x9, .Ltext_11
    add x9, x9, :lo12:.Ltext_11
    str x9, [sp, #16]
    sub x25, x29, #328
    add x9, x25, #8
    str x9, [sp, #8]
.L7_5:
.L7_6:
    ldr x0, [sp, #0]
    sub x8, x29, #256
    bl lb_files_10next_entry
    ldrb w14, [x20]
    cbnz w14, .L7_9
    b .L7_8
.L7_9:
    add x14, x27, #24
    sub x19, x29, #160
    add x15, x19, #24
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    ldr x26, [sp, #296]
    ldr x27, [sp, #288]
    ldr x28, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_8:
    ldrb w14, [x21]
    cbnz w14, .L7_11
    b .L7_12
.L7_11:
    mov x10, x27
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b .L7_13
.L7_12:
    sub x19, x29, #296
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #160
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #48
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    ldr x26, [sp, #296]
    ldr x27, [sp, #288]
    ldr x28, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_13:
    mov x10, x22
    mov x11, x28
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    str x23, [x26]
    movz x9, #1
    str x9, [x24]
    ldr x9, [sp, #24]
    ldr x19, [x9]
    movz x10, #1
    cmp x19, x10
    cset w14, eq
    cbnz w14, .L7_18
    b .L7_25
.L7_25:
    mov w15, w14
    b .L7_19
.L7_18:
    ldr x14, [x28]
    mov x0, x14
    mov x1, x23
    mov x2, x19
    bl memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L7_19:
    and w14, w15, #255
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, .L7_20
    b .L7_26
.L7_26:
    mov w15, w14
    b .L7_21
.L7_20:
    ldr x9, [sp, #16]
    str x9, [x25]
    movz x9, #2
    ldr x10, [sp, #8]
    str x9, [x10]
    movz x10, #2
    cmp x19, x10
    cset w14, eq
    cbnz w14, .L7_22
    b .L7_27
.L7_27:
    mov w15, w14
    b .L7_23
.L7_22:
    ldr x14, [x28]
    mov x0, x14
    ldr x1, [sp, #16]
    mov x2, x19
    bl memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L7_23:
    and w14, w15, #255
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov w15, w14
.L7_21:
    and w14, w15, #255
    cbnz w14, .L7_15
    b .L7_16
.L7_15:
    sub x19, x29, #352
    mov x10, x28
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #16
    movz x9, #1
    strb w9, [x14]
    sub x20, x29, #160
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x20, #48
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #352]
    ldr x20, [sp, #344]
    ldr x21, [sp, #336]
    ldr x22, [sp, #328]
    ldr x23, [sp, #320]
    ldr x24, [sp, #312]
    ldr x25, [sp, #304]
    ldr x26, [sp, #296]
    ldr x27, [sp, #288]
    ldr x28, [sp, #280]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L7_16:
.L7_17:
    b .L7_5

    .size lb_files_Directory_next, .-lb_files_Directory_next

    .p2align 2
    .globl lb_files_Directory_close
    .type lb_files_Directory_close, %function
lb_files_Directory_close:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #64]
    sub x16, x29, #72
    str x0, [x16]
    sub x9, x29, #72
    ldr x14, [x9]
    ldr x15, [x14]
    cbnz x15, .L8_1
    b .L8_2
.L8_1:
    b .L8_3
.L8_2:
    sub x14, x29, #64
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
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_4:
.L8_3:
    mov x9, #0
    str x9, [x14]
    mov x0, x15
    bl closedir
    mov w12, w0
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    mov x10, #0
    cmp w12, w10
    b.ne .L8_6
.L8_5:
    sub x19, x29, #64
    bl lb_c_errno
    mov w14, w0
    mov x0, x14
    bl lb_files_14classify_error
    mov w14, w0
    str w14, [x19]
    adrp x14, .Ltext_13
    add x14, x14, :lo12:.Ltext_13
    sub x15, x29, #88
    str x14, [x15]
    add x14, x15, #8
    movz x9, #33
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
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L8_8:
    b .L8_7
.L8_6:
.L8_7:
    sub x14, x29, #64
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
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_files_Directory_close, .-lb_files_Directory_close

    .p2align 2
    .globl lb_files_Directory_destroy
    .type lb_files_Directory_destroy, %function
lb_files_Directory_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #80
    bl lb_files_Directory_close
    sub x15, x29, #80
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L9_4
    b .L9_3
.L9_4:
    sub x14, x29, #48
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b .L9_1
.L9_3:
    b .L9_2
.L9_1:
.L9_2:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_files_Directory_destroy, .-lb_files_Directory_destroy

    .p2align 2
    .globl lb_files_17open_directory_at
    .type lb_files_17open_directory_at, %function
lb_files_17open_directory_at:
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
    sub x16, x29, #120
    str w0, [x16]
    sub x16, x29, #136
    str x1, [x16]
    sub x16, x29, #152
    str w2, [x16]
    sub x14, x29, #152
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    b.ne .L10_2
.L10_1:
    movz x9, #49152
    movk x9, #8, lsl #16
    mov w19, w9
    b .L10_3
.L10_2:
    movz x9, #16384
    movk x9, #8, lsl #16
    mov w19, w9
.L10_3:
    sub x14, x29, #120
    ldrsw x20, [x14]
    sub x14, x29, #136
    ldr x21, [x14]
    mov x0, x20
    mov x1, x21
    mov x2, x19
    bl openat
    mov w14, w0
    mov w22, w14
.L10_4:
    mov x10, #0
    cmp w22, w10
    cset w23, lt
    cbnz w23, .L10_7
    b .L10_19
.L10_19:
    mov w14, w23
    b .L10_8
.L10_7:
    bl lb_c_errno
    mov w14, w0
    movz x10, #4
    cmp w14, w10
    cset w14, eq
.L10_8:
    and w15, w14, #255
    cbnz w15, .L10_5
    b .L10_6
.L10_5:
    mov x0, x20
    mov x1, x21
    mov x2, x19
    bl openat
    mov w22, w0
    b .L10_4
.L10_6:
    cbnz w23, .L10_9
    b .L10_10
.L10_9:
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
    sub x15, x29, #168
    str x14, [x15]
    add x14, x15, #8
    movz x9, #33
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    ldr x22, [sp, #136]
    ldr x23, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L10_12:
    b .L10_11
.L10_10:
.L10_11:
    mov x0, x22
    bl fdopendir
    mov x19, x0
    cbnz x19, .L10_16
    b .L10_14
.L10_16:
.L10_13:
    sub x20, x29, #176
    mov x11, x20
    str xzr, [x11, #0]
    str x19, [x20]
    sub x21, x29, #104
    mov x10, x20
    mov x11, x21
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    add x14, x21, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    ldr x22, [sp, #136]
    ldr x23, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L10_17:
    b .L10_15
.L10_14:
.L10_15:
    bl lb_c_errno
    mov w19, w0
    mov x0, x22
    bl close
    mov w14, w0
    sub x20, x29, #104
    add x21, x20, #8
    mov x0, x19
    bl lb_files_14classify_error
    mov w14, w0
    str w14, [x21]
    adrp x14, .Ltext_15
    add x14, x14, :lo12:.Ltext_15
    sub x15, x29, #192
    str x14, [x15]
    add x14, x15, #8
    movz x9, #41
    str x9, [x14]
    add x14, x21, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    ldr x22, [sp, #136]
    ldr x23, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L10_18:
    adrp x0, .Ltext_16
    add x0, x0, :lo12:.Ltext_16
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_files_17open_directory_at, .-lb_files_17open_directory_at

    .p2align 2
    .globl lb_files_list
    .type lb_files_list, %function
lb_files_list:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1296
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #1264]
    str x20, [sp, #1256]
    str x21, [sp, #1248]
    str x22, [sp, #1240]
    str x23, [sp, #1232]
    str x24, [sp, #1224]
    str x25, [sp, #1216]
    str x26, [sp, #1208]
    str x27, [sp, #1200]
    str x28, [sp, #1192]
    sub x16, x29, #168
    str x0, [x16]
    sub x19, x29, #176
    sub x14, x29, #168
    ldr x14, [x14]
    mov x0, x14
    movz x1, #1
    sub x8, x29, #216
    bl lb_files_Directory_open
    sub x15, x29, #216
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L11_2
    b .L11_1
.L11_2:
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1264]
    ldr x20, [sp, #1256]
    ldr x21, [sp, #1248]
    ldr x22, [sp, #1240]
    ldr x23, [sp, #1232]
    ldr x24, [sp, #1224]
    ldr x25, [sp, #1216]
    ldr x26, [sp, #1208]
    ldr x27, [sp, #1200]
    ldr x28, [sp, #1192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_1:
    mov x10, x15
    mov x11, x19
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    sub x20, x29, #232
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    str x0, [sp, #40]
    sub x22, x29, #280
.L11_5:
    ldr x9, [sp, #40]
    ldr x14, [x9]
    ldr x9, [sp, #40]
    add x9, x9, #8
    str x9, [sp, #376]
    ldr x9, [sp, #376]
    ldr x15, [x9]
    cbnz x15, .L11_7
    b .L11_8
.L11_8:
    adrp x0, .Ltext_19
    add x0, x0, :lo12:.Ltext_19
    adrp x1, .Ltext_18
    add x1, x1, :lo12:.Ltext_18
    bl lb_core_7trap_at
.L11_7:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #256
    movz x2, #8
    sub x8, x29, #304
    ldr x17, [sp], #16
    blr x17
    sub x13, x29, #304
    add x12, x13, #16
    ldrb w12, [x12]
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    movz x10, #1
    and w12, w12, w10
    cbnz w12, .L11_9
    b .L11_10
.L11_9:
    add x14, x22, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_20
    add x15, x15, :lo12:.Ltext_20
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x22, #40
    movz x9, #1
    strb w9, [x14]
    b .L11_6
.L11_10:
    ldr x14, [x13]
    str x14, [x22]
    add x14, x22, #8
    movz x9, #16
    str x9, [x14]
    add x14, x22, #40
    mov x9, #0
    strb w9, [x14]
.L11_6:
    add x14, x22, #40
    ldrb w14, [x14]
    cbnz w14, .L11_12
    b .L11_11
.L11_12:
    add x14, x22, #16
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
    mov x0, x19
    sub x8, x29, #880
    bl lb_files_Directory_close
    sub x15, x29, #880
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L11_79
    b .L11_78
.L11_79:
    sub x14, x29, #848
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b .L11_76
.L11_78:
    b .L11_77
.L11_76:
.L11_77:
.L11_80:
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1264]
    ldr x20, [sp, #1256]
    ldr x21, [sp, #1248]
    ldr x22, [sp, #1240]
    ldr x23, [sp, #1232]
    ldr x24, [sp, #1224]
    ldr x25, [sp, #1216]
    ldr x26, [sp, #1208]
    ldr x27, [sp, #1200]
    ldr x28, [sp, #1192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_11:
    mov x10, x22
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x28, x29, #360
    add x9, x28, #48
    str x9, [sp, #368]
    add x9, x28, #16
    str x9, [sp, #360]
    sub x9, x29, #376
    str x9, [sp, #352]
    add x9, x20, #8
    str x9, [sp, #344]
    sub x9, x29, #384
    str x9, [sp, #336]
    sub x9, x29, #400
    str x9, [sp, #32]
    ldr x9, [sp, #32]
    add x9, x9, #8
    str x9, [sp, #328]
    sub x9, x29, #432
    str x9, [sp, #24]
    sub x9, x29, #480
    str x9, [sp, #16]
    sub x9, x29, #504
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x9, x9, #16
    str x9, [sp, #280]
    ldr x9, [sp, #16]
    add x9, x9, #8
    str x9, [sp, #232]
    ldr x9, [sp, #16]
    add x9, x9, #40
    str x9, [sp, #224]
    ldr x9, [sp, #16]
    add x9, x9, #16
    str x9, [sp, #272]
    adrp x9, .Ltext_20
    add x9, x9, :lo12:.Ltext_20
    str x9, [sp, #264]
    ldr x9, [sp, #272]
    add x9, x9, #8
    str x9, [sp, #256]
    ldr x9, [sp, #272]
    add x9, x9, #16
    str x9, [sp, #248]
    ldr x9, [sp, #16]
    add x9, x9, #40
    str x9, [sp, #240]
    ldr x9, [sp, #16]
    add x9, x9, #16
    str x9, [sp, #320]
    adrp x9, .Ltext_17
    add x9, x9, :lo12:.Ltext_17
    str x9, [sp, #312]
    ldr x9, [sp, #320]
    add x9, x9, #8
    str x9, [sp, #304]
    ldr x9, [sp, #320]
    add x9, x9, #16
    str x9, [sp, #296]
    ldr x9, [sp, #16]
    add x9, x9, #40
    str x9, [sp, #288]
    ldr x9, [sp, #16]
    add x9, x9, #40
    str x9, [sp, #216]
    sub x9, x29, #520
    str x9, [sp, #208]
    ldr x9, [sp, #208]
    add x9, x9, #8
    str x9, [sp, #200]
    sub x27, x29, #536
    ldr x9, [sp, #352]
    add x9, x9, #8
    str x9, [sp, #192]
    sub x25, x29, #584
    sub x26, x29, #608
    add x9, x26, #16
    str x9, [sp, #152]
    add x9, x25, #8
    str x9, [sp, #104]
    add x9, x25, #40
    str x9, [sp, #96]
    add x9, x25, #16
    str x9, [sp, #144]
    adrp x9, .Ltext_20
    add x9, x9, :lo12:.Ltext_20
    str x9, [sp, #136]
    ldr x9, [sp, #144]
    add x9, x9, #8
    str x9, [sp, #128]
    ldr x9, [sp, #144]
    add x9, x9, #16
    str x9, [sp, #120]
    add x9, x25, #40
    str x9, [sp, #112]
    add x23, x25, #16
    adrp x9, .Ltext_17
    add x9, x9, :lo12:.Ltext_17
    str x9, [sp, #184]
    add x9, x23, #8
    str x9, [sp, #176]
    add x9, x23, #16
    str x9, [sp, #168]
    add x9, x25, #40
    str x9, [sp, #160]
    add x9, x25, #40
    str x9, [sp, #88]
    add x9, x27, #8
    str x9, [sp, #80]
    sub x9, x29, #624
    str x9, [sp, #72]
    ldr x9, [sp, #72]
    add x9, x9, #8
    str x9, [sp, #64]
    sub x9, x29, #640
    str x9, [sp, #56]
    ldr x9, [sp, #56]
    add x9, x9, #8
    str x9, [sp, #48]
    mov x9, #0
    mov x21, x9
.L11_14:
    mov x0, x19
    sub x8, x29, #360
    bl lb_files_Directory_next
    ldr x9, [sp, #368]
    ldrb w14, [x9]
    cbnz w14, .L11_18
    b .L11_17
.L11_18:
    add x14, x28, #24
    sub x22, x29, #152
    add x15, x22, #16
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x22, #40
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x21
    bl lb_files_15release_entries
    mov x0, x19
    sub x8, x29, #880
    bl lb_files_Directory_close
    sub x15, x29, #880
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L11_84
    b .L11_83
.L11_84:
    sub x14, x29, #848
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b .L11_81
.L11_83:
    b .L11_82
.L11_81:
.L11_82:
.L11_85:
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1264]
    ldr x20, [sp, #1256]
    ldr x21, [sp, #1248]
    ldr x22, [sp, #1240]
    ldr x23, [sp, #1232]
    ldr x24, [sp, #1224]
    ldr x25, [sp, #1216]
    ldr x26, [sp, #1208]
    ldr x27, [sp, #1200]
    ldr x28, [sp, #1192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_17:
    ldr x9, [sp, #360]
    ldrb w14, [x9]
    cbnz w14, .L11_20
    b .L11_16
.L11_20:
    mov x10, x28
    ldr x11, [sp, #352]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
.L11_15:
    ldr x9, [sp, #344]
    ldr x14, [x9]
    cmp x14, x21
    b.ne .L11_22
.L11_21:
    mov x0, x14
    movz x1, #2
    movz x2, #64
    ldr x3, [sp, #336]
    bl lb_core_6qmul_u
    mov w15, w0
    ldr x9, [sp, #336]
    ldr x22, [x9]
    ldr x10, [sp, #32]
    str x22, [x10]
    ldr x10, [sp, #328]
    strb w15, [x10]
    ldr x9, [sp, #328]
    ldrb w15, [x9]
    cbnz w15, .L11_24
    b .L11_25
.L11_24:
    b .L11_26
.L11_25:
    sub x22, x29, #152
    add x14, x22, #16
    adrp x15, lb_memory_exhausted
    add x15, x15, :lo12:lb_memory_exhausted
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_21
    add x15, x15, :lo12:.Ltext_21
    sub x12, x29, #416
    str x15, [x12]
    add x15, x12, #8
    movz x9, #34
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x22, #40
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x21
    bl lb_files_15release_entries
    mov x0, x19
    sub x8, x29, #880
    bl lb_files_Directory_close
    sub x15, x29, #880
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L11_89
    b .L11_88
.L11_89:
    sub x14, x29, #848
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b .L11_86
.L11_88:
    b .L11_87
.L11_86:
.L11_87:
.L11_90:
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1264]
    ldr x20, [sp, #1256]
    ldr x21, [sp, #1248]
    ldr x22, [sp, #1240]
    ldr x23, [sp, #1232]
    ldr x24, [sp, #1224]
    ldr x25, [sp, #1216]
    ldr x26, [sp, #1208]
    ldr x27, [sp, #1200]
    ldr x28, [sp, #1192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_26:
    movz x10, #1024, lsl #48
    cmp x22, x10
    b.ls .L11_29
.L11_28:
    movz x9, #1
    movk x9, #3178, lsl #16
    ldr x10, [sp, #320]
    str w9, [x10]
    ldr x9, [sp, #312]
    ldr x10, [sp, #304]
    str x9, [x10]
    movz x9, #47
    ldr x10, [sp, #296]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #288]
    strb w9, [x10]
    b .L11_30
.L11_29:
    lsl x24, x22, #4
    ldr x9, [sp, #40]
    ldr x14, [x9]
    ldr x9, [sp, #376]
    ldr x15, [x9]
    cbnz x15, .L11_31
    b .L11_32
.L11_32:
    adrp x0, .Ltext_22
    add x0, x0, :lo12:.Ltext_22
    adrp x1, .Ltext_18
    add x1, x1, :lo12:.Ltext_18
    bl lb_core_7trap_at
.L11_31:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x24
    movz x2, #8
    sub x8, x29, #504
    ldr x17, [sp], #16
    blr x17
    ldr x9, [sp, #280]
    ldrb w12, [x9]
    mov x10, #0
    cmp x24, x10
    cset w13, ne
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    and w12, w13, w12
    cbnz w12, .L11_33
    b .L11_34
.L11_33:
    movz x9, #1
    movk x9, #3178, lsl #16
    ldr x10, [sp, #272]
    str w9, [x10]
    ldr x9, [sp, #264]
    ldr x10, [sp, #256]
    str x9, [x10]
    movz x9, #16
    ldr x10, [sp, #248]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #240]
    strb w9, [x10]
    b .L11_30
.L11_34:
    ldr x9, [sp, #8]
    ldr x14, [x9]
    ldr x10, [sp, #16]
    str x14, [x10]
    ldr x10, [sp, #232]
    str x22, [x10]
    mov x9, #0
    ldr x10, [sp, #224]
    strb w9, [x10]
.L11_30:
    ldr x9, [sp, #216]
    ldrb w14, [x9]
    cbnz w14, .L11_36
    b .L11_35
.L11_36:
    ldr x9, [sp, #16]
    add x14, x9, #16
    sub x22, x29, #152
    add x15, x22, #16
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x22, #40
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x21
    bl lb_files_15release_entries
    mov x0, x19
    sub x8, x29, #880
    bl lb_files_Directory_close
    sub x15, x29, #880
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L11_94
    b .L11_93
.L11_94:
    sub x14, x29, #848
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b .L11_91
.L11_93:
    b .L11_92
.L11_91:
.L11_92:
.L11_95:
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1264]
    ldr x20, [sp, #1256]
    ldr x21, [sp, #1248]
    ldr x22, [sp, #1240]
    ldr x23, [sp, #1232]
    ldr x24, [sp, #1224]
    ldr x25, [sp, #1216]
    ldr x26, [sp, #1208]
    ldr x27, [sp, #1200]
    ldr x28, [sp, #1192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_35:
    ldr x10, [sp, #16]
    ldr x11, [sp, #24]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x9, [sp, #24]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x20
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x21
    bl lb_memory_copy_0g1_str
    ldr x14, [x20]
    ldr x9, [sp, #344]
    ldr x15, [x9]
    mov x9, x15
    movz x10, #16
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_23
    add x0, x0, :lo12:.Ltext_23
    adrp x1, .Ltext_55
    add x1, x1, :lo12:.Ltext_55
    bl lb_core_7trap_at
1:
    mov x15, x9
    ldr x10, [sp, #208]
    str x14, [x10]
    ldr x10, [sp, #200]
    str x15, [x10]
    ldr x9, [sp, #40]
    ldr x14, [x9]
    ldr x9, [sp, #376]
    ldr x15, [x9]
    cbnz x15, .L11_39
    b .L11_38
.L11_39:
    add x12, x15, #16
    ldr x12, [x12]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    ldr x9, [sp, #224]
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L11_38:
    ldr x10, [sp, #24]
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b .L11_23
.L11_22:
.L11_23:
    ldr x9, [sp, #192]
    ldr x14, [x9]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_24
    add x0, x0, :lo12:.Ltext_24
    adrp x1, .Ltext_55
    add x1, x1, :lo12:.Ltext_55
    bl lb_core_7trap_at
1:
    mov x22, x9
    movz x10, #16384, lsl #48
    cmp x22, x10
    b.ls .L11_41
.L11_40:
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x23]
    ldr x9, [sp, #184]
    ldr x10, [sp, #176]
    str x9, [x10]
    movz x9, #47
    ldr x10, [sp, #168]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #160]
    strb w9, [x10]
    b .L11_42
.L11_41:
    ldr x9, [sp, #40]
    ldr x14, [x9]
    ldr x9, [sp, #376]
    ldr x15, [x9]
    cbnz x15, .L11_43
    b .L11_44
.L11_44:
    adrp x0, .Ltext_24
    add x0, x0, :lo12:.Ltext_24
    adrp x1, .Ltext_18
    add x1, x1, :lo12:.Ltext_18
    bl lb_core_7trap_at
.L11_43:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x22
    movz x2, #1
    sub x8, x29, #608
    ldr x17, [sp], #16
    blr x17
    ldr x9, [sp, #152]
    ldrb w12, [x9]
    mov x10, #0
    cmp x22, x10
    cset w13, ne
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    and w12, w13, w12
    cbnz w12, .L11_45
    b .L11_46
.L11_45:
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
    b .L11_42
.L11_46:
    ldr x14, [x26]
    str x14, [x25]
    ldr x10, [sp, #104]
    str x22, [x10]
    mov x9, #0
    ldr x10, [sp, #96]
    strb w9, [x10]
.L11_42:
    ldr x9, [sp, #88]
    ldrb w14, [x9]
    cbnz w14, .L11_48
    b .L11_47
.L11_48:
    add x14, x25, #16
    sub x22, x29, #152
    add x15, x22, #16
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x22, #40
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x21
    bl lb_files_15release_entries
    mov x0, x19
    sub x8, x29, #880
    bl lb_files_Directory_close
    sub x15, x29, #880
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L11_99
    b .L11_98
.L11_99:
    sub x14, x29, #848
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b .L11_96
.L11_98:
    b .L11_97
.L11_96:
.L11_97:
.L11_100:
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1264]
    ldr x20, [sp, #1256]
    ldr x21, [sp, #1248]
    ldr x22, [sp, #1240]
    ldr x23, [sp, #1232]
    ldr x24, [sp, #1224]
    ldr x25, [sp, #1216]
    ldr x26, [sp, #1208]
    ldr x27, [sp, #1200]
    ldr x28, [sp, #1192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_47:
    mov x10, x25
    mov x11, x27
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x9, [sp, #192]
    ldr x14, [x9]
    mov x9, x27
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x9, [sp, #352]
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x14
    bl lb_memory_copy_0g1_u8
    ldr x9, [sp, #192]
    ldr x14, [x9]
    ldr x15, [x27]
    ldr x9, [sp, #80]
    ldr x12, [x9]
    cmp x14, x12
    b.lo 1f
    adrp x0, .Ltext_25
    add x0, x0, :lo12:.Ltext_25
    adrp x1, .Ltext_27
    add x1, x1, :lo12:.Ltext_27
    bl lb_core_7trap_at
1:
    add x14, x14, x15
    mov x9, #0
    strb w9, [x14]
    ldr x14, [x20]
    ldr x9, [sp, #344]
    ldr x15, [x9]
    cmp x21, x15
    b.lo 1f
    adrp x0, .Ltext_26
    add x0, x0, :lo12:.Ltext_26
    adrp x1, .Ltext_27
    add x1, x1, :lo12:.Ltext_27
    bl lb_core_7trap_at
1:
    lsl x15, x21, #4
    add x15, x14, x15
    ldr x12, [x27]
    ldr x9, [sp, #80]
    ldr x14, [x9]
    ldr x9, [sp, #192]
    ldr x13, [x9]
    add x14, x14, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, .Ltext_26
    add x0, x0, :lo12:.Ltext_26
    adrp x1, .Ltext_27
    add x1, x1, :lo12:.Ltext_27
    bl lb_core_7trap_at
1:
    cmp x13, x14
    b.lo 1f
    adrp x0, .Ltext_26
    add x0, x0, :lo12:.Ltext_26
    adrp x1, .Ltext_27
    add x1, x1, :lo12:.Ltext_27
    bl lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x13
    b.ls .L11_50
.L11_51:
    adrp x0, .Ltext_26
    add x0, x0, :lo12:.Ltext_26
    adrp x1, .Ltext_27
    add x1, x1, :lo12:.Ltext_27
    bl lb_core_7trap_at
.L11_50:
    ldr x10, [sp, #72]
    str x12, [x10]
    ldr x10, [sp, #64]
    str x13, [x10]
    ldr x10, [sp, #56]
    str x12, [x10]
    ldr x10, [sp, #48]
    str x13, [x10]
    ldr x10, [sp, #56]
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x21, #1
    mov x21, x14
    b .L11_14
.L11_16:
    mov x0, x19
    sub x8, x29, #672
    bl lb_files_Directory_close
    sub x15, x29, #672
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L11_53
    b .L11_52
.L11_53:
    sub x22, x29, #152
    add x14, x22, #16
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x22, #40
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x21
    bl lb_files_15release_entries
    mov x0, x19
    sub x8, x29, #880
    bl lb_files_Directory_close
    sub x12, x29, #880
    add x14, x12, #24
    ldrb w14, [x14]
    cbnz w14, .L11_104
    b .L11_103
.L11_104:
    sub x14, x29, #848
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b .L11_101
.L11_103:
    b .L11_102
.L11_101:
.L11_102:
.L11_105:
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1264]
    ldr x20, [sp, #1256]
    ldr x21, [sp, #1248]
    ldr x22, [sp, #1240]
    ldr x23, [sp, #1232]
    ldr x24, [sp, #1224]
    ldr x25, [sp, #1216]
    ldr x26, [sp, #1208]
    ldr x27, [sp, #1200]
    ldr x28, [sp, #1192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_52:
    ldr x15, [x20]
    add x22, x20, #8
    ldr x14, [x22]
    add x14, x14, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, .Ltext_29
    add x0, x0, :lo12:.Ltext_29
    adrp x1, .Ltext_27
    add x1, x1, :lo12:.Ltext_27
    bl lb_core_7trap_at
1:
    cmp x21, x14
    b.lo 1f
    adrp x0, .Ltext_29
    add x0, x0, :lo12:.Ltext_29
    adrp x1, .Ltext_27
    add x1, x1, :lo12:.Ltext_27
    bl lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x21
    b.ls .L11_55
.L11_56:
    adrp x0, .Ltext_29
    add x0, x0, :lo12:.Ltext_29
    adrp x1, .Ltext_27
    add x1, x1, :lo12:.Ltext_27
    bl lb_core_7trap_at
.L11_55:
    sub x14, x29, #688
    str x15, [x14]
    add x12, x14, #8
    str x21, [x12]
    mov x10, x14
    sub x11, x29, #896
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x23, x29, #896
    add x24, x23, #8
.L11_107:
    movz x10, #2
    udiv x14, x21, x10
.L11_108:
    mov x10, #0
    cmp x14, x10
    b.ls .L11_110
.L11_109:
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_36
    add x0, x0, :lo12:.Ltext_36
    adrp x1, .Ltext_55
    add x1, x1, :lo12:.Ltext_55
    bl lb_core_7trap_at
1:
    mov x25, x9
    ldr x15, [x24]
    mov x9, x23
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x25
    mov x3, x15
    bl lb_files_10sift_names
    mov x14, x25
    b .L11_108
.L11_110:
    ldr x14, [x24]
    sub x25, x29, #912
.L11_111:
    movz x10, #1
    cmp x14, x10
    b.ls .L11_113
.L11_112:
    sub x26, x14, #1
    ldr x27, [x23]
    ldr x28, [x24]
    mov x9, #0
    cmp x9, x28
    b.lo 1f
    adrp x0, .Ltext_38
    add x0, x0, :lo12:.Ltext_38
    adrp x1, .Ltext_27
    add x1, x1, :lo12:.Ltext_27
    bl lb_core_7trap_at
1:
    mov x10, x27
    mov x11, x25
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    cmp x26, x28
    b.lo 1f
    adrp x0, .Ltext_39
    add x0, x0, :lo12:.Ltext_39
    adrp x1, .Ltext_27
    add x1, x1, :lo12:.Ltext_27
    bl lb_core_7trap_at
1:
    lsl x28, x26, #4
    add x15, x27, x28
    mov x10, x15
    mov x11, x27
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x15, [x23]
    ldr x12, [x24]
    cmp x26, x12
    b.lo 1f
    adrp x0, .Ltext_40
    add x0, x0, :lo12:.Ltext_40
    adrp x1, .Ltext_27
    add x1, x1, :lo12:.Ltext_27
    bl lb_core_7trap_at
1:
    add x15, x28, x15
    mov x10, x25
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x9, x23
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, #0
    mov x3, x26
    bl lb_files_10sift_names
    mov x14, x26
    b .L11_111
.L11_113:
.L11_114:
    mov x10, #0
    cmp x21, x10
    b.ne .L11_58
.L11_57:
    sub x14, x29, #704
    ldr x15, [x20]
    ldr x12, [x22]
    mov x9, x12
    movz x10, #16
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_30
    add x0, x0, :lo12:.Ltext_30
    adrp x1, .Ltext_55
    add x1, x1, :lo12:.Ltext_55
    bl lb_core_7trap_at
1:
    mov x12, x9
    str x15, [x14]
    add x15, x14, #8
    str x12, [x15]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #376]
    ldr x12, [x9]
    cbnz x12, .L11_61
    b .L11_60
.L11_61:
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
.L11_60:
    sub x20, x29, #720
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    sub x21, x29, #152
    mov x10, x20
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x21, #40
    mov x9, #0
    strb w9, [x14]
    mov x0, x19
    sub x8, x29, #880
    bl lb_files_Directory_close
    sub x15, x29, #880
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L11_118
    b .L11_117
.L11_118:
    sub x14, x29, #848
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b .L11_115
.L11_117:
    b .L11_116
.L11_115:
.L11_116:
.L11_119:
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1264]
    ldr x20, [sp, #1256]
    ldr x21, [sp, #1248]
    ldr x22, [sp, #1240]
    ldr x23, [sp, #1232]
    ldr x24, [sp, #1224]
    ldr x25, [sp, #1216]
    ldr x26, [sp, #1208]
    ldr x27, [sp, #1200]
    ldr x28, [sp, #1192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_58:
.L11_59:
    sub x23, x29, #736
    sub x24, x29, #784
    movz x10, #1024, lsl #48
    cmp x21, x10
    b.ls .L11_64
.L11_63:
    add x14, x24, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_17
    add x15, x15, :lo12:.Ltext_17
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x24, #40
    movz x9, #1
    strb w9, [x14]
    b .L11_65
.L11_64:
    lsl x25, x21, #4
    ldr x9, [sp, #40]
    ldr x14, [x9]
    ldr x9, [sp, #376]
    ldr x15, [x9]
    cbnz x15, .L11_66
    b .L11_67
.L11_67:
    adrp x0, .Ltext_31
    add x0, x0, :lo12:.Ltext_31
    adrp x1, .Ltext_18
    add x1, x1, :lo12:.Ltext_18
    bl lb_core_7trap_at
.L11_66:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x25
    movz x2, #8
    sub x8, x29, #808
    ldr x17, [sp], #16
    blr x17
    sub x26, x29, #808
    add x12, x26, #16
    ldrb w12, [x12]
    mov x10, #0
    cmp x25, x10
    cset w13, ne
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    and w12, w13, w12
    cbnz w12, .L11_68
    b .L11_69
.L11_68:
    add x14, x24, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_20
    add x15, x15, :lo12:.Ltext_20
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x24, #40
    movz x9, #1
    strb w9, [x14]
    b .L11_65
.L11_69:
    ldr x14, [x26]
    str x14, [x24]
    add x14, x24, #8
    str x21, [x14]
    add x14, x24, #40
    mov x9, #0
    strb w9, [x14]
.L11_65:
    add x14, x24, #40
    ldrb w14, [x14]
    cbnz w14, .L11_71
    b .L11_70
.L11_71:
    add x14, x24, #16
    sub x22, x29, #152
    add x15, x22, #16
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x22, #40
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x21
    bl lb_files_15release_entries
    mov x0, x19
    sub x8, x29, #880
    bl lb_files_Directory_close
    sub x15, x29, #880
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L11_123
    b .L11_122
.L11_123:
    sub x14, x29, #848
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b .L11_120
.L11_122:
    b .L11_121
.L11_120:
.L11_121:
.L11_124:
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1264]
    ldr x20, [sp, #1256]
    ldr x21, [sp, #1248]
    ldr x22, [sp, #1240]
    ldr x23, [sp, #1232]
    ldr x24, [sp, #1224]
    ldr x25, [sp, #1216]
    ldr x26, [sp, #1208]
    ldr x27, [sp, #1200]
    ldr x28, [sp, #1192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_70:
    mov x10, x24
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x9, x23
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x20
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x21
    bl lb_memory_copy_0g1_str
    sub x14, x29, #824
    ldr x15, [x20]
    ldr x12, [x22]
    mov x9, x12
    movz x10, #16
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_32
    add x0, x0, :lo12:.Ltext_32
    adrp x1, .Ltext_55
    add x1, x1, :lo12:.Ltext_55
    bl lb_core_7trap_at
1:
    mov x12, x9
    str x15, [x14]
    add x15, x14, #8
    str x12, [x15]
    ldr x9, [sp, #40]
    ldr x15, [x9]
    ldr x9, [sp, #376]
    ldr x12, [x9]
    cbnz x12, .L11_74
    b .L11_73
.L11_74:
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
.L11_73:
    sub x20, x29, #152
    mov x10, x23
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #40
    mov x9, #0
    strb w9, [x14]
    mov x0, x19
    sub x8, x29, #880
    bl lb_files_Directory_close
    sub x15, x29, #880
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, .L11_128
    b .L11_127
.L11_128:
    sub x14, x29, #848
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b .L11_125
.L11_127:
    b .L11_126
.L11_125:
.L11_126:
.L11_129:
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1264]
    ldr x20, [sp, #1256]
    ldr x21, [sp, #1248]
    ldr x22, [sp, #1240]
    ldr x23, [sp, #1232]
    ldr x24, [sp, #1224]
    ldr x25, [sp, #1216]
    ldr x26, [sp, #1208]
    ldr x27, [sp, #1200]
    ldr x28, [sp, #1192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_files_list, .-lb_files_list

    .p2align 2
    .globl lb_files_10sift_names
    .type lb_files_10sift_names, %function
lb_files_10sift_names:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    str x19, [sp, #136]
    str x20, [sp, #128]
    str x21, [sp, #120]
    str x22, [sp, #112]
    str x23, [sp, #104]
    str x24, [sp, #96]
    str x25, [sp, #88]
    str x26, [sp, #80]
    str x27, [sp, #72]
    str x28, [sp, #64]
    sub x16, x29, #112
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #128
    str x2, [x16]
    sub x16, x29, #144
    str x3, [x16]
    sub x14, x29, #128
    ldr x14, [x14]
    sub x19, x29, #144
    sub x20, x29, #112
    add x21, x20, #8
    sub x22, x29, #112
    add x23, x22, #8
    sub x24, x29, #160
    mov x25, x14
.L12_1:
    ldr x14, [x19]
.L12_5:
    movz x10, #2
    udiv x15, x14, x10
    cmp x25, x15
    b.hs .L12_3
.L12_2:
    mov x9, x25
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_42
    add x0, x0, :lo12:.Ltext_42
    adrp x1, .Ltext_55
    add x1, x1, :lo12:.Ltext_55
    bl lb_core_7trap_at
1:
    mov x15, x9
    mov x9, x15
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_42
    add x0, x0, :lo12:.Ltext_42
    adrp x1, .Ltext_55
    add x1, x1, :lo12:.Ltext_55
    bl lb_core_7trap_at
1:
    mov x26, x9
    mov x9, x26
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_43
    add x0, x0, :lo12:.Ltext_43
    adrp x1, .Ltext_55
    add x1, x1, :lo12:.Ltext_55
    bl lb_core_7trap_at
1:
    mov x27, x9
    cmp x27, x14
    cset w15, lo
    cbnz w15, .L12_9
    b .L12_15
.L12_15:
    mov w14, w15
    b .L12_10
.L12_9:
    ldr x14, [x20]
    ldr x15, [x21]
    cmp x26, x15
    b.lo 1f
    adrp x0, .Ltext_43
    add x0, x0, :lo12:.Ltext_43
    adrp x1, .Ltext_27
    add x1, x1, :lo12:.Ltext_27
    bl lb_core_7trap_at
1:
    lsl x12, x26, #4
    add x12, x14, x12
    cmp x27, x15
    b.lo 1f
    adrp x0, .Ltext_43
    add x0, x0, :lo12:.Ltext_43
    adrp x1, .Ltext_27
    add x1, x1, :lo12:.Ltext_27
    bl lb_core_7trap_at
1:
    lsl x15, x27, #4
    add x14, x14, x15
    mov x9, x12
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x14
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl lb_core_11str_compare
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, lt
.L12_10:
    and w15, w14, #255
    cbnz w15, .L12_6
    b .L12_7
.L12_6:
    mov x26, x27
    b .L12_8
.L12_7:
.L12_8:
    ldr x14, [x22]
    ldr x15, [x23]
    cmp x25, x15
    b.lo 1f
    adrp x0, .Ltext_45
    add x0, x0, :lo12:.Ltext_45
    adrp x1, .Ltext_27
    add x1, x1, :lo12:.Ltext_27
    bl lb_core_7trap_at
1:
    lsl x12, x25, #4
    add x27, x14, x12
    cmp x26, x15
    b.lo 1f
    adrp x0, .Ltext_45
    add x0, x0, :lo12:.Ltext_45
    adrp x1, .Ltext_27
    add x1, x1, :lo12:.Ltext_27
    bl lb_core_7trap_at
1:
    lsl x15, x26, #4
    add x28, x14, x15
    mov x9, x27
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x28
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl lb_core_11str_compare
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, lt
    mov x10, #0
    cmp w14, w10
    b.ne .L12_12
.L12_11:
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    ldr x23, [sp, #104]
    ldr x24, [sp, #96]
    ldr x25, [sp, #88]
    ldr x26, [sp, #80]
    ldr x27, [sp, #72]
    ldr x28, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L12_12:
.L12_13:
    mov x10, x27
    mov x11, x24
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x10, x28
    mov x11, x27
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x10, x24
    mov x11, x28
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x25, x26
    b .L12_1
.L12_3:
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    ldr x23, [sp, #104]
    ldr x24, [sp, #96]
    ldr x25, [sp, #88]
    ldr x26, [sp, #80]
    ldr x27, [sp, #72]
    ldr x28, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_files_10sift_names, .-lb_files_10sift_names

    .p2align 2
    .globl lb_files_12release_list
    .type lb_files_12release_list, %function
lb_files_12release_list:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str x0, [x16]
    str x1, [x16, #8]
    sub x14, x29, #32
    add x15, x14, #8
    ldr x15, [x15]
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x15
    bl lb_files_15release_entries
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_files_12release_list, .-lb_files_12release_list

    .p2align 2
    .globl lb_files_15release_entries
    .type lb_files_15release_entries, %function
lb_files_15release_entries:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    str x19, [sp, #184]
    str x20, [sp, #176]
    str x21, [sp, #168]
    str x22, [sp, #160]
    str x23, [sp, #152]
    str x24, [sp, #144]
    str x25, [sp, #136]
    str x26, [sp, #128]
    str x27, [sp, #120]
    str x28, [sp, #112]
    sub x16, x29, #112
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #128
    str x2, [x16]
    sub x14, x29, #112
    ldr x20, [x14]
    add x14, x14, #8
    ldr x19, [x14]
    sub x14, x29, #128
    ldr x21, [x14]
    add x14, x19, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, .Ltext_49
    add x0, x0, :lo12:.Ltext_49
    adrp x1, .Ltext_27
    add x1, x1, :lo12:.Ltext_27
    bl lb_core_7trap_at
1:
    cmp x21, x14
    b.lo 1f
    adrp x0, .Ltext_49
    add x0, x0, :lo12:.Ltext_49
    adrp x1, .Ltext_27
    add x1, x1, :lo12:.Ltext_27
    bl lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x21
    b.ls .L14_5
.L14_6:
    adrp x0, .Ltext_49
    add x0, x0, :lo12:.Ltext_49
    adrp x1, .Ltext_27
    add x1, x1, :lo12:.Ltext_27
    bl lb_core_7trap_at
.L14_5:
    sub x14, x29, #144
    str x20, [x14]
    add x14, x14, #8
    str x21, [x14]
    sub x22, x29, #160
    add x23, x22, #8
    sub x24, x29, #176
    add x25, x24, #8
    sub x26, x29, #192
    add x27, x26, #8
    mov x9, #0
    mov x28, x9
.L14_1:
    cmp x28, x21
    b.hs .L14_4
.L14_2:
    lsl x14, x28, #4
    add x14, x14, x20
    mov x10, x14
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x14, [x22]
    ldr x15, [x23]
    mov x9, x15
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_50
    add x0, x0, :lo12:.Ltext_50
    adrp x1, .Ltext_55
    add x1, x1, :lo12:.Ltext_55
    bl lb_core_7trap_at
1:
    mov x15, x9
    str x14, [x24]
    str x15, [x25]
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x12, x0
    str x14, [x26]
    str x15, [x27]
    ldr x14, [x12]
    add x15, x12, #8
    ldr x15, [x15]
    cbnz x15, .L14_8
    b .L14_7
.L14_8:
    add x12, x15, #16
    ldr x12, [x12]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    mov x9, x26
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L14_7:
.L14_3:
    add x14, x28, #1
    mov x28, x14
    b .L14_1
.L14_4:
    mov x10, #0
    cmp x19, x10
    b.ls .L14_10
.L14_9:
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x14, x0
    sub x15, x29, #208
    mov x9, x19
    movz x10, #16
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_51
    add x0, x0, :lo12:.Ltext_51
    adrp x1, .Ltext_55
    add x1, x1, :lo12:.Ltext_55
    bl lb_core_7trap_at
1:
    mov x12, x9
    str x20, [x15]
    add x13, x15, #8
    str x12, [x13]
    ldr x12, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, .L14_13
    b .L14_12
.L14_13:
    add x13, x14, #16
    ldr x13, [x13]
    mov x17, x13
    str x17, [sp, #-16]!
    mov x0, x12
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L14_12:
    b .L14_11
.L14_10:
.L14_11:
    ldr x19, [sp, #184]
    ldr x20, [sp, #176]
    ldr x21, [sp, #168]
    ldr x22, [sp, #160]
    ldr x23, [sp, #152]
    ldr x24, [sp, #144]
    ldr x25, [sp, #136]
    ldr x26, [sp, #128]
    ldr x27, [sp, #120]
    ldr x28, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_files_15release_entries, .-lb_files_15release_entries

    .p2align 2
    .weak lb_memory_copy_0g1_str
    .type lb_memory_copy_0g1_str, %function
lb_memory_copy_0g1_str:
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
    cbnz w14, .L15_11
    b .L15_4
.L15_11:
    mov w15, w14
    b .L15_5
.L15_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
.L15_5:
    and w14, w15, #255
    cbnz w14, .L15_1
    b .L15_2
.L15_1:
    adrp x14, .Ltext_27
    add x14, x14, :lo12:.Ltext_27
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, .Ltext_52
    add x14, x14, :lo12:.Ltext_52
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    b .L15_3
.L15_2:
.L15_3:
    mov x10, #0
    cmp x19, x10
    b.ls .L15_7
.L15_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x9, x19
    movz x10, #16
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_53
    add x0, x0, :lo12:.Ltext_53
    adrp x1, .Ltext_55
    add x1, x1, :lo12:.Ltext_55
    bl lb_core_7trap_at
1:
    mov x12, x9
    mov x0, x14
    mov x1, x15
    mov x2, x12
    bl memcpy
    mov x14, x0
    cbnz x14, .L15_9
    b .L15_10
.L15_10:
    adrp x0, .Ltext_53
    add x0, x0, :lo12:.Ltext_53
    adrp x1, .Ltext_54
    add x1, x1, :lo12:.Ltext_54
    bl lb_core_7trap_at
.L15_9:
    b .L15_8
.L15_7:
.L15_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_memory_copy_0g1_str, .-lb_memory_copy_0g1_str

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
    cbnz w14, .L16_11
    b .L16_4
.L16_11:
    mov w15, w14
    b .L16_5
.L16_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
.L16_5:
    and w14, w15, #255
    cbnz w14, .L16_1
    b .L16_2
.L16_1:
    adrp x14, .Ltext_27
    add x14, x14, :lo12:.Ltext_27
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, .Ltext_52
    add x14, x14, :lo12:.Ltext_52
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    b .L16_3
.L16_2:
.L16_3:
    mov x10, #0
    cmp x19, x10
    b.ls .L16_7
.L16_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl memcpy
    mov x14, x0
    cbnz x14, .L16_9
    b .L16_10
.L16_10:
    adrp x0, .Ltext_53
    add x0, x0, :lo12:.Ltext_53
    adrp x1, .Ltext_54
    add x1, x1, :lo12:.Ltext_54
    bl lb_core_7trap_at
.L16_9:
    b .L16_8
.L16_7:
.L16_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_memory_copy_0g1_u8, .-lb_memory_copy_0g1_u8

    .section .init_array,"aw"
    .p2align 3
    .quad lb_files_directory_0init

    .section .rodata
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/files/directory.lucb:9:9"
.Ltext_2:
    .asciz "the directory is closed"
.Ltext_3:
    .asciz "the directory has no usable descriptor"
.Ltext_4:
    .asciz "src/std/files/directory.lucb:19:9"
.Ltext_5:
    .asciz "src/std/files/directory.lucb:23:9"
.Ltext_6:
    .asciz "src/std/files/directory.lucb:29:9"
.Ltext_7:
    .asciz "src/std/files/directory.lucb:35:9"
.Ltext_8:
    .asciz "the directory-relative file could not be opened"
.Ltext_9:
    .asciz "src/std/files/directory.lucb:58:9"
.Ltext_10:
    .asciz "."
.Ltext_11:
    .asciz ".."
.Ltext_12:
    .asciz "src/std/files/directory.lucb:68:17"
.Ltext_13:
    .asciz "the directory could not be closed"
.Ltext_14:
    .asciz "the directory could not be opened"
.Ltext_15:
    .asciz "the directory stream could not be created"
.Ltext_16:
    .asciz "src/std/files/directory.lucb:102:5"
.Ltext_17:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_18:
    .asciz "memory.unset"
.Ltext_19:
    .asciz "src/std/files/directory.lucb:111:5"
.Ltext_20:
    .asciz "memory.exhausted"
.Ltext_21:
    .asciz "the directory listing is too large"
.Ltext_22:
    .asciz "src/std/files/directory.lucb:117:13"
.Ltext_23:
    .asciz "src/std/files/directory.lucb:119:13"
.Ltext_24:
    .asciz "src/std/files/directory.lucb:121:9"
.Ltext_25:
    .asciz "src/std/files/directory.lucb:123:9"
.Ltext_26:
    .asciz "src/std/files/directory.lucb:124:9"
.Ltext_27:
    .asciz "index out of bounds"
.Ltext_28:
    .asciz "src/std/files/directory.lucb:125:9"
.Ltext_29:
    .asciz "src/std/files/directory.lucb:127:5"
.Ltext_30:
    .asciz "src/std/files/directory.lucb:130:9"
.Ltext_31:
    .asciz "src/std/files/directory.lucb:133:5"
.Ltext_32:
    .asciz "src/std/files/directory.lucb:135:5"
.Ltext_33:
    .asciz "src/std/files/directory.lucb:136:5"
.Ltext_34:
    .asciz "division by zero"
.Ltext_35:
    .asciz "src/std/files/directory.lucb:141:5"
.Ltext_36:
    .asciz "src/std/files/directory.lucb:143:9"
.Ltext_37:
    .asciz "src/std/files/directory.lucb:147:9"
.Ltext_38:
    .asciz "src/std/files/directory.lucb:148:9"
.Ltext_39:
    .asciz "src/std/files/directory.lucb:149:9"
.Ltext_40:
    .asciz "src/std/files/directory.lucb:150:9"
.Ltext_41:
    .asciz "src/std/files/directory.lucb:155:5"
.Ltext_42:
    .asciz "src/std/files/directory.lucb:156:9"
.Ltext_43:
    .asciz "src/std/files/directory.lucb:157:9"
.Ltext_44:
    .asciz "src/std/files/directory.lucb:158:13"
.Ltext_45:
    .asciz "src/std/files/directory.lucb:159:9"
.Ltext_46:
    .asciz "src/std/files/directory.lucb:161:9"
.Ltext_47:
    .asciz "src/std/files/directory.lucb:162:9"
.Ltext_48:
    .asciz "src/std/files/directory.lucb:163:9"
.Ltext_49:
    .asciz "src/std/files/directory.lucb:174:5"
.Ltext_50:
    .asciz "src/std/files/directory.lucb:175:9"
.Ltext_51:
    .asciz "src/std/files/directory.lucb:177:9"
.Ltext_52:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_53:
    .asciz "src/std/memory.lucb:330:9"
.Ltext_54:
    .asciz "null_foreign"
.Ltext_55:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3


    .section .note.GNU-stack,"",%progbits
