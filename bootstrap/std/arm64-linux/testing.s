    .text

    .p2align 2
    .globl lb_testing_0init
    .type lb_testing_0init, %function
lb_testing_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, lb_testing_12current_seed
    add x14, x14, :lo12:lb_testing_12current_seed
    movz x9, #1
    str x9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_testing_0init, .-lb_testing_0init

    .p2align 2
    .globl lb_testing_begin
    .type lb_testing_begin, %function
lb_testing_begin:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    sub x16, x29, #48
    str x0, [x16]
    adrp x19, lb_testing_arena
    add x19, x19, :lo12:lb_testing_arena
    adrp x14, lb_testing_11arena_bytes
    add x14, x14, :lo12:lb_testing_11arena_bytes
    sub x15, x29, #64
    str x14, [x15]
    add x14, x15, #8
    movz x9, #16, lsl #16
    str x9, [x14]
    mov x9, x15
    ldr x0, [x9]
    ldr x1, [x9, #8]
    sub x8, x29, #88
    bl lb_memory_FixedBuffer_over
    sub x14, x29, #88
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    adrp x14, lb_testing_saved
    add x14, x14, :lo12:lb_testing_saved
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x20, x0
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x14, x29, #104
    str x19, [x14]
    adrp x15, lb_vt_memory_FixedBuffer_Allocator
    add x15, x15, :lo12:lb_vt_memory_FixedBuffer_Allocator
    add x19, x14, #8
    str x15, [x19]
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    adrp x14, lb_testing_12current_seed
    add x14, x14, :lo12:lb_testing_12current_seed
    sub x15, x29, #48
    ldr x15, [x15]
    mov x9, x15
    movz x10, #31153
    movk x10, #40503, lsl #16
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_0
    add x0, x0, :lo12:.Ltext_0
    adrp x1, .Ltext_17
    add x1, x1, :lo12:.Ltext_17
    bl lb_core_7trap_at
1:
    mov x15, x9
    mov x9, x15
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_0
    add x0, x0, :lo12:.Ltext_0
    adrp x1, .Ltext_17
    add x1, x1, :lo12:.Ltext_17
    bl lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x14]
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_testing_begin, .-lb_testing_begin

    .p2align 2
    .globl lb_testing_end
    .type lb_testing_end, %function
lb_testing_end:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, lb_testing_saved
    add x14, x14, :lo12:lb_testing_saved
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x15, x0
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_testing_end, .-lb_testing_end

    .p2align 2
    .globl lb_testing_seed
    .type lb_testing_seed, %function
lb_testing_seed:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, lb_testing_12current_seed
    add x14, x14, :lo12:lb_testing_12current_seed
    ldr x14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_1:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_1
    add x1, x1, :lo12:.Ltext_1
    bl lb_core_7trap_at

    .size lb_testing_seed, .-lb_testing_seed

    .p2align 2
    .globl lb_testing_random
    .type lb_testing_random, %function
lb_testing_random:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    str x19, [sp, #8]
    adrp x14, lb_testing_12current_seed
    add x14, x14, :lo12:lb_testing_12current_seed
    ldr x15, [x14]
.L4_2:
    lsl x19, x15, #13
    eor x19, x15, x19
.L4_4:
    lsr x15, x19, #7
    eor x15, x19, x15
.L4_6:
    lsl x19, x15, #17
    eor x19, x15, x19
    str x19, [x14]
    mov x9, x19
    mov x0, x9
    ldr x19, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_testing_random, .-lb_testing_random

    .p2align 2
    .globl lb_testing_expect
    .type lb_testing_expect, %function
lb_testing_expect:
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
    b.ne .L5_2
.L5_1:
    sub x14, x29, #48
    adrp x15, .Ltext_8
    add x15, x15, :lo12:.Ltext_8
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    b .L5_3
.L5_2:
.L5_3:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_testing_expect, .-lb_testing_expect

    .p2align 2
    .globl lb_testing_12expect_equal
    .type lb_testing_12expect_equal, %function
lb_testing_12expect_equal:
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
    b.ne .L6_2
.L6_1:
    sub x14, x29, #1120
    sub x21, x29, #1144
    str x14, [x21]
    add x14, x21, #8
    movz x9, #1024
    str x9, [x14]
    add x14, x21, #16
    mov x9, #0
    str x9, [x14]
    adrp x14, .Ltext_9
    add x14, x14, :lo12:.Ltext_9
    mov x0, x21
    mov x1, x14
    movz x2, #9
    bl lb_core_10format_put
    mov w14, w0
    mov x0, x21
    mov x1, x20
    bl lb_core_10format_i64
    mov w14, w0
    adrp x14, .Ltext_10
    add x14, x14, :lo12:.Ltext_10
    mov x0, x21
    mov x1, x14
    movz x2, #6
    bl lb_core_10format_put
    mov w14, w0
    mov x0, x21
    mov x1, x19
    bl lb_core_10format_i64
    mov w14, w0
    adrp x14, .Ltext_11
    add x14, x14, :lo12:.Ltext_11
    mov x0, x21
    mov x1, x14
    movz x2, #2
    bl lb_core_10format_put
    mov w14, w0
    sub x22, x29, #96
    ldr x14, [x22]
    add x15, x22, #8
    ldr x15, [x15]
    mov x0, x21
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    mov x0, x21
    bl lb_core_13format_finish
    sub x16, x29, #1160
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #1160
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_9print_str
    adrp x14, .Ltext_12
    add x14, x14, :lo12:.Ltext_12
    mov x0, x14
    mov x9, x22
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    b .L6_3
.L6_2:
.L6_3:
    ldr x19, [sp, #1144]
    ldr x20, [sp, #1136]
    ldr x21, [sp, #1128]
    ldr x22, [sp, #1120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_testing_12expect_equal, .-lb_testing_12expect_equal

    .p2align 2
    .globl lb_testing_11expect_text
    .type lb_testing_11expect_text, %function
lb_testing_11expect_text:
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
    cbnz w14, .L7_4
    b .L7_6
.L7_6:
    mov w15, w14
    b .L7_5
.L7_4:
    ldr x14, [x21]
    ldr x15, [x22]
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl memcmp
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L7_5:
    and w14, w15, #255
    mov x10, #0
    cmp w14, w10
    b.ne .L7_2
.L7_1:
    sub x14, x29, #1136
    sub x23, x29, #1160
    str x14, [x23]
    add x14, x23, #8
    movz x9, #1024
    str x9, [x14]
    add x14, x23, #16
    mov x9, #0
    str x9, [x14]
    adrp x14, .Ltext_13
    add x14, x14, :lo12:.Ltext_13
    mov x0, x23
    mov x1, x14
    movz x2, #10
    bl lb_core_10format_put
    mov w14, w0
    ldr x14, [x22]
    mov x0, x23
    mov x1, x14
    mov x2, x20
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_14
    add x14, x14, :lo12:.Ltext_14
    mov x0, x23
    mov x1, x14
    movz x2, #8
    bl lb_core_10format_put
    mov w14, w0
    ldr x14, [x21]
    mov x0, x23
    mov x1, x14
    mov x2, x19
    bl lb_core_10format_put
    mov w14, w0
    adrp x14, .Ltext_15
    add x14, x14, :lo12:.Ltext_15
    mov x0, x23
    mov x1, x14
    movz x2, #3
    bl lb_core_10format_put
    mov w14, w0
    sub x24, x29, #112
    ldr x14, [x24]
    add x15, x24, #8
    ldr x15, [x15]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    bl lb_core_10format_put
    mov w14, w0
    mov x0, x23
    bl lb_core_13format_finish
    sub x16, x29, #1176
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #1176
    mov x9, x14
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl lb_core_9print_str
    adrp x14, .Ltext_16
    add x14, x14, :lo12:.Ltext_16
    mov x0, x14
    mov x9, x24
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    b .L7_3
.L7_2:
.L7_3:
    ldr x19, [sp, #1160]
    ldr x20, [sp, #1152]
    ldr x21, [sp, #1144]
    ldr x22, [sp, #1136]
    ldr x23, [sp, #1128]
    ldr x24, [sp, #1120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_testing_11expect_text, .-lb_testing_11expect_text

    .section .init_array,"aw"
    .p2align 3
    .quad lb_testing_0init

    .section .rodata
.Ltext_0:
    .asciz "src/std/testing.lucb:17:5"
.Ltext_1:
    .asciz "unreachable"
.Ltext_2:
    .asciz "src/std/testing.lucb:25:5"
.Ltext_3:
    .asciz "shift count out of range"
.Ltext_4:
    .asciz "src/std/testing.lucb:30:5"
.Ltext_5:
    .asciz "src/std/testing.lucb:31:5"
.Ltext_6:
    .asciz "src/std/testing.lucb:32:5"
.Ltext_7:
    .asciz "src/std/testing.lucb:34:5"
.Ltext_8:
    .asciz "src/std/testing.lucb:38:9"
.Ltext_9:
    .asciz "expected "
.Ltext_10:
    .asciz ", got "
.Ltext_11:
    .asciz ": "
.Ltext_12:
    .asciz "src/std/testing.lucb:43:9"
.Ltext_13:
    .asciz "expected `"
.Ltext_14:
    .asciz "`, got `"
.Ltext_15:
    .asciz "`: "
.Ltext_16:
    .asciz "src/std/testing.lucb:48:9"
.Ltext_17:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3
    .weak lb_vt_memory_FixedBuffer_Allocator
lb_vt_memory_FixedBuffer_Allocator:
    .quad lb_memory_FixedBuffer_allocate
    .quad lb_memory_FixedBuffer_resize
    .quad lb_memory_FixedBuffer_release

    .bss
    .globl lb_testing_11arena_bytes
    .type lb_testing_11arena_bytes, %object
    .p2align 0
lb_testing_11arena_bytes:
    .zero 1048576

    .bss
    .globl lb_testing_arena
    .type lb_testing_arena, %object
    .p2align 3
lb_testing_arena:
    .zero 24

    .bss
    .globl lb_testing_saved
    .type lb_testing_saved, %object
    .p2align 3
lb_testing_saved:
    .zero 16

    .bss
    .globl lb_testing_12current_seed
    .type lb_testing_12current_seed, %object
    .p2align 3
lb_testing_12current_seed:
    .zero 8


    .section .note.GNU-stack,"",%progbits
