    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_net_10http_types_0init
_lb_net_10http_types_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, _lb_net_12http_invalid@PAGE
    add x14, x14, _lb_net_12http_invalid@PAGEOFF
    movz x9, #80
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_net_10http_limit@PAGE
    add x14, x14, _lb_net_10http_limit@PAGEOFF
    movz x9, #81
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_net_16http_unsupported@PAGE
    add x14, x14, _lb_net_16http_unsupported@PAGEOFF
    movz x9, #82
    movk x9, #3178, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_HttpHead_field
    .no_dead_strip _lb_net_HttpHead_field
_lb_net_HttpHead_field:
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
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #112
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #96
    ldr x14, [x9]
    add x14, x14, #56
    ldr x19, [x14]
    add x14, x14, #8
    ldr x20, [x14]
    sub x21, x29, #144
    sub x22, x29, #112
    mov x9, #0
    mov x23, x9
L1_1:
    cmp x23, x20
    b.hs L1_4
L1_2:
    lsl x14, x23, #5
    add x14, x19, x14
    mov x10, x14
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x22
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_net_10http_equal
    mov w14, w0
    cbnz w14, L1_5
    b L1_6
L1_5:
    add x14, x21, #16
    sub x19, x29, #168
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #16
    movz x9, #1
    strb w9, [x14]
    sub x20, x29, #88
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
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
L1_8:
    b L1_7
L1_6:
L1_7:
L1_3:
    add x14, x23, #1
    mov x23, x14
    b L1_1
L1_4:
    sub x19, x29, #192
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #88
    mov x10, x19
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
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
L1_9:
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_HttpHead_11field_count
    .no_dead_strip _lb_net_HttpHead_11field_count
_lb_net_HttpHead_11field_count:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    str x21, [sp, #88]
    str x22, [sp, #80]
    str x23, [sp, #72]
    str x24, [sp, #64]
    sub x16, x29, #72
    str x0, [x16]
    sub x16, x29, #88
    str x1, [x16]
    str x2, [x16, #8]
    sub x9, x29, #72
    ldr x14, [x9]
    add x14, x14, #56
    ldr x19, [x14]
    add x14, x14, #8
    ldr x20, [x14]
    sub x21, x29, #120
    sub x22, x29, #88
    mov x9, #0
    mov x23, x9
    mov x9, #0
    mov x24, x9
L2_1:
    cmp x24, x20
    b.hs L2_4
L2_2:
    lsl x14, x24, #5
    add x14, x19, x14
    mov x10, x14
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x22
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_net_10http_equal
    mov w14, w0
    cbnz w14, L2_5
    b L2_6
L2_5:
    mov x9, x23
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_6@PAGE
    add x1, x1, l_text_6@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    b L2_7
L2_6:
    mov x14, x23
L2_7:
L2_3:
    add x15, x24, #1
    mov x23, x14
    mov x24, x15
    b L2_1
L2_4:
    mov x9, x23
    mov x0, x9
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    ldr x22, [sp, #80]
    ldr x23, [sp, #72]
    ldr x24, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_8:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_HttpHead_9has_token
    .no_dead_strip _lb_net_HttpHead_9has_token
_lb_net_HttpHead_9has_token:
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
    str x25, [sp, #240]
    str x26, [sp, #232]
    str x27, [sp, #224]
    str x28, [sp, #216]
    sub x16, x29, #152
    str x0, [x16]
    sub x16, x29, #168
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #184
    str x3, [x16]
    str x4, [x16, #8]
    sub x9, x29, #152
    ldr x14, [x9]
    add x14, x14, #56
    ldr x9, [x14]
    str x9, [sp, #32]
    add x14, x14, #8
    ldr x20, [x14]
    sub x21, x29, #216
    sub x22, x29, #168
    sub x23, x29, #224
    add x24, x21, #16
    sub x25, x29, #248
    add x9, x25, #16
    str x9, [sp, #24]
    sub x26, x29, #264
    add x9, x26, #8
    str x9, [sp, #16]
    sub x9, x29, #184
    str x9, [sp, #8]
    mov x9, #0
    mov w28, w9
    mov x9, #0
    mov x27, x9
L3_1:
    cmp x27, x20
    b.hs L3_4
L3_2:
    lsl x14, x27, #5
    ldr x9, [sp, #32]
    add x14, x9, x14
    mov x10, x14
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    mov x9, x21
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x22
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_net_10http_equal
    mov w14, w0
    cbnz w14, L3_5
    b L3_6
L3_5:
    mov x9, #0
    str x9, [x23]
    mov w19, w28
L3_8:
    mov x9, x24
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x2, x23
    sub x8, x29, #248
    bl _lb_net_14http_list_next
    ldr x9, [sp, #24]
    ldrb w14, [x9]
    cbnz w14, L3_11
    b L3_10
L3_11:
    mov x10, x25
    mov x11, x26
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
L3_9:
    ldr x9, [sp, #16]
    ldr x14, [x9]
    mov x10, #0
    cmp x14, x10
    b.ne L3_13
L3_12:
    b L3_8
L3_15:
    b L3_14
L3_13:
L3_14:
    mov x9, x26
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_net_10http_token
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L3_17
L3_16:
    sub x19, x29, #144
    add x14, x19, #8
    adrp x15, _lb_net_12http_invalid@PAGE
    add x15, x15, _lb_net_12http_invalid@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_4@PAGE
    add x15, x15, l_text_4@PAGEOFF
    sub x12, x29, #280
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
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    ldr x25, [sp, #240]
    ldr x26, [sp, #232]
    ldr x27, [sp, #224]
    ldr x28, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_19:
    b L3_18
L3_17:
L3_18:
    mov x9, x26
    ldr x0, [x9]
    ldr x1, [x9, #8]
    ldr x9, [sp, #8]
    ldr x2, [x9]
    ldr x3, [x9, #8]
    bl _lb_net_10http_equal
    mov w14, w0
    cbnz w14, L3_20
    b L3_21
L3_20:
    movz x9, #1
    mov w19, w9
    b L3_22
L3_21:
L3_22:
    b L3_8
L3_10:
    mov w14, w19
    b L3_7
L3_6:
    mov w14, w28
L3_7:
L3_3:
    add x15, x27, #1
    mov w28, w14
    mov x27, x15
    b L3_1
L3_4:
    and w14, w28, #255
    sub x15, x29, #144
    strb w14, [x15]
    add x14, x15, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #288]
    ldr x20, [sp, #280]
    ldr x21, [sp, #272]
    ldr x22, [sp, #264]
    ldr x23, [sp, #256]
    ldr x24, [sp, #248]
    ldr x25, [sp, #240]
    ldr x26, [sp, #232]
    ldr x27, [sp, #224]
    ldr x28, [sp, #216]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_23:
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_net_10http_types_0init

    .section __TEXT,__const
l_text_0:
    .asciz "unreachable"
l_text_1:
    .asciz "src/std/net/http/types.lucb:47:9"
l_text_2:
    .asciz "src/std/net/http/types.lucb:53:17"
l_text_3:
    .asciz "src/std/net/http/types.lucb:54:9"
l_text_4:
    .asciz "invalid HTTP token list"
l_text_5:
    .asciz "src/std/net/http/types.lucb:69:9"
l_text_6:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3
    .globl _lb_net_12http_invalid
    .no_dead_strip _lb_net_12http_invalid
    .zerofill __DATA,__bss,_lb_net_12http_invalid,4,2
    .globl _lb_net_10http_limit
    .no_dead_strip _lb_net_10http_limit
    .zerofill __DATA,__bss,_lb_net_10http_limit,4,2
    .globl _lb_net_16http_unsupported
    .no_dead_strip _lb_net_16http_unsupported
    .zerofill __DATA,__bss,_lb_net_16http_unsupported,4,2

.subsections_via_symbols
