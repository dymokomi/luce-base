    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_testing_0init
_lb_testing_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, _lb_testing_12current_seed@PAGE
    add x14, x14, _lb_testing_12current_seed@PAGEOFF
    movz x9, #1
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_testing_begin
    .no_dead_strip _lb_testing_begin
_lb_testing_begin:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    sub x16, x29, #48
    str x0, [x16]
    adrp x19, _lb_testing_arena@PAGE
    add x19, x19, _lb_testing_arena@PAGEOFF
    adrp x14, _lb_testing_11arena_bytes@PAGE
    add x14, x14, _lb_testing_11arena_bytes@PAGEOFF
    sub x15, x29, #64
    str x14, [x15]
    add x14, x15, #8
    movz x9, #16, lsl #16
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #88
    bl _lb_memory_FixedBuffer_over
    sub x14, x29, #88
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    adrp x14, _lb_testing_saved@PAGE
    add x14, x14, _lb_testing_saved@PAGEOFF
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x20, x0
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #104
    str x19, [x14]
    adrp x15, _lb_vt_memory_FixedBuffer_Allocator@PAGE
    add x15, x15, _lb_vt_memory_FixedBuffer_Allocator@PAGEOFF
    add x19, x14, #8
    str x15, [x19]
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, _lb_testing_12current_seed@PAGE
    add x14, x14, _lb_testing_12current_seed@PAGEOFF
    sub x15, x29, #48
    ldr x15, [x15]
    mov x9, x15
    movz x10, #31153
    movk x10, #40503, lsl #16
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_0@PAGE
    add x0, x0, l_text_0@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    mov x9, x15
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_0@PAGE
    add x0, x0, l_text_0@PAGEOFF
    adrp x1, l_text_17@PAGE
    add x1, x1, l_text_17@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x14]
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_testing_end
    .no_dead_strip _lb_testing_end
_lb_testing_end:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, _lb_testing_saved@PAGE
    add x14, x14, _lb_testing_saved@PAGEOFF
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x15, x0
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_testing_seed
    .no_dead_strip _lb_testing_seed
_lb_testing_seed:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, _lb_testing_12current_seed@PAGE
    add x14, x14, _lb_testing_12current_seed@PAGEOFF
    ldr x14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_1:
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_1@PAGE
    add x1, x1, l_text_1@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_testing_random
    .no_dead_strip _lb_testing_random
_lb_testing_random:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    str x19, [sp, #8]
    adrp x14, _lb_testing_12current_seed@PAGE
    add x14, x14, _lb_testing_12current_seed@PAGEOFF
    ldr x15, [x14]
L4_2:
    lsl x19, x15, #13
    eor x19, x15, x19
L4_4:
    lsr x15, x19, #7
    eor x15, x19, x15
L4_6:
    lsl x19, x15, #17
    eor x19, x15, x19
    str x19, [x14]
    mov x9, x19
    mov x0, x9
    ldr x19, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_testing_expect
    .no_dead_strip _lb_testing_expect
_lb_testing_expect:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str w0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    str x2, [x16, #8]
    sub x14, x29, #32
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    b.ne L5_2
L5_1:
    sub x14, x29, #48
    adrp x15, l_text_8@PAGE
    add x15, x15, l_text_8@PAGEOFF
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L5_3
L5_2:
L5_3:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_testing_12expect_equal
    .no_dead_strip _lb_testing_12expect_equal
_lb_testing_12expect_equal:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1168
    str x19, [sp, #1144]
    str x20, [sp, #1136]
    str x21, [sp, #1128]
    str x22, [sp, #1120]
    sub x16, x29, #64
    str x0, [x16]
    sub x16, x29, #80
    str x1, [x16]
    sub x16, x29, #96
    str x2, [x16]
    str x3, [x16, #8]
    sub x14, x29, #64
    ldr x19, [x14]
    sub x14, x29, #80
    ldr x20, [x14]
    cmp x19, x20
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L6_2
L6_1:
    sub x14, x29, #1120
    sub x21, x29, #1144
    str x14, [x21]
    add x14, x21, #8
    movz x9, #1024
    str x9, [x14]
    add x14, x21, #16
    mov x9, #0
    str x9, [x14]
    adrp x14, l_text_9@PAGE
    add x14, x14, l_text_9@PAGEOFF
    mov x0, x21
    mov x1, x14
    movz x2, #9
    bl _lb_core_10format_put
    mov w14, w0
    mov x0, x21
    mov x1, x20
    bl _lb_core_10format_i64
    mov w14, w0
    adrp x14, l_text_10@PAGE
    add x14, x14, l_text_10@PAGEOFF
    mov x0, x21
    mov x1, x14
    movz x2, #6
    bl _lb_core_10format_put
    mov w14, w0
    mov x0, x21
    mov x1, x19
    bl _lb_core_10format_i64
    mov w14, w0
    adrp x14, l_text_11@PAGE
    add x14, x14, l_text_11@PAGEOFF
    mov x0, x21
    mov x1, x14
    movz x2, #2
    bl _lb_core_10format_put
    mov w14, w0
    sub x22, x29, #96
    ldr x14, [x22]
    add x15, x22, #8
    ldr x15, [x15]
    mov x0, x21
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    mov x0, x21
    bl _lb_core_13format_finish
    sub x16, x29, #1160
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #1160
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_core_9print_str
    adrp x14, l_text_12@PAGE
    add x14, x14, l_text_12@PAGEOFF
    mov x0, x14
    mov x9, x22
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L6_3
L6_2:
L6_3:
    ldr x19, [sp, #1144]
    ldr x20, [sp, #1136]
    ldr x21, [sp, #1128]
    ldr x22, [sp, #1120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_testing_11expect_text
    .no_dead_strip _lb_testing_11expect_text
_lb_testing_11expect_text:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1184
    str x19, [sp, #1160]
    str x20, [sp, #1152]
    str x21, [sp, #1144]
    str x22, [sp, #1136]
    str x23, [sp, #1128]
    str x24, [sp, #1120]
    sub x16, x29, #80
    str x0, [x16]
    str x1, [x16, #8]
    sub x16, x29, #96
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #112
    str x4, [x16]
    str x5, [x16, #8]
    sub x21, x29, #80
    sub x22, x29, #96
    add x14, x21, #8
    ldr x19, [x14]
    add x14, x22, #8
    ldr x20, [x14]
    cmp x19, x20
    cset w14, eq
    cbnz w14, L7_4
    b L7_6
L7_6:
    mov w15, w14
    b L7_5
L7_4:
    ldr x14, [x21]
    ldr x15, [x22]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L7_5:
    and w14, w15, #255
    mov x10, #0
    cmp w14, w10
    b.ne L7_2
L7_1:
    sub x14, x29, #1136
    sub x23, x29, #1160
    str x14, [x23]
    add x14, x23, #8
    movz x9, #1024
    str x9, [x14]
    add x14, x23, #16
    mov x9, #0
    str x9, [x14]
    adrp x14, l_text_13@PAGE
    add x14, x14, l_text_13@PAGEOFF
    mov x0, x23
    mov x1, x14
    movz x2, #10
    bl _lb_core_10format_put
    mov w14, w0
    ldr x14, [x22]
    mov x0, x23
    mov x1, x14
    mov x2, x20
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_14@PAGE
    add x14, x14, l_text_14@PAGEOFF
    mov x0, x23
    mov x1, x14
    movz x2, #8
    bl _lb_core_10format_put
    mov w14, w0
    ldr x14, [x21]
    mov x0, x23
    mov x1, x14
    mov x2, x19
    bl _lb_core_10format_put
    mov w14, w0
    adrp x14, l_text_15@PAGE
    add x14, x14, l_text_15@PAGEOFF
    mov x0, x23
    mov x1, x14
    movz x2, #3
    bl _lb_core_10format_put
    mov w14, w0
    sub x24, x29, #112
    ldr x14, [x24]
    add x15, x24, #8
    ldr x15, [x15]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl _lb_core_10format_put
    mov w14, w0
    mov x0, x23
    bl _lb_core_13format_finish
    sub x16, x29, #1176
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #1176
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_core_9print_str
    adrp x14, l_text_16@PAGE
    add x14, x14, l_text_16@PAGEOFF
    mov x0, x14
    mov x9, x24
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    b L7_3
L7_2:
L7_3:
    ldr x19, [sp, #1160]
    ldr x20, [sp, #1152]
    ldr x21, [sp, #1144]
    ldr x22, [sp, #1136]
    ldr x23, [sp, #1128]
    ldr x24, [sp, #1120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_testing_0init

    .section __TEXT,__const
l_text_0:
    .asciz "src/std/testing.lucb:17:5"
l_text_1:
    .asciz "unreachable"
l_text_2:
    .asciz "src/std/testing.lucb:25:5"
l_text_3:
    .asciz "shift count out of range"
l_text_4:
    .asciz "src/std/testing.lucb:30:5"
l_text_5:
    .asciz "src/std/testing.lucb:31:5"
l_text_6:
    .asciz "src/std/testing.lucb:32:5"
l_text_7:
    .asciz "src/std/testing.lucb:34:5"
l_text_8:
    .asciz "src/std/testing.lucb:38:9"
l_text_9:
    .asciz "expected "
l_text_10:
    .asciz ", got "
l_text_11:
    .asciz ": "
l_text_12:
    .asciz "src/std/testing.lucb:43:9"
l_text_13:
    .asciz "expected `"
l_text_14:
    .asciz "`, got `"
l_text_15:
    .asciz "`: "
l_text_16:
    .asciz "src/std/testing.lucb:48:9"
l_text_17:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3
    .globl _lb_vt_memory_FixedBuffer_Allocator
    .weak_definition _lb_vt_memory_FixedBuffer_Allocator
_lb_vt_memory_FixedBuffer_Allocator:
    .quad _lb_memory_FixedBuffer_allocate
    .quad _lb_memory_FixedBuffer_resize
    .quad _lb_memory_FixedBuffer_release
    .globl _lb_testing_11arena_bytes
    .zerofill __DATA,__bss,_lb_testing_11arena_bytes,1048576,0
    .globl _lb_testing_arena
    .zerofill __DATA,__bss,_lb_testing_arena,24,3
    .globl _lb_testing_saved
    .zerofill __DATA,__bss,_lb_testing_saved,16,3
    .globl _lb_testing_12current_seed
    .zerofill __DATA,__bss,_lb_testing_12current_seed,8,3

.subsections_via_symbols
