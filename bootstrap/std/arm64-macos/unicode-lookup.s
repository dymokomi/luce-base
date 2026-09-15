    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_unicode_lookup_0init
_lb_unicode_lookup_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_unicode_10table_word
    .no_dead_strip _lb_unicode_10table_word
_lb_unicode_10table_word:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    str x21, [sp, #56]
    str x22, [sp, #48]
    str x23, [sp, #40]
    str x24, [sp, #32]
    sub x16, x29, #80
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #96
    str x2, [x16]
    sub x14, x29, #96
    ldr x14, [x14]
    sub x15, x29, #80
    ldr x19, [x15]
    add x15, x15, #8
    ldr x15, [x15]
    mov x9, #0
    mov w20, w9
    mov x9, #0
    mov x21, x9
L1_1:
    movz x10, #8
    cmp x21, x10
    b.hs L1_4
L1_2:
    mov x9, x14
    mov x10, x21
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_0@PAGE
    add x0, x0, l_text_0@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x22, x9
    cmp x22, x15
    b.lo 1f
    adrp x0, l_text_0@PAGE
    add x0, x0, l_text_0@PAGEOFF
    adrp x1, l_text_26@PAGE
    add x1, x1, l_text_26@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x22, x22, x19
    ldrb w22, [x22]
    and w22, w22, #255
    movz x10, #57
    cmp w22, w10
    b.hi L1_6
L1_5:
    sub w24, w22, #48
    and w23, w24, #255
    cmp w23, w24
    b.eq L1_8
L1_9:
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L1_8:
    mov w22, w24
    b L1_7
L1_6:
    sub w24, w22, #97
    and w23, w24, #255
    cmp w23, w24
    b.eq L1_10
L1_11:
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L1_10:
    add w23, w24, #10
    and w22, w23, #255
    cmp w22, w23
    b.eq L1_12
L1_13:
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
L1_12:
    mov w22, w23
L1_7:
    and w23, w22, #255
L1_15:
    lsl w22, w20, #4
    and w24, w23, #255
    mov w24, w24
    orr w22, w22, w24
L1_3:
    add x23, x21, #1
    mov w20, w22
    mov x21, x23
    b L1_1
L1_4:
    mov x9, x20
    mov x0, x9
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    ldr x21, [sp, #56]
    ldr x22, [sp, #48]
    ldr x23, [sp, #40]
    ldr x24, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_unicode_11range_value
    .no_dead_strip _lb_unicode_11range_value
_lb_unicode_11range_value:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    str x21, [sp, #72]
    str x22, [sp, #64]
    str x23, [sp, #56]
    str x24, [sp, #48]
    str x25, [sp, #40]
    sub x16, x29, #88
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #104
    str w2, [x16]
    sub x19, x29, #88
    add x14, x19, #8
    ldr x14, [x14]
L2_2:
    movz x10, #24
    udiv x15, x14, x10
    sub x20, x29, #104
    mov x9, #0
    mov x21, x9
    mov x22, x15
L2_3:
    cmp x21, x22
    b.hs L2_5
L2_4:
    sub x14, x22, x21
L2_7:
    movz x10, #2
    udiv x15, x14, x10
    mov x9, x15
    mov x10, x21
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_15@PAGE
    add x0, x0, l_text_15@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x23, x9
    mov x9, x23
    movz x10, #24
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_16@PAGE
    add x0, x0, l_text_16@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x24, x9
    ldr w25, [x20]
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x24
    bl _lb_unicode_10table_word
    mov w15, w0
    cmp w25, w15
    b.hs L2_9
L2_8:
    mov x14, x21
    mov x15, x23
    b L2_10
L2_9:
    mov x9, x24
    movz x10, #8
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x14
    bl _lb_unicode_10table_word
    mov w14, w0
    cmp w25, w14
    b.ls L2_12
L2_11:
    mov x9, x23
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_18@PAGE
    add x0, x0, l_text_18@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    b L2_13
L2_12:
    mov x9, x24
    movz x10, #16
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_19@PAGE
    add x0, x0, l_text_19@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x14
    bl _lb_unicode_10table_word
    mov w14, w0
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    ldr x22, [sp, #64]
    ldr x23, [sp, #56]
    ldr x24, [sp, #48]
    ldr x25, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_13:
    mov x15, x22
L2_10:
    mov x21, x14
    mov x22, x15
    b L2_3
L2_5:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    ldr x22, [sp, #64]
    ldr x23, [sp, #56]
    ldr x24, [sp, #48]
    ldr x25, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_unicode_Mapping_at
    .no_dead_strip _lb_unicode_Mapping_at
_lb_unicode_Mapping_at:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x9, x29, #40
    ldr x19, [x9]
    sub x14, x29, #56
    ldr x14, [x14]
    add x15, x19, #8
    ldr x15, [x15]
    cmp x14, x15
    b.lo L3_1
L3_2:
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_21@PAGE
    add x1, x1, l_text_21@PAGEOFF
    bl _lb_core_7trap_at
L3_1:
    add x15, x19, #20
    ldrb w15, [x15]
    cbnz w15, L3_3
    b L3_4
L3_3:
    add x14, x19, #16
    ldr w14, [x14]
    b L3_5
L3_4:
    adrp x15, _lb_unicode_15mapping_scalars@PAGE
    add x15, x15, _lb_unicode_15mapping_scalars@PAGEOFF
    ldr x20, [x19]
    mov x9, x14
    mov x10, x20
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_23@PAGE
    add x0, x0, l_text_23@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    mov x9, x20
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_23@PAGE
    add x0, x0, l_text_23@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x20
    bl _lb_unicode_10table_word
    mov w15, w0
    mov w14, w15
L3_5:
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_6:
    adrp x0, l_text_23@PAGE
    add x0, x0, l_text_23@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_unicode_mapped
    .no_dead_strip _lb_unicode_mapped
_lb_unicode_mapped:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #336
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #304]
    str x20, [sp, #296]
    str x21, [sp, #288]
    str x22, [sp, #280]
    str x23, [sp, #272]
    str x24, [sp, #264]
    str x25, [sp, #256]
    str x26, [sp, #248]
    sub x16, x29, #136
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #152
    str w2, [x16]
    sub x19, x29, #136
    sub x14, x29, #152
    ldr w20, [x14]
    mov x10, x19
    sub x11, x29, #288
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x10, x29, #304
    str w20, [x10]
    sub x21, x29, #288
    add x14, x21, #8
    ldr x14, [x14]
L4_7:
    movz x10, #24
    udiv x15, x14, x10
    mov x9, #0
    mov x22, x9
    mov x23, x15
L4_8:
    cmp x22, x23
    b.hs L4_10
L4_9:
    sub x14, x23, x22
L4_12:
    movz x10, #2
    udiv x15, x14, x10
    mov x9, x15
    mov x10, x22
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_9@PAGE
    add x0, x0, l_text_9@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x24, x9
    mov x9, x24
    movz x10, #24
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x25, x9
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x25
    bl _lb_unicode_10table_word
    mov w15, w0
    cmp w15, w20
    b.hs L4_14
L4_13:
    mov x9, x24
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x15, x23
    b L4_15
L4_14:
    cmp w15, w20
    b.ls L4_17
L4_16:
    b L4_18
L4_17:
    sub x14, x29, #320
    str x25, [x14]
    add x15, x14, #8
    movz x9, #1
    strb w9, [x15]
    sub x20, x29, #272
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x20
    sub x11, x29, #168
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x20, x25
    b L4_21
L4_18:
    mov x14, x22
    mov x15, x24
L4_15:
    mov x22, x14
    mov x23, x15
    b L4_8
L4_10:
    sub x20, x29, #336
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    sub x21, x29, #272
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x21
    sub x11, x29, #168
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, #0
    mov x20, x9
L4_21:
    sub x14, x29, #168
    add x14, x14, #8
    ldrb w14, [x14]
    cbnz w14, L4_1
    b L4_2
L4_1:
    b L4_3
L4_2:
    sub x19, x29, #200
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    sub x20, x29, #120
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    ldr x25, [sp, #256]
    ldr x26, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_3:
    sub x21, x29, #224
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    mov x9, x20
    movz x10, #8
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_24@PAGE
    add x0, x0, l_text_24@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x14
    bl _lb_unicode_10table_word
    mov w14, w0
    mov w14, w14
    str x14, [x21]
    mov x9, x20
    movz x10, #16
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_24@PAGE
    add x0, x0, l_text_24@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x14
    bl _lb_unicode_10table_word
    mov w14, w0
    mov w14, w14
    add x15, x21, #8
    str x14, [x15]
    sub x22, x29, #256
    mov x10, x21
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #24
    movz x9, #1
    strb w9, [x14]
    sub x21, x29, #120
    mov x10, x22
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    ldr x25, [sp, #256]
    ldr x26, [sp, #248]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_unicode_16identity_mapping
    .no_dead_strip _lb_unicode_16identity_mapping
_lb_unicode_16identity_mapping:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    str x20, [sp, #72]
    sub x16, x29, #80
    str w0, [x16]
    sub x19, x29, #104
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x14, x29, #80
    ldr w14, [x14]
    add x15, x19, #16
    str w14, [x15]
    add x14, x19, #8
    movz x9, #1
    str x9, [x14]
    add x14, x19, #20
    movz x9, #1
    strb w9, [x14]
    sub x20, x29, #64
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_1:
    adrp x0, l_text_25@PAGE
    add x0, x0, l_text_25@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_unicode_lookup_0init

    .section __TEXT,__const
l_text_0:
    .asciz "src/std/unicode/lookup.lucb:7:9"
l_text_1:
    .asciz "integer overflow"
l_text_2:
    .asciz "src/std/unicode/lookup.lucb:8:9"
l_text_3:
    .asciz "shift count out of range"
l_text_4:
    .asciz "src/std/unicode/lookup.lucb:9:9"
l_text_5:
    .asciz "unreachable"
l_text_6:
    .asciz "src/std/unicode/lookup.lucb:10:5"
l_text_7:
    .asciz "division by zero"
l_text_8:
    .asciz "src/std/unicode/lookup.lucb:14:5"
l_text_9:
    .asciz "src/std/unicode/lookup.lucb:16:9"
l_text_10:
    .asciz "src/std/unicode/lookup.lucb:17:9"
l_text_11:
    .asciz "src/std/unicode/lookup.lucb:19:13"
l_text_12:
    .asciz "src/std/unicode/lookup.lucb:23:13"
l_text_13:
    .asciz "src/std/unicode/lookup.lucb:24:5"
l_text_14:
    .asciz "src/std/unicode/lookup.lucb:28:5"
l_text_15:
    .asciz "src/std/unicode/lookup.lucb:30:9"
l_text_16:
    .asciz "src/std/unicode/lookup.lucb:31:9"
l_text_17:
    .asciz "src/std/unicode/lookup.lucb:34:9"
l_text_18:
    .asciz "src/std/unicode/lookup.lucb:35:13"
l_text_19:
    .asciz "src/std/unicode/lookup.lucb:37:13"
l_text_20:
    .asciz "src/std/unicode/lookup.lucb:38:5"
l_text_21:
    .asciz "assert failed: index < self.length"
l_text_22:
    .asciz "src/std/unicode/lookup.lucb:47:9"
l_text_23:
    .asciz "src/std/unicode/lookup.lucb:48:9"
l_text_24:
    .asciz "src/std/unicode/lookup.lucb:52:5"
l_text_25:
    .asciz "src/std/unicode/lookup.lucb:55:5"
l_text_26:
    .asciz "index out of bounds"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
