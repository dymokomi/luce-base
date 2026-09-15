    .text

    .p2align 2
    .globl lb_files_walk_0init
    .type lb_files_walk_0init, %function
lb_files_walk_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, lb_files_15directory_cycle
    add x14, x14, :lo12:lb_files_15directory_cycle
    movz x9, #33
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_files_11depth_limit
    add x14, x14, :lo12:lb_files_11depth_limit
    movz x9, #34
    movk x9, #3178, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_files_walk_0init, .-lb_files_walk_0init

    .p2align 2
    .globl lb_files_walk
    .type lb_files_walk, %function
lb_files_walk:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #3248
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #3216]
    str x20, [sp, #3208]
    str x21, [sp, #3200]
    str x22, [sp, #3192]
    str x23, [sp, #3184]
    str x24, [sp, #3176]
    str x25, [sp, #3168]
    str x26, [sp, #3160]
    str x27, [sp, #3152]
    str x28, [sp, #3144]
    sub x16, x29, #152
    str x0, [x16]
    sub x16, x29, #168
    str x1, [x16]
    str x2, [x16, #8]
    sub x16, x29, #184
    str x3, [x16]
    sub x19, x29, #200
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    str x0, [sp, #864]
    ldr x10, [sp, #864]
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x22, x29, #328
    sub x14, x29, #152
    ldr x21, [x14]
    mov x0, x21
    movz x1, #1
    sub x8, x29, #488
    bl lb_files_metadata
    sub x15, x29, #488
    add x14, x15, #152
    ldrb w14, [x14]
    cbnz w14, .L1_2
    b .L1_1
.L1_2:
    add x14, x15, #128
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #3216]
    ldr x20, [sp, #3208]
    ldr x21, [sp, #3200]
    ldr x22, [sp, #3192]
    ldr x23, [sp, #3184]
    ldr x24, [sp, #3176]
    ldr x25, [sp, #3168]
    ldr x26, [sp, #3160]
    ldr x27, [sp, #3152]
    ldr x28, [sp, #3144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_3:
.L1_1:
    mov x10, x15
    mov x11, x22
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
    sub x14, x29, #168
    ldr x9, [x14]
    str x9, [sp, #856]
    add x14, x14, #8
    ldr x9, [x14]
    str x9, [sp, #848]
    ldr x9, [sp, #848]
    ldr x25, [x9]
    mov x0, x21
    bl strlen
    mov x14, x0
    sub x12, x29, #504
    str x21, [x12]
    add x13, x12, #8
    str x14, [x13]
    mov x17, x25
    str x17, [sp, #-16]!
    ldr x0, [sp, #872]
    mov x9, x12
    ldr x1, [x9]
    ldr x2, [x9, #8]
    mov x9, x22
    mov x3, x9
    mov x4, #0
    sub x8, x29, #544
    ldr x17, [sp], #16
    blr x17
    sub x12, x29, #544
    add x14, x12, #32
    ldrb w14, [x14]
    cbnz w14, .L1_5
    b .L1_4
.L1_5:
    add x14, x12, #8
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #3216]
    ldr x20, [sp, #3208]
    ldr x21, [sp, #3200]
    ldr x22, [sp, #3192]
    ldr x23, [sp, #3184]
    ldr x24, [sp, #3176]
    ldr x25, [sp, #3168]
    ldr x26, [sp, #3160]
    ldr x27, [sp, #3152]
    ldr x28, [sp, #3144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_6:
.L1_4:
    ldrb w14, [x12]
    ldrb w15, [x22]
    movz x10, #2
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    cbnz w15, .L1_128
    b .L1_10
.L1_128:
    mov w14, w15
    b .L1_11
.L1_10:
    and w15, w14, #255
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
.L1_11:
    and w15, w14, #255
    cbnz w15, .L1_7
    b .L1_8
.L1_7:
    sub x14, x29, #136
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
    ldr x19, [sp, #3216]
    ldr x20, [sp, #3208]
    ldr x21, [sp, #3200]
    ldr x22, [sp, #3192]
    ldr x23, [sp, #3184]
    ldr x24, [sp, #3176]
    ldr x25, [sp, #3168]
    ldr x26, [sp, #3160]
    ldr x27, [sp, #3152]
    ldr x28, [sp, #3144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_12:
    b .L1_9
.L1_8:
.L1_9:
    sub x25, x29, #624
    mov x0, x21
    mov x9, x22
    mov x1, x9
    mov x9, x19
    ldr x2, [x9]
    ldr x3, [x9, #8]
    sub x8, x29, #736
    bl lb_files_WalkState_start
    sub x15, x29, #736
    add x14, x15, #104
    ldrb w14, [x14]
    cbnz w14, .L1_14
    b .L1_13
.L1_14:
    add x14, x15, #80
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
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #3216]
    ldr x20, [sp, #3208]
    ldr x21, [sp, #3200]
    ldr x22, [sp, #3192]
    ldr x23, [sp, #3184]
    ldr x24, [sp, #3176]
    ldr x25, [sp, #3168]
    ldr x26, [sp, #3160]
    ldr x27, [sp, #3152]
    ldr x28, [sp, #3144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_15:
.L1_13:
    mov x10, x15
    mov x11, x25
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
    add x19, x25, #16
    sub x9, x29, #760
    str x9, [sp, #168]
    add x21, x25, #8
    sub x9, x29, #816
    str x9, [sp, #160]
    ldr x9, [sp, #160]
    add x9, x9, #48
    str x9, [sp, #832]
    ldr x9, [sp, #168]
    add x9, x9, #16
    str x9, [sp, #824]
    sub x9, x29, #864
    str x9, [sp, #152]
    sub x9, x29, #880
    str x9, [sp, #808]
    sub x9, x29, #184
    str x9, [sp, #800]
    sub x9, x29, #1024
    str x9, [sp, #144]
    sub x9, x29, #1184
    str x9, [sp, #136]
    ldr x9, [sp, #136]
    add x9, x9, #152
    str x9, [sp, #792]
    add x9, x25, #24
    str x9, [sp, #784]
    sub x14, x29, #1200
    add x9, x14, #8
    str x9, [sp, #776]
    sub x9, x29, #1216
    str x9, [sp, #768]
    ldr x9, [sp, #768]
    add x9, x9, #8
    str x9, [sp, #760]
    adrp x9, .Ltext_5
    add x9, x9, :lo12:.Ltext_5
    str x9, [sp, #752]
    sub x9, x29, #1232
    str x9, [sp, #744]
    ldr x9, [sp, #744]
    add x9, x9, #8
    str x9, [sp, #736]
    sub x9, x29, #1264
    str x9, [sp, #128]
    ldr x9, [sp, #128]
    add x9, x9, #24
    str x9, [sp, #728]
    sub x9, x29, #1296
    str x9, [sp, #120]
    ldr x9, [sp, #120]
    add x9, x9, #24
    str x9, [sp, #720]
    sub x9, x29, #1312
    str x9, [sp, #712]
    sub x9, x29, #1352
    str x9, [sp, #112]
    ldr x9, [sp, #112]
    add x9, x9, #32
    str x9, [sp, #704]
    ldr x9, [sp, #144]
    add x9, x9, #16
    str x9, [sp, #688]
    ldr x9, [sp, #144]
    add x9, x9, #24
    str x9, [sp, #680]
    sub x9, x29, #1952
    str x9, [sp, #536]
    ldr x9, [sp, #536]
    add x9, x9, #8
    str x9, [sp, #528]
    sub x9, x29, #1984
    str x9, [sp, #520]
    ldr x9, [sp, #520]
    add x9, x9, #8
    str x9, [sp, #512]
    ldr x9, [sp, #520]
    add x9, x9, #16
    str x9, [sp, #504]
    sub x9, x29, #1408
    str x9, [sp, #104]
    sub x9, x29, #1448
    str x9, [sp, #96]
    ldr x9, [sp, #96]
    add x9, x9, #32
    str x9, [sp, #672]
    sub x9, x29, #1576
    str x9, [sp, #88]
    sub x9, x29, #1736
    str x9, [sp, #80]
    ldr x9, [sp, #80]
    add x9, x9, #152
    str x9, [sp, #664]
    ldr x9, [sp, #88]
    add x9, x9, #16
    str x9, [sp, #656]
    ldr x9, [sp, #88]
    add x9, x9, #24
    str x9, [sp, #648]
    sub x9, x29, #2176
    str x9, [sp, #496]
    sub x9, x29, #2192
    str x9, [sp, #72]
    ldr x9, [sp, #72]
    add x9, x9, #8
    str x9, [sp, #488]
    sub x9, x29, #2024
    str x9, [sp, #480]
    adrp x9, lb_memory_exhausted
    add x9, x9, :lo12:lb_memory_exhausted
    str x9, [sp, #472]
    adrp x9, .Ltext_20
    add x9, x9, :lo12:.Ltext_20
    str x9, [sp, #464]
    sub x9, x29, #2208
    str x9, [sp, #456]
    ldr x9, [sp, #456]
    add x9, x9, #8
    str x9, [sp, #448]
    ldr x9, [sp, #480]
    add x9, x9, #8
    str x9, [sp, #440]
    ldr x9, [sp, #480]
    add x9, x9, #24
    str x9, [sp, #432]
    sub x9, x29, #2224
    str x9, [sp, #424]
    add x9, x25, #64
    str x9, [sp, #416]
    sub x9, x29, #2240
    str x9, [sp, #64]
    sub x9, x29, #2288
    str x9, [sp, #56]
    ldr x9, [sp, #864]
    add x9, x9, #8
    str x9, [sp, #368]
    sub x9, x29, #2312
    str x9, [sp, #48]
    ldr x9, [sp, #48]
    add x9, x9, #16
    str x9, [sp, #360]
    ldr x9, [sp, #56]
    add x9, x9, #8
    str x9, [sp, #312]
    ldr x9, [sp, #56]
    add x9, x9, #40
    str x9, [sp, #304]
    ldr x9, [sp, #56]
    add x9, x9, #16
    str x9, [sp, #352]
    adrp x9, .Ltext_13
    add x9, x9, :lo12:.Ltext_13
    str x9, [sp, #344]
    ldr x9, [sp, #352]
    add x9, x9, #8
    str x9, [sp, #336]
    ldr x9, [sp, #352]
    add x9, x9, #16
    str x9, [sp, #328]
    ldr x9, [sp, #56]
    add x9, x9, #40
    str x9, [sp, #320]
    ldr x9, [sp, #56]
    add x9, x9, #16
    str x9, [sp, #408]
    adrp x9, .Ltext_10
    add x9, x9, :lo12:.Ltext_10
    str x9, [sp, #400]
    ldr x9, [sp, #408]
    add x9, x9, #8
    str x9, [sp, #392]
    ldr x9, [sp, #408]
    add x9, x9, #16
    str x9, [sp, #384]
    ldr x9, [sp, #56]
    add x9, x9, #40
    str x9, [sp, #376]
    ldr x9, [sp, #56]
    add x9, x9, #40
    str x9, [sp, #296]
    sub x9, x29, #2328
    str x9, [sp, #264]
    ldr x9, [sp, #264]
    add x9, x9, #8
    str x9, [sp, #256]
    ldr x9, [sp, #864]
    add x9, x9, #8
    str x9, [sp, #248]
    sub x9, x29, #2360
    str x9, [sp, #240]
    sub x9, x29, #2040
    str x9, [sp, #232]
    sub x14, x29, #2168
    ldr x9, [sp, #240]
    add x9, x9, #8
    str x9, [sp, #224]
    add x9, x14, #24
    str x9, [sp, #216]
    ldr x9, [sp, #240]
    add x9, x9, #16
    str x9, [sp, #208]
    sub x14, x29, #2376
    add x9, x14, #8
    str x9, [sp, #200]
    ldr x9, [sp, #240]
    add x9, x9, #24
    str x9, [sp, #192]
    sub x9, x29, #2024
    str x9, [sp, #184]
    ldr x9, [sp, #184]
    add x9, x9, #24
    str x9, [sp, #176]
    ldr x9, [sp, #56]
    add x9, x9, #16
    str x9, [sp, #288]
    sub x9, x29, #2024
    str x9, [sp, #280]
    ldr x9, [sp, #280]
    add x9, x9, #24
    str x9, [sp, #272]
    sub x9, x29, #1784
    str x9, [sp, #40]
    ldr x9, [sp, #40]
    add x9, x9, #24
    str x9, [sp, #640]
    sub x9, x29, #1384
    str x9, [sp, #32]
    ldr x9, [sp, #32]
    add x9, x9, #24
    str x9, [sp, #696]
    sub x9, x29, #1872
    str x9, [sp, #24]
    ldr x9, [sp, #24]
    add x9, x9, #24
    str x9, [sp, #632]
    add x9, x25, #24
    str x9, [sp, #584]
    sub x9, x29, #1904
    str x9, [sp, #16]
    ldr x9, [sp, #16]
    add x9, x9, #24
    str x9, [sp, #576]
    sub x9, x29, #1816
    str x9, [sp, #552]
    ldr x9, [sp, #552]
    add x9, x9, #24
    str x9, [sp, #544]
    sub x9, x29, #1816
    str x9, [sp, #568]
    ldr x9, [sp, #568]
    add x9, x9, #24
    str x9, [sp, #560]
    sub x9, x29, #1840
    str x9, [sp, #624]
    sub x9, x29, #1816
    str x9, [sp, #616]
    ldr x9, [sp, #624]
    add x9, x9, #8
    str x9, [sp, #608]
    ldr x9, [sp, #616]
    add x9, x9, #8
    str x9, [sp, #600]
    ldr x9, [sp, #616]
    add x9, x9, #24
    str x9, [sp, #592]
    sub x9, x29, #848
    str x9, [sp, #8]
    ldr x9, [sp, #8]
    add x9, x9, #24
    str x9, [sp, #816]
.L1_16:
    ldr x14, [x19]
    mov x10, #0
    cmp x14, x10
    b.ls .L1_18
.L1_17:
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_0
    add x0, x0, :lo12:.Ltext_0
    adrp x1, .Ltext_35
    add x1, x1, :lo12:.Ltext_35
    bl lb_core_7trap_at
1:
    str x9, [sp, #840]
    ldr x15, [x25]
    ldr x12, [x21]
    ldr x9, [sp, #840]
    cmp x9, x12
    b.lo 1f
    adrp x0, .Ltext_1
    add x0, x0, :lo12:.Ltext_1
    adrp x1, .Ltext_18
    add x1, x1, :lo12:.Ltext_18
    bl lb_core_7trap_at
1:
    ldr x9, [sp, #840]
    lsl x20, x9, #5
    add x15, x15, x20
    mov x0, x15
    sub x8, x29, #816
    bl lb_files_Directory_next
    ldr x9, [sp, #832]
    ldrb w15, [x9]
    cbnz w15, .L1_20
    b .L1_19
.L1_20:
    ldr x9, [sp, #160]
    add x14, x9, #24
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
    mov x0, x25
    bl lb_files_WalkState_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #3216]
    ldr x20, [sp, #3208]
    ldr x21, [sp, #3200]
    ldr x22, [sp, #3192]
    ldr x23, [sp, #3184]
    ldr x24, [sp, #3176]
    ldr x25, [sp, #3168]
    ldr x26, [sp, #3160]
    ldr x27, [sp, #3152]
    ldr x28, [sp, #3144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_21:
.L1_19:
    ldr x10, [sp, #160]
    ldr x11, [sp, #168]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    ldr x9, [sp, #824]
    ldrb w14, [x9]
    mov x10, #0
    cmp w14, w10
    b.ne .L1_23
.L1_22:
    ldr x14, [x19]
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_25
    add x0, x0, :lo12:.Ltext_25
    adrp x1, .Ltext_35
    add x1, x1, :lo12:.Ltext_35
    bl lb_core_7trap_at
1:
    mov x14, x9
    ldr x15, [x25]
    ldr x12, [x21]
    cmp x14, x12
    b.lo 1f
    adrp x0, .Ltext_26
    add x0, x0, :lo12:.Ltext_26
    adrp x1, .Ltext_18
    add x1, x1, :lo12:.Ltext_18
    bl lb_core_7trap_at
1:
    lsl x14, x14, #5
    add x14, x15, x14
    mov x0, x14
    sub x8, x29, #1872
    bl lb_files_Directory_close
    ldr x9, [sp, #632]
    ldrb w14, [x9]
    cbnz w14, .L1_85
    b .L1_84
.L1_85:
    ldr x10, [sp, #24]
    ldr x11, [sp, #624]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    b .L1_82
.L1_84:
    b .L1_83
.L1_82:
    ldr x14, [x19]
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_27
    add x0, x0, :lo12:.Ltext_27
    adrp x1, .Ltext_35
    add x1, x1, :lo12:.Ltext_35
    bl lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x19]
    ldr x9, [sp, #624]
    ldr w14, [x9]
    ldr x10, [sp, #616]
    str w14, [x10]
    ldr x10, [sp, #608]
    ldr x11, [sp, #600]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    movz x9, #1
    ldr x10, [sp, #592]
    strb w9, [x10]
    ldr x10, [sp, #616]
    sub x11, x29, #848
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    b .L1_93
.L1_86:
.L1_83:
    ldr x14, [x19]
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_26
    add x0, x0, :lo12:.Ltext_26
    adrp x1, .Ltext_35
    add x1, x1, :lo12:.Ltext_35
    bl lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x19]
    mov x10, #0
    cmp x14, x10
    b.ls .L1_88
.L1_87:
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_28
    add x0, x0, :lo12:.Ltext_28
    adrp x1, .Ltext_35
    add x1, x1, :lo12:.Ltext_35
    bl lb_core_7trap_at
1:
    mov x15, x9
    ldr x12, [x25]
    ldr x13, [x21]
    cmp x15, x13
    b.lo 1f
    adrp x0, .Ltext_28
    add x0, x0, :lo12:.Ltext_28
    adrp x1, .Ltext_18
    add x1, x1, :lo12:.Ltext_18
    bl lb_core_7trap_at
1:
    lsl x15, x15, #5
    add x15, x12, x15
    add x15, x15, #24
    ldr x15, [x15]
    ldr x0, [sp, #584]
    mov x1, x15
    sub x8, x29, #1904
    bl lb_strings_Builder_truncate
    ldr x9, [sp, #576]
    ldrb w15, [x9]
    cbnz w15, .L1_91
    b .L1_90
.L1_91:
    ldr x10, [sp, #16]
    ldr x11, [sp, #568]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    movz x9, #1
    ldr x10, [sp, #560]
    strb w9, [x10]
    ldr x10, [sp, #568]
    sub x11, x29, #848
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    b .L1_93
.L1_92:
.L1_90:
    b .L1_89
.L1_88:
.L1_89:
    mov x9, #0
    ldr x10, [sp, #544]
    strb w9, [x10]
    ldr x10, [sp, #552]
    sub x11, x29, #848
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
.L1_93:
    ldr x9, [sp, #816]
    ldrb w14, [x9]
    cbnz w14, .L1_26
    b .L1_25
.L1_26:
    sub x19, x29, #136
    ldr x10, [sp, #8]
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x25
    bl lb_files_WalkState_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #3216]
    ldr x20, [sp, #3208]
    ldr x21, [sp, #3200]
    ldr x22, [sp, #3192]
    ldr x23, [sp, #3184]
    ldr x24, [sp, #3176]
    ldr x25, [sp, #3168]
    ldr x26, [sp, #3160]
    ldr x27, [sp, #3152]
    ldr x28, [sp, #3144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_27:
.L1_25:
    b .L1_16
.L1_28:
    b .L1_24
.L1_23:
.L1_24:
    cbnz w14, .L1_29
    b .L1_30
.L1_29:
    ldr x10, [sp, #168]
    ldr x11, [sp, #808]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b .L1_31
.L1_30:
    b .L1_16
.L1_32:
.L1_31:
    ldr x10, [sp, #808]
    ldr x11, [sp, #152]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x22, [x19]
    ldr x9, [sp, #800]
    ldr x14, [x9]
    cmp x22, x14
    b.ls .L1_34
.L1_33:
    sub x19, x29, #136
    adrp x14, lb_files_11depth_limit
    add x14, x14, :lo12:lb_files_11depth_limit
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_2
    add x14, x14, :lo12:.Ltext_2
    sub x15, x29, #896
    str x14, [x15]
    add x14, x15, #8
    movz x9, #44
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x25
    bl lb_files_WalkState_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #3216]
    ldr x20, [sp, #3208]
    ldr x21, [sp, #3200]
    ldr x22, [sp, #3192]
    ldr x23, [sp, #3184]
    ldr x24, [sp, #3176]
    ldr x25, [sp, #3168]
    ldr x26, [sp, #3160]
    ldr x27, [sp, #3152]
    ldr x28, [sp, #3144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_36:
    b .L1_35
.L1_34:
.L1_35:
    ldr x14, [x25]
    ldr x15, [x21]
    ldr x9, [sp, #840]
    cmp x9, x15
    b.lo 1f
    adrp x0, .Ltext_3
    add x0, x0, :lo12:.Ltext_3
    adrp x1, .Ltext_18
    add x1, x1, :lo12:.Ltext_18
    bl lb_core_7trap_at
1:
    add x14, x20, x14
    ldr x9, [sp, #152]
    ldr x15, [x9]
    mov x0, x14
    mov x1, x15
    mov x2, #0
    sub x8, x29, #1184
    bl lb_files_Directory_14entry_metadata
    ldr x9, [sp, #792]
    ldrb w14, [x9]
    cbnz w14, .L1_38
    b .L1_37
.L1_38:
    ldr x9, [sp, #136]
    add x14, x9, #128
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
    mov x0, x25
    bl lb_files_WalkState_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #3216]
    ldr x20, [sp, #3208]
    ldr x21, [sp, #3200]
    ldr x22, [sp, #3192]
    ldr x23, [sp, #3184]
    ldr x24, [sp, #3176]
    ldr x25, [sp, #3168]
    ldr x26, [sp, #3160]
    ldr x27, [sp, #3152]
    ldr x28, [sp, #3144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_39:
.L1_37:
    ldr x10, [sp, #136]
    ldr x11, [sp, #144]
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
    ldr x0, [sp, #784]
    bl lb_strings_Builder_view
    sub x16, x29, #1200
    str x0, [x16, #0]
    str x1, [x16, #8]
    ldr x9, [sp, #776]
    ldr x23, [x9]
    mov x10, #0
    cmp x23, x10
    cset w14, hi
    cbnz w14, .L1_43
    b .L1_129
.L1_129:
    mov w15, w14
    b .L1_44
.L1_43:
    mov x9, x23
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_4
    add x0, x0, :lo12:.Ltext_4
    adrp x1, .Ltext_35
    add x1, x1, :lo12:.Ltext_35
    bl lb_core_7trap_at
1:
    mov x24, x9
    ldr x0, [sp, #784]
    bl lb_strings_Builder_view
    sub x16, x29, #1216
    str x0, [x16, #0]
    str x1, [x16, #8]
    ldr x9, [sp, #768]
    ldr x14, [x9]
    ldr x9, [sp, #760]
    ldr x15, [x9]
    cmp x24, x15
    b.lo 1f
    adrp x0, .Ltext_4
    add x0, x0, :lo12:.Ltext_4
    adrp x1, .Ltext_18
    add x1, x1, :lo12:.Ltext_18
    bl lb_core_7trap_at
1:
    add x14, x24, x14
    ldrb w14, [x14]
    movz x10, #47
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L1_44:
    and w14, w15, #255
    cbnz w14, .L1_40
    b .L1_41
.L1_40:
    ldr x9, [sp, #752]
    ldr x10, [sp, #744]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #736]
    str x9, [x10]
    ldr x0, [sp, #784]
    ldr x9, [sp, #744]
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #1264
    bl lb_strings_Builder_put
    ldr x9, [sp, #728]
    ldrb w14, [x9]
    cbnz w14, .L1_46
    b .L1_45
.L1_46:
    sub x19, x29, #136
    ldr x10, [sp, #128]
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x25
    bl lb_files_WalkState_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #3216]
    ldr x20, [sp, #3208]
    ldr x21, [sp, #3200]
    ldr x22, [sp, #3192]
    ldr x23, [sp, #3184]
    ldr x24, [sp, #3176]
    ldr x25, [sp, #3168]
    ldr x26, [sp, #3160]
    ldr x27, [sp, #3152]
    ldr x28, [sp, #3144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_47:
.L1_45:
    b .L1_42
.L1_41:
.L1_42:
    ldr x0, [sp, #784]
    ldr x9, [sp, #152]
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #1296
    bl lb_strings_Builder_put
    ldr x9, [sp, #720]
    ldrb w14, [x9]
    cbnz w14, .L1_49
    b .L1_48
.L1_49:
    sub x19, x29, #136
    ldr x10, [sp, #120]
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x25
    bl lb_files_WalkState_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #3216]
    ldr x20, [sp, #3208]
    ldr x21, [sp, #3200]
    ldr x22, [sp, #3192]
    ldr x23, [sp, #3184]
    ldr x24, [sp, #3176]
    ldr x25, [sp, #3168]
    ldr x26, [sp, #3160]
    ldr x27, [sp, #3152]
    ldr x28, [sp, #3144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_50:
.L1_48:
    ldr x9, [sp, #848]
    ldr x24, [x9]
    ldr x0, [sp, #784]
    bl lb_strings_Builder_view
    sub x16, x29, #1312
    str x0, [x16, #0]
    str x1, [x16, #8]
    mov x17, x24
    str x17, [sp, #-16]!
    ldr x0, [sp, #872]
    ldr x9, [sp, #728]
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x9, [sp, #160]
    mov x3, x9
    mov x4, x22
    sub x8, x29, #1352
    ldr x17, [sp], #16
    blr x17
    ldr x9, [sp, #704]
    ldrb w14, [x9]
    cbnz w14, .L1_52
    b .L1_51
.L1_52:
    ldr x9, [sp, #112]
    add x14, x9, #8
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
    mov x0, x25
    bl lb_files_WalkState_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #3216]
    ldr x20, [sp, #3208]
    ldr x21, [sp, #3200]
    ldr x22, [sp, #3192]
    ldr x23, [sp, #3184]
    ldr x24, [sp, #3176]
    ldr x25, [sp, #3168]
    ldr x26, [sp, #3160]
    ldr x27, [sp, #3152]
    ldr x28, [sp, #3144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_53:
.L1_51:
    ldr x9, [sp, #112]
    ldrb w14, [x9]
    ldr x9, [sp, #144]
    ldrb w15, [x9]
    movz x10, #2
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    cbnz w15, .L1_130
    b .L1_57
.L1_130:
    mov w14, w15
    b .L1_58
.L1_57:
    and w15, w14, #255
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
.L1_58:
    and w15, w14, #255
    cbnz w15, .L1_54
    b .L1_55
.L1_54:
    ldr x0, [sp, #784]
    mov x1, x23
    sub x8, x29, #1384
    bl lb_strings_Builder_truncate
    ldr x9, [sp, #696]
    ldrb w14, [x9]
    cbnz w14, .L1_60
    b .L1_59
.L1_60:
    sub x19, x29, #136
    ldr x10, [sp, #32]
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x25
    bl lb_files_WalkState_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #3216]
    ldr x20, [sp, #3208]
    ldr x21, [sp, #3200]
    ldr x22, [sp, #3192]
    ldr x23, [sp, #3184]
    ldr x24, [sp, #3176]
    ldr x25, [sp, #3168]
    ldr x26, [sp, #3160]
    ldr x27, [sp, #3152]
    ldr x28, [sp, #3144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_61:
.L1_59:
    b .L1_16
.L1_62:
    b .L1_56
.L1_55:
.L1_56:
    ldr x9, [sp, #688]
    ldr x22, [x9]
    ldr x9, [sp, #680]
    ldr x23, [x9]
    sub x10, x29, #1920
    str x22, [x10]
    sub x10, x29, #1936
    str x23, [x10]
    ldr x26, [x25]
    ldr x24, [x21]
    ldr x27, [x19]
    add x14, x24, #1
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, .Ltext_17
    add x0, x0, :lo12:.Ltext_17
    adrp x1, .Ltext_18
    add x1, x1, :lo12:.Ltext_18
    bl lb_core_7trap_at
1:
    cmp x27, x14
    b.lo 1f
    adrp x0, .Ltext_17
    add x0, x0, :lo12:.Ltext_17
    adrp x1, .Ltext_18
    add x1, x1, :lo12:.Ltext_18
    bl lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x27
    b.ls .L1_98
.L1_99:
    adrp x0, .Ltext_17
    add x0, x0, :lo12:.Ltext_17
    adrp x1, .Ltext_18
    add x1, x1, :lo12:.Ltext_18
    bl lb_core_7trap_at
.L1_98:
    ldr x10, [sp, #536]
    str x26, [x10]
    ldr x10, [sp, #528]
    str x27, [x10]
    mov x9, #0
    mov x28, x9
.L1_94:
    cmp x28, x27
    b.hs .L1_97
.L1_95:
    lsl x14, x28, #5
    add x14, x14, x26
    mov x10, x14
    ldr x11, [sp, #520]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x9, [sp, #512]
    ldr x14, [x9]
    cmp x22, x14
    cset w14, eq
    cbnz w14, .L1_103
    b .L1_131
.L1_131:
    mov w15, w14
    b .L1_104
.L1_103:
    ldr x9, [sp, #504]
    ldr x14, [x9]
    cmp x23, x14
    cset w15, eq
.L1_104:
    and w14, w15, #255
    cbnz w14, .L1_100
    b .L1_101
.L1_100:
    movz x9, #1
    sub x10, x29, #1992
    str w9, [x10]
    movz x9, #1
    mov w14, w9
    b .L1_107
.L1_105:
    b .L1_102
.L1_101:
.L1_102:
.L1_96:
    add x14, x28, #1
    mov x28, x14
    b .L1_94
.L1_97:
    mov x9, #0
    sub x10, x29, #1992
    str w9, [x10]
    mov x9, #0
    mov w14, w9
    b .L1_107
.L1_106:
    adrp x0, .Ltext_19
    add x0, x0, :lo12:.Ltext_19
    adrp x1, .Ltext_15
    add x1, x1, :lo12:.Ltext_15
    bl lb_core_7trap_at
.L1_107:
    cbnz w14, .L1_63
    b .L1_64
.L1_63:
    sub x19, x29, #136
    adrp x14, lb_files_15directory_cycle
    add x14, x14, :lo12:lb_files_15directory_cycle
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_6
    add x14, x14, :lo12:.Ltext_6
    sub x15, x29, #1400
    str x14, [x15]
    add x14, x15, #8
    movz x9, #49
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x25
    bl lb_files_WalkState_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #3216]
    ldr x20, [sp, #3208]
    ldr x21, [sp, #3200]
    ldr x22, [sp, #3192]
    ldr x23, [sp, #3184]
    ldr x24, [sp, #3176]
    ldr x25, [sp, #3168]
    ldr x26, [sp, #3160]
    ldr x27, [sp, #3152]
    ldr x28, [sp, #3144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_66:
    b .L1_65
.L1_64:
.L1_65:
    ldr x9, [sp, #840]
    cmp x9, x24
    b.lo 1f
    adrp x0, .Ltext_7
    add x0, x0, :lo12:.Ltext_7
    adrp x1, .Ltext_18
    add x1, x1, :lo12:.Ltext_18
    bl lb_core_7trap_at
1:
    add x14, x20, x26
    ldr x9, [sp, #152]
    ldr x15, [x9]
    mov x0, x14
    mov x1, x15
    mov x2, #0
    sub x8, x29, #1448
    bl lb_files_Directory_14open_directory
    ldr x9, [sp, #672]
    ldrb w14, [x9]
    cbnz w14, .L1_68
    b .L1_67
.L1_68:
    ldr x9, [sp, #96]
    add x14, x9, #8
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
    mov x0, x25
    bl lb_files_WalkState_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #3216]
    ldr x20, [sp, #3208]
    ldr x21, [sp, #3200]
    ldr x22, [sp, #3192]
    ldr x23, [sp, #3184]
    ldr x24, [sp, #3176]
    ldr x25, [sp, #3168]
    ldr x26, [sp, #3160]
    ldr x27, [sp, #3152]
    ldr x28, [sp, #3144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_69:
.L1_67:
    ldr x10, [sp, #96]
    ldr x11, [sp, #104]
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    ldr x0, [sp, #104]
    sub x8, x29, #1736
    bl lb_files_Directory_metadata
    ldr x9, [sp, #664]
    ldrb w14, [x9]
    cbnz w14, .L1_71
    b .L1_70
.L1_71:
    ldr x9, [sp, #80]
    add x14, x9, #128
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
    ldr x0, [sp, #104]
    bl lb_files_Directory_destroy
    mov x0, x25
    bl lb_files_WalkState_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #3216]
    ldr x20, [sp, #3208]
    ldr x21, [sp, #3200]
    ldr x22, [sp, #3192]
    ldr x23, [sp, #3184]
    ldr x24, [sp, #3176]
    ldr x25, [sp, #3168]
    ldr x26, [sp, #3160]
    ldr x27, [sp, #3152]
    ldr x28, [sp, #3144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_72:
.L1_70:
    ldr x10, [sp, #80]
    ldr x11, [sp, #88]
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
    ldr x9, [sp, #656]
    ldr x20, [x9]
    ldr x9, [sp, #688]
    ldr x14, [x9]
    cmp x20, x14
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, .L1_132
    b .L1_76
.L1_132:
    mov w15, w14
    b .L1_77
.L1_76:
    ldr x9, [sp, #648]
    ldr x14, [x9]
    ldr x9, [sp, #680]
    ldr x15, [x9]
    cmp x14, x15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
.L1_77:
    and w14, w15, #255
    cbnz w14, .L1_73
    b .L1_74
.L1_73:
    sub x19, x29, #136
    adrp x14, lb_files_failed
    add x14, x14, :lo12:lb_files_failed
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_8
    add x14, x14, :lo12:.Ltext_8
    sub x15, x29, #1752
    str x14, [x15]
    add x14, x15, #8
    movz x9, #51
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #104]
    bl lb_files_Directory_destroy
    mov x0, x25
    bl lb_files_WalkState_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #3216]
    ldr x20, [sp, #3208]
    ldr x21, [sp, #3200]
    ldr x22, [sp, #3192]
    ldr x23, [sp, #3184]
    ldr x24, [sp, #3176]
    ldr x25, [sp, #3168]
    ldr x26, [sp, #3160]
    ldr x27, [sp, #3152]
    ldr x28, [sp, #3144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_78:
    b .L1_75
.L1_74:
.L1_75:
    ldr x10, [sp, #104]
    sub x11, x29, #2040
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    ldr x10, [sp, #88]
    sub x11, x29, #2168
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
    ldr x14, [x19]
    ldr x15, [x21]
    cmp x14, x15
    b.ne .L1_109
.L1_108:
    mov x0, x15
    movz x1, #2
    movz x2, #64
    ldr x3, [sp, #496]
    bl lb_core_6qmul_u
    mov w14, w0
    ldr x9, [sp, #496]
    ldr x22, [x9]
    ldr x10, [sp, #72]
    str x22, [x10]
    ldr x10, [sp, #488]
    strb w14, [x10]
    ldr x9, [sp, #488]
    ldrb w14, [x9]
    cbnz w14, .L1_111
    b .L1_112
.L1_111:
    b .L1_113
.L1_112:
    ldr x9, [sp, #472]
    ldr w14, [x9]
    ldr x10, [sp, #480]
    str w14, [x10]
    ldr x9, [sp, #464]
    ldr x10, [sp, #456]
    str x9, [x10]
    movz x9, #32
    ldr x10, [sp, #448]
    str x9, [x10]
    ldr x10, [sp, #456]
    ldr x11, [sp, #440]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    movz x9, #1
    ldr x10, [sp, #432]
    strb w9, [x10]
    ldr x10, [sp, #480]
    sub x11, x29, #1784
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    b .L1_127
.L1_114:
.L1_113:
    ldr x10, [sp, #864]
    ldr x11, [sp, #424]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x10, [sp, #416]
    ldr x11, [sp, #864]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    movz x10, #512, lsl #48
    cmp x22, x10
    b.ls .L1_116
.L1_115:
    movz x9, #1
    movk x9, #3178, lsl #16
    ldr x10, [sp, #408]
    str w9, [x10]
    ldr x9, [sp, #400]
    ldr x10, [sp, #392]
    str x9, [x10]
    movz x9, #47
    ldr x10, [sp, #384]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #376]
    strb w9, [x10]
    b .L1_117
.L1_116:
    lsl x23, x22, #5
    ldr x9, [sp, #864]
    ldr x14, [x9]
    ldr x9, [sp, #368]
    ldr x15, [x9]
    cbnz x15, .L1_118
    b .L1_119
.L1_119:
    adrp x0, .Ltext_21
    add x0, x0, :lo12:.Ltext_21
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
.L1_118:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x23
    movz x2, #8
    sub x8, x29, #2312
    ldr x17, [sp], #16
    blr x17
    ldr x9, [sp, #360]
    ldrb w12, [x9]
    mov x10, #0
    cmp x23, x10
    cset w13, ne
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    and w12, w13, w12
    cbnz w12, .L1_120
    b .L1_121
.L1_120:
    movz x9, #1
    movk x9, #3178, lsl #16
    ldr x10, [sp, #352]
    str w9, [x10]
    ldr x9, [sp, #344]
    ldr x10, [sp, #336]
    str x9, [x10]
    movz x9, #16
    ldr x10, [sp, #328]
    str x9, [x10]
    movz x9, #1
    ldr x10, [sp, #320]
    strb w9, [x10]
    b .L1_117
.L1_121:
    ldr x9, [sp, #48]
    ldr x14, [x9]
    ldr x10, [sp, #56]
    str x14, [x10]
    ldr x10, [sp, #312]
    str x22, [x10]
    mov x9, #0
    ldr x10, [sp, #304]
    strb w9, [x10]
.L1_117:
    ldr x9, [sp, #296]
    ldrb w14, [x9]
    cbnz w14, .L1_123
    b .L1_122
.L1_123:
    ldr x10, [sp, #288]
    ldr x11, [sp, #280]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    movz x9, #1
    ldr x10, [sp, #272]
    strb w9, [x10]
    ldr x10, [sp, #424]
    ldr x11, [sp, #864]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x10, [sp, #280]
    sub x11, x29, #1784
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    b .L1_127
.L1_124:
.L1_122:
    ldr x10, [sp, #56]
    ldr x11, [sp, #64]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x14, [x19]
    ldr x9, [sp, #64]
    ldr x0, [x9]
    ldr x1, [x9, #8]
    mov x9, x25
    ldr x2, [x9]
    ldr x3, [x9, #8]
    mov x4, x14
    bl lb_memory_copy_0g1_files_WalkFrame
    ldr x14, [x25]
    ldr x15, [x21]
    mov x9, x15
    movz x10, #32
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_22
    add x0, x0, :lo12:.Ltext_22
    adrp x1, .Ltext_35
    add x1, x1, :lo12:.Ltext_35
    bl lb_core_7trap_at
1:
    mov x15, x9
    ldr x10, [sp, #264]
    str x14, [x10]
    ldr x10, [sp, #256]
    str x15, [x10]
    ldr x9, [sp, #864]
    ldr x14, [x9]
    ldr x9, [sp, #248]
    ldr x15, [x9]
    cbnz x15, .L1_126
    b .L1_125
.L1_126:
    add x12, x15, #16
    ldr x12, [x12]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    ldr x9, [sp, #280]
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
.L1_125:
    ldr x10, [sp, #64]
    mov x11, x25
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x10, [sp, #424]
    ldr x11, [sp, #864]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b .L1_110
.L1_109:
.L1_110:
    ldr x14, [x19]
    ldr x15, [x25]
    ldr x12, [x21]
    cmp x14, x12
    b.lo 1f
    adrp x0, .Ltext_23
    add x0, x0, :lo12:.Ltext_23
    adrp x1, .Ltext_18
    add x1, x1, :lo12:.Ltext_18
    bl lb_core_7trap_at
1:
    lsl x14, x14, #5
    add x22, x15, x14
    ldr x11, [sp, #240]
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    ldr x10, [sp, #232]
    ldr x11, [sp, #240]
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    ldr x10, [sp, #224]
    str x20, [x10]
    ldr x9, [sp, #216]
    ldr x14, [x9]
    ldr x10, [sp, #208]
    str x14, [x10]
    ldr x0, [sp, #784]
    bl lb_strings_Builder_view
    sub x16, x29, #2376
    str x0, [x16, #0]
    str x1, [x16, #8]
    ldr x9, [sp, #200]
    ldr x14, [x9]
    ldr x10, [sp, #192]
    str x14, [x10]
    ldr x10, [sp, #240]
    mov x11, x22
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x14, [x19]
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_24
    add x0, x0, :lo12:.Ltext_24
    adrp x1, .Ltext_35
    add x1, x1, :lo12:.Ltext_35
    bl lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x19]
    mov x9, #0
    ldr x10, [sp, #176]
    strb w9, [x10]
    ldr x10, [sp, #184]
    sub x11, x29, #1784
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
.L1_127:
    ldr x9, [sp, #640]
    ldrb w14, [x9]
    cbnz w14, .L1_80
    b .L1_79
.L1_80:
    sub x19, x29, #136
    ldr x10, [sp, #40]
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    ldr x0, [sp, #104]
    bl lb_files_Directory_destroy
    mov x0, x25
    bl lb_files_WalkState_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #3216]
    ldr x20, [sp, #3208]
    ldr x21, [sp, #3200]
    ldr x22, [sp, #3192]
    ldr x23, [sp, #3184]
    ldr x24, [sp, #3176]
    ldr x25, [sp, #3168]
    ldr x26, [sp, #3160]
    ldr x27, [sp, #3152]
    ldr x28, [sp, #3144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_81:
.L1_79:
    b .L1_16
.L1_18:
    mov x0, x25
    bl lb_files_WalkState_destroy
    sub x14, x29, #136
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
    ldr x19, [sp, #3216]
    ldr x20, [sp, #3208]
    ldr x21, [sp, #3200]
    ldr x22, [sp, #3192]
    ldr x23, [sp, #3184]
    ldr x24, [sp, #3176]
    ldr x25, [sp, #3168]
    ldr x26, [sp, #3160]
    ldr x27, [sp, #3152]
    ldr x28, [sp, #3144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_files_walk, .-lb_files_walk

    .p2align 2
    .globl lb_files_WalkState_start
    .type lb_files_WalkState_start, %function
lb_files_WalkState_start:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1136
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #1104]
    str x20, [sp, #1096]
    str x21, [sp, #1088]
    str x22, [sp, #1080]
    str x23, [sp, #1072]
    str x24, [sp, #1064]
    str x25, [sp, #1056]
    str x26, [sp, #1048]
    str x27, [sp, #1040]
    str x28, [sp, #1032]
    sub x16, x29, #232
    str x0, [x16]
    sub x16, x29, #360
    str x1, [x16]
    sub x16, x29, #376
    str x2, [x16]
    str x3, [x16, #8]
    sub x0, x29, #360
    ldr x1, [x0]
    movz x2, #128
    bl memcpy
    sub x20, x29, #384
    sub x14, x29, #232
    ldr x19, [x14]
    mov x0, x19
    movz x1, #1
    sub x8, x29, #424
    bl lb_files_Directory_open
    sub x15, x29, #424
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, .L2_2
    b .L2_1
.L2_2:
    add x14, x15, #8
    sub x19, x29, #216
    add x12, x19, #80
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #104
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #112
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1104]
    ldr x20, [sp, #1096]
    ldr x21, [sp, #1088]
    ldr x22, [sp, #1080]
    ldr x23, [sp, #1072]
    ldr x24, [sp, #1064]
    ldr x25, [sp, #1056]
    ldr x26, [sp, #1048]
    ldr x27, [sp, #1040]
    ldr x28, [sp, #1032]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_1:
    mov x10, x15
    mov x11, x20
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    sub x21, x29, #552
    mov x0, x20
    sub x8, x29, #712
    bl lb_files_Directory_metadata
    sub x12, x29, #712
    add x14, x12, #152
    ldrb w14, [x14]
    cbnz w14, .L2_5
    b .L2_4
.L2_5:
    add x14, x12, #128
    sub x19, x29, #216
    add x15, x19, #80
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #104
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl lb_files_Directory_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #112
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1104]
    ldr x20, [sp, #1096]
    ldr x21, [sp, #1088]
    ldr x22, [sp, #1080]
    ldr x23, [sp, #1072]
    ldr x24, [sp, #1064]
    ldr x25, [sp, #1056]
    ldr x26, [sp, #1048]
    ldr x27, [sp, #1040]
    ldr x28, [sp, #1032]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_4:
    mov x10, x12
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
    add x14, x21, #16
    ldr x22, [x14]
    sub x14, x29, #360
    add x15, x14, #16
    ldr x15, [x15]
    cmp x22, x15
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    cbnz w15, .L2_30
    b .L2_10
.L2_30:
    mov w14, w15
    b .L2_11
.L2_10:
    add x15, x21, #24
    ldr x15, [x15]
    add x12, x14, #24
    ldr x12, [x12]
    cmp x15, x12
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
.L2_11:
    and w15, w14, #255
    cbnz w15, .L2_7
    b .L2_8
.L2_7:
    sub x19, x29, #216
    add x14, x19, #80
    adrp x15, lb_files_failed
    add x15, x15, :lo12:lb_files_failed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_9
    add x15, x15, :lo12:.Ltext_9
    sub x12, x29, #728
    str x15, [x12]
    add x15, x12, #8
    movz x9, #52
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x19, #104
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl lb_files_Directory_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #112
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1104]
    ldr x20, [sp, #1096]
    ldr x21, [sp, #1088]
    ldr x22, [sp, #1080]
    ldr x23, [sp, #1072]
    ldr x24, [sp, #1064]
    ldr x25, [sp, #1056]
    ldr x26, [sp, #1048]
    ldr x27, [sp, #1040]
    ldr x28, [sp, #1032]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_8:
.L2_9:
    sub x9, x29, #744
    str x9, [sp, #8]
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x24, x0
    mov x10, x24
    ldr x11, [sp, #8]
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x25, x29, #376
    mov x10, x25
    mov x11, x24
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x26, x29, #784
    movz x0, #64
    sub x8, x29, #856
    bl lb_strings_Builder_create
    sub x15, x29, #856
    add x14, x15, #64
    ldrb w14, [x14]
    cbnz w14, .L2_14
    b .L2_13
.L2_14:
    add x14, x15, #40
    sub x19, x29, #216
    add x12, x19, #80
    mov x10, x14
    mov x11, x12
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #104
    movz x9, #1
    strb w9, [x14]
    ldr x10, [sp, #8]
    mov x11, x24
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x0, x20
    bl lb_files_Directory_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #112
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1104]
    ldr x20, [sp, #1096]
    ldr x21, [sp, #1088]
    ldr x22, [sp, #1080]
    ldr x23, [sp, #1072]
    ldr x24, [sp, #1064]
    ldr x25, [sp, #1056]
    ldr x26, [sp, #1048]
    ldr x27, [sp, #1040]
    ldr x28, [sp, #1032]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_13:
    mov x10, x15
    mov x11, x26
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    mov x0, x19
    bl strlen
    mov x14, x0
    sub x12, x29, #872
    str x19, [x12]
    add x13, x12, #8
    str x14, [x13]
    mov x0, x26
    mov x9, x12
    ldr x1, [x9]
    ldr x2, [x9, #8]
    sub x8, x29, #904
    bl lb_strings_Builder_put
    sub x12, x29, #904
    add x14, x12, #24
    ldrb w14, [x14]
    cbnz w14, .L2_17
    b .L2_16
.L2_17:
    sub x19, x29, #216
    add x14, x19, #80
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #104
    movz x9, #1
    strb w9, [x14]
    mov x0, x26
    bl lb_strings_Builder_destroy
    ldr x10, [sp, #8]
    mov x11, x24
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x0, x20
    bl lb_files_Directory_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #112
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1104]
    ldr x20, [sp, #1096]
    ldr x21, [sp, #1088]
    ldr x22, [sp, #1080]
    ldr x23, [sp, #1072]
    ldr x24, [sp, #1064]
    ldr x25, [sp, #1056]
    ldr x26, [sp, #1048]
    ldr x27, [sp, #1040]
    ldr x28, [sp, #1032]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_16:
    sub x19, x29, #920
    sub x27, x29, #968
.L2_20:
    ldr x14, [x24]
    add x15, x24, #8
    ldr x15, [x15]
    cbnz x15, .L2_22
    b .L2_23
.L2_23:
    adrp x0, .Ltext_12
    add x0, x0, :lo12:.Ltext_12
    adrp x1, .Ltext_11
    add x1, x1, :lo12:.Ltext_11
    bl lb_core_7trap_at
.L2_22:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #256
    movz x2, #8
    sub x8, x29, #992
    ldr x17, [sp], #16
    blr x17
    sub x13, x29, #992
    add x12, x13, #16
    ldrb w12, [x12]
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    movz x10, #1
    and w12, w12, w10
    cbnz w12, .L2_24
    b .L2_25
.L2_24:
    add x14, x27, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_13
    add x15, x15, :lo12:.Ltext_13
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x27, #40
    movz x9, #1
    strb w9, [x14]
    b .L2_21
.L2_25:
    ldr x14, [x13]
    str x14, [x27]
    add x14, x27, #8
    movz x9, #8
    str x9, [x14]
    add x14, x27, #40
    mov x9, #0
    strb w9, [x14]
.L2_21:
    add x14, x27, #40
    ldrb w14, [x14]
    cbnz w14, .L2_27
    b .L2_26
.L2_27:
    add x14, x27, #16
    sub x19, x29, #216
    add x15, x19, #80
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    add x14, x19, #104
    movz x9, #1
    strb w9, [x14]
    mov x0, x26
    bl lb_strings_Builder_destroy
    ldr x10, [sp, #8]
    mov x11, x24
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x0, x20
    bl lb_files_Directory_destroy
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #112
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1104]
    ldr x20, [sp, #1096]
    ldr x21, [sp, #1088]
    ldr x22, [sp, #1080]
    ldr x23, [sp, #1072]
    ldr x24, [sp, #1064]
    ldr x25, [sp, #1056]
    ldr x26, [sp, #1048]
    ldr x27, [sp, #1040]
    ldr x28, [sp, #1032]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_26:
    mov x10, x27
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x28, [x19]
    add x14, x19, #8
    ldr x14, [x14]
    mov x9, #0
    cmp x9, x14
    b.lo 1f
    adrp x0, .Ltext_14
    add x0, x0, :lo12:.Ltext_14
    adrp x1, .Ltext_18
    add x1, x1, :lo12:.Ltext_18
    bl lb_core_7trap_at
1:
    sub x23, x29, #1024
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    mov x10, x20
    mov x11, x23
    ldr x16, [x10, #0]
    str x16, [x11, #0]
    add x14, x23, #8
    str x22, [x14]
    add x14, x21, #24
    ldr x14, [x14]
    add x15, x23, #16
    str x14, [x15]
    mov x0, x26
    bl lb_strings_Builder_view
    sub x16, x29, #1040
    str x0, [x16, #0]
    str x1, [x16, #8]
    sub x14, x29, #1040
    add x14, x14, #8
    ldr x14, [x14]
    add x15, x23, #24
    str x14, [x15]
    mov x10, x23
    mov x11, x28
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    sub x23, x29, #1120
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    mov x10, x19
    mov x11, x23
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x23, #16
    movz x9, #1
    str x9, [x14]
    add x14, x23, #24
    mov x10, x26
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldp x16, x17, [x10, #16]
    stp x16, x17, [x11, #16]
    ldr x16, [x10, #32]
    str x16, [x11, #32]
    add x14, x23, #64
    mov x10, x25
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x28, x29, #216
    mov x10, x23
    mov x11, x28
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
    add x14, x28, #104
    mov x9, #0
    strb w9, [x14]
    ldr x10, [sp, #8]
    mov x11, x24
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    mov x1, x28
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #112
    bl memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1104]
    ldr x20, [sp, #1096]
    ldr x21, [sp, #1088]
    ldr x22, [sp, #1080]
    ldr x23, [sp, #1072]
    ldr x24, [sp, #1064]
    ldr x25, [sp, #1056]
    ldr x26, [sp, #1048]
    ldr x27, [sp, #1040]
    ldr x28, [sp, #1032]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_files_WalkState_start, .-lb_files_WalkState_start

    .p2align 2
    .globl lb_files_WalkState_destroy
    .type lb_files_WalkState_destroy, %function
lb_files_WalkState_destroy:
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
    add x19, x21, #16
    add x20, x21, #8
.L3_1:
    ldr x14, [x19]
    mov x10, #0
    cmp x14, x10
    b.ls .L3_3
.L3_2:
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_29
    add x0, x0, :lo12:.Ltext_29
    adrp x1, .Ltext_35
    add x1, x1, :lo12:.Ltext_35
    bl lb_core_7trap_at
1:
    mov x15, x9
    str x15, [x19]
    ldr x12, [x21]
    ldr x13, [x20]
    cmp x15, x13
    b.lo 1f
    adrp x0, .Ltext_30
    add x0, x0, :lo12:.Ltext_30
    adrp x1, .Ltext_18
    add x1, x1, :lo12:.Ltext_18
    bl lb_core_7trap_at
1:
    lsl x15, x15, #5
    add x15, x12, x15
    mov x0, x15
    bl lb_files_Directory_destroy
    b .L3_1
.L3_3:
    add x14, x21, #24
    mov x0, x14
    bl lb_strings_Builder_destroy
    add x14, x21, #8
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    b.ls .L3_5
.L3_4:
    add x15, x21, #64
    sub x12, x29, #64
    ldr x13, [x21]
    mov x9, x14
    movz x10, #32
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_31
    add x0, x0, :lo12:.Ltext_31
    adrp x1, .Ltext_35
    add x1, x1, :lo12:.Ltext_35
    bl lb_core_7trap_at
1:
    mov x19, x9
    str x13, [x12]
    add x13, x12, #8
    str x19, [x13]
    ldr x13, [x15]
    add x15, x15, #8
    ldr x15, [x15]
    cbnz x15, .L3_8
    b .L3_7
.L3_8:
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
.L3_7:
    sub x19, x29, #80
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    mov x10, x19
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    b .L3_6
.L3_5:
.L3_6:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_files_WalkState_destroy, .-lb_files_WalkState_destroy

    .p2align 2
    .weak lb_memory_copy_0g1_files_WalkFrame
    .type lb_memory_copy_0g1_files_WalkFrame, %function
lb_memory_copy_0g1_files_WalkFrame:
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
    cbnz w14, .L4_11
    b .L4_4
.L4_11:
    mov w15, w14
    b .L4_5
.L4_4:
    sub x14, x29, #64
    add x14, x14, #8
    ldr x14, [x14]
    cmp x19, x14
    cset w15, hi
.L4_5:
    and w14, w15, #255
    cbnz w14, .L4_1
    b .L4_2
.L4_1:
    adrp x14, .Ltext_18
    add x14, x14, :lo12:.Ltext_18
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #19
    str x9, [x14]
    adrp x14, .Ltext_32
    add x14, x14, :lo12:.Ltext_32
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    b .L4_3
.L4_2:
.L4_3:
    mov x10, #0
    cmp x19, x10
    b.ls .L4_7
.L4_6:
    ldr x14, [x20]
    sub x15, x29, #64
    ldr x15, [x15]
    mov x9, x19
    movz x10, #32
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, .Ltext_33
    add x0, x0, :lo12:.Ltext_33
    adrp x1, .Ltext_35
    add x1, x1, :lo12:.Ltext_35
    bl lb_core_7trap_at
1:
    mov x12, x9
    mov x0, x14
    mov x1, x15
    mov x2, x12
    bl memcpy
    mov x14, x0
    cbnz x14, .L4_9
    b .L4_10
.L4_10:
    adrp x0, .Ltext_33
    add x0, x0, :lo12:.Ltext_33
    adrp x1, .Ltext_34
    add x1, x1, :lo12:.Ltext_34
    bl lb_core_7trap_at
.L4_9:
    b .L4_8
.L4_7:
.L4_8:
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_memory_copy_0g1_files_WalkFrame, .-lb_memory_copy_0g1_files_WalkFrame

    .section .init_array,"aw"
    .p2align 3
    .quad lb_files_walk_0init

    .section .rodata
.Ltext_0:
    .asciz "src/std/files/walk.lucb:30:9"
.Ltext_1:
    .asciz "src/std/files/walk.lucb:31:9"
.Ltext_2:
    .asciz "directory traversal exceeded its depth limit"
.Ltext_3:
    .asciz "src/std/files/walk.lucb:39:9"
.Ltext_4:
    .asciz "src/std/files/walk.lucb:41:9"
.Ltext_5:
    .asciz "/"
.Ltext_6:
    .asciz "directory traversal encountered an ancestor again"
.Ltext_7:
    .asciz "src/std/files/walk.lucb:50:9"
.Ltext_8:
    .asciz "a directory changed before traversal could enter it"
.Ltext_9:
    .asciz "the traversal root changed before it could be opened"
.Ltext_10:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_11:
    .asciz "memory.unset"
.Ltext_12:
    .asciz "src/std/files/walk.lucb:82:13"
.Ltext_13:
    .asciz "memory.exhausted"
.Ltext_14:
    .asciz "src/std/files/walk.lucb:83:13"
.Ltext_15:
    .asciz "unreachable"
.Ltext_16:
    .asciz "src/std/files/walk.lucb:85:13"
.Ltext_17:
    .asciz "src/std/files/walk.lucb:88:9"
.Ltext_18:
    .asciz "index out of bounds"
.Ltext_19:
    .asciz "src/std/files/walk.lucb:91:9"
.Ltext_20:
    .asciz "the traversal stack is too large"
.Ltext_21:
    .asciz "src/std/files/walk.lucb:99:17"
.Ltext_22:
    .asciz "src/std/files/walk.lucb:101:17"
.Ltext_23:
    .asciz "src/std/files/walk.lucb:103:9"
.Ltext_24:
    .asciz "src/std/files/walk.lucb:105:9"
.Ltext_25:
    .asciz "src/std/files/walk.lucb:108:9"
.Ltext_26:
    .asciz "src/std/files/walk.lucb:112:9"
.Ltext_27:
    .asciz "src/std/files/walk.lucb:110:13"
.Ltext_28:
    .asciz "src/std/files/walk.lucb:114:13"
.Ltext_29:
    .asciz "src/std/files/walk.lucb:118:13"
.Ltext_30:
    .asciz "src/std/files/walk.lucb:119:13"
.Ltext_31:
    .asciz "src/std/files/walk.lucb:122:13"
.Ltext_32:
    .asciz "src/std/memory.lucb:328:9"
.Ltext_33:
    .asciz "src/std/memory.lucb:330:9"
.Ltext_34:
    .asciz "null_foreign"
.Ltext_35:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_files_15directory_cycle
    .type lb_files_15directory_cycle, %object
    .p2align 2
lb_files_15directory_cycle:
    .zero 4

    .bss
    .globl lb_files_11depth_limit
    .type lb_files_11depth_limit, %object
    .p2align 2
lb_files_11depth_limit:
    .zero 4


    .section .note.GNU-stack,"",%progbits
