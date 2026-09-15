    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_ownership_pool_0init
_lb_ownership_pool_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x0, _lb_ownership_13pending_count@TLVPPAGE
    ldr x0, [x0, _lb_ownership_13pending_count@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    mov x9, #0
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_mark
    .no_dead_strip _lb_ownership_mark
_lb_ownership_mark:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x0, _lb_ownership_13pending_count@TLVPPAGE
    ldr x0, [x0, _lb_ownership_13pending_count@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_1:
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_ownership_12push_pending
    .no_dead_strip _lb_ownership_12push_pending
_lb_ownership_12push_pending:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #304
    str x19, [sp, #280]
    str x20, [sp, #272]
    str x21, [sp, #264]
    str x22, [sp, #256]
    str x23, [sp, #248]
    str x24, [sp, #240]
    str x25, [sp, #232]
    str x26, [sp, #224]
    str x27, [sp, #216]
    str x28, [sp, #208]
    sub x16, x29, #128
    str x0, [x16]
    sub x0, x29, #128
    ldr x1, [x0]
    movz x2, #32
    bl _memcpy
    adrp x0, _lb_ownership_13pending_count@TLVPPAGE
    ldr x0, [x0, _lb_ownership_13pending_count@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    ldr x14, [x19]
    adrp x0, _lb_ownership_pending@TLVPPAGE
    ldr x0, [x0, _lb_ownership_pending@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x20, x0
    add x21, x20, #8
    ldr x15, [x21]
    cmp x14, x15
    b.ne L2_2
L2_1:
    sub x22, x29, #144
    adrp x9, _lb_memory_heap@PAGE
    add x9, x9, _lb_memory_heap@PAGEOFF
    str x9, [sp, #8]
    mov x10, #0
    cmp x15, x10
    b.ls L2_7
L2_6:
    mov x9, x15
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x24, x14
    b L2_8
L2_7:
    movz x9, #64
    mov x24, x9
L2_8:
    sub x25, x29, #232
    movz x10, #512, lsl #48
    cmp x24, x10
    b.ls L2_10
L2_9:
    add x14, x25, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_3@PAGE
    add x15, x15, l_text_3@PAGEOFF
    add x24, x14, #8
    str x15, [x24]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x25, #40
    movz x9, #1
    strb w9, [x14]
    b L2_11
L2_10:
    lsl x26, x24, #5
    ldr x9, [sp, #8]
    ldr x14, [x9]
    ldr x9, [sp, #8]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, L2_12
    b L2_13
L2_13:
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at
L2_12:
    ldr x27, [x15]
    mov x17, x27
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x26
    movz x2, #8
    sub x8, x29, #256
    ldr x17, [sp], #16
    blr x17
    sub x23, x29, #256
    add x27, x23, #16
    ldrb w27, [x27]
    mov x10, #0
    cmp x26, x10
    cset w28, ne
    mov x10, #0
    cmp w27, w10
    cset w27, eq
    and w27, w28, w27
    cbnz w27, L2_14
    b L2_15
L2_14:
    add x14, x25, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_5@PAGE
    add x15, x15, l_text_5@PAGEOFF
    add x23, x14, #8
    str x15, [x23]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x25, #40
    movz x9, #1
    strb w9, [x14]
    b L2_11
L2_15:
    ldr x14, [x23]
    str x14, [x25]
    add x14, x25, #8
    str x24, [x14]
    add x14, x25, #40
    mov x9, #0
    strb w9, [x14]
L2_11:
    add x14, x25, #40
    ldrb w14, [x14]
    cbnz w14, L2_17
    b L2_16
L2_17:
    add x14, x25, #16
    sub x15, x29, #184
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L2_4
L2_16:
    sub x14, x29, #160
    mov x10, x25
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L2_5
L2_4:
    adrp x14, l_text_6@PAGE
    add x14, x14, l_text_6@PAGEOFF
    sub x15, x29, #272
    str x14, [x15]
    add x14, x15, #8
    movz x9, #13
    str x9, [x14]
    adrp x14, l_text_7@PAGE
    add x14, x14, l_text_7@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
L2_5:
    sub x14, x29, #160
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x23, x22, #8
    mov x9, #0
    mov x24, x9
L2_18:
    ldr x14, [x19]
    cmp x24, x14
    b.hs L2_20
L2_19:
    ldr x14, [x22]
    ldr x15, [x23]
    cmp x24, x15
    b.lo 1f
    adrp x0, l_text_8@PAGE
    add x0, x0, l_text_8@PAGEOFF
    adrp x1, l_text_18@PAGE
    add x1, x1, l_text_18@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x15, x24, #5
    add x14, x14, x15
    ldr x25, [x20]
    ldr x26, [x21]
    cmp x24, x26
    b.lo 1f
    adrp x0, l_text_8@PAGE
    add x0, x0, l_text_8@PAGEOFF
    adrp x1, l_text_18@PAGE
    add x1, x1, l_text_18@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x15, x15, x25
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    add x14, x24, #1
    mov x24, x14
    b L2_18
L2_20:
    ldr x14, [x21]
    mov x10, #0
    cmp x14, x10
    b.ls L2_22
L2_21:
    sub x15, x29, #288
    ldr x23, [x20]
    mov x9, x14
    movz x10, #32
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x24, x9
    str x23, [x15]
    add x23, x15, #8
    str x24, [x23]
    ldr x9, [sp, #8]
    ldr x23, [x9]
    ldr x9, [sp, #8]
    add x24, x9, #8
    ldr x24, [x24]
    cbnz x24, L2_25
    b L2_24
L2_25:
    add x14, x24, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x23
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L2_24:
    b L2_23
L2_22:
L2_23:
    mov x10, x22
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L2_3
L2_2:
L2_3:
    ldr x14, [x19]
    ldr x15, [x20]
    ldr x22, [x21]
    cmp x14, x22
    b.lo 1f
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_18@PAGE
    add x1, x1, l_text_18@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x14, #5
    add x14, x15, x14
    sub x15, x29, #128
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x14, [x19]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x19]
    ldr x19, [sp, #280]
    ldr x20, [sp, #272]
    ldr x21, [sp, #264]
    ldr x22, [sp, #256]
    ldr x23, [sp, #248]
    ldr x24, [sp, #240]
    ldr x25, [sp, #232]
    ldr x26, [sp, #224]
    ldr x27, [sp, #216]
    ldr x28, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_11pool_object
    .no_dead_strip _lb_ownership_11pool_object
_lb_ownership_11pool_object:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    str x20, [sp, #48]
    sub x16, x29, #48
    str x0, [x16]
    sub x19, x29, #80
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    sub x14, x29, #48
    ldr x20, [x14]
    str x20, [x19]
    add x14, x19, #8
    mov x9, #0
    str x9, [x14]
    add x14, x19, #16
    mov x9, #0
    str x9, [x14]
    add x14, x19, #24
    mov x9, #0
    str x9, [x14]
    mov x9, x19
    mov x0, x9
    bl _lb_ownership_12push_pending
    mov x9, x20
    mov x0, x9
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_1:
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_ownership_drain
    .no_dead_strip _lb_ownership_drain
_lb_ownership_drain:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    str x19, [sp, #200]
    str x20, [sp, #192]
    str x21, [sp, #184]
    str x22, [sp, #176]
    str x23, [sp, #168]
    str x24, [sp, #160]
    str x25, [sp, #152]
    str x26, [sp, #144]
    str x27, [sp, #136]
    str x28, [sp, #128]
    sub x16, x29, #112
    str x0, [x16]
    adrp x0, _lb_ownership_13pending_count@TLVPPAGE
    ldr x0, [x0, _lb_ownership_13pending_count@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    str x0, [sp, #40]
    ldr x9, [sp, #40]
    ldr x9, [x9]
    str x9, [sp, #32]
    sub x14, x29, #112
    ldr x21, [x14]
    ldr x9, [sp, #32]
    cmp x9, x21
    b.hi L4_2
L4_1:
    ldr x19, [sp, #200]
    ldr x20, [sp, #192]
    ldr x21, [sp, #184]
    ldr x22, [sp, #176]
    ldr x23, [sp, #168]
    ldr x24, [sp, #160]
    ldr x25, [sp, #152]
    ldr x26, [sp, #144]
    ldr x27, [sp, #136]
    ldr x28, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_4:
    b L4_3
L4_2:
L4_3:
    sub x22, x29, #144
    add x23, x22, #8
    add x24, x22, #16
    add x25, x22, #24
    sub x26, x29, #160
    add x27, x26, #8
    adrp x9, _lb_memory_heap@PAGE
    add x9, x9, _lb_memory_heap@PAGEOFF
    str x9, [sp, #24]
    sub x19, x29, #176
    add x9, x19, #8
    str x9, [sp, #16]
    ldr x9, [sp, #24]
    add x9, x9, #8
    str x9, [sp, #8]
    mov x28, x21
L4_5:
    ldr x10, [sp, #32]
    cmp x28, x10
    b.hs L4_7
L4_6:
    adrp x0, _lb_ownership_pending@TLVPPAGE
    ldr x0, [x0, _lb_ownership_pending@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x15, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cmp x28, x14
    b.lo 1f
    adrp x0, l_text_14@PAGE
    add x0, x0, l_text_14@PAGEOFF
    adrp x1, l_text_18@PAGE
    add x1, x1, l_text_18@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x28, #5
    add x14, x15, x14
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x14, [x22]
    cbnz x14, L4_11
    b L4_9
L4_11:
L4_8:
    mov x0, x14
    bl _lb_ownership_release
    b L4_10
L4_9:
    ldr x20, [x23]
    cbnz x20, L4_15
    b L4_13
L4_15:
L4_12:
    ldr x14, [x24]
    cbnz x14, L4_19
    b L4_17
L4_19:
L4_16:
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x20
    ldr x17, [sp], #16
    blr x17
    b L4_18
L4_17:
L4_18:
    ldr x14, [x25]
    str x20, [x26]
    str x14, [x27]
    str x20, [x19]
    ldr x10, [sp, #16]
    str x14, [x10]
    ldr x9, [sp, #24]
    ldr x14, [x9]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    cbnz x15, L4_21
    b L4_20
L4_21:
    add x20, x15, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x14
    mov x9, x19
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L4_20:
    b L4_14
L4_13:
L4_14:
L4_10:
    add x14, x28, #1
    mov x28, x14
    b L4_5
L4_7:
    ldr x10, [sp, #40]
    str x21, [x10]
    ldr x19, [sp, #200]
    ldr x20, [sp, #192]
    ldr x21, [sp, #184]
    ldr x22, [sp, #176]
    ldr x23, [sp, #168]
    ldr x24, [sp, #160]
    ldr x25, [sp, #152]
    ldr x26, [sp, #144]
    ldr x27, [sp, #136]
    ldr x28, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_ownership_pool_0init

    .section __TEXT,__const
l_text_0:
    .asciz "unreachable"
l_text_1:
    .asciz "src/std/ownership/pool.lucb:13:5"
l_text_2:
    .asciz "src/std/ownership/pool.lucb:17:9"
l_text_3:
    .asciz "memory.exhausted: the allocation size overflows"
l_text_4:
    .asciz "memory.unset"
l_text_5:
    .asciz "memory.exhausted"
l_text_6:
    .asciz "out of memory"
l_text_7:
    .asciz "src/std/ownership/pool.lucb:18:13"
l_text_8:
    .asciz "src/std/ownership/pool.lucb:21:13"
l_text_9:
    .asciz "src/std/ownership/pool.lucb:22:13"
l_text_10:
    .asciz "src/std/ownership/pool.lucb:24:13"
l_text_11:
    .asciz "src/std/ownership/pool.lucb:26:5"
l_text_12:
    .asciz "src/std/ownership/pool.lucb:27:5"
l_text_13:
    .asciz "src/std/ownership/pool.lucb:32:5"
l_text_14:
    .asciz "src/std/ownership/pool.lucb:49:9"
l_text_15:
    .asciz "src/std/ownership/pool.lucb:55:13"
l_text_16:
    .asciz "src/std/ownership/pool.lucb:56:9"
l_text_17:
    .asciz "integer overflow"
l_text_18:
    .asciz "index out of bounds"

    .section __DATA,__const
    .p2align 3

    .section __DATA,__thread_bss,thread_local_zerofill
    .p2align 4
_lb_ownership_pending$tlv$init:
    .space 16
    .section __DATA,__thread_vars,thread_local_variables
    .globl _lb_ownership_pending
_lb_ownership_pending:
    .quad __tlv_bootstrap
    .quad 0
    .quad _lb_ownership_pending$tlv$init

    .section __DATA,__thread_bss,thread_local_zerofill
    .p2align 4
_lb_ownership_13pending_count$tlv$init:
    .space 8
    .section __DATA,__thread_vars,thread_local_variables
    .globl _lb_ownership_13pending_count
_lb_ownership_13pending_count:
    .quad __tlv_bootstrap
    .quad 0
    .quad _lb_ownership_13pending_count$tlv$init

.subsections_via_symbols
