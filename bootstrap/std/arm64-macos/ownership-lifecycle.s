    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_ownership_lifecycle_0init
_lb_ownership_lifecycle_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_10finish_run
    .no_dead_strip _lb_ownership_10finish_run
_lb_ownership_10finish_run:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #448
    str x19, [sp, #424]
    str x20, [sp, #416]
    str x21, [sp, #408]
    str x22, [sp, #400]
    str x23, [sp, #392]
    str x24, [sp, #384]
    sub x16, x29, #80
    str w0, [x16]
    mov x0, #0
    bl _lb_ownership_drain
    bl _lb_ownership_collect
    adrp x0, _lb_ownership_live@TLVPPAGE
    ldr x0, [x0, _lb_ownership_live@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    ldr x14, [x19]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L1_2
L1_1:
    sub x20, x29, #176
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    sub x23, x29, #192
    sub x14, x29, #248
    str x20, [x14]
    add x14, x14, #8
    movz x9, #96
    str x9, [x14]
    sub x21, x29, #272
    str x20, [x21]
    add x20, x21, #8
    movz x9, #96
    str x9, [x20]
    add x22, x21, #16
    mov x9, #0
    str x9, [x22]
    adrp x14, l_text_0@PAGE
    add x14, x14, l_text_0@PAGEOFF
    mov x0, x21
    mov x1, x14
    movz x2, #9
    bl _lb_core_10format_put
    mov w14, w0
    ldr x14, [x19]
    mov x0, x21
    mov x1, x14
    bl _lb_core_10format_u64
    mov w14, w0
    adrp x14, l_text_1@PAGE
    add x14, x14, l_text_1@PAGEOFF
    mov x0, x21
    mov x1, x14
    movz x2, #23
    bl _lb_core_10format_put
    mov w14, w0
    sub x24, x29, #320
    ldr x14, [x22]
    ldr x15, [x20]
    cmp x14, x15
    b.ls L1_7
L1_6:
    add x14, x24, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_2@PAGE
    add x15, x15, l_text_2@PAGEOFF
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #60
    str x9, [x14]
    add x14, x24, #40
    movz x9, #1
    strb w9, [x14]
    b L1_8
L1_7:
    mov x0, x21
    bl _lb_core_13format_finish
    sub x16, x29, #336
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #336
    mov x10, x14
    mov x11, x24
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x24, #40
    mov x9, #0
    strb w9, [x14]
L1_8:
    add x14, x24, #40
    ldrb w14, [x14]
    cbnz w14, L1_10
    b L1_9
L1_10:
    add x14, x24, #16
    sub x15, x29, #232
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b L1_4
L1_9:
    sub x14, x29, #208
    mov x10, x24
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b L1_5
L1_4:
    adrp x14, l_text_3@PAGE
    add x14, x14, l_text_3@PAGEOFF
    sub x15, x29, #352
    str x14, [x15]
    add x14, x15, #8
    movz x9, #31
    str x9, [x14]
    sub x14, x29, #208
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b L1_5
L1_11:
L1_5:
    sub x14, x29, #208
    mov x10, x14
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x19, x29, #368
    bl _lb_io_stderr
    sub x16, x29, #384
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #384
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x14, [x19]
    add x15, x19, #8
    ldr x15, [x15]
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    mov x9, x23
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #448
    ldr x17, [sp], #16
    blr x17
    sub x15, x29, #448
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L1_15
    b L1_14
L1_15:
    add x14, x15, #8
    sub x12, x29, #408
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b L1_12
L1_14:
    b L1_13
L1_12:
    b L1_13
L1_16:
L1_13:
    movz x9, #3
    mov x0, x9
    ldr x19, [sp, #424]
    ldr x20, [sp, #416]
    ldr x21, [sp, #408]
    ldr x22, [sp, #400]
    ldr x23, [sp, #392]
    ldr x24, [sp, #384]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_17:
    b L1_3
L1_2:
L1_3:
    bl _lb_ownership_15release_buffers
    adrp x0, _lb_ownership_13runtime_depth@TLVPPAGE
    ldr x0, [x0, _lb_ownership_13runtime_depth@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    mov x9, #0
    str w9, [x14]
    adrp x0, _lb_ownership_14thread_context@TLVPPAGE
    ldr x0, [x0, _lb_ownership_14thread_context@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    mov x9, #0
    str x9, [x14]
    sub x14, x29, #80
    ldrsw x14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #424]
    ldr x20, [sp, #416]
    ldr x21, [sp, #408]
    ldr x22, [sp, #400]
    ldr x23, [sp, #392]
    ldr x24, [sp, #384]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_18:
    adrp x0, l_text_5@PAGE
    add x0, x0, l_text_5@PAGEOFF
    adrp x1, l_text_4@PAGE
    add x1, x1, l_text_4@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_ownership_11finish_task
    .no_dead_strip _lb_ownership_11finish_task
_lb_ownership_11finish_task:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #432
    str x19, [sp, #408]
    str x20, [sp, #400]
    str x21, [sp, #392]
    str x22, [sp, #384]
    str x23, [sp, #376]
    str x24, [sp, #368]
    mov x0, #0
    bl _lb_ownership_drain
    bl _lb_ownership_collect
    adrp x0, _lb_ownership_live@TLVPPAGE
    ldr x0, [x0, _lb_ownership_live@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    ldr x14, [x19]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L2_2
L2_1:
    sub x20, x29, #160
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    stp xzr, xzr, [x11, #80]
    sub x23, x29, #176
    sub x14, x29, #232
    str x20, [x14]
    add x14, x14, #8
    movz x9, #96
    str x9, [x14]
    sub x21, x29, #256
    str x20, [x21]
    add x20, x21, #8
    movz x9, #96
    str x9, [x20]
    add x22, x21, #16
    mov x9, #0
    str x9, [x22]
    adrp x14, l_text_0@PAGE
    add x14, x14, l_text_0@PAGEOFF
    mov x0, x21
    mov x1, x14
    movz x2, #9
    bl _lb_core_10format_put
    mov w14, w0
    ldr x14, [x19]
    mov x0, x21
    mov x1, x14
    bl _lb_core_10format_u64
    mov w14, w0
    adrp x14, l_text_6@PAGE
    add x14, x14, l_text_6@PAGEOFF
    mov x0, x21
    mov x1, x14
    movz x2, #33
    bl _lb_core_10format_put
    mov w14, w0
    sub x24, x29, #304
    ldr x14, [x22]
    ldr x15, [x20]
    cmp x14, x15
    b.ls L2_7
L2_6:
    add x14, x24, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_2@PAGE
    add x15, x15, l_text_2@PAGEOFF
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #60
    str x9, [x14]
    add x14, x24, #40
    movz x9, #1
    strb w9, [x14]
    b L2_8
L2_7:
    mov x0, x21
    bl _lb_core_13format_finish
    sub x16, x29, #320
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #320
    mov x10, x14
    mov x11, x24
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x24, #40
    mov x9, #0
    strb w9, [x14]
L2_8:
    add x14, x24, #40
    ldrb w14, [x14]
    cbnz w14, L2_10
    b L2_9
L2_10:
    add x14, x24, #16
    sub x15, x29, #216
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b L2_4
L2_9:
    sub x14, x29, #192
    mov x10, x24
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b L2_5
L2_4:
    adrp x14, l_text_7@PAGE
    add x14, x14, l_text_7@PAGEOFF
    sub x15, x29, #336
    str x14, [x15]
    add x14, x15, #8
    movz x9, #41
    str x9, [x14]
    sub x14, x29, #192
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b L2_5
L2_11:
L2_5:
    sub x14, x29, #192
    mov x10, x14
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x19, x29, #352
    bl _lb_io_stderr
    sub x16, x29, #368
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #368
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x14, [x19]
    add x15, x19, #8
    ldr x15, [x15]
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x14
    mov x9, x23
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #432
    ldr x17, [sp], #16
    blr x17
    sub x15, x29, #432
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L2_15
    b L2_14
L2_15:
    add x14, x15, #8
    sub x12, x29, #392
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b L2_12
L2_14:
    b L2_13
L2_12:
    b L2_13
L2_16:
L2_13:
    movz x0, #3
    bl _lb_core_exit
    b L2_3
L2_2:
L2_3:
    bl _lb_ownership_15release_buffers
    adrp x0, _lb_ownership_13runtime_depth@TLVPPAGE
    ldr x0, [x0, _lb_ownership_13runtime_depth@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    mov x9, #0
    str w9, [x14]
    adrp x0, _lb_ownership_14thread_context@TLVPPAGE
    ldr x0, [x0, _lb_ownership_14thread_context@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    mov x9, #0
    str x9, [x14]
    ldr x19, [sp, #408]
    ldr x20, [sp, #400]
    ldr x21, [sp, #392]
    ldr x22, [sp, #384]
    ldr x23, [sp, #376]
    ldr x24, [sp, #368]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_ownership_15release_buffers
_lb_ownership_15release_buffers:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    str x19, [sp, #120]
    str x20, [sp, #112]
    str x21, [sp, #104]
    str x22, [sp, #96]
    str x23, [sp, #88]
    adrp x0, _lb_ownership_13pending_count@TLVPPAGE
    ldr x0, [x0, _lb_ownership_13pending_count@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    cbnz w14, L3_1
    b L3_22
L3_22:
    mov w15, w14
    b L3_2
L3_1:
    adrp x0, _lb_ownership_10root_count@TLVPPAGE
    ldr x0, [x0, _lb_ownership_10root_count@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w15, eq
L3_2:
    and w14, w15, #255
    cbnz w14, L3_3
    b L3_23
L3_23:
    mov w15, w14
    b L3_4
L3_3:
    adrp x0, _lb_ownership_11white_count@TLVPPAGE
    ldr x0, [x0, _lb_ownership_11white_count@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x14, x0
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w15, eq
L3_4:
    and w14, w15, #255
    cbnz w14, L3_5
    b L3_6
L3_6:
    adrp x0, l_text_9@PAGE
    add x0, x0, l_text_9@PAGEOFF
    adrp x1, l_text_8@PAGE
    add x1, x1, l_text_8@PAGEOFF
    bl _lb_core_7trap_at
L3_5:
    adrp x0, _lb_ownership_pending@TLVPPAGE
    ldr x0, [x0, _lb_ownership_pending@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x19, x0
    add x14, x19, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls L3_8
L3_7:
    adrp x15, _lb_memory_heap@PAGE
    add x15, x15, _lb_memory_heap@PAGEOFF
    sub x12, x29, #72
    ldr x13, [x19]
    mov x9, x14
    movz x10, #32
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_10@PAGE
    add x0, x0, l_text_10@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    str x13, [x12]
    add x13, x12, #8
    str x20, [x13]
    ldr x13, [x15]
    add x15, x15, #8
    ldr x15, [x15]
    cbnz x15, L3_11
    b L3_10
L3_11:
    add x14, x15, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x13
    mov x9, x12
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L3_10:
    b L3_9
L3_8:
L3_9:
    adrp x0, _lb_ownership_roots@TLVPPAGE
    ldr x0, [x0, _lb_ownership_roots@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x20, x0
    add x14, x20, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls L3_13
L3_12:
    adrp x15, _lb_memory_heap@PAGE
    add x15, x15, _lb_memory_heap@PAGEOFF
    sub x12, x29, #88
    ldr x13, [x20]
    mov x9, x14
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_11@PAGE
    add x0, x0, l_text_11@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x21, x9
    str x13, [x12]
    add x13, x12, #8
    str x21, [x13]
    ldr x13, [x15]
    add x15, x15, #8
    ldr x15, [x15]
    cbnz x15, L3_16
    b L3_15
L3_16:
    add x14, x15, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x13
    mov x9, x12
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L3_15:
    b L3_14
L3_13:
L3_14:
    adrp x0, _lb_ownership_whites@TLVPPAGE
    ldr x0, [x0, _lb_ownership_whites@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x21, x0
    add x14, x21, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls L3_18
L3_17:
    adrp x15, _lb_memory_heap@PAGE
    add x15, x15, _lb_memory_heap@PAGEOFF
    sub x12, x29, #104
    ldr x13, [x21]
    mov x9, x14
    movz x10, #8
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_12@PAGE
    add x0, x0, l_text_12@PAGEOFF
    adrp x1, l_text_13@PAGE
    add x1, x1, l_text_13@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x22, x9
    str x13, [x12]
    add x13, x12, #8
    str x22, [x13]
    ldr x13, [x15]
    add x15, x15, #8
    ldr x15, [x15]
    cbnz x15, L3_21
    b L3_20
L3_21:
    add x14, x15, #16
    ldr x14, [x14]
    mov x17, x14
    str x17, [sp, #-16]!
    mov x0, x13
    mov x9, x12
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L3_20:
    b L3_19
L3_18:
L3_19:
    sub x22, x29, #120
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    sub x23, x29, #136
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    mov x10, x22
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x10, x23
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x10, x23
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    ldr x23, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_ownership_lifecycle_0init

    .section __TEXT,__const
l_text_0:
    .asciz "runtime: "
l_text_1:
    .asciz " objects alive at exit\n"
l_text_2:
    .asciz "memory.exhausted: the formatted text does not fit its buffer"
l_text_3:
    .asciz "runtime: objects alive at exit\n"
l_text_4:
    .asciz "unreachable"
l_text_5:
    .asciz "src/std/ownership/lifecycle.lucb:17:5"
l_text_6:
    .asciz " objects alive when a task ended\n"
l_text_7:
    .asciz "runtime: objects alive when a task ended\n"
l_text_8:
    .asciz "assert failed: pending_count == 0 and root_count == 0 and white_count == 0"
l_text_9:
    .asciz "src/std/ownership/lifecycle.lucb:39:5"
l_text_10:
    .asciz "src/std/ownership/lifecycle.lucb:41:9"
l_text_11:
    .asciz "src/std/ownership/lifecycle.lucb:43:9"
l_text_12:
    .asciz "src/std/ownership/lifecycle.lucb:45:9"
l_text_13:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3

.subsections_via_symbols
