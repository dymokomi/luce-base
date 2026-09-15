    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_files_text_0init
_lb_files_text_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    sub x19, x29, #64
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    adrp x14, l_text_0@PAGE
    add x14, x14, l_text_0@PAGEOFF
    sub x15, x29, #80
    str x14, [x15]
    add x14, x15, #8
    movz x9, #17
    str x9, [x14]
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, _lb_files_Entries_close@GOTPAGE
    ldr x14, [x14, _lb_files_Entries_close@GOTPAGEOFF]
    add x15, x19, #16
    str x14, [x15]
    add x14, x19, #32
    movz x9, #1
    strb w9, [x14]
    add x14, x19, #24
    mov x9, #0
    str x9, [x14]
    add x14, x19, #33
    mov x9, #0
    strb w9, [x14]
    adrp x14, _lb_files_12entries_type@PAGE
    add x14, x14, _lb_files_12entries_type@PAGEOFF
    mov x10, x19
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_9text_path
_lb_files_9text_path:
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
    str x1, [x16, #8]
    sub x19, x29, #112
    add x20, x19, #8
    ldr x14, [x20]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    cbnz w14, L1_19
    b L1_4
L1_19:
    mov w15, w14
    b L1_5
L1_4:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_utf8_valid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L1_5:
    and w14, w15, #255
    cbnz w14, L1_1
    b L1_2
L1_1:
    sub x19, x29, #96
    add x14, x19, #16
    adrp x15, _lb_files_15invalid_options@PAGE
    add x15, x15, _lb_files_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_1@PAGE
    add x15, x15, l_text_1@PAGEOFF
    sub x20, x29, #128
    str x15, [x20]
    add x15, x20, #8
    movz x9, #29
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
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
L1_6:
    b L1_3
L1_2:
L1_3:
    ldr x14, [x19]
    ldr x15, [x20]
    mov x9, #0
    mov x21, x9
L1_7:
    cmp x21, x15
    b.hs L1_10
L1_8:
    add x20, x14, x21
    ldrb w20, [x20]
    and w20, w20, #255
    mov x10, #0
    cmp w20, w10
    b.ne L1_12
L1_11:
    sub x19, x29, #96
    add x14, x19, #16
    adrp x15, _lb_files_15invalid_options@PAGE
    add x15, x15, _lb_files_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_2@PAGE
    add x15, x15, l_text_2@PAGEOFF
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
L1_14:
    b L1_13
L1_12:
L1_13:
L1_9:
    add x20, x21, #1
    mov x21, x20
    b L1_7
L1_10:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #192
    bl _lb_strings_copy
    sub x15, x29, #192
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L1_16
    b L1_15
L1_16:
    add x14, x15, #16
    sub x19, x29, #96
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_17:
L1_15:
    sub x19, x29, #96
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_18:
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_9read_text
    .no_dead_strip _lb_files_9read_text
_lb_files_9read_text:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #448
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #416]
    str x20, [sp, #408]
    str x21, [sp, #400]
    str x22, [sp, #392]
    str x23, [sp, #384]
    str x24, [sp, #376]
    str x25, [sp, #368]
    sub x16, x29, #152
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #168
    str x2, [x16]
    sub x19, x29, #184
    sub x14, x29, #152
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #232
    bl _lb_files_9text_path
    sub x15, x29, #232
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L2_2
    b L2_1
L2_2:
    add x14, x15, #16
    sub x19, x29, #136
    add x20, x19, #24
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #416]
    ldr x20, [sp, #408]
    ldr x21, [sp, #400]
    ldr x22, [sp, #392]
    ldr x23, [sp, #384]
    ldr x24, [sp, #376]
    ldr x25, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_3:
L2_1:
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x21, x29, #248
    ldr x14, [x19]
    sub x20, x29, #168
    ldr x20, [x20]
    mov x0, x14
    mov x1, x20
    sub x8, x29, #296
    bl _lb_files_10read_limit
    sub x20, x29, #296
    add x14, x20, #40
    ldrb w14, [x14]
    cbnz w14, L2_5
    b L2_4
L2_5:
    add x14, x20, #16
    sub x21, x29, #136
    add x15, x21, #24
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #48
    movz x9, #1
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #416]
    ldr x20, [sp, #408]
    ldr x21, [sp, #400]
    ldr x22, [sp, #392]
    ldr x23, [sp, #384]
    ldr x24, [sp, #376]
    ldr x25, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_6:
L2_4:
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_utf8_valid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L2_8
L2_7:
    sub x20, x29, #136
    add x14, x20, #24
    adrp x15, _lb_files_15invalid_options@PAGE
    add x15, x15, _lb_files_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_5@PAGE
    add x15, x15, l_text_5@PAGEOFF
    sub x22, x29, #312
    str x15, [x22]
    add x15, x22, #8
    movz x9, #27
    str x9, [x15]
    add x14, x14, #8
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #48
    movz x9, #1
    strb w9, [x14]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x15, x29, #328
    ldr x22, [x21]
    add x23, x21, #8
    ldr x23, [x23]
    str x22, [x15]
    add x22, x15, #8
    str x23, [x22]
    ldr x22, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L2_11
    b L2_10
L2_11:
    add x21, x14, #16
    ldr x21, [x21]
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x22
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L2_10:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #416]
    ldr x20, [sp, #408]
    ldr x21, [sp, #400]
    ldr x22, [sp, #392]
    ldr x23, [sp, #384]
    ldr x24, [sp, #376]
    ldr x25, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_12:
    b L2_9
L2_8:
L2_9:
    ldr x14, [x21]
    add x20, x21, #8
    ldr x15, [x20]
    sub x22, x29, #344
    str x14, [x22]
    add x14, x22, #8
    str x15, [x14]
    mov x9, x22
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #400
    bl _lb_interop_9copy_text
    sub x15, x29, #400
    add x14, x15, #48
    ldrb w14, [x14]
    cbnz w14, L2_14
    b L2_13
L2_14:
    add x14, x15, #24
    sub x22, x29, #136
    add x23, x22, #24
    mov x10, x14
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #48
    movz x9, #1
    strb w9, [x14]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x23, x29, #416
    ldr x24, [x21]
    ldr x25, [x20]
    str x24, [x23]
    add x24, x23, #8
    str x25, [x24]
    ldr x24, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L2_16
    b L2_15
L2_16:
    add x15, x14, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x24
    mov x9, x23
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L2_15:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #416]
    ldr x20, [sp, #408]
    ldr x21, [sp, #400]
    ldr x22, [sp, #392]
    ldr x23, [sp, #384]
    ldr x24, [sp, #376]
    ldr x25, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_17:
L2_13:
    sub x22, x29, #136
    mov x10, x15
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #48
    mov x9, #0
    strb w9, [x14]
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    sub x23, x29, #432
    ldr x24, [x21]
    ldr x25, [x20]
    str x24, [x23]
    add x24, x23, #8
    str x25, [x24]
    ldr x24, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L2_19
    b L2_18
L2_19:
    add x15, x14, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x24
    mov x9, x23
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L2_18:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x22
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #416]
    ldr x20, [sp, #408]
    ldr x21, [sp, #400]
    ldr x22, [sp, #392]
    ldr x23, [sp, #384]
    ldr x24, [sp, #376]
    ldr x25, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_20:
    sub x14, x29, #248
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    sub x19, x29, #448
    ldr x20, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    mov x9, x14
    movz x10, #1
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_21@PAGE
    add x1, x1, l_text_21@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x20, [x19]
    add x19, x19, #8
    str x14, [x19]
    ldr x20, [x15]
    add x14, x15, #8
    ldr x14, [x14]
    cbnz x14, L2_22
    b L2_21
L2_22:
    add x15, x14, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x19
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L2_21:
    sub x14, x29, #184
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    adrp x0, l_text_7@PAGE
    add x0, x0, l_text_7@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_10write_text
    .no_dead_strip _lb_files_10write_text
_lb_files_10write_text:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #976
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #944]
    str x20, [sp, #936]
    str x21, [sp, #928]
    str x22, [sp, #920]
    str x23, [sp, #912]
    sub x16, x29, #112
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #128
    str x2, [x16]
    str x3, [x16, #8]
    sub x19, x29, #128
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_utf8_valid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L3_2
L3_1:
    sub x19, x29, #96
    adrp x14, _lb_files_15invalid_options@PAGE
    add x14, x14, _lb_files_15invalid_options@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_8@PAGE
    add x14, x14, l_text_8@PAGEOFF
    sub x15, x29, #144
    str x14, [x15]
    add x14, x15, #8
    movz x9, #29
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
    ldr x19, [sp, #944]
    ldr x20, [sp, #936]
    ldr x21, [sp, #928]
    ldr x22, [sp, #920]
    ldr x23, [sp, #912]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_4:
    b L3_3
L3_2:
L3_3:
    sub x20, x29, #160
    sub x14, x29, #112
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #208
    bl _lb_files_9text_path
    sub x15, x29, #208
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L3_6
    b L3_5
L3_6:
    add x14, x15, #16
    sub x19, x29, #96
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
    ldr x19, [sp, #944]
    ldr x20, [sp, #936]
    ldr x21, [sp, #928]
    ldr x22, [sp, #920]
    ldr x23, [sp, #912]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_7:
L3_5:
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x21, x29, #224
    ldr x14, [x20]
    mov x0, x14
    sub x8, x29, #312
    bl _lb_files_canonical
    sub x22, x29, #312
    add x14, x22, #40
    ldrb w14, [x14]
    cbnz w14, L3_11
    b L3_10
L3_11:
    add x14, x22, #16
    sub x23, x29, #264
    mov x10, x14
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L3_8
L3_10:
    sub x14, x29, #240
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L3_9
L3_8:
    ldr w14, [x23]
    adrp x15, _lb_files_missing@PAGE
    add x15, x15, _lb_files_missing@PAGEOFF
    ldr w15, [x15]
    cmp w14, w15
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L3_13
L3_12:
    sub x19, x29, #96
    str w14, [x19]
    add x15, x23, #8
    add x21, x19, #8
    mov x10, x15
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x15, x19, #24
    movz x9, #1
    strb w9, [x15]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #944]
    ldr x20, [sp, #936]
    ldr x21, [sp, #928]
    ldr x22, [sp, #920]
    ldr x23, [sp, #912]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_15:
    b L3_14
L3_13:
L3_14:
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #360
    bl _lb_strings_copy
    sub x15, x29, #360
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L3_17
    b L3_16
L3_17:
    add x14, x15, #16
    sub x19, x29, #96
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
    bl _lb_strings_release
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #944]
    ldr x20, [sp, #936]
    ldr x21, [sp, #928]
    ldr x22, [sp, #920]
    ldr x23, [sp, #912]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_18:
L3_16:
    sub x14, x29, #240
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L3_9
L3_19:
L3_9:
    sub x14, x29, #240
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x22, x29, #488
    ldr x14, [x21]
    mov x0, x14
    movz x1, #1
    sub x8, x29, #800
    bl _lb_files_metadata
    sub x15, x29, #800
    add x14, x15, #152
    ldrb w14, [x14]
    cbnz w14, L3_23
    b L3_22
L3_23:
    add x14, x15, #128
    sub x23, x29, #640
    mov x10, x14
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L3_20
L3_22:
    sub x14, x29, #616
    mov x10, x15
    mov x11, x14
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
    b L3_21
L3_20:
    ldr w14, [x23]
    adrp x15, _lb_files_missing@PAGE
    add x15, x15, _lb_files_missing@PAGEOFF
    ldr w15, [x15]
    cmp w14, w15
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L3_25
L3_24:
    sub x19, x29, #96
    str w14, [x19]
    add x15, x23, #8
    add x22, x19, #8
    mov x10, x15
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x15, x19, #24
    movz x9, #1
    strb w9, [x15]
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #944]
    ldr x20, [sp, #936]
    ldr x21, [sp, #928]
    ldr x22, [sp, #920]
    ldr x23, [sp, #912]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_27:
    b L3_26
L3_25:
L3_26:
    sub x23, x29, #928
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    stp xzr, xzr, [x11, #96]
    stp xzr, xzr, [x11, #112]
    movz x9, #1
    strb w9, [x23]
    add x14, x23, #4
    movz x9, #420
    str w9, [x14]
    sub x14, x29, #616
    mov x10, x23
    mov x11, x14
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
    b L3_21
L3_28:
L3_21:
    sub x14, x29, #616
    mov x10, x14
    mov x11, x22
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
    ldrb w14, [x22]
    movz x10, #1
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L3_30
L3_29:
    sub x19, x29, #96
    adrp x14, _lb_files_15invalid_options@PAGE
    add x14, x14, _lb_files_15invalid_options@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_9@PAGE
    add x14, x14, l_text_9@PAGEOFF
    sub x15, x29, #944
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
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #944]
    ldr x20, [sp, #936]
    ldr x21, [sp, #928]
    ldr x22, [sp, #920]
    ldr x23, [sp, #912]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_32:
    b L3_31
L3_30:
L3_31:
    ldr x14, [x21]
    add x15, x22, #4
    ldr w15, [x15]
    mov x0, x14
    mov x9, x19
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x3, x15
    mov x4, #0
    mov x5, #0
    sub x8, x29, #976
    bl _lb_files_12write_atomic
    sub x15, x29, #976
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L3_34
    b L3_33
L3_34:
    sub x19, x29, #96
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #944]
    ldr x20, [sp, #936]
    ldr x21, [sp, #928]
    ldr x22, [sp, #920]
    ldr x23, [sp, #912]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_35:
L3_33:
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
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
    ldr x19, [sp, #944]
    ldr x20, [sp, #936]
    ldr x21, [sp, #928]
    ldr x22, [sp, #920]
    ldr x23, [sp, #912]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_13absolute_path
    .no_dead_strip _lb_files_13absolute_path
_lb_files_13absolute_path:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #320
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #288]
    str x20, [sp, #280]
    str x21, [sp, #272]
    str x22, [sp, #264]
    sub x16, x29, #128
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #144
    sub x14, x29, #128
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #192
    bl _lb_files_9text_path
    sub x15, x29, #192
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L4_2
    b L4_1
L4_2:
    add x14, x15, #16
    sub x19, x29, #112
    add x20, x19, #24
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_3:
L4_1:
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x20, x29, #208
    ldr x14, [x19]
    mov x0, x14
    sub x8, x29, #256
    bl _lb_files_canonical
    sub x21, x29, #256
    add x14, x21, #40
    ldrb w14, [x14]
    cbnz w14, L4_5
    b L4_4
L4_5:
    add x14, x21, #16
    sub x20, x29, #112
    add x15, x20, #24
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #48
    movz x9, #1
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_6:
L4_4:
    mov x10, x21
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #312
    bl _lb_interop_9copy_text
    sub x15, x29, #312
    add x14, x15, #48
    ldrb w14, [x14]
    cbnz w14, L4_8
    b L4_7
L4_8:
    add x14, x15, #24
    sub x21, x29, #112
    add x22, x21, #24
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #48
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_9:
L4_7:
    sub x21, x29, #112
    mov x10, x15
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #48
    mov x9, #0
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_10:
    sub x14, x29, #208
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    sub x14, x29, #144
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_9path_kind
    .no_dead_strip _lb_files_9path_kind
_lb_files_9path_kind:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #352
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #320]
    str x20, [sp, #312]
    str x21, [sp, #304]
    sub x16, x29, #104
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #120
    str w2, [x16]
    sub x19, x29, #136
    sub x14, x29, #104
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #184
    bl _lb_files_9text_path
    sub x15, x29, #184
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L5_2
    b L5_1
L5_2:
    add x14, x15, #16
    sub x19, x29, #88
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
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_3:
L5_1:
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x19]
    sub x20, x29, #120
    ldrb w20, [x20]
    mov x0, x14
    mov x1, x20
    sub x8, x29, #344
    bl _lb_files_metadata
    sub x20, x29, #344
    add x14, x20, #152
    ldrb w14, [x14]
    cbnz w14, L5_5
    b L5_4
L5_5:
    add x14, x20, #128
    sub x21, x29, #88
    add x15, x21, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_6:
L5_4:
    ldrb w14, [x20]
    sub x21, x29, #88
    strb w14, [x21]
    add x14, x21, #32
    mov x9, #0
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_7:
    sub x14, x29, #136
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_Entries_init
    .no_dead_strip _lb_files_Entries_init
_lb_files_Entries_init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #368
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #336]
    str x20, [sp, #328]
    str x21, [sp, #320]
    str x22, [sp, #312]
    str x23, [sp, #304]
    str x24, [sp, #296]
    sub x16, x29, #112
    str x0, [x16]
    sub x16, x29, #128
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #112
    ldr x19, [x9]
    sub x20, x29, #144
    sub x14, x29, #128
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #192
    bl _lb_files_9text_path
    sub x15, x29, #192
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L6_2
    b L6_1
L6_2:
    add x14, x15, #16
    sub x19, x29, #104
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
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_3:
L6_1:
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x21, [x20]
    sub x10, x29, #304
    str x21, [x10]
    sub x22, x29, #320
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x23, x0
    mov x10, x23
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    mov x10, x14
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x0, x21
    sub x8, x29, #368
    bl _lb_files_list
    sub x21, x29, #368
    add x14, x21, #40
    ldrb w14, [x14]
    cbnz w14, L6_8
    b L6_7
L6_8:
    add x14, x21, #16
    sub x24, x29, #288
    add x15, x24, #16
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x24, #40
    movz x9, #1
    strb w9, [x14]
    mov x10, x22
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x24
    sub x11, x29, #240
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    b L6_11
L6_9:
L6_7:
    sub x24, x29, #288
    mov x10, x21
    mov x11, x24
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x24, #40
    mov x9, #0
    strb w9, [x14]
    mov x10, x22
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x24
    sub x11, x29, #240
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    b L6_11
L6_10:
    sub x14, x29, #320
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at
L6_11:
    sub x15, x29, #240
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L6_5
    b L6_4
L6_5:
    add x14, x15, #16
    sub x19, x29, #104
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
    bl _lb_strings_release
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_6:
L6_4:
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    sub x14, x29, #104
    add x21, x14, #24
    mov x9, #0
    strb w9, [x21]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #336]
    ldr x20, [sp, #328]
    ldr x21, [sp, #320]
    ldr x22, [sp, #312]
    ldr x23, [sp, #304]
    ldr x24, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_Entries_count
    .no_dead_strip _lb_files_Entries_count
_lb_files_Entries_count:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #24
    str x0, [x16]
    sub x9, x29, #24
    ldr x14, [x9]
    add x14, x14, #8
    ldr x14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_1:
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_Entries_name
    .no_dead_strip _lb_files_Entries_name
_lb_files_Entries_name:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #208]
    str x20, [sp, #200]
    str x21, [sp, #192]
    sub x16, x29, #112
    str x0, [x16]
    sub x16, x29, #128
    str x1, [x16]
    sub x9, x29, #112
    ldr x19, [x9]
    sub x14, x29, #128
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w15, lt
    cbnz w15, L8_15
    b L8_4
L8_15:
    mov w20, w15
    b L8_5
L8_4:
    add x15, x19, #8
    ldr x15, [x15]
    cmp x14, x15
    cset w20, hs
L8_5:
    and w15, w20, #255
    cbnz w15, L8_1
    b L8_2
L8_1:
    sub x19, x29, #104
    add x14, x19, #24
    adrp x15, _lb_files_15invalid_options@PAGE
    add x15, x15, _lb_files_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_13@PAGE
    add x15, x15, l_text_13@PAGEOFF
    sub x20, x29, #144
    str x15, [x20]
    add x15, x20, #8
    movz x9, #49
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_6:
    b L8_3
L8_2:
L8_3:
    sub x20, x29, #160
    ldr x15, [x19]
    add x21, x19, #8
    ldr x21, [x21]
    cmp x14, x21
    b.lo 1f
    adrp x0, l_text_14@PAGE
    add x0, x0, l_text_14@PAGEOFF
    adrp x1, l_text_22@PAGE
    add x1, x1, l_text_22@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x21, x14, #4
    add x15, x15, x21
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_utf8_valid
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    b.ne L8_8
L8_7:
    sub x19, x29, #104
    add x14, x19, #24
    adrp x15, _lb_files_15invalid_options@PAGE
    add x15, x15, _lb_files_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_15@PAGE
    add x15, x15, l_text_15@PAGEOFF
    sub x20, x29, #176
    str x15, [x20]
    add x15, x20, #8
    movz x9, #38
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_10:
    b L8_9
L8_8:
L8_9:
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #232
    bl _lb_interop_9copy_text
    sub x15, x29, #232
    add x14, x15, #48
    ldrb w14, [x14]
    cbnz w14, L8_12
    b L8_11
L8_12:
    add x14, x15, #24
    sub x19, x29, #104
    add x20, x19, #24
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_13:
L8_11:
    sub x19, x29, #104
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #48
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_14:
    adrp x0, l_text_16@PAGE
    add x0, x0, l_text_16@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_Entries_close
    .no_dead_strip _lb_files_Entries_close
_lb_files_Entries_close:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    str x20, [sp, #48]
    str x21, [sp, #40]
    sub x16, x29, #48
    str x0, [x16]
    sub x9, x29, #48
    ldr x21, [x9]
    sub x19, x29, #64
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x20, x0
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_files_12release_list
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x19, x29, #80
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    mov x10, x19
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_16ensure_directory
    .no_dead_strip _lb_files_16ensure_directory
_lb_files_16ensure_directory:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #400
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #368]
    str x20, [sp, #360]
    str x21, [sp, #352]
    str x22, [sp, #344]
    sub x16, x29, #104
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #120
    sub x14, x29, #104
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #168
    bl _lb_files_9text_path
    sub x15, x29, #168
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L10_2
    b L10_1
L10_2:
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
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_3:
L10_1:
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x19]
    mov x0, x14
    movz x1, #493
    sub x8, x29, #224
    bl _lb_files_16create_directory
    sub x20, x29, #224
    add x14, x20, #24
    ldrb w14, [x14]
    cbnz w14, L10_7
    b L10_6
L10_7:
    sub x21, x29, #192
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L10_4
L10_6:
    b L10_5
L10_4:
    ldr w14, [x21]
    adrp x15, _lb_files_14already_exists@PAGE
    add x15, x15, _lb_files_14already_exists@PAGEOFF
    ldr w15, [x15]
    cmp w14, w15
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L10_9
L10_8:
    sub x20, x29, #88
    str w14, [x20]
    add x15, x21, #8
    add x22, x20, #8
    mov x10, x15
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x15, x20, #24
    movz x9, #1
    strb w9, [x15]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_11:
    b L10_10
L10_9:
L10_10:
    ldr x14, [x19]
    mov x0, x14
    movz x1, #1
    sub x8, x29, #384
    bl _lb_files_metadata
    sub x15, x29, #384
    add x14, x15, #152
    ldrb w14, [x14]
    cbnz w14, L10_16
    b L10_15
L10_16:
    add x14, x15, #128
    sub x20, x29, #88
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_17:
L10_15:
    ldrb w14, [x15]
    movz x10, #2
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L10_13
L10_12:
    sub x20, x29, #88
    adrp x14, _lb_files_13not_directory@PAGE
    add x14, x14, _lb_files_13not_directory@PAGEOFF
    ldr w14, [x14]
    str w14, [x20]
    adrp x14, l_text_18@PAGE
    add x14, x14, l_text_18@PAGEOFF
    sub x15, x29, #400
    str x14, [x15]
    add x14, x15, #8
    movz x9, #36
    str x9, [x14]
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_18:
    b L10_14
L10_13:
L10_14:
L10_5:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
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
    ldr x19, [sp, #368]
    ldr x20, [sp, #360]
    ldr x21, [sp, #352]
    ldr x22, [sp, #344]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_14home_directory
    .no_dead_strip _lb_files_14home_directory
_lb_files_14home_directory:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #208]
    str x20, [sp, #200]
    sub x19, x29, #112
    sub x8, x29, #160
    bl _lb_io_path_user
    sub x15, x29, #160
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L11_2
    b L11_1
L11_2:
    add x14, x15, #16
    sub x19, x29, #96
    add x20, x19, #24
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_3:
L11_1:
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ne L11_5
L11_4:
    sub x19, x29, #96
    add x14, x19, #24
    adrp x15, _lb_files_15invalid_options@PAGE
    add x15, x15, _lb_files_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_19@PAGE
    add x15, x15, l_text_19@PAGEOFF
    sub x20, x29, #176
    str x15, [x20]
    add x15, x20, #8
    movz x9, #32
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_7:
    b L11_6
L11_5:
L11_6:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #232
    bl _lb_interop_9copy_text
    sub x15, x29, #232
    add x14, x15, #48
    ldrb w14, [x14]
    cbnz w14, L11_9
    b L11_8
L11_9:
    add x14, x15, #24
    sub x19, x29, #96
    add x20, x19, #24
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #48
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_10:
L11_8:
    sub x19, x29, #96
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #48
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #56
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_11:
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_3@PAGE
    add x1, x1, l_text_3@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_files_11create_text
    .no_dead_strip _lb_files_11create_text
_lb_files_11create_text:
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
    sub x16, x29, #112
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #128
    str x2, [x16]
    str x3, [x16, #8]
    sub x19, x29, #128
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_utf8_valid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L12_2
L12_1:
    sub x19, x29, #96
    adrp x14, _lb_files_15invalid_options@PAGE
    add x14, x14, _lb_files_15invalid_options@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_8@PAGE
    add x14, x14, l_text_8@PAGEOFF
    sub x15, x29, #144
    str x14, [x15]
    add x14, x15, #8
    movz x9, #29
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
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_4:
    b L12_3
L12_2:
L12_3:
    sub x20, x29, #160
    sub x14, x29, #112
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #208
    bl _lb_files_9text_path
    sub x15, x29, #208
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L12_6
    b L12_5
L12_6:
    add x14, x15, #16
    sub x19, x29, #96
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
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_7:
L12_5:
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x21, x29, #264
    ldr x14, [x20]
    mov x0, x14
    movz x1, #420
    mov x2, #0
    sub x8, x29, #352
    bl _lb_files_Replacement_prepare
    sub x22, x29, #352
    add x14, x22, #80
    ldrb w14, [x14]
    cbnz w14, L12_9
    b L12_8
L12_9:
    add x14, x22, #56
    sub x19, x29, #96
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
    bl _lb_strings_release
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_10:
L12_8:
    mov x10, x22
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    add x14, x21, #8
    sub x15, x29, #368
    str x14, [x15]
    adrp x14, _lb_vt_files_TemporaryFile_Writer@PAGE
    add x14, x14, _lb_vt_files_TemporaryFile_Writer@PAGEOFF
    add x23, x15, #8
    str x14, [x23]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x19
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, #0
    sub x8, x29, #400
    bl _lb_io_9write_all
    sub x15, x29, #400
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L12_12
    b L12_11
L12_12:
    sub x19, x29, #96
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    bl _lb_files_Replacement_destroy
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_13:
L12_11:
    ldr x14, [x20]
    mov x0, x21
    mov x1, x14
    mov x2, #0
    mov x3, #0
    sub x8, x29, #432
    bl _lb_files_Replacement_finish
    sub x15, x29, #432
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L12_15
    b L12_14
L12_15:
    sub x19, x29, #96
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    bl _lb_files_Replacement_destroy
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_16:
L12_14:
    mov x0, x21
    bl _lb_files_Replacement_destroy
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
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
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    ldr x21, [sp, #384]
    ldr x22, [sp, #376]
    ldr x23, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_9copy_path
    .no_dead_strip _lb_files_9copy_path
_lb_files_9copy_path:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #288
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #256]
    str x20, [sp, #248]
    str x21, [sp, #240]
    sub x16, x29, #96
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #112
    str x2, [x16]
    str x3, [x16, #8]
    sub x19, x29, #128
    sub x14, x29, #96
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #176
    bl _lb_files_9text_path
    sub x15, x29, #176
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L13_2
    b L13_1
L13_2:
    add x14, x15, #16
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
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_3:
L13_1:
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x20, x29, #192
    sub x14, x29, #112
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #240
    bl _lb_files_9text_path
    sub x21, x29, #240
    add x14, x21, #40
    ldrb w14, [x14]
    cbnz w14, L13_5
    b L13_4
L13_5:
    add x14, x21, #16
    sub x20, x29, #80
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_6:
L13_4:
    mov x10, x21
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x19]
    ldr x15, [x20]
    mov x0, x14
    mov x1, x15
    movn x2, #0
    mov x3, #0
    movz x4, #420
    mov x5, #0
    mov x6, #0
    sub x8, x29, #280
    bl _lb_files_9copy_file
    sub x15, x29, #280
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L13_8
    b L13_7
L13_8:
    add x14, x15, #8
    sub x21, x29, #80
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #24
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_9:
L13_7:
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
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
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_9move_path
    .no_dead_strip _lb_files_9move_path
_lb_files_9move_path:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #272
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #240]
    str x20, [sp, #232]
    str x21, [sp, #224]
    sub x16, x29, #96
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #112
    str x2, [x16]
    str x3, [x16, #8]
    sub x19, x29, #128
    sub x14, x29, #96
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #176
    bl _lb_files_9text_path
    sub x15, x29, #176
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L14_2
    b L14_1
L14_2:
    add x14, x15, #16
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L14_3:
L14_1:
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x20, x29, #192
    sub x14, x29, #112
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #240
    bl _lb_files_9text_path
    sub x21, x29, #240
    add x14, x21, #40
    ldrb w14, [x14]
    cbnz w14, L14_5
    b L14_4
L14_5:
    add x14, x21, #16
    sub x20, x29, #80
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L14_6:
L14_4:
    mov x10, x21
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x19]
    ldr x15, [x20]
    mov x0, x14
    mov x1, x15
    mov x2, #0
    sub x8, x29, #272
    bl _lb_files_rename
    sub x15, x29, #272
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L14_8
    b L14_7
L14_8:
    sub x21, x29, #80
    mov x10, x15
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #24
    movz x9, #1
    strb w9, [x14]
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L14_9:
L14_7:
    mov x9, x20
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_14make_directory
    .no_dead_strip _lb_files_14make_directory
_lb_files_14make_directory:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #160]
    str x20, [sp, #152]
    str x21, [sp, #144]
    sub x16, x29, #96
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #112
    sub x14, x29, #96
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #160
    bl _lb_files_9text_path
    sub x15, x29, #160
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L15_2
    b L15_1
L15_2:
    add x14, x15, #16
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L15_3:
L15_1:
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x14, [x19]
    mov x0, x14
    movz x1, #493
    sub x8, x29, #192
    bl _lb_files_16create_directory
    sub x20, x29, #192
    add x14, x20, #24
    ldrb w14, [x14]
    cbnz w14, L15_5
    b L15_4
L15_5:
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
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L15_6:
L15_4:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_files_11delete_path
    .no_dead_strip _lb_files_11delete_path
_lb_files_11delete_path:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #432
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #400]
    str x20, [sp, #392]
    sub x16, x29, #88
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #104
    str w2, [x16]
    sub x19, x29, #120
    sub x14, x29, #88
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #168
    bl _lb_files_9text_path
    sub x15, x29, #168
    add x14, x15, #40
    ldrb w14, [x14]
    cbnz w14, L16_2
    b L16_1
L16_2:
    add x14, x15, #16
    sub x19, x29, #72
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
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_3:
L16_1:
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #104
    ldrb w14, [x14]
    cbnz w14, L16_4
    b L16_5
L16_4:
    ldr x14, [x19]
    mov x0, x14
    sub x8, x29, #200
    bl _lb_files_11remove_tree
    sub x15, x29, #200
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L16_8
    b L16_7
L16_8:
    sub x20, x29, #72
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_9:
L16_7:
    b L16_6
L16_5:
    ldr x14, [x19]
    mov x0, x14
    mov x1, #0
    sub x8, x29, #360
    bl _lb_files_metadata
    sub x15, x29, #360
    add x14, x15, #152
    ldrb w14, [x14]
    cbnz w14, L16_14
    b L16_13
L16_14:
    add x14, x15, #128
    sub x20, x29, #72
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_15:
L16_13:
    ldrb w14, [x15]
    movz x10, #2
    cmp w14, w10
    b.ne L16_11
L16_10:
    ldr x14, [x19]
    mov x0, x14
    sub x8, x29, #392
    bl _lb_files_16remove_directory
    sub x15, x29, #392
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L16_17
    b L16_16
L16_17:
    sub x20, x29, #72
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_18:
L16_16:
    b L16_12
L16_11:
    ldr x14, [x19]
    mov x0, x14
    sub x8, x29, #424
    bl _lb_files_11remove_file
    sub x15, x29, #424
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L16_20
    b L16_19
L16_20:
    sub x20, x29, #72
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #24
    movz x9, #1
    strb w9, [x14]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_21:
L16_19:
L16_12:
L16_6:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_strings_release
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
    ldr x19, [sp, #400]
    ldr x20, [sp, #392]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_files_text_0init

    .section __TEXT,__const
l_text_0:
    .asciz "Directory entries"
l_text_1:
    .asciz "a path must be nonempty UTF-8"
l_text_2:
    .asciz "a path cannot contain NUL"
l_text_3:
    .asciz "unreachable"
l_text_4:
    .asciz "src/std/files/text.lucb:12:5"
l_text_5:
    .asciz "the file is not valid UTF-8"
l_text_6:
    .asciz "src/std/files/text.lucb:21:9"
l_text_7:
    .asciz "src/std/files/text.lucb:22:5"
l_text_8:
    .asciz "file text must be valid UTF-8"
l_text_9:
    .asciz "text can only replace a regular file"
l_text_10:
    .asciz "src/std/files/text.lucb:49:5"
l_text_11:
    .asciz "src/std/files/text.lucb:54:5"
l_text_12:
    .asciz "src/std/files/text.lucb:67:9"
l_text_13:
    .asciz "the directory entry index is outside the snapshot"
l_text_14:
    .asciz "src/std/files/text.lucb:72:9"
l_text_15:
    .asciz "the directory entry is not valid UTF-8"
l_text_16:
    .asciz "src/std/files/text.lucb:75:9"
l_text_17:
    .asciz "src/std/files/text.lucb:87:9"
l_text_18:
    .asciz "the existing path is not a directory"
l_text_19:
    .asciz "the user home directory is empty"
l_text_20:
    .asciz "src/std/files/text.lucb:105:5"
l_text_21:
    .asciz "integer overflow"
l_text_22:
    .asciz "index out of bounds"

    .section __DATA,__const
    .p2align 3
    .globl _lb_vt_files_TemporaryFile_Writer
    .weak_definition _lb_vt_files_TemporaryFile_Writer
_lb_vt_files_TemporaryFile_Writer:
    .quad _lb_files_TemporaryFile_write
    .section __DATA,__data
    .p2align 3
    .globl _lb_files_12entries_type
    .weak_definition _lb_files_12entries_type
    .no_dead_strip _lb_files_12entries_type
_lb_files_12entries_type:
    .zero 40

.subsections_via_symbols
