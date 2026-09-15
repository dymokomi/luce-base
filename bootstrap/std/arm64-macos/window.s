    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_window_0init
_lb_window_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #432
    adrp x14, _lb_window_unsupported@PAGE
    add x14, x14, _lb_window_unsupported@PAGEOFF
    movz x9, #85
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_window_12wrong_thread@PAGE
    add x14, x14, _lb_window_12wrong_thread@PAGEOFF
    movz x9, #86
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_window_15invalid_options@PAGE
    add x14, x14, _lb_window_15invalid_options@PAGEOFF
    movz x9, #87
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_window_failed@PAGE
    add x14, x14, _lb_window_failed@PAGEOFF
    movz x9, #88
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_window_closed@PAGE
    add x14, x14, _lb_window_closed@PAGEOFF
    movz x9, #89
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_window_19presentation_in_use@PAGE
    add x14, x14, _lb_window_19presentation_in_use@PAGEOFF
    movz x9, #90
    movk x9, #3178, lsl #16
    str w9, [x14]
    sub x14, x29, #272
    movz x9, #4
    strh w9, [x14]
    add x15, x14, #2
    movz x9, #22
    strh w9, [x15]
    add x15, x14, #4
    movz x9, #7
    strh w9, [x15]
    add x15, x14, #6
    movz x9, #9
    strh w9, [x15]
    add x15, x14, #8
    movz x9, #11
    strh w9, [x15]
    add x15, x14, #10
    movz x9, #10
    strh w9, [x15]
    add x15, x14, #12
    movz x9, #29
    strh w9, [x15]
    add x15, x14, #14
    movz x9, #27
    strh w9, [x15]
    add x15, x14, #16
    movz x9, #6
    strh w9, [x15]
    add x15, x14, #18
    movz x9, #25
    strh w9, [x15]
    add x15, x14, #20
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #22
    movz x9, #5
    strh w9, [x15]
    add x15, x14, #24
    movz x9, #20
    strh w9, [x15]
    add x15, x14, #26
    movz x9, #26
    strh w9, [x15]
    add x15, x14, #28
    movz x9, #8
    strh w9, [x15]
    add x15, x14, #30
    movz x9, #21
    strh w9, [x15]
    add x15, x14, #32
    movz x9, #28
    strh w9, [x15]
    add x15, x14, #34
    movz x9, #23
    strh w9, [x15]
    add x15, x14, #36
    movz x9, #30
    strh w9, [x15]
    add x15, x14, #38
    movz x9, #31
    strh w9, [x15]
    add x15, x14, #40
    movz x9, #32
    strh w9, [x15]
    add x15, x14, #42
    movz x9, #33
    strh w9, [x15]
    add x15, x14, #44
    movz x9, #35
    strh w9, [x15]
    add x15, x14, #46
    movz x9, #34
    strh w9, [x15]
    add x15, x14, #48
    movz x9, #46
    strh w9, [x15]
    add x15, x14, #50
    movz x9, #38
    strh w9, [x15]
    add x15, x14, #52
    movz x9, #36
    strh w9, [x15]
    add x15, x14, #54
    movz x9, #45
    strh w9, [x15]
    add x15, x14, #56
    movz x9, #37
    strh w9, [x15]
    add x15, x14, #58
    movz x9, #39
    strh w9, [x15]
    add x15, x14, #60
    movz x9, #48
    strh w9, [x15]
    add x15, x14, #62
    movz x9, #18
    strh w9, [x15]
    add x15, x14, #64
    movz x9, #24
    strh w9, [x15]
    add x15, x14, #66
    movz x9, #47
    strh w9, [x15]
    add x15, x14, #68
    movz x9, #12
    strh w9, [x15]
    add x15, x14, #70
    movz x9, #19
    strh w9, [x15]
    add x15, x14, #72
    movz x9, #40
    strh w9, [x15]
    add x15, x14, #74
    movz x9, #15
    strh w9, [x15]
    add x15, x14, #76
    movz x9, #13
    strh w9, [x15]
    add x15, x14, #78
    movz x9, #52
    strh w9, [x15]
    add x15, x14, #80
    movz x9, #14
    strh w9, [x15]
    add x15, x14, #82
    movz x9, #51
    strh w9, [x15]
    add x15, x14, #84
    movz x9, #49
    strh w9, [x15]
    add x15, x14, #86
    movz x9, #54
    strh w9, [x15]
    add x15, x14, #88
    movz x9, #56
    strh w9, [x15]
    add x15, x14, #90
    movz x9, #17
    strh w9, [x15]
    add x15, x14, #92
    movz x9, #16
    strh w9, [x15]
    add x15, x14, #94
    movz x9, #55
    strh w9, [x15]
    add x15, x14, #96
    movz x9, #43
    strh w9, [x15]
    add x15, x14, #98
    movz x9, #44
    strh w9, [x15]
    add x15, x14, #100
    movz x9, #53
    strh w9, [x15]
    add x15, x14, #102
    movz x9, #42
    strh w9, [x15]
    add x15, x14, #104
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #106
    movz x9, #41
    strh w9, [x15]
    add x15, x14, #108
    movz x9, #231
    strh w9, [x15]
    add x15, x14, #110
    movz x9, #227
    strh w9, [x15]
    add x15, x14, #112
    movz x9, #225
    strh w9, [x15]
    add x15, x14, #114
    movz x9, #57
    strh w9, [x15]
    add x15, x14, #116
    movz x9, #226
    strh w9, [x15]
    add x15, x14, #118
    movz x9, #224
    strh w9, [x15]
    add x15, x14, #120
    movz x9, #229
    strh w9, [x15]
    add x15, x14, #122
    movz x9, #230
    strh w9, [x15]
    add x15, x14, #124
    movz x9, #228
    strh w9, [x15]
    add x15, x14, #126
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #128
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #130
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #132
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #134
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #136
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #138
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #140
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #142
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #144
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #146
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #148
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #150
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #152
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #154
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #156
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #158
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #160
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #162
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #164
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #166
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #168
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #170
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #172
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #174
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #176
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #178
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #180
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #182
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #184
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #186
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #188
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #190
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #192
    movz x9, #62
    strh w9, [x15]
    add x15, x14, #194
    movz x9, #63
    strh w9, [x15]
    add x15, x14, #196
    movz x9, #64
    strh w9, [x15]
    add x15, x14, #198
    movz x9, #60
    strh w9, [x15]
    add x15, x14, #200
    movz x9, #65
    strh w9, [x15]
    add x15, x14, #202
    movz x9, #66
    strh w9, [x15]
    add x15, x14, #204
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #206
    movz x9, #68
    strh w9, [x15]
    add x15, x14, #208
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #210
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #212
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #214
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #216
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #218
    movz x9, #67
    strh w9, [x15]
    add x15, x14, #220
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #222
    movz x9, #69
    strh w9, [x15]
    add x15, x14, #224
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #226
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #228
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #230
    movz x9, #74
    strh w9, [x15]
    add x15, x14, #232
    movz x9, #75
    strh w9, [x15]
    add x15, x14, #234
    movz x9, #76
    strh w9, [x15]
    add x15, x14, #236
    movz x9, #61
    strh w9, [x15]
    add x15, x14, #238
    movz x9, #77
    strh w9, [x15]
    add x15, x14, #240
    movz x9, #59
    strh w9, [x15]
    add x15, x14, #242
    movz x9, #78
    strh w9, [x15]
    add x15, x14, #244
    movz x9, #58
    strh w9, [x15]
    add x15, x14, #246
    movz x9, #80
    strh w9, [x15]
    add x15, x14, #248
    movz x9, #79
    strh w9, [x15]
    add x15, x14, #250
    movz x9, #81
    strh w9, [x15]
    add x15, x14, #252
    movz x9, #82
    strh w9, [x15]
    add x15, x14, #254
    mov x9, #0
    strh w9, [x15]
    adrp x15, _lb_window_13key_positions@PAGE
    add x15, x15, _lb_window_13key_positions@PAGEOFF
    mov x0, x15
    mov x1, x14
    movz x2, #256
    bl _memcpy
    adrp x14, _lb_window_13mac_not_found@PAGE
    add x14, x14, _lb_window_13mac_not_found@PAGEOFF
    movz x9, #65535
    movk x9, #65535, lsl #16
    movk x9, #65535, lsl #32
    movk x9, #32767, lsl #48
    str x9, [x14]
    sub x14, x29, #294
    movz x9, #76
    strh w9, [x14]
    add x15, x14, #2
    movz x9, #117
    strh w9, [x15]
    add x15, x14, #4
    movz x9, #99
    strh w9, [x15]
    add x15, x14, #6
    movz x9, #101
    strh w9, [x15]
    add x15, x14, #8
    movz x9, #87
    strh w9, [x15]
    add x15, x14, #10
    movz x9, #105
    strh w9, [x15]
    add x15, x14, #12
    movz x9, #110
    strh w9, [x15]
    add x15, x14, #14
    movz x9, #100
    strh w9, [x15]
    add x15, x14, #16
    movz x9, #111
    strh w9, [x15]
    add x15, x14, #18
    movz x9, #119
    strh w9, [x15]
    add x15, x14, #20
    mov x9, #0
    strh w9, [x15]
    adrp x15, _lb_window_14win_class_name@PAGE
    add x15, x15, _lb_window_14win_class_name@PAGEOFF
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr w12, [x10, #16]
    str w12, [x11, #16]
    ldrh w12, [x10, #20]
    strh w12, [x11, #20]
    sub x14, x29, #422
    mov x9, #0
    strh w9, [x14]
    add x15, x14, #2
    movz x9, #41
    strh w9, [x15]
    add x15, x14, #4
    movz x9, #30
    strh w9, [x15]
    add x15, x14, #6
    movz x9, #31
    strh w9, [x15]
    add x15, x14, #8
    movz x9, #32
    strh w9, [x15]
    add x15, x14, #10
    movz x9, #33
    strh w9, [x15]
    add x15, x14, #12
    movz x9, #34
    strh w9, [x15]
    add x15, x14, #14
    movz x9, #35
    strh w9, [x15]
    add x15, x14, #16
    movz x9, #36
    strh w9, [x15]
    add x15, x14, #18
    movz x9, #37
    strh w9, [x15]
    add x15, x14, #20
    movz x9, #38
    strh w9, [x15]
    add x15, x14, #22
    movz x9, #39
    strh w9, [x15]
    add x15, x14, #24
    movz x9, #45
    strh w9, [x15]
    add x15, x14, #26
    movz x9, #46
    strh w9, [x15]
    add x15, x14, #28
    movz x9, #42
    strh w9, [x15]
    add x15, x14, #30
    movz x9, #43
    strh w9, [x15]
    add x15, x14, #32
    movz x9, #20
    strh w9, [x15]
    add x15, x14, #34
    movz x9, #26
    strh w9, [x15]
    add x15, x14, #36
    movz x9, #8
    strh w9, [x15]
    add x15, x14, #38
    movz x9, #21
    strh w9, [x15]
    add x15, x14, #40
    movz x9, #23
    strh w9, [x15]
    add x15, x14, #42
    movz x9, #28
    strh w9, [x15]
    add x15, x14, #44
    movz x9, #24
    strh w9, [x15]
    add x15, x14, #46
    movz x9, #12
    strh w9, [x15]
    add x15, x14, #48
    movz x9, #18
    strh w9, [x15]
    add x15, x14, #50
    movz x9, #19
    strh w9, [x15]
    add x15, x14, #52
    movz x9, #47
    strh w9, [x15]
    add x15, x14, #54
    movz x9, #48
    strh w9, [x15]
    add x15, x14, #56
    movz x9, #40
    strh w9, [x15]
    add x15, x14, #58
    movz x9, #224
    strh w9, [x15]
    add x15, x14, #60
    movz x9, #4
    strh w9, [x15]
    add x15, x14, #62
    movz x9, #22
    strh w9, [x15]
    add x15, x14, #64
    movz x9, #7
    strh w9, [x15]
    add x15, x14, #66
    movz x9, #9
    strh w9, [x15]
    add x15, x14, #68
    movz x9, #10
    strh w9, [x15]
    add x15, x14, #70
    movz x9, #11
    strh w9, [x15]
    add x15, x14, #72
    movz x9, #13
    strh w9, [x15]
    add x15, x14, #74
    movz x9, #14
    strh w9, [x15]
    add x15, x14, #76
    movz x9, #15
    strh w9, [x15]
    add x15, x14, #78
    movz x9, #51
    strh w9, [x15]
    add x15, x14, #80
    movz x9, #52
    strh w9, [x15]
    add x15, x14, #82
    movz x9, #53
    strh w9, [x15]
    add x15, x14, #84
    movz x9, #225
    strh w9, [x15]
    add x15, x14, #86
    movz x9, #49
    strh w9, [x15]
    add x15, x14, #88
    movz x9, #29
    strh w9, [x15]
    add x15, x14, #90
    movz x9, #27
    strh w9, [x15]
    add x15, x14, #92
    movz x9, #6
    strh w9, [x15]
    add x15, x14, #94
    movz x9, #25
    strh w9, [x15]
    add x15, x14, #96
    movz x9, #5
    strh w9, [x15]
    add x15, x14, #98
    movz x9, #17
    strh w9, [x15]
    add x15, x14, #100
    movz x9, #16
    strh w9, [x15]
    add x15, x14, #102
    movz x9, #54
    strh w9, [x15]
    add x15, x14, #104
    movz x9, #55
    strh w9, [x15]
    add x15, x14, #106
    movz x9, #56
    strh w9, [x15]
    add x15, x14, #108
    movz x9, #229
    strh w9, [x15]
    add x15, x14, #110
    mov x9, #0
    strh w9, [x15]
    add x15, x14, #112
    movz x9, #226
    strh w9, [x15]
    add x15, x14, #114
    movz x9, #44
    strh w9, [x15]
    add x15, x14, #116
    movz x9, #57
    strh w9, [x15]
    add x15, x14, #118
    movz x9, #58
    strh w9, [x15]
    add x15, x14, #120
    movz x9, #59
    strh w9, [x15]
    add x15, x14, #122
    movz x9, #60
    strh w9, [x15]
    add x15, x14, #124
    movz x9, #61
    strh w9, [x15]
    add x15, x14, #126
    movz x9, #62
    strh w9, [x15]
    adrp x15, _lb_window_13win_scan_keys@PAGE
    add x15, x15, _lb_window_13win_scan_keys@PAGEOFF
    mov x10, x14
    mov x11, x15
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
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_Window_open
_lb_window_Window_open:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #208]
    str x20, [sp, #200]
    sub x16, x29, #112
    str x0, [x16]
    sub x0, x29, #112
    ldr x1, [x0]
    movz x2, #32
    bl _memcpy
    sub x8, x29, #144
    bl _lb_window_12check_thread
    sub x15, x29, #144
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L1_2
    b L1_1
L1_2:
    sub x19, x29, #80
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_3:
L1_1:
    sub x19, x29, #112
    add x14, x19, #16
    ldr w14, [x14]
    add x15, x19, #20
    ldr w15, [x15]
    mov x0, x14
    mov x1, x15
    sub x8, x29, #176
    bl _lb_window_12check_extent
    sub x15, x29, #176
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L1_5
    b L1_4
L1_5:
    sub x19, x29, #80
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_6:
L1_4:
    mov x9, x19
    ldr x0, [x9]
    ldr x1, [x9, #8]
    bl _lb_utf8_valid
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L1_8
L1_7:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_window_15invalid_options@PAGE
    add x15, x15, _lb_window_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_2@PAGE
    add x15, x15, l_text_2@PAGEOFF
    sub x20, x29, #192
    str x15, [x20]
    add x15, x20, #8
    movz x9, #35
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_10:
    b L1_9
L1_8:
L1_9:
    sub x20, x29, #200
    mov x11, x20
    str xzr, [x11, #0]
    mov x9, x19
    mov x0, x9
    sub x8, x29, #240
    bl _lb_window_8mac_open
    sub x15, x29, #240
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L1_12
    b L1_11
L1_12:
    add x14, x15, #8
    sub x19, x29, #80
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_13:
L1_11:
    ldr x14, [x15]
    str x14, [x20]
    sub x19, x29, #80
    mov x10, x20
    mov x11, x19
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_14:
    adrp x0, l_text_3@PAGE
    add x0, x0, l_text_3@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_Window_show
_lb_window_Window_show:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #176]
    str x20, [sp, #168]
    str x21, [sp, #160]
    str x22, [sp, #152]
    sub x16, x29, #96
    str x0, [x16]
    sub x9, x29, #96
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #136
    bl _lb_window_Window_checked
    sub x15, x29, #136
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L2_2
    b L2_1
L2_2:
    add x14, x15, #8
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_3:
L2_1:
    ldr x19, [x15]
    sub x10, x29, #152
    str x19, [x10]
    bl _objc_autoreleasePoolPush
    mov x20, x0
    cbnz x20, L2_4
    b L2_5
L2_5:
    adrp x0, l_text_209@PAGE
    add x0, x0, l_text_209@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L2_4:
    adrp x14, _lb_window_application@PAGE
    add x14, x14, _lb_window_application@PAGEOFF
    ldr x21, [x14]
    sub x10, x29, #168
    str x21, [x10]
    cbnz x21, L2_6
    b L2_7
L2_6:
    b L2_8
L2_7:
    adrp x14, l_text_41@PAGE
    add x14, x14, l_text_41@PAGEOFF
    sub x15, x29, #184
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_42@PAGE
    add x14, x14, l_text_42@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L2_8:
    b L2_10
L2_9:
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L2_10:
    adrp x14, l_text_210@PAGE
    add x14, x14, l_text_210@PAGEOFF
    sub x10, x29, #200
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L2_11
    b L2_12
L2_12:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L2_11:
    b L2_14
L2_13:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L2_14:
    mov x0, x21
    mov x1, x14
    movz x2, #1
    bl _objc_msgSend
    ldr x22, [x19]
    sub x10, x29, #168
    str x22, [x10]
    cbnz x22, L2_15
    b L2_16
L2_15:
    b L2_17
L2_16:
    adrp x14, l_text_41@PAGE
    add x14, x14, l_text_41@PAGEOFF
    sub x15, x29, #184
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_42@PAGE
    add x14, x14, l_text_42@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L2_17:
    b L2_19
L2_18:
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L2_19:
    adrp x14, l_text_211@PAGE
    add x14, x14, l_text_211@PAGEOFF
    sub x10, x29, #200
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L2_20
    b L2_21
L2_21:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L2_20:
    b L2_23
L2_22:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L2_23:
    mov x0, x22
    mov x1, x14
    mov x2, #0
    bl _objc_msgSend
    mov x0, x20
    bl _objc_autoreleasePoolPop
L2_24:
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
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    ldr x21, [sp, #160]
    ldr x22, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_Window_size
_lb_window_Window_size:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #176]
    str x20, [sp, #168]
    sub x16, x29, #120
    str x0, [x16]
    sub x9, x29, #120
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #160
    bl _lb_window_Window_checked
    sub x15, x29, #160
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L3_2
    b L3_1
L3_2:
    add x14, x15, #8
    sub x19, x29, #112
    add x20, x19, #40
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_3:
L3_1:
    ldr x14, [x15]
    mov x0, x14
    sub x8, x29, #200
    bl _lb_window_8mac_size
    sub x14, x29, #200
    sub x19, x29, #112
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    add x14, x19, #64
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_4:
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_Window_resize
_lb_window_Window_resize:
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
    sub x16, x29, #112
    str x0, [x16]
    sub x16, x29, #128
    str w1, [x16]
    sub x16, x29, #144
    str w2, [x16]
    sub x9, x29, #112
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #184
    bl _lb_window_Window_checked
    sub x15, x29, #184
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L4_2
    b L4_1
L4_2:
    add x14, x15, #8
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_3:
L4_1:
    ldr x19, [x15]
    sub x14, x29, #128
    ldr w20, [x14]
    sub x14, x29, #144
    ldr w21, [x14]
    mov x0, x20
    mov x1, x21
    sub x8, x29, #216
    bl _lb_window_12check_extent
    sub x22, x29, #216
    add x14, x22, #24
    ldrb w14, [x14]
    cbnz w14, L4_5
    b L4_4
L4_5:
    sub x19, x29, #104
    mov x10, x22
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_6:
L4_4:
    sub x10, x29, #232
    str x19, [x10]
    sub x10, x29, #248
    str w20, [x10]
    sub x10, x29, #264
    str w21, [x10]
    bl _objc_autoreleasePoolPush
    mov x22, x0
    cbnz x22, L4_7
    b L4_8
L4_8:
    adrp x0, l_text_216@PAGE
    add x0, x0, l_text_216@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L4_7:
    ldr x23, [x19]
    sub x10, x29, #296
    str x23, [x10]
    cbnz x23, L4_9
    b L4_10
L4_9:
    b L4_11
L4_10:
    adrp x14, l_text_41@PAGE
    add x14, x14, l_text_41@PAGEOFF
    sub x15, x29, #312
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_42@PAGE
    add x14, x14, l_text_42@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L4_11:
    b L4_13
L4_12:
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L4_13:
    adrp x14, l_text_217@PAGE
    add x14, x14, l_text_217@PAGEOFF
    sub x10, x29, #328
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x19, x0
    cbnz x19, L4_14
    b L4_15
L4_15:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L4_14:
    b L4_17
L4_16:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L4_17:
    sub x24, x29, #280
    mov x11, x24
    stp xzr, xzr, [x11, #0]
    mov w14, w20
    ucvtf d24, x14
    str d24, [x24]
    mov w14, w21
    ucvtf d24, x14
    add x14, x24, #8
    str d24, [x14]
    mov x9, x24
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    mov x0, x23
    mov x1, x19
    bl _objc_msgSend
    mov x0, x22
    bl _objc_autoreleasePoolPop
L4_18:
    sub x14, x29, #104
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
    ldr x19, [sp, #304]
    ldr x20, [sp, #296]
    ldr x21, [sp, #288]
    ldr x22, [sp, #280]
    ldr x23, [sp, #272]
    ldr x24, [sp, #264]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_Window_14set_text_input
_lb_window_Window_14set_text_input:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #144]
    str x20, [sp, #136]
    str x21, [sp, #128]
    sub x16, x29, #88
    str x0, [x16]
    sub x16, x29, #104
    str w1, [x16]
    sub x9, x29, #88
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #144
    bl _lb_window_Window_checked
    sub x15, x29, #144
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L5_2
    b L5_1
L5_2:
    add x14, x15, #8
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    ldr x21, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_3:
L5_1:
    ldr x19, [x15]
    movz x10, #14380
    add x14, x19, x10
    ldrb w20, [x14]
    sub x21, x29, #104
    ldrb w21, [x21]
    cmp w20, w21
    b.ne L5_5
L5_4:
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    ldr x21, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_7:
    b L5_6
L5_5:
L5_6:
    strb w21, [x14]
    movz x10, #14382
    add x15, x19, x10
    mov x9, #0
    strh w9, [x15]
    mov x10, #0
    cmp w21, w10
    b.ne L5_9
L5_8:
    sub x10, x29, #160
    str x19, [x10]
    mov x0, x19
    bl _lb_window_16mac_clear_marked
    add x14, x19, #8
    ldr x20, [x14]
    cbnz x20, L5_14
    b L5_12
L5_14:
L5_11:
    adrp x14, l_text_122@PAGE
    add x14, x14, l_text_122@PAGEOFF
    sub x10, x29, #176
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L5_19
    b L5_20
L5_20:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L5_19:
    b L5_22
L5_21:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L5_22:
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    mov x19, x0
    cbnz x19, L5_18
    b L5_16
L5_18:
L5_15:
    adrp x14, l_text_123@PAGE
    add x14, x14, l_text_123@PAGEOFF
    sub x10, x29, #176
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L5_23
    b L5_24
L5_24:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L5_23:
    b L5_26
L5_25:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L5_26:
    mov x0, x19
    mov x1, x14
    bl _objc_msgSend
    b L5_17
L5_16:
L5_17:
    b L5_13
L5_12:
L5_13:
L5_27:
    b L5_10
L5_9:
L5_10:
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    ldr x21, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_Window_10set_cursor
_lb_window_Window_10set_cursor:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #352
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #320]
    str x20, [sp, #312]
    str x21, [sp, #304]
    str x22, [sp, #296]
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #112
    str w1, [x16]
    sub x9, x29, #96
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #152
    bl _lb_window_Window_checked
    sub x15, x29, #152
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L6_2
    b L6_1
L6_2:
    add x14, x15, #8
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
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_3:
L6_1:
    ldr x19, [x15]
    sub x14, x29, #112
    ldrb w14, [x14]
    mov w20, w14
    and w20, w20, #255
    movz x10, #7
    cmp w20, w10
    b.ls L6_5
L6_4:
    sub x19, x29, #88
    adrp x14, _lb_window_15invalid_options@PAGE
    add x14, x14, _lb_window_15invalid_options@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_5@PAGE
    add x14, x14, l_text_5@PAGEOFF
    sub x15, x29, #168
    str x14, [x15]
    add x14, x15, #8
    movz x9, #21
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
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_7:
    b L6_6
L6_5:
L6_6:
    sub x10, x29, #248
    str x19, [x10]
    sub x10, x29, #264
    str w14, [x10]
    movz x10, #14392
    add x20, x19, x10
    ldr x15, [x20]
    mov x10, #0
    cmp x15, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    cbnz w15, L6_14
    b L6_53
L6_53:
    mov w14, w15
    b L6_15
L6_14:
    movz x10, #14385
    add x14, x19, x10
    ldrb w14, [x14]
    sub x15, x29, #264
    ldrb w15, [x15]
    cmp w14, w15
    cset w14, eq
L6_15:
    and w15, w14, #255
    cbnz w15, L6_11
    b L6_12
L6_11:
    sub x14, x29, #232
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #200
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L6_52
L6_16:
    b L6_13
L6_12:
L6_13:
    bl _objc_autoreleasePoolPush
    mov x21, x0
    cbnz x21, L6_17
    b L6_18
L6_18:
    adrp x0, l_text_77@PAGE
    add x0, x0, l_text_77@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L6_17:
    ldr x14, [x20]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    cbnz w14, L6_54
    b L6_22
L6_54:
    mov w15, w14
    b L6_23
L6_22:
    movz x10, #14385
    add x14, x19, x10
    ldrb w14, [x14]
    sub x15, x29, #264
    ldrb w15, [x15]
    cmp w14, w15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L6_23:
    and w14, w15, #255
    cbnz w14, L6_19
    b L6_20
L6_19:
    sub x14, x29, #264
    ldrb w22, [x14]
    mov x0, x22
    sub x8, x29, #304
    bl _lb_window_10mac_cursor
    sub x15, x29, #304
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L6_25
    b L6_24
L6_25:
    add x14, x15, #8
    sub x19, x29, #232
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x21
    bl _objc_autoreleasePoolPop
    mov x10, x19
    sub x11, x29, #200
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L6_52
L6_26:
L6_24:
    ldr x14, [x15]
    str x14, [x20]
    movz x10, #14385
    add x14, x19, x10
    strb w22, [x14]
    b L6_21
L6_20:
L6_21:
    movz x10, #14400
    add x14, x19, x10
    ldrb w14, [x14]
    cbnz w14, L6_55
    b L6_30
L6_55:
    mov w15, w14
    b L6_31
L6_30:
    movz x10, #14401
    add x14, x19, x10
    ldrb w15, [x14]
L6_31:
    and w14, w15, #255
    cbnz w14, L6_32
    b L6_56
L6_56:
    mov w15, w14
    b L6_33
L6_32:
    ldr x22, [x19]
    sub x10, x29, #320
    str x22, [x10]
    cbnz x22, L6_34
    b L6_35
L6_34:
    b L6_36
L6_35:
    adrp x14, l_text_41@PAGE
    add x14, x14, l_text_41@PAGEOFF
    sub x15, x29, #336
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_42@PAGE
    add x14, x14, l_text_42@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L6_36:
    b L6_38
L6_37:
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L6_38:
    adrp x14, l_text_78@PAGE
    add x14, x14, l_text_78@PAGEOFF
    sub x10, x29, #352
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L6_39
    b L6_40
L6_40:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L6_39:
    b L6_42
L6_41:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L6_42:
    mov x0, x22
    mov x1, x14
    bl _objc_msgSend
    mov w15, w0
L6_33:
    and w14, w15, #255
    cbnz w14, L6_27
    b L6_28
L6_27:
    ldr x19, [x20]
    sub x10, x29, #320
    str x19, [x10]
    cbnz x19, L6_43
    b L6_44
L6_43:
    b L6_45
L6_44:
    adrp x14, l_text_41@PAGE
    add x14, x14, l_text_41@PAGEOFF
    sub x15, x29, #336
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_42@PAGE
    add x14, x14, l_text_42@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L6_45:
    b L6_47
L6_46:
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L6_47:
    adrp x14, l_text_79@PAGE
    add x14, x14, l_text_79@PAGEOFF
    sub x10, x29, #352
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L6_48
    b L6_49
L6_49:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L6_48:
    b L6_51
L6_50:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L6_51:
    mov x0, x19
    mov x1, x14
    bl _objc_msgSend
    b L6_29
L6_28:
L6_29:
    mov x0, x21
    bl _objc_autoreleasePoolPop
    sub x14, x29, #232
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #200
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L6_52:
    sub x15, x29, #200
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L6_9
    b L6_8
L6_9:
    sub x19, x29, #88
    mov x10, x15
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
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_10:
L6_8:
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
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_Window_cursor
_lb_window_Window_cursor:
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
    mov x0, x14
    sub x8, x29, #128
    bl _lb_window_Window_checked
    sub x15, x29, #128
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L7_2
    b L7_1
L7_2:
    add x14, x15, #8
    sub x19, x29, #80
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
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_3:
L7_1:
    ldr x14, [x15]
    movz x10, #14385
    add x14, x14, x10
    ldrb w14, [x14]
    sub x19, x29, #80
    strb w14, [x19]
    add x14, x19, #32
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_4:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_Window_20acquire_presentation
_lb_window_Window_20acquire_presentation:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    str x20, [sp, #120]
    str x21, [sp, #112]
    sub x16, x29, #96
    str x0, [x16]
    sub x9, x29, #96
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #136
    bl _lb_window_Window_checked
    sub x15, x29, #136
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L8_2
    b L8_1
L8_2:
    add x14, x15, #8
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_3:
L8_1:
    ldr x19, [x15]
    movz x10, #14378
    add x14, x19, x10
    ldrb w20, [x14]
    cbnz w20, L8_4
    b L8_5
L8_4:
    sub x19, x29, #88
    add x14, x19, #8
    adrp x15, _lb_window_19presentation_in_use@PAGE
    add x15, x15, _lb_window_19presentation_in_use@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_7@PAGE
    add x15, x15, l_text_7@PAGEOFF
    sub x20, x29, #152
    str x15, [x20]
    add x15, x20, #8
    movz x9, #45
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_7:
    b L8_6
L8_5:
L8_6:
    movz x9, #1
    strb w9, [x14]
    sub x20, x29, #160
    mov x11, x20
    str xzr, [x11, #0]
    str x19, [x20]
    sub x21, x29, #88
    mov x10, x20
    mov x11, x21
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    add x15, x21, #32
    mov x9, #0
    strb w9, [x15]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_8:
    adrp x0, l_text_8@PAGE
    add x0, x0, l_text_8@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_Window_13request_close
_lb_window_Window_13request_close:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    sub x16, x29, #72
    str x0, [x16]
    sub x9, x29, #72
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #112
    bl _lb_window_Window_checked
    sub x15, x29, #112
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L9_2
    b L9_1
L9_2:
    add x14, x15, #8
    sub x19, x29, #64
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
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_3:
L9_1:
    ldr x14, [x15]
    movz x10, #14377
    add x14, x14, x10
    movz x9, #1
    strb w9, [x14]
    sub x14, x29, #64
    add x19, x14, #24
    mov x9, #0
    strb w9, [x19]
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

    .p2align 2
    .globl _lb_window_Window_poll
_lb_window_Window_poll:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #608
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #576]
    str x20, [sp, #568]
    str x21, [sp, #560]
    str x22, [sp, #552]
    str x23, [sp, #544]
    str x24, [sp, #536]
    str x25, [sp, #528]
    str x26, [sp, #520]
    str x27, [sp, #512]
    str x28, [sp, #504]
    sub x16, x29, #208
    str x0, [x16]
    sub x9, x29, #208
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #248
    bl _lb_window_Window_checked
    sub x15, x29, #248
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L10_2
    b L10_1
L10_2:
    add x14, x15, #8
    sub x19, x29, #200
    add x20, x19, #64
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #88
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #96
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #576]
    ldr x20, [sp, #568]
    ldr x21, [sp, #560]
    ldr x22, [sp, #552]
    ldr x23, [sp, #544]
    ldr x24, [sp, #536]
    ldr x25, [sp, #528]
    ldr x26, [sp, #520]
    ldr x27, [sp, #512]
    ldr x28, [sp, #504]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_3:
L10_1:
    ldr x19, [x15]
    mov x0, x19
    sub x8, x29, #312
    bl _lb_window_9pop_event
    sub x20, x29, #312
    add x14, x20, #56
    ldrb w14, [x14]
    cbnz w14, L10_7
    b L10_5
L10_7:
    sub x19, x29, #368
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
L10_4:
    sub x20, x29, #432
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    add x14, x20, #56
    movz x9, #1
    strb w9, [x14]
    sub x21, x29, #200
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    add x14, x21, #88
    mov x9, #0
    strb w9, [x14]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #96
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #576]
    ldr x20, [sp, #568]
    ldr x21, [sp, #560]
    ldr x22, [sp, #552]
    ldr x23, [sp, #544]
    ldr x24, [sp, #536]
    ldr x25, [sp, #528]
    ldr x26, [sp, #520]
    ldr x27, [sp, #512]
    ldr x28, [sp, #504]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_8:
    b L10_6
L10_5:
L10_6:
    sub x10, x29, #512
    str x19, [x10]
    adrp x14, _lb_window_application@PAGE
    add x14, x14, _lb_window_application@PAGEOFF
    ldr x20, [x14]
    cbnz x20, L10_10
    b L10_11
L10_10:
    b L10_12
L10_11:
    b L10_55
L10_13:
L10_12:
    bl _objc_autoreleasePoolPush
    str x0, [sp, #8]
    ldr x9, [sp, #8]
    cbnz x9, L10_14
    b L10_15
L10_15:
    adrp x0, l_text_218@PAGE
    add x0, x0, l_text_218@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L10_14:
    adrp x14, l_text_219@PAGE
    add x14, x14, l_text_219@PAGEOFF
    mov x0, x14
    bl _objc_getClass
    mov x22, x0
    cbnz x22, L10_16
    b L10_17
L10_16:
    b L10_18
L10_17:
    adrp x14, l_text_220@PAGE
    add x14, x14, l_text_220@PAGEOFF
    sub x15, x29, #528
    str x14, [x15]
    add x14, x15, #8
    movz x9, #26
    str x9, [x14]
    adrp x14, l_text_221@PAGE
    add x14, x14, l_text_221@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_221@PAGE
    add x0, x0, l_text_221@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L10_18:
    adrp x14, l_text_222@PAGE
    add x14, x14, l_text_222@PAGEOFF
    sub x10, x29, #544
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L10_34
    b L10_35
L10_35:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L10_34:
    b L10_37
L10_36:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L10_37:
    mov x0, x22
    mov x1, x14
    bl _objc_msgSend
    str x0, [sp, #24]
    ldr x9, [sp, #24]
    sub x10, x29, #560
    str x9, [x10]
    ldr x9, [sp, #24]
    cbnz x9, L10_38
    b L10_39
L10_38:
    b L10_40
L10_39:
    adrp x14, l_text_41@PAGE
    add x14, x14, l_text_41@PAGEOFF
    sub x15, x29, #576
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_42@PAGE
    add x14, x14, l_text_42@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L10_40:
    b L10_42
L10_41:
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L10_42:
    adrp x9, l_text_223@PAGE
    add x9, x9, l_text_223@PAGEOFF
    str x9, [sp, #16]
    adrp x24, _NSDefaultRunLoopMode@GOTPAGE
    ldr x24, [x24, _NSDefaultRunLoopMode@GOTPAGEOFF]
    adrp x25, l_text_224@PAGE
    add x25, x25, l_text_224@PAGEOFF
    movz x10, #14368
    add x26, x19, x10
    movz x10, #14377
    add x27, x19, x10
    movz x10, #14376
    add x28, x19, x10
    mov x9, #0
    mov x21, x9
L10_19:
    movz x10, #256
    cmp x21, x10
    b.hs L10_21
L10_20:
    ldr x9, [sp, #16]
    sub x10, x29, #544
    str x9, [x10]
    ldr x0, [sp, #16]
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L10_43
    b L10_44
L10_44:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L10_43:
    b L10_46
L10_45:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L10_46:
    ldr x15, [x24]
    mov x0, x20
    mov x1, x14
    movn x2, #0
    ldr x3, [sp, #24]
    mov x4, x15
    movz x5, #1
    bl _objc_msgSend
    mov x22, x0
    cbnz x22, L10_22
    b L10_23
L10_22:
    b L10_24
L10_23:
    b L10_21
L10_25:
L10_24:
    sub x10, x29, #544
    str x25, [x10]
    mov x0, x25
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L10_47
    b L10_48
L10_48:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L10_47:
    b L10_50
L10_49:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L10_50:
    mov x0, x20
    mov x1, x14
    mov x2, x22
    bl _objc_msgSend
    add x15, x21, #1
    ldr x23, [x26]
    mov x10, #0
    cmp x23, x10
    cset w23, hi
    cbnz w23, L10_56
    b L10_29
L10_56:
    mov w14, w23
    b L10_30
L10_29:
    ldrb w14, [x27]
L10_30:
    and w21, w14, #255
    cbnz w21, L10_57
    b L10_31
L10_57:
    mov w14, w21
    b L10_32
L10_31:
    ldrb w14, [x28]
L10_32:
    and w21, w14, #255
    cbnz w21, L10_26
    b L10_27
L10_26:
    b L10_21
L10_33:
    b L10_28
L10_27:
L10_28:
    mov x21, x15
    b L10_19
L10_21:
    adrp x14, l_text_226@PAGE
    add x14, x14, l_text_226@PAGEOFF
    sub x10, x29, #544
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L10_51
    b L10_52
L10_52:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L10_51:
    b L10_54
L10_53:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L10_54:
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    ldr x0, [sp, #8]
    bl _objc_autoreleasePoolPop
L10_55:
    mov x0, x19
    sub x8, x29, #496
    bl _lb_window_9pop_event
    sub x14, x29, #496
    sub x20, x29, #200
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    add x14, x20, #88
    mov x9, #0
    strb w9, [x14]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #96
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #576]
    ldr x20, [sp, #568]
    ldr x21, [sp, #560]
    ldr x22, [sp, #552]
    ldr x23, [sp, #544]
    ldr x24, [sp, #536]
    ldr x25, [sp, #528]
    ldr x26, [sp, #520]
    ldr x27, [sp, #512]
    ldr x28, [sp, #504]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_9:
    adrp x0, l_text_9@PAGE
    add x0, x0, l_text_9@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_Window_destroy
_lb_window_Window_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    sub x16, x29, #40
    str x0, [x16]
    sub x9, x29, #40
    ldr x19, [x9]
    ldr x20, [x19]
    cbnz x20, L11_1
    b L11_2
L11_1:
    b L11_3
L11_2:
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_4:
L11_3:
    sub x8, x29, #96
    bl _lb_window_12check_thread
    sub x15, x29, #96
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L11_8
    b L11_7
L11_8:
    sub x14, x29, #64
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L11_5
L11_7:
    b L11_6
L11_5:
    adrp x14, l_text_10@PAGE
    add x14, x14, l_text_10@PAGEOFF
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #43
    str x9, [x14]
    adrp x14, l_text_11@PAGE
    add x14, x14, l_text_11@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
L11_6:
    mov x9, #0
    str x9, [x19]
    mov x0, x20
    bl _lb_window_11mac_destroy
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_Window_checked
_lb_window_Window_checked:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #112]
    str x20, [sp, #104]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
    ldr x19, [x9]
    sub x8, x29, #120
    bl _lb_window_12check_thread
    sub x15, x29, #120
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L12_2
    b L12_1
L12_2:
    sub x19, x29, #80
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
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
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_3:
L12_1:
    ldr x14, [x19]
    cbnz x14, L12_4
    b L12_5
L12_4:
    b L12_6
L12_5:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_window_closed@PAGE
    add x15, x15, _lb_window_closed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_12@PAGE
    add x15, x15, l_text_12@PAGEOFF
    sub x20, x29, #136
    str x15, [x20]
    add x15, x20, #8
    movz x9, #20
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_7:
L12_6:
    sub x15, x29, #80
    str x14, [x15]
    add x19, x15, #32
    mov x9, #0
    strb w9, [x19]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_8:
    adrp x0, l_text_13@PAGE
    add x0, x0, l_text_13@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_12check_thread
_lb_window_12check_thread:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    adrp x14, _lb_platform_macos@PAGE
    add x14, x14, _lb_platform_macos@PAGEOFF
    ldrb w14, [x14]
    cbnz w14, L13_9
    b L13_17
L13_17:
    mov w15, w14
    b L13_10
L13_9:
    adrp x14, _lb_platform_arm64@PAGE
    add x14, x14, _lb_platform_arm64@PAGEOFF
    ldrb w15, [x14]
L13_10:
    and w14, w15, #255
    cbnz w14, L13_18
    b L13_11
L13_18:
    mov w15, w14
    b L13_12
L13_11:
    adrp x14, _lb_platform_windows@PAGE
    add x14, x14, _lb_platform_windows@PAGEOFF
    ldrb w14, [x14]
    cbnz w14, L13_13
    b L13_19
L13_19:
    mov w15, w14
    b L13_14
L13_13:
    adrp x14, _lb_platform_6x86_64@PAGE
    add x14, x14, _lb_platform_6x86_64@PAGEOFF
    ldrb w15, [x14]
L13_14:
    and w14, w15, #255
    mov w15, w14
L13_12:
    and w14, w15, #255
    and w14, w14, #255
    sub x10, x29, #104
    str w14, [x10]
    b L13_16
L13_15:
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L13_16:
    mov x10, #0
    cmp w14, w10
    b.ne L13_2
L13_1:
    sub x19, x29, #64
    adrp x14, _lb_window_unsupported@PAGE
    add x14, x14, _lb_window_unsupported@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_14@PAGE
    add x14, x14, l_text_14@PAGEOFF
    sub x15, x29, #80
    str x14, [x15]
    add x14, x15, #8
    movz x9, #50
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
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_4:
    b L13_3
L13_2:
L13_3:
    bl _pthread_main_np
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L13_6
L13_5:
    sub x19, x29, #64
    adrp x14, _lb_window_12wrong_thread@PAGE
    add x14, x14, _lb_window_12wrong_thread@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_15@PAGE
    add x14, x14, l_text_15@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #41
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
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_8:
    b L13_7
L13_6:
L13_7:
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

    .p2align 2
    .globl _lb_window_12check_extent
_lb_window_12check_extent:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    sub x16, x29, #80
    str w0, [x16]
    sub x16, x29, #96
    str w1, [x16]
    sub x14, x29, #80
    ldr w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w15, eq
    cbnz w15, L14_11
    b L14_4
L14_11:
    mov w19, w15
    b L14_5
L14_4:
    sub x15, x29, #96
    ldr w15, [x15]
    mov x10, #0
    cmp w15, w10
    cset w19, eq
L14_5:
    and w15, w19, #255
    cbnz w15, L14_12
    b L14_6
L14_12:
    mov w14, w15
    b L14_7
L14_6:
    movz x10, #10000
    cmp w14, w10
    cset w15, hi
    mov w14, w15
L14_7:
    and w15, w14, #255
    cbnz w15, L14_13
    b L14_8
L14_13:
    mov w14, w15
    b L14_9
L14_8:
    sub x14, x29, #96
    ldr w14, [x14]
    movz x10, #10000
    cmp w14, w10
    cset w14, hi
L14_9:
    and w15, w14, #255
    cbnz w15, L14_1
    b L14_2
L14_1:
    sub x19, x29, #64
    adrp x14, _lb_window_15invalid_options@PAGE
    add x14, x14, _lb_window_15invalid_options@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_16@PAGE
    add x14, x14, l_text_16@PAGEOFF
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #52
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
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L14_10:
    b L14_3
L14_2:
L14_3:
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

    .p2align 2
    .globl _lb_window_11push_scalar
_lb_window_11push_scalar:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    str x21, [sp, #88]
    sub x16, x29, #56
    str x0, [x16]
    sub x16, x29, #72
    str w1, [x16]
    sub x14, x29, #72
    ldr w19, [x14]
    movz x10, #32
    cmp w19, w10
    cset w14, hs
    cbnz w14, L15_4
    b L15_12
L15_12:
    mov w15, w14
    b L15_5
L15_4:
    movz x10, #127
    cmp w19, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L15_5:
    and w14, w15, #255
    cbnz w14, L15_6
    b L15_13
L15_13:
    mov w15, w14
    b L15_7
L15_6:
    movz x10, #65535
    movk x10, #16, lsl #16
    cmp w19, w10
    cset w15, ls
L15_7:
    and w14, w15, #255
    cbnz w14, L15_8
    b L15_14
L15_14:
    mov w15, w14
    b L15_9
L15_8:
    movz x10, #55296
    cmp w19, w10
    cset w14, hs
    cbnz w14, L15_10
    b L15_15
L15_15:
    mov w15, w14
    b L15_11
L15_10:
    movz x10, #57343
    cmp w19, w10
    cset w15, ls
L15_11:
    and w14, w15, #255
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov w15, w14
L15_9:
    and w14, w15, #255
    cbnz w14, L15_1
    b L15_2
L15_1:
    sub x14, x29, #56
    ldr x20, [x14]
    sub x21, x29, #128
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    movz x9, #13
    strb w9, [x21]
    add x14, x21, #52
    str w19, [x14]
    mov x0, x20
    mov x9, x21
    mov x1, x9
    bl _lb_window_10push_event
    b L15_3
L15_2:
L15_3:
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_10push_utf16
_lb_window_10push_utf16:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    str x20, [sp, #48]
    str x21, [sp, #40]
    sub x16, x29, #56
    str x0, [x16]
    sub x16, x29, #72
    str w1, [x16]
    sub x14, x29, #72
    ldrh w19, [x14]
    movz x10, #55296
    cmp w19, w10
    cset w14, hs
    cbnz w14, L16_4
    b L16_22
L16_22:
    mov w15, w14
    b L16_5
L16_4:
    movz x10, #56319
    cmp w19, w10
    cset w15, ls
L16_5:
    and w14, w15, #255
    cbnz w14, L16_1
    b L16_2
L16_1:
    sub x14, x29, #56
    ldr x14, [x14]
    movz x10, #14382
    add x20, x14, x10
    ldrh w15, [x20]
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L16_7
L16_6:
    mov x0, x14
    movz x1, #65533
    bl _lb_window_11push_scalar
    b L16_8
L16_7:
L16_8:
    strh w19, [x20]
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_9:
    b L16_3
L16_2:
L16_3:
    movz x10, #56320
    cmp w19, w10
    cset w14, hs
    cbnz w14, L16_13
    b L16_23
L16_23:
    mov w15, w14
    b L16_14
L16_13:
    movz x10, #57343
    cmp w19, w10
    cset w15, ls
L16_14:
    and w14, w15, #255
    cbnz w14, L16_10
    b L16_11
L16_10:
    sub x14, x29, #56
    ldr x14, [x14]
    movz x10, #14382
    add x15, x14, x10
    ldrh w20, [x15]
    mov x9, #0
    strh w9, [x15]
    and w15, w20, #65535
    mov x10, #0
    cmp w15, w10
    cset w20, eq
    mov x10, #0
    cmp w20, w10
    b.ne L16_16
L16_15:
    mov w20, w15
    mov w9, w20
    movz x10, #55296
    subs w9, w9, w10
    b.cs 1f
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w20, w9
    mov w9, w20
    movz x10, #1024
    mov w9, w9
    mov w10, w10
    mul x9, x9, x10
    cmp x9, w9, uxtw
    b.eq 1f
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w20, w9
    mov w9, w20
    movz x10, #1, lsl #16
    adds w9, w9, w10
    b.cc 1f
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w20, w9
    mov w21, w19
    mov w9, w20
    mov w10, w21
    adds w9, w9, w10
    b.cc 1f
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w20, w9
    mov w9, w20
    movz x10, #56320
    subs w9, w9, w10
    b.cs 1f
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w20, w9
    b L16_17
L16_16:
    movz x9, #65533
    mov w20, w9
L16_17:
    mov x0, x14
    mov x1, x20
    bl _lb_window_11push_scalar
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L16_18:
    b L16_12
L16_11:
L16_12:
    sub x14, x29, #56
    ldr x20, [x14]
    movz x10, #14382
    add x14, x20, x10
    ldrh w15, [x14]
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L16_20
L16_19:
    mov x9, #0
    strh w9, [x14]
    mov x0, x20
    movz x1, #65533
    bl _lb_window_11push_scalar
    b L16_21
L16_20:
L16_21:
    mov w14, w19
    mov x0, x20
    mov x1, x14
    bl _lb_window_11push_scalar
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_10push_event
_lb_window_10push_event:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    str x21, [sp, #72]
    sub x16, x29, #56
    str x0, [x16]
    sub x16, x29, #112
    str x1, [x16]
    sub x0, x29, #112
    ldr x1, [x0]
    movz x2, #56
    bl _memcpy
    sub x14, x29, #56
    ldr x14, [x14]
    movz x10, #14368
    add x19, x14, x10
    ldr x15, [x19]
    movz x10, #256
    cmp x15, x10
    b.ne L17_2
L17_1:
    movz x10, #14360
    add x15, x14, x10
    mov x9, #0
    str x9, [x15]
    mov x9, #0
    str x9, [x19]
    movz x10, #14376
    add x15, x14, x10
    movz x9, #1
    strb w9, [x15]
    b L17_3
L17_2:
L17_3:
    movz x10, #14360
    add x15, x14, x10
    ldr x15, [x15]
    ldr x20, [x19]
    mov x9, x15
    mov x10, x20
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_18@PAGE
    add x0, x0, l_text_18@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
L17_5:
    movz x10, #256
    udiv x11, x15, x10
    msub x20, x11, x10, x15
    add x21, x14, #24
    movz x10, #256
    cmp x20, x10
    b.lo 1f
    adrp x0, l_text_18@PAGE
    add x0, x0, l_text_18@PAGEOFF
    adrp x1, l_text_267@PAGE
    add x1, x1, l_text_267@PAGEOFF
    bl _lb_core_7trap_at
1:
    movz x10, #56
    mul x20, x20, x10
    add x20, x21, x20
    sub x21, x29, #112
    mov x10, x21
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    ldr x20, [x19]
    mov x9, x20
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_20@PAGE
    add x0, x0, l_text_20@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x20, x9
    str x20, [x19]
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_9pop_event
_lb_window_9pop_event:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #576
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #544]
    str x20, [sp, #536]
    str x21, [sp, #528]
    str x22, [sp, #520]
    str x23, [sp, #512]
    sub x16, x29, #144
    str x0, [x16]
    sub x14, x29, #144
    ldr x14, [x14]
    movz x10, #14377
    add x15, x14, x10
    ldrb w19, [x15]
    cbnz w19, L18_1
    b L18_2
L18_1:
    mov x9, #0
    strb w9, [x15]
    sub x19, x29, #200
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    movz x9, #1
    strb w9, [x19]
    sub x20, x29, #264
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    add x14, x20, #56
    movz x9, #1
    strb w9, [x14]
    sub x19, x29, #128
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #544]
    ldr x20, [sp, #536]
    ldr x21, [sp, #528]
    ldr x22, [sp, #520]
    ldr x23, [sp, #512]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L18_2:
L18_3:
    movz x10, #14376
    add x15, x14, x10
    ldrb w19, [x15]
    cbnz w19, L18_5
    b L18_6
L18_5:
    mov x9, #0
    strb w9, [x15]
    sub x19, x29, #320
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    movz x9, #12
    strb w9, [x19]
    sub x20, x29, #384
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    add x14, x20, #56
    movz x9, #1
    strb w9, [x14]
    sub x19, x29, #128
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #544]
    ldr x20, [sp, #536]
    ldr x21, [sp, #528]
    ldr x22, [sp, #520]
    ldr x23, [sp, #512]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L18_6:
L18_7:
    movz x10, #14368
    add x19, x14, x10
    ldr x15, [x19]
    mov x10, #0
    cmp x15, x10
    b.ne L18_10
L18_9:
    sub x19, x29, #448
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    sub x20, x29, #128
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #544]
    ldr x20, [sp, #536]
    ldr x21, [sp, #528]
    ldr x22, [sp, #520]
    ldr x23, [sp, #512]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L18_10:
L18_11:
    sub x20, x29, #504
    movz x10, #14360
    add x21, x14, x10
    ldr x15, [x21]
    add x22, x14, #24
    movz x10, #256
    cmp x15, x10
    b.lo 1f
    adrp x0, l_text_21@PAGE
    add x0, x0, l_text_21@PAGEOFF
    adrp x1, l_text_267@PAGE
    add x1, x1, l_text_267@PAGEOFF
    bl _lb_core_7trap_at
1:
    movz x10, #56
    mul x15, x15, x10
    add x15, x22, x15
    mov x10, x15
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    ldr x15, [x21]
    mov x9, x15
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_22@PAGE
    add x0, x0, l_text_22@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
L18_14:
    movz x10, #256
    udiv x11, x15, x10
    msub x14, x11, x10, x15
    str x14, [x21]
    ldr x14, [x19]
    mov x9, x14
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_23@PAGE
    add x0, x0, l_text_23@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    str x14, [x19]
    sub x22, x29, #568
    mov x10, x20
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    add x14, x22, #56
    movz x9, #1
    strb w9, [x14]
    sub x23, x29, #128
    mov x10, x22
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldp x12, x13, [x10, #48]
    stp x12, x13, [x11, #48]
    mov x1, x23
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #64
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #544]
    ldr x20, [sp, #536]
    ldr x21, [sp, #528]
    ldr x22, [sp, #520]
    ldr x23, [sp, #512]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_Presentation_size
_lb_window_Presentation_size:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #208
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #176]
    str x20, [sp, #168]
    sub x16, x29, #120
    str x0, [x16]
    sub x9, x29, #120
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #160
    bl _lb_window_Presentation_checked
    sub x15, x29, #160
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L19_2
    b L19_1
L19_2:
    add x14, x15, #8
    sub x19, x29, #112
    add x20, x19, #40
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #64
    movz x9, #1
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L19_3:
L19_1:
    ldr x14, [x15]
    mov x0, x14
    sub x8, x29, #200
    bl _lb_window_8mac_size
    sub x14, x29, #200
    sub x19, x29, #112
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    add x14, x19, #64
    mov x9, #0
    strb w9, [x14]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #72
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #176]
    ldr x20, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L19_4:
    adrp x0, l_text_25@PAGE
    add x0, x0, l_text_25@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_Presentation_visible
_lb_window_Presentation_visible:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #144]
    str x20, [sp, #136]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #128
    bl _lb_window_Presentation_checked
    sub x15, x29, #128
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L20_2
    b L20_1
L20_2:
    add x14, x15, #8
    sub x19, x29, #80
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L20_3:
L20_1:
    ldr x14, [x15]
    ldr x19, [x14]
    sub x10, x29, #144
    str x19, [x10]
    cbnz x19, L20_7
    b L20_8
L20_7:
    b L20_9
L20_8:
    adrp x14, l_text_41@PAGE
    add x14, x14, l_text_41@PAGEOFF
    sub x15, x29, #160
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_42@PAGE
    add x14, x14, l_text_42@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L20_9:
    b L20_11
L20_10:
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L20_11:
    adrp x14, l_text_26@PAGE
    add x14, x14, l_text_26@PAGEOFF
    sub x10, x29, #176
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L20_12
    b L20_13
L20_13:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L20_12:
    b L20_15
L20_14:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L20_15:
    mov x0, x19
    mov x1, x14
    bl _objc_msgSend
    mov w15, w0
    cbnz w15, L20_4
    b L20_20
L20_20:
    mov w14, w15
    b L20_5
L20_4:
    adrp x14, l_text_27@PAGE
    add x14, x14, l_text_27@PAGEOFF
    sub x10, x29, #176
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L20_16
    b L20_17
L20_17:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L20_16:
    b L20_19
L20_18:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L20_19:
    mov x0, x19
    mov x1, x14
    bl _objc_msgSend
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov w14, w15
L20_5:
    and w15, w14, #255
    sub x19, x29, #80
    strb w15, [x19]
    add x15, x19, #32
    mov x9, #0
    strb w9, [x15]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L20_6:
    adrp x0, l_text_28@PAGE
    add x0, x0, l_text_28@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_Presentation_10macos_view
_lb_window_Presentation_10macos_view:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    str x20, [sp, #120]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #128
    bl _lb_window_Presentation_checked
    sub x15, x29, #128
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L21_2
    b L21_1
L21_2:
    add x14, x15, #8
    sub x19, x29, #80
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L21_3:
L21_1:
    ldr x14, [x15]
    add x14, x14, #8
    ldr x14, [x14]
    sub x10, x29, #144
    str x14, [x10]
    cbnz x14, L21_5
    b L21_6
L21_5:
    b L21_7
L21_6:
    adrp x14, l_text_41@PAGE
    add x14, x14, l_text_41@PAGEOFF
    sub x15, x29, #160
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_42@PAGE
    add x14, x14, l_text_42@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L21_7:
    b L21_9
L21_8:
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L21_9:
    sub x15, x29, #80
    str x14, [x15]
    add x19, x15, #32
    mov x9, #0
    strb w9, [x19]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L21_4:
    adrp x0, l_text_29@PAGE
    add x0, x0, l_text_29@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_Presentation_14windows_handle
_lb_window_Presentation_14windows_handle:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #112]
    str x20, [sp, #104]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
    ldr x14, [x9]
    mov x0, x14
    sub x8, x29, #128
    bl _lb_window_Presentation_checked
    sub x15, x29, #128
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L22_2
    b L22_1
L22_2:
    add x14, x15, #8
    sub x19, x29, #80
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
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L22_3:
L22_1:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_window_unsupported@PAGE
    add x15, x15, _lb_window_unsupported@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_30@PAGE
    add x15, x15, l_text_30@PAGEOFF
    sub x20, x29, #144
    str x15, [x20]
    add x15, x20, #8
    movz x9, #33
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    ldr x19, [sp, #112]
    ldr x20, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L22_4:
    adrp x0, l_text_31@PAGE
    add x0, x0, l_text_31@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_Presentation_destroy
_lb_window_Presentation_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    sub x16, x29, #40
    str x0, [x16]
    sub x9, x29, #40
    ldr x19, [x9]
    ldr x20, [x19]
    cbnz x20, L23_1
    b L23_2
L23_1:
    b L23_3
L23_2:
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L23_4:
L23_3:
    sub x8, x29, #96
    bl _lb_window_12check_thread
    sub x15, x29, #96
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L23_8
    b L23_7
L23_8:
    sub x14, x29, #64
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    b L23_5
L23_7:
    b L23_6
L23_5:
    adrp x14, l_text_32@PAGE
    add x14, x14, l_text_32@PAGEOFF
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #55
    str x9, [x14]
    adrp x14, l_text_33@PAGE
    add x14, x14, l_text_33@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
L23_6:
    mov x9, #0
    str x9, [x19]
    movz x10, #14378
    add x14, x20, x10
    mov x9, #0
    strb w9, [x14]
    movz x10, #14379
    add x14, x20, x10
    ldrb w14, [x14]
    cbnz w14, L23_9
    b L23_10
L23_9:
    mov x0, x20
    bl _lb_window_8mac_free
    b L23_11
L23_10:
L23_11:
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_Presentation_checked
_lb_window_Presentation_checked:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    str x20, [sp, #120]
    sub x16, x29, #88
    str x0, [x16]
    sub x9, x29, #88
    ldr x19, [x9]
    sub x8, x29, #120
    bl _lb_window_12check_thread
    sub x15, x29, #120
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L24_2
    b L24_1
L24_2:
    sub x19, x29, #80
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L24_3:
L24_1:
    ldr x14, [x19]
    cbnz x14, L24_4
    b L24_5
L24_4:
    b L24_6
L24_5:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_window_closed@PAGE
    add x15, x15, _lb_window_closed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_34@PAGE
    add x15, x15, l_text_34@PAGEOFF
    sub x20, x29, #136
    str x15, [x20]
    add x15, x20, #8
    movz x9, #32
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L24_7:
L24_6:
    movz x10, #14379
    add x15, x14, x10
    ldrb w15, [x15]
    cbnz w15, L24_8
    b L24_9
L24_8:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_window_closed@PAGE
    add x15, x15, _lb_window_closed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_35@PAGE
    add x15, x15, l_text_35@PAGEOFF
    sub x20, x29, #152
    str x15, [x20]
    add x15, x20, #8
    movz x9, #33
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L24_11:
    b L24_10
L24_9:
L24_10:
    sub x15, x29, #80
    str x14, [x15]
    add x19, x15, #32
    mov x9, #0
    strb w9, [x19]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L24_12:
    adrp x0, l_text_36@PAGE
    add x0, x0, l_text_36@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_12native_class
_lb_window_12native_class:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    str x20, [sp, #72]
    sub x16, x29, #96
    str x0, [x16]
    sub x14, x29, #96
    ldr x14, [x14]
    mov x0, x14
    bl _objc_getClass
    mov x14, x0
    cbnz x14, L25_1
    b L25_2
L25_1:
    b L25_3
L25_2:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_window_failed@PAGE
    add x15, x15, _lb_window_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_39@PAGE
    add x15, x15, l_text_39@PAGEOFF
    sub x20, x29, #112
    str x15, [x20]
    add x15, x20, #8
    movz x9, #66
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L25_4:
L25_3:
    sub x15, x29, #80
    str x14, [x15]
    add x19, x15, #32
    mov x9, #0
    strb w9, [x19]
    mov x1, x15
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    ldr x20, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L25_5:
    adrp x0, l_text_40@PAGE
    add x0, x0, l_text_40@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_9get_state
_lb_window_9get_state:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    sub x16, x29, #40
    str x0, [x16]
    sub x19, x29, #48
    mov x11, x19
    str xzr, [x11, #0]
    sub x14, x29, #40
    ldr x14, [x14]
    adrp x15, l_text_43@PAGE
    add x15, x15, l_text_43@PAGEOFF
    mov x0, x14
    mov x1, x15
    mov x2, x19
    bl _object_getInstanceVariable
    mov x14, x0
    ldr x14, [x19]
    cbnz x14, L26_1
    b L26_2
L26_1:
    b L26_3
L26_2:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L26_4:
L26_3:
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L26_5:
    adrp x0, l_text_44@PAGE
    add x0, x0, l_text_44@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_10add_method
_lb_window_10add_method:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #144]
    str x20, [sp, #136]
    sub x16, x29, #88
    str x0, [x16]
    sub x16, x29, #104
    str x1, [x16]
    sub x16, x29, #120
    str x2, [x16]
    sub x16, x29, #136
    str x3, [x16]
    sub x14, x29, #88
    ldr x19, [x14]
    sub x14, x29, #104
    ldr x14, [x14]
    sub x10, x29, #168
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L27_5
    b L27_6
L27_6:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L27_5:
    b L27_8
L27_7:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L27_8:
    sub x15, x29, #120
    ldr x15, [x15]
    sub x20, x29, #136
    ldr x20, [x20]
    mov x0, x19
    mov x1, x14
    mov x2, x15
    mov x3, x20
    bl _class_addMethod
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    b.ne L27_2
L27_1:
    sub x19, x29, #72
    adrp x14, _lb_window_failed@PAGE
    add x14, x14, _lb_window_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_45@PAGE
    add x14, x14, l_text_45@PAGEOFF
    sub x15, x29, #152
    str x14, [x15]
    add x14, x15, #8
    movz x9, #43
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L27_4:
    b L27_3
L27_2:
L27_3:
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_14close_callback
_lb_window_14close_callback:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x16, x29, #64
    str x2, [x16]
    sub x14, x29, #48
    sub x14, x29, #64
    sub x14, x29, #32
    ldr x14, [x14]
    mov x0, x14
    bl _lb_window_9get_state
    mov x14, x0
    cbnz x14, L28_4
    b L28_2
L28_4:
L28_1:
    movz x10, #14377
    add x15, x14, x10
    movz x9, #1
    strb w9, [x15]
    b L28_3
L28_2:
L28_3:
    mov x9, #0
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L28_5:
    adrp x0, l_text_46@PAGE
    add x0, x0, l_text_46@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_15resize_callback
_lb_window_15resize_callback:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    str x19, [sp, #120]
    str x20, [sp, #112]
    sub x16, x29, #48
    str x0, [x16]
    sub x16, x29, #64
    str x1, [x16]
    sub x16, x29, #80
    str x2, [x16]
    sub x14, x29, #64
    sub x14, x29, #80
    sub x14, x29, #48
    ldr x14, [x14]
    mov x0, x14
    bl _lb_window_9get_state
    mov x19, x0
    cbnz x19, L29_4
    b L29_2
L29_4:
L29_1:
    sub x20, x29, #136
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    movz x9, #2
    strb w9, [x20]
    mov x0, x19
    mov x9, x20
    mov x1, x9
    bl _lb_window_10push_event
    b L29_3
L29_2:
L29_3:
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_14focus_callback
_lb_window_14focus_callback:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    str x19, [sp, #136]
    str x20, [sp, #128]
    str x21, [sp, #120]
    sub x16, x29, #56
    str x0, [x16]
    sub x16, x29, #72
    str x1, [x16]
    sub x16, x29, #88
    str x2, [x16]
    sub x14, x29, #88
    sub x14, x29, #56
    ldr x14, [x14]
    mov x0, x14
    bl _lb_window_9get_state
    mov x19, x0
    cbnz x19, L30_4
    b L30_2
L30_4:
L30_1:
    sub x14, x29, #72
    ldr x20, [x14]
    adrp x14, l_text_47@PAGE
    add x14, x14, l_text_47@PAGEOFF
    sub x10, x29, #160
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L30_11
    b L30_12
L30_12:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L30_11:
    b L30_14
L30_13:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L30_14:
    cmp x20, x14
    cset w15, eq
    and w21, w15, #255
    mov x10, #0
    cmp w21, w10
    b.ne L30_6
L30_5:
    mov x0, x19
    bl _lb_window_16mac_clear_marked
    movz x10, #14401
    add x14, x19, x10
    mov x9, #0
    strb w9, [x14]
    movz x10, #14400
    add x14, x19, x10
    mov x9, #0
    strb w9, [x14]
    b L30_7
L30_6:
L30_7:
    sub x20, x29, #144
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    cbnz w21, L30_8
    b L30_9
L30_8:
    movz x9, #3
    mov w14, w9
    b L30_10
L30_9:
    movz x9, #4
    mov w14, w9
L30_10:
    and w15, w14, #255
    strb w15, [x20]
    mov x0, x19
    mov x9, x20
    mov x1, x9
    bl _lb_window_10push_event
    b L30_3
L30_2:
L30_3:
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_12view_accepts
_lb_window_12view_accepts:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x14, x29, #32
    sub x14, x29, #48
    movz x9, #1
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L31_1:
    adrp x0, l_text_48@PAGE
    add x0, x0, l_text_48@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_modifiers
_lb_window_modifiers:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    sub x16, x29, #56
    str x0, [x16]
    sub x19, x29, #61
    mov x11, x19
    str wzr, [x11, #0]
    strb wzr, [x11, #4]
    sub x14, x29, #56
    ldr x14, [x14]
L32_2:
    movz x10, #2, lsl #16
    and x15, x14, x10
    mov x10, #0
    cmp x15, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    strb w15, [x19]
L32_4:
    movz x10, #4, lsl #16
    and x15, x14, x10
    mov x10, #0
    cmp x15, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    add x20, x19, #1
    strb w15, [x20]
L32_6:
    movz x10, #8, lsl #16
    and x15, x14, x10
    mov x10, #0
    cmp x15, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    add x20, x19, #2
    strb w15, [x20]
L32_8:
    movz x10, #16, lsl #16
    and x15, x14, x10
    mov x10, #0
    cmp x15, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    add x20, x19, #3
    strb w15, [x20]
L32_10:
    movz x10, #1, lsl #16
    and x15, x14, x10
    mov x10, #0
    cmp x15, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    add x20, x19, #4
    strb w15, [x20]
    sub x20, x29, #37
    mov x10, x19
    mov x11, x20
    ldr w12, [x10, #0]
    str w12, [x11, #0]
    ldrb w12, [x10, #4]
    strb w12, [x11, #4]
    mov x16, x20
    ldrb w17, [x16, #4]
    ldr w0, [x16, #0]
    lsl x17, x17, #32
    orr x0, x0, x17
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_12key_callback
_lb_window_12key_callback:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #288
    str x19, [sp, #264]
    str x20, [sp, #256]
    str x21, [sp, #248]
    str x22, [sp, #240]
    str x23, [sp, #232]
    str x24, [sp, #224]
    str x25, [sp, #216]
    str x26, [sp, #208]
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #112
    str x1, [x16]
    sub x16, x29, #128
    str x2, [x16]
    sub x14, x29, #112
    sub x14, x29, #96
    ldr x19, [x14]
    mov x0, x19
    bl _lb_window_9get_state
    mov x20, x0
    cbnz x20, L33_1
    b L33_2
L33_1:
    b L33_3
L33_2:
    ldr x19, [sp, #264]
    ldr x20, [sp, #256]
    ldr x21, [sp, #248]
    ldr x22, [sp, #240]
    ldr x23, [sp, #232]
    ldr x24, [sp, #224]
    ldr x25, [sp, #216]
    ldr x26, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L33_4:
L33_3:
    sub x14, x29, #128
    ldr x21, [x14]
    adrp x14, l_text_51@PAGE
    add x14, x14, l_text_51@PAGEOFF
    sub x10, x29, #264
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L33_33
    b L33_34
L33_34:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L33_33:
    b L33_36
L33_35:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L33_36:
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    mov x22, x0
    sub x23, x29, #184
    sub x24, x29, #240
    mov x11, x24
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    movz x9, #7
    strb w9, [x24]
    mov x10, x24
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    add x24, x23, #4
    adrp x15, l_text_52@PAGE
    add x15, x15, l_text_52@PAGEOFF
    sub x10, x29, #264
    str x15, [x10]
    mov x0, x15
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L33_37
    b L33_38
L33_38:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L33_37:
    b L33_40
L33_39:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L33_40:
    mov x0, x21
    mov x1, x15
    bl _objc_msgSend
    mov x14, x0
    mov x0, x14
    bl _lb_window_modifiers
    sub x16, x29, #245
    str w0, [x16, #0]
    lsr x17, x0, #32
    strb w17, [x16, #4]
    sub x14, x29, #245
    mov x10, x14
    mov x11, x24
    ldr w12, [x10, #0]
    str w12, [x11, #0]
    ldrb w12, [x10, #4]
    strb w12, [x11, #4]
    add x25, x23, #2
    adrp x14, l_text_53@PAGE
    add x14, x14, l_text_53@PAGEOFF
    sub x10, x29, #264
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L33_41
    b L33_42
L33_42:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L33_41:
    b L33_44
L33_43:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L33_44:
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    mov w15, w0
    sub x10, x29, #280
    str w15, [x10]
    sub x15, x29, #280
    ldrh w15, [x15]
    movz x10, #128
    cmp w15, w10
    b.lo L33_46
L33_45:
    mov x9, #0
    sub x10, x29, #288
    str w9, [x10]
    mov x9, #0
    mov w14, w9
    b L33_50
L33_48:
    b L33_47
L33_46:
L33_47:
    mov w14, w15
    adrp x26, _lb_window_13key_positions@PAGE
    add x26, x26, _lb_window_13key_positions@PAGEOFF
    lsl x14, x14, #1
    add x14, x26, x14
    ldrh w14, [x14]
    mov w14, w14
    and w14, w14, #65535
    and w14, w14, #65535
    sub x10, x29, #288
    str w14, [x10]
    b L33_50
L33_49:
    adrp x0, l_text_65@PAGE
    add x0, x0, l_text_65@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L33_50:
    strh w14, [x25]
    movz x10, #10
    cmp x22, x10
    cset w26, eq
    cbnz w26, L33_63
    b L33_8
L33_63:
    mov w14, w26
    b L33_9
L33_8:
    movz x10, #11
    cmp x22, x10
    cset w14, eq
L33_9:
    and w15, w14, #255
    cbnz w15, L33_5
    b L33_6
L33_5:
    cbnz w26, L33_10
    b L33_11
L33_10:
    movz x9, #5
    mov w14, w9
    b L33_12
L33_11:
    movz x9, #6
    mov w14, w9
L33_12:
    and w15, w14, #255
    strb w15, [x23]
    add x22, x23, #9
    adrp x15, l_text_54@PAGE
    add x15, x15, l_text_54@PAGEOFF
    sub x10, x29, #264
    str x15, [x10]
    mov x0, x15
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L33_51
    b L33_52
L33_52:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L33_51:
    b L33_54
L33_53:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L33_54:
    mov x0, x21
    mov x1, x15
    bl _objc_msgSend
    mov w14, w0
    strb w14, [x22]
    b L33_7
L33_6:
L33_7:
    movz x10, #14408
    add x14, x20, x10
    ldr x14, [x14]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    and w14, w14, #255
    mov x10, #0
    cmp w14, w10
    b.ne L33_14
L33_13:
    mov x0, x20
    mov x9, x23
    mov x1, x9
    bl _lb_window_10push_event
    b L33_15
L33_14:
L33_15:
    cbnz w26, L33_19
    b L33_64
L33_64:
    mov w14, w26
    b L33_20
L33_19:
    movz x10, #14380
    add x14, x20, x10
    ldrb w14, [x14]
L33_20:
    and w15, w14, #255
    cbnz w15, L33_21
    b L33_65
L33_65:
    mov w14, w15
    b L33_22
L33_21:
    add x14, x24, #3
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
L33_22:
    and w15, w14, #255
    cbnz w15, L33_23
    b L33_66
L33_66:
    mov w14, w15
    b L33_24
L33_23:
    add x14, x24, #1
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
L33_24:
    and w15, w14, #255
    cbnz w15, L33_16
    b L33_17
L33_16:
    adrp x14, l_text_55@PAGE
    add x14, x14, l_text_55@PAGEOFF
    mov x0, x14
    bl _objc_getClass
    mov x20, x0
    cbnz x20, L33_25
    b L33_26
L33_25:
    b L33_27
L33_26:
    ldr x19, [sp, #264]
    ldr x20, [sp, #256]
    ldr x21, [sp, #248]
    ldr x22, [sp, #240]
    ldr x23, [sp, #232]
    ldr x24, [sp, #224]
    ldr x25, [sp, #216]
    ldr x26, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L33_28:
L33_27:
    adrp x14, l_text_56@PAGE
    add x14, x14, l_text_56@PAGEOFF
    sub x10, x29, #264
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L33_55
    b L33_56
L33_56:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L33_55:
    b L33_58
L33_57:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L33_58:
    mov x0, x20
    mov x1, x14
    mov x2, x21
    bl _objc_msgSend
    mov x22, x0
    cbnz x22, L33_29
    b L33_30
L33_29:
    b L33_31
L33_30:
    ldr x19, [sp, #264]
    ldr x20, [sp, #256]
    ldr x21, [sp, #248]
    ldr x22, [sp, #240]
    ldr x23, [sp, #232]
    ldr x24, [sp, #224]
    ldr x25, [sp, #216]
    ldr x26, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L33_32:
L33_31:
    adrp x14, l_text_57@PAGE
    add x14, x14, l_text_57@PAGEOFF
    sub x10, x29, #264
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L33_59
    b L33_60
L33_60:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L33_59:
    b L33_62
L33_61:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L33_62:
    mov x0, x19
    mov x1, x14
    mov x2, x22
    bl _objc_msgSend
    b L33_18
L33_17:
L33_18:
    ldr x19, [sp, #264]
    ldr x20, [sp, #256]
    ldr x21, [sp, #248]
    ldr x22, [sp, #240]
    ldr x23, [sp, #232]
    ldr x24, [sp, #224]
    ldr x25, [sp, #216]
    ldr x26, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_16pointer_callback
_lb_window_16pointer_callback:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #448
    str x19, [sp, #424]
    str x20, [sp, #416]
    str x21, [sp, #408]
    str x22, [sp, #400]
    str x23, [sp, #392]
    str x24, [sp, #384]
    str x25, [sp, #376]
    str x26, [sp, #368]
    str d8, [sp, #360]
    str d9, [sp, #352]
    sub x16, x29, #112
    str x0, [x16]
    sub x16, x29, #128
    str x1, [x16]
    sub x16, x29, #144
    str x2, [x16]
    sub x14, x29, #128
    sub x14, x29, #112
    ldr x19, [x14]
    mov x0, x19
    bl _lb_window_9get_state
    mov x20, x0
    cbnz x20, L34_1
    b L34_2
L34_1:
    b L34_3
L34_2:
    ldr x19, [sp, #424]
    ldr x20, [sp, #416]
    ldr x21, [sp, #408]
    ldr x22, [sp, #400]
    ldr x23, [sp, #392]
    ldr x24, [sp, #384]
    ldr x25, [sp, #376]
    ldr x26, [sp, #368]
    ldr d8, [sp, #360]
    ldr d9, [sp, #352]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L34_4:
L34_3:
    sub x14, x29, #144
    ldr x21, [x14]
    adrp x14, l_text_51@PAGE
    add x14, x14, l_text_51@PAGEOFF
    sub x10, x29, #448
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L34_47
    b L34_48
L34_48:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L34_47:
    b L34_50
L34_49:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L34_50:
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    mov x22, x0
    sub x23, x29, #160
    adrp x15, l_text_58@PAGE
    add x15, x15, l_text_58@PAGEOFF
    sub x10, x29, #448
    str x15, [x10]
    mov x0, x15
    bl _sel_registerName
    mov x24, x0
    cbnz x24, L34_51
    b L34_52
L34_52:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L34_51:
    b L34_54
L34_53:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L34_54:
    adrp x14, l_text_59@PAGE
    add x14, x14, l_text_59@PAGEOFF
    sub x10, x29, #448
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L34_55
    b L34_56
L34_56:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L34_55:
    b L34_58
L34_57:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L34_58:
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    sub x16, x29, #176
    str d0, [x16, #0]
    sub x16, x29, #176
    str d1, [x16, #8]
    sub x15, x29, #176
    mov x9, x15
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    mov x0, x19
    mov x1, x24
    mov x2, #0
    bl _objc_msgSend
    sub x16, x29, #192
    str d0, [x16, #0]
    sub x16, x29, #192
    str d1, [x16, #8]
    sub x15, x29, #192
    mov x10, x15
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x25, x29, #248
    sub x26, x29, #304
    mov x11, x26
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    movz x9, #8
    strb w9, [x26]
    ldr d8, [x23]
    add x15, x26, #16
    str d8, [x15]
    add x15, x23, #8
    ldr d9, [x15]
    add x15, x26, #24
    str d9, [x15]
    mov x10, x26
    mov x11, x25
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    add x26, x25, #4
    adrp x15, l_text_52@PAGE
    add x15, x15, l_text_52@PAGEOFF
    sub x10, x29, #448
    str x15, [x10]
    mov x0, x15
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L34_59
    b L34_60
L34_60:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L34_59:
    b L34_62
L34_61:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L34_62:
    mov x0, x21
    mov x1, x15
    bl _objc_msgSend
    mov x14, x0
    mov x0, x14
    bl _lb_window_modifiers
    sub x16, x29, #309
    str w0, [x16, #0]
    lsr x17, x0, #32
    strb w17, [x16, #4]
    sub x14, x29, #309
    mov x10, x14
    mov x11, x26
    ldr w12, [x10, #0]
    str w12, [x11, #0]
    ldrb w12, [x10, #4]
    strb w12, [x11, #4]
    movz x10, #8
    cmp x22, x10
    b.ne L34_6
L34_5:
    movz x9, #14
    strb w9, [x25]
    b L34_7
L34_6:
    movz x10, #9
    cmp x22, x10
    b.ne L34_9
L34_8:
    movz x10, #14400
    add x14, x20, x10
    mov x9, #0
    strb w9, [x14]
    sub x19, x29, #368
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    movz x9, #15
    strb w9, [x19]
    mov x0, x20
    mov x9, x19
    mov x1, x9
    bl _lb_window_10push_event
    ldr x19, [sp, #424]
    ldr x20, [sp, #416]
    ldr x21, [sp, #408]
    ldr x22, [sp, #400]
    ldr x23, [sp, #392]
    ldr x24, [sp, #384]
    ldr x25, [sp, #376]
    ldr x26, [sp, #368]
    ldr d8, [sp, #360]
    ldr d9, [sp, #352]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L34_11:
    b L34_10
L34_9:
    movz x10, #1
    cmp x22, x10
    cset w14, eq
    cbnz w14, L34_87
    b L34_15
L34_87:
    mov w15, w14
    b L34_16
L34_15:
    movz x10, #3
    cmp x22, x10
    cset w15, eq
L34_16:
    and w14, w15, #255
    cbnz w14, L34_88
    b L34_17
L34_88:
    mov w15, w14
    b L34_18
L34_17:
    movz x10, #25
    cmp x22, x10
    cset w15, eq
L34_18:
    and w14, w15, #255
    cbnz w14, L34_12
    b L34_13
L34_12:
    movz x9, #9
    strb w9, [x25]
    add x22, x25, #12
    adrp x14, l_text_60@PAGE
    add x14, x14, l_text_60@PAGEOFF
    sub x10, x29, #448
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L34_63
    b L34_64
L34_64:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L34_63:
    b L34_66
L34_65:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L34_66:
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    mov x15, x0
    str w15, [x22]
    b L34_14
L34_13:
    movz x10, #2
    cmp x22, x10
    cset w14, eq
    cbnz w14, L34_89
    b L34_22
L34_89:
    mov w15, w14
    b L34_23
L34_22:
    movz x10, #4
    cmp x22, x10
    cset w15, eq
L34_23:
    and w14, w15, #255
    cbnz w14, L34_90
    b L34_24
L34_90:
    mov w15, w14
    b L34_25
L34_24:
    movz x10, #26
    cmp x22, x10
    cset w15, eq
L34_25:
    and w14, w15, #255
    cbnz w14, L34_19
    b L34_20
L34_19:
    movz x9, #10
    strb w9, [x25]
    add x22, x25, #12
    adrp x14, l_text_60@PAGE
    add x14, x14, l_text_60@PAGEOFF
    sub x10, x29, #448
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L34_67
    b L34_68
L34_68:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L34_67:
    b L34_70
L34_69:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L34_70:
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    mov x15, x0
    str w15, [x22]
    b L34_21
L34_20:
    movz x10, #22
    cmp x22, x10
    b.ne L34_27
L34_26:
    movz x9, #11
    strb w9, [x25]
    add x22, x25, #32
    adrp x14, l_text_61@PAGE
    add x14, x14, l_text_61@PAGEOFF
    sub x10, x29, #448
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L34_71
    b L34_72
L34_72:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L34_71:
    b L34_74
L34_73:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L34_74:
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    fmov d24, d0
    str d24, [x22]
    add x23, x25, #40
    adrp x15, l_text_62@PAGE
    add x15, x15, l_text_62@PAGEOFF
    sub x10, x29, #448
    str x15, [x10]
    mov x0, x15
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L34_75
    b L34_76
L34_76:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L34_75:
    b L34_78
L34_77:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L34_78:
    mov x0, x21
    mov x1, x15
    bl _objc_msgSend
    fmov d24, d0
    str d24, [x23]
    add x22, x25, #48
    adrp x14, l_text_63@PAGE
    add x14, x14, l_text_63@PAGEOFF
    sub x10, x29, #448
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L34_79
    b L34_80
L34_80:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L34_79:
    b L34_82
L34_81:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L34_82:
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    mov w15, w0
    cbnz w15, L34_29
    b L34_30
L34_29:
    movz x9, #1
    mov w14, w9
    b L34_31
L34_30:
    mov x9, #0
    mov w14, w9
L34_31:
    and w15, w14, #255
    strb w15, [x22]
    b L34_28
L34_27:
L34_28:
L34_21:
L34_14:
L34_10:
L34_7:
    sub x21, x29, #400
    adrp x14, l_text_64@PAGE
    add x14, x14, l_text_64@PAGEOFF
    sub x10, x29, #448
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L34_83
    b L34_84
L34_84:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L34_83:
    b L34_86
L34_85:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L34_86:
    mov x0, x19
    mov x1, x14
    bl _objc_msgSend
    sub x16, x29, #432
    str d0, [x16, #0]
    sub x16, x29, #432
    str d1, [x16, #8]
    sub x16, x29, #432
    str d2, [x16, #16]
    sub x16, x29, #432
    str d3, [x16, #24]
    sub x15, x29, #432
    mov x10, x15
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    movz x10, #14400
    add x22, x20, x10
    mov x9, #0
    fmov d24, x9
    fcmp d8, d24
    cset w15, ge
    cbnz w15, L34_32
    b L34_91
L34_91:
    mov w14, w15
    b L34_33
L34_32:
    fcmp d9, d24
    cset w14, ge
L34_33:
    and w15, w14, #255
    cbnz w15, L34_34
    b L34_92
L34_92:
    mov w14, w15
    b L34_35
L34_34:
    add x14, x21, #16
    ldr d24, [x14]
    fcmp d8, d24
    cset w14, mi
L34_35:
    and w15, w14, #255
    cbnz w15, L34_36
    b L34_93
L34_93:
    mov w14, w15
    b L34_37
L34_36:
    add x14, x21, #16
    add x14, x14, #8
    ldr d24, [x14]
    fcmp d9, d24
    cset w14, mi
L34_37:
    and w15, w14, #255
    strb w15, [x22]
    add x15, x25, #12
    ldr w15, [x15]
    mov x10, #0
    cmp w15, w10
    b.ne L34_39
L34_38:
    ldrb w14, [x25]
    movz x10, #9
    cmp w14, w10
    b.ne L34_42
L34_41:
    movz x10, #14401
    add x14, x20, x10
    movz x9, #1
    strb w9, [x14]
    b L34_43
L34_42:
L34_43:
    ldrb w14, [x25]
    movz x10, #10
    cmp w14, w10
    b.ne L34_45
L34_44:
    movz x10, #14401
    add x14, x20, x10
    mov x9, #0
    strb w9, [x14]
    b L34_46
L34_45:
L34_46:
    b L34_40
L34_39:
L34_40:
    mov x0, x20
    mov x9, x25
    mov x1, x9
    bl _lb_window_10push_event
    ldr x19, [sp, #424]
    ldr x20, [sp, #416]
    ldr x21, [sp, #408]
    ldr x22, [sp, #400]
    ldr x23, [sp, #392]
    ldr x24, [sp, #384]
    ldr x25, [sp, #376]
    ldr x26, [sp, #368]
    ldr d8, [sp, #360]
    ldr d9, [sp, #352]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_10mac_cursor
_lb_window_10mac_cursor:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #144]
    str x20, [sp, #136]
    sub x16, x29, #96
    str w0, [x16]
    adrp x19, l_text_66@PAGE
    add x19, x19, l_text_66@PAGEOFF
    sub x14, x29, #96
    ldrb w14, [x14]
    sub x15, x29, #97
    strb w14, [x15]
    sub x20, x29, #98
    mov x10, x15
    mov x11, x20
    ldrb w12, [x10, #0]
    strb w12, [x11, #0]
    ldrb w14, [x20]
    movz x10, #1
    cmp w14, w10
    b.eq L35_2
L35_4:
    b L35_3
L35_2:
    adrp x14, l_text_67@PAGE
    add x14, x14, l_text_67@PAGEOFF
    mov x19, x14
    b L35_1
L35_3:
    movz x10, #2
    cmp w14, w10
    b.eq L35_5
L35_7:
    b L35_6
L35_5:
    adrp x19, l_text_68@PAGE
    add x19, x19, l_text_68@PAGEOFF
    b L35_1
L35_6:
    movz x10, #3
    cmp w14, w10
    b.eq L35_8
L35_10:
    b L35_9
L35_8:
    adrp x19, l_text_69@PAGE
    add x19, x19, l_text_69@PAGEOFF
    b L35_1
L35_9:
    movz x10, #4
    cmp w14, w10
    b.eq L35_11
L35_13:
    b L35_12
L35_11:
    adrp x19, l_text_70@PAGE
    add x19, x19, l_text_70@PAGEOFF
    b L35_1
L35_12:
    movz x10, #5
    cmp w14, w10
    b.eq L35_14
L35_16:
    b L35_15
L35_14:
    adrp x19, l_text_71@PAGE
    add x19, x19, l_text_71@PAGEOFF
    b L35_1
L35_15:
    movz x10, #6
    cmp w14, w10
    b.eq L35_17
L35_19:
    b L35_18
L35_17:
    adrp x19, l_text_72@PAGE
    add x19, x19, l_text_72@PAGEOFF
    b L35_1
L35_18:
    movz x10, #7
    cmp w14, w10
    b.eq L35_20
L35_22:
    b L35_21
L35_20:
    adrp x19, l_text_73@PAGE
    add x19, x19, l_text_73@PAGEOFF
    b L35_1
L35_21:
    b L35_23
L35_25:
    b L35_24
L35_23:
    b L35_1
L35_24:
L35_1:
    adrp x14, l_text_74@PAGE
    add x14, x14, l_text_74@PAGEOFF
    mov x0, x14
    sub x8, x29, #144
    bl _lb_window_12native_class
    sub x15, x29, #144
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L35_27
    b L35_26
L35_27:
    add x14, x15, #8
    sub x19, x29, #80
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L35_28:
L35_26:
    ldr x20, [x15]
    sub x10, x29, #176
    str x19, [x10]
    mov x0, x19
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L35_34
    b L35_35
L35_35:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L35_34:
    b L35_37
L35_36:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L35_37:
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    mov x15, x0
    cbnz x15, L35_29
    b L35_30
L35_29:
    b L35_31
L35_30:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_window_failed@PAGE
    add x15, x15, _lb_window_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_75@PAGE
    add x15, x15, l_text_75@PAGEOFF
    sub x20, x29, #160
    str x15, [x20]
    add x15, x20, #8
    movz x9, #37
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L35_32:
L35_31:
    sub x14, x29, #80
    str x15, [x14]
    add x19, x14, #32
    mov x9, #0
    strb w9, [x19]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #144]
    ldr x20, [sp, #136]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L35_33:
    adrp x0, l_text_76@PAGE
    add x0, x0, l_text_76@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_15cursor_callback
_lb_window_15cursor_callback:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    sub x16, x29, #72
    str x2, [x16]
    sub x14, x29, #40
    ldr x14, [x14]
    mov x0, x14
    bl _lb_window_9get_state
    mov x14, x0
    cbnz x14, L36_1
    b L36_2
L36_1:
    b L36_3
L36_2:
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L36_4:
L36_3:
    movz x10, #14392
    add x15, x14, x10
    ldr x19, [x15]
    cbnz x19, L36_5
    b L36_6
L36_5:
    b L36_7
L36_6:
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L36_8:
L36_7:
    adrp x14, l_text_79@PAGE
    add x14, x14, l_text_79@PAGEOFF
    sub x10, x29, #88
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L36_9
    b L36_10
L36_10:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L36_9:
    b L36_12
L36_11:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L36_12:
    mov x0, x19
    mov x1, x14
    bl _objc_msgSend
    ldr x19, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_14mac_plain_text
_lb_window_14mac_plain_text:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    str x20, [sp, #32]
    sub x16, x29, #48
    str x0, [x16]
    adrp x14, l_text_104@PAGE
    add x14, x14, l_text_104@PAGEOFF
    mov x0, x14
    bl _objc_getClass
    mov x19, x0
    cbnz x19, L37_1
    b L37_2
L37_1:
    b L37_3
L37_2:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L37_4:
L37_3:
    sub x14, x29, #48
    ldr x20, [x14]
    adrp x14, l_text_105@PAGE
    add x14, x14, l_text_105@PAGEOFF
    sub x10, x29, #64
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L37_10
    b L37_11
L37_11:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L37_10:
    b L37_13
L37_12:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L37_13:
    mov x0, x20
    mov x1, x14
    mov x2, x19
    bl _objc_msgSend
    mov w15, w0
    cbnz w15, L37_5
    b L37_6
L37_5:
    mov x9, x20
    mov x0, x9
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L37_8:
    b L37_7
L37_6:
L37_7:
    adrp x14, l_text_106@PAGE
    add x14, x14, l_text_106@PAGEOFF
    sub x10, x29, #64
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L37_14
    b L37_15
L37_15:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L37_14:
    b L37_17
L37_16:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L37_17:
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    mov x15, x0
    mov x9, x15
    mov x0, x9
    ldr x19, [sp, #40]
    ldr x20, [sp, #32]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L37_9:
    adrp x0, l_text_107@PAGE
    add x0, x0, l_text_107@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_16mac_clear_marked
_lb_window_16mac_clear_marked:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    str x20, [sp, #48]
    str x21, [sp, #40]
    sub x16, x29, #56
    str x0, [x16]
    sub x14, x29, #56
    ldr x19, [x14]
    movz x10, #14408
    add x20, x19, x10
    ldr x21, [x20]
    cbnz x21, L38_4
    b L38_2
L38_4:
L38_1:
    adrp x14, l_text_108@PAGE
    add x14, x14, l_text_108@PAGEOFF
    sub x10, x29, #72
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L38_5
    b L38_6
L38_6:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L38_5:
    b L38_8
L38_7:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L38_8:
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    b L38_3
L38_2:
L38_3:
    mov x9, #0
    str x9, [x20]
    movz x10, #14416
    add x14, x19, x10
    mov x9, #0
    str x9, [x14]
    movz x10, #14424
    add x14, x19, x10
    mov x9, #0
    str x9, [x14]
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    ldr x21, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_15mac_insert_text
_lb_window_15mac_insert_text:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #144
    str x19, [sp, #120]
    str x20, [sp, #112]
    str x21, [sp, #104]
    str x22, [sp, #96]
    str x23, [sp, #88]
    sub x16, x29, #72
    str x0, [x16]
    sub x16, x29, #88
    str x1, [x16]
    sub x16, x29, #104
    str x2, [x16]
    sub x16, x29, #120
    str x3, [x16]
    str x4, [x16, #8]
    sub x14, x29, #72
    ldr x14, [x14]
    mov x0, x14
    bl _lb_window_9get_state
    mov x19, x0
    cbnz x19, L39_1
    b L39_2
L39_1:
    b L39_3
L39_2:
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    ldr x23, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L39_4:
L39_3:
    mov x0, x19
    bl _lb_window_16mac_clear_marked
    movz x10, #14380
    add x14, x19, x10
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    b.ne L39_6
L39_5:
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    ldr x23, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L39_8:
    b L39_7
L39_6:
L39_7:
    sub x14, x29, #104
    ldr x14, [x14]
    mov x0, x14
    bl _lb_window_14mac_plain_text
    mov x20, x0
    cbnz x20, L39_9
    b L39_10
L39_9:
    b L39_11
L39_10:
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    ldr x23, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L39_12:
L39_11:
    adrp x14, l_text_109@PAGE
    add x14, x14, l_text_109@PAGEOFF
    sub x10, x29, #136
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L39_24
    b L39_25
L39_25:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L39_24:
    b L39_27
L39_26:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L39_27:
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    mov x21, x0
    movz x10, #14368
    add x15, x19, x10
    ldr x15, [x15]
    movz x9, #256
    mov x10, x15
    subs x9, x9, x10
    b.cs 1f
    adrp x0, l_text_110@PAGE
    add x0, x0, l_text_110@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    cmp x21, x15
    b.ls L39_14
L39_13:
    movz x10, #14376
    add x14, x19, x10
    movz x9, #1
    strb w9, [x14]
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    ldr x23, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L39_16:
    b L39_15
L39_14:
L39_15:
    adrp x22, l_text_111@PAGE
    add x22, x22, l_text_111@PAGEOFF
    mov x9, #0
    mov x23, x9
L39_17:
    cmp x23, x21
    b.hs L39_20
L39_18:
    sub x10, x29, #136
    str x22, [x10]
    mov x0, x22
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L39_28
    b L39_29
L39_29:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L39_28:
    b L39_31
L39_30:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L39_31:
    mov x0, x20
    mov x1, x14
    mov x2, x23
    bl _objc_msgSend
    mov w15, w0
    mov x0, x19
    mov x1, x15
    bl _lb_window_10push_utf16
L39_19:
    add x14, x23, #1
    mov x23, x14
    b L39_17
L39_20:
    movz x10, #14382
    add x14, x19, x10
    ldrh w15, [x14]
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L39_22
L39_21:
    mov x9, #0
    strh w9, [x14]
    mov x0, x19
    movz x1, #65533
    bl _lb_window_11push_scalar
    b L39_23
L39_22:
L39_23:
    ldr x19, [sp, #120]
    ldr x20, [sp, #112]
    ldr x21, [sp, #104]
    ldr x22, [sp, #96]
    ldr x23, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_14mac_set_marked
_lb_window_14mac_set_marked:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    str x19, [sp, #136]
    str x20, [sp, #128]
    str x21, [sp, #120]
    str x22, [sp, #112]
    str x23, [sp, #104]
    sub x16, x29, #72
    str x0, [x16]
    sub x16, x29, #88
    str x1, [x16]
    sub x16, x29, #104
    str x2, [x16]
    sub x16, x29, #120
    str x3, [x16]
    str x4, [x16, #8]
    sub x16, x29, #136
    str x5, [x16]
    str x6, [x16, #8]
    sub x14, x29, #72
    ldr x14, [x14]
    mov x0, x14
    bl _lb_window_9get_state
    mov x19, x0
    cbnz x19, L40_1
    b L40_2
L40_1:
    b L40_3
L40_2:
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    ldr x23, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L40_4:
L40_3:
    mov x0, x19
    bl _lb_window_16mac_clear_marked
    movz x10, #14380
    add x14, x19, x10
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    b.ne L40_6
L40_5:
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    ldr x23, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L40_8:
    b L40_7
L40_6:
L40_7:
    sub x14, x29, #104
    ldr x14, [x14]
    mov x0, x14
    bl _lb_window_14mac_plain_text
    mov x20, x0
    cbnz x20, L40_9
    b L40_10
L40_9:
    b L40_11
L40_10:
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    ldr x23, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L40_12:
L40_11:
    adrp x14, l_text_109@PAGE
    add x14, x14, l_text_109@PAGEOFF
    sub x10, x29, #152
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L40_16
    b L40_17
L40_17:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L40_16:
    b L40_19
L40_18:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L40_19:
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    mov x15, x0
    mov x10, #0
    cmp x15, x10
    b.ls L40_14
L40_13:
    movz x10, #14408
    add x21, x19, x10
    adrp x14, l_text_112@PAGE
    add x14, x14, l_text_112@PAGEOFF
    sub x10, x29, #152
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L40_20
    b L40_21
L40_21:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L40_20:
    b L40_23
L40_22:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L40_23:
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    mov x15, x0
    str x15, [x21]
    movz x10, #14416
    add x15, x19, x10
    sub x22, x29, #120
    ldr x23, [x22]
    str x23, [x15]
    movz x10, #14424
    add x15, x19, x10
    add x22, x22, #8
    ldr x22, [x22]
    str x22, [x15]
    b L40_15
L40_14:
L40_15:
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    ldr x22, [sp, #112]
    ldr x23, [sp, #104]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_10mac_unmark
_lb_window_10mac_unmark:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    mov x0, x14
    bl _lb_window_9get_state
    mov x14, x0
    cbnz x14, L41_4
    b L41_2
L41_4:
L41_1:
    mov x0, x14
    bl _lb_window_16mac_clear_marked
    b L41_3
L41_2:
L41_3:
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_14mac_has_marked
_lb_window_14mac_has_marked:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    mov x0, x14
    bl _lb_window_9get_state
    mov x14, x0
    cbnz x14, L42_1
    b L42_2
L42_1:
    b L42_3
L42_2:
    mov x9, #0
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L42_4:
L42_3:
    movz x10, #14408
    add x15, x14, x10
    ldr x15, [x15]
    mov x10, #0
    cmp x15, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    and w15, w15, #255
    mov x9, x15
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L42_5:
    adrp x0, l_text_113@PAGE
    add x0, x0, l_text_113@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_16mac_marked_range
_lb_window_16mac_marked_range:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    str x19, [sp, #136]
    str x20, [sp, #128]
    str x21, [sp, #120]
    sub x16, x29, #72
    str x0, [x16]
    sub x16, x29, #88
    str x1, [x16]
    sub x14, x29, #72
    ldr x14, [x14]
    mov x0, x14
    bl _lb_window_9get_state
    mov x14, x0
    cbnz x14, L43_1
    b L43_2
L43_1:
    b L43_3
L43_2:
    sub x19, x29, #104
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    adrp x14, _lb_window_13mac_not_found@PAGE
    add x14, x14, _lb_window_13mac_not_found@PAGEOFF
    ldr x14, [x14]
    str x14, [x19]
    add x14, x19, #8
    mov x9, #0
    str x9, [x14]
    sub x20, x29, #56
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L43_4:
L43_3:
    movz x10, #14408
    add x15, x14, x10
    ldr x19, [x15]
    cbnz x19, L43_5
    b L43_6
L43_5:
    b L43_7
L43_6:
    sub x19, x29, #120
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    adrp x14, _lb_window_13mac_not_found@PAGE
    add x14, x14, _lb_window_13mac_not_found@PAGEOFF
    ldr x14, [x14]
    str x14, [x19]
    add x14, x19, #8
    mov x9, #0
    str x9, [x14]
    sub x20, x29, #56
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L43_8:
L43_7:
    sub x20, x29, #136
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    mov x9, #0
    str x9, [x20]
    adrp x14, l_text_109@PAGE
    add x14, x14, l_text_109@PAGEOFF
    sub x10, x29, #152
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L43_10
    b L43_11
L43_11:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L43_10:
    b L43_13
L43_12:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L43_13:
    mov x0, x19
    mov x1, x14
    bl _objc_msgSend
    mov x15, x0
    add x21, x20, #8
    str x15, [x21]
    sub x21, x29, #56
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x21
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #136]
    ldr x20, [sp, #128]
    ldr x21, [sp, #120]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L43_9:
    adrp x0, l_text_114@PAGE
    add x0, x0, l_text_114@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_18mac_selected_range
_lb_window_18mac_selected_range:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    str x19, [sp, #104]
    str x20, [sp, #96]
    str x21, [sp, #88]
    sub x16, x29, #72
    str x0, [x16]
    sub x16, x29, #88
    str x1, [x16]
    sub x14, x29, #72
    ldr x14, [x14]
    mov x0, x14
    bl _lb_window_9get_state
    mov x19, x0
    cbnz x19, L44_1
    b L44_2
L44_1:
    b L44_3
L44_2:
    sub x19, x29, #104
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    mov x9, #0
    str x9, [x19]
    add x14, x19, #8
    mov x9, #0
    str x9, [x14]
    sub x20, x29, #56
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x20
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L44_4:
L44_3:
    sub x20, x29, #120
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    movz x10, #14416
    add x14, x19, x10
    ldr x14, [x14]
    str x14, [x20]
    movz x10, #14424
    add x14, x19, x10
    ldr x14, [x14]
    add x15, x20, #8
    str x14, [x15]
    sub x21, x29, #56
    mov x10, x20
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x16, x21
    ldr x0, [x16, #0]
    ldr x1, [x16, #8]
    ldr x19, [sp, #104]
    ldr x20, [sp, #96]
    ldr x21, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L44_5:
    adrp x0, l_text_115@PAGE
    add x0, x0, l_text_115@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_21mac_marked_attributes
_lb_window_21mac_marked_attributes:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    sub x16, x29, #40
    str x0, [x16]
    sub x16, x29, #56
    str x1, [x16]
    adrp x14, l_text_55@PAGE
    add x14, x14, l_text_55@PAGEOFF
    mov x0, x14
    bl _objc_getClass
    mov x19, x0
    cbnz x19, L45_1
    b L45_2
L45_1:
    b L45_3
L45_2:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L45_4:
L45_3:
    adrp x14, l_text_116@PAGE
    add x14, x14, l_text_116@PAGEOFF
    sub x10, x29, #72
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L45_6
    b L45_7
L45_7:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L45_6:
    b L45_9
L45_8:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L45_9:
    mov x0, x19
    mov x1, x14
    bl _objc_msgSend
    mov x15, x0
    mov x9, x15
    mov x0, x9
    ldr x19, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L45_5:
    adrp x0, l_text_117@PAGE
    add x0, x0, l_text_117@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_18mac_text_substring
_lb_window_18mac_text_substring:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    sub x16, x29, #48
    str x0, [x16]
    sub x16, x29, #64
    str x1, [x16]
    sub x16, x29, #80
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #96
    str x4, [x16]
    sub x14, x29, #96
    ldr x19, [x14]
    cbnz x19, L46_4
    b L46_2
L46_4:
L46_1:
    sub x20, x29, #112
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    adrp x14, _lb_window_13mac_not_found@PAGE
    add x14, x14, _lb_window_13mac_not_found@PAGEOFF
    ldr x14, [x14]
    str x14, [x20]
    add x14, x20, #8
    mov x9, #0
    str x9, [x14]
    mov x10, x20
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L46_3
L46_2:
L46_3:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L46_5:
    adrp x0, l_text_118@PAGE
    add x0, x0, l_text_118@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_14mac_text_index
_lb_window_14mac_text_index:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x16, x29, #64
    str d0, [x16, #0]
    sub x16, x29, #64
    str d1, [x16, #8]
    adrp x14, _lb_window_13mac_not_found@PAGE
    add x14, x14, _lb_window_13mac_not_found@PAGEOFF
    ldr x14, [x14]
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L47_1:
    adrp x0, l_text_119@PAGE
    add x0, x0, l_text_119@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_13mac_text_rect
_lb_window_13mac_text_rect:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #304
    str x19, [sp, #280]
    str x20, [sp, #272]
    str x21, [sp, #264]
    str x22, [sp, #256]
    sub x16, x29, #96
    str x0, [x16]
    sub x16, x29, #112
    str x1, [x16]
    sub x16, x29, #128
    str x2, [x16]
    str x3, [x16, #8]
    sub x16, x29, #144
    str x4, [x16]
    sub x14, x29, #144
    ldr x14, [x14]
    cbnz x14, L48_4
    b L48_2
L48_4:
L48_1:
    sub x15, x29, #128
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    b L48_3
L48_2:
L48_3:
    sub x14, x29, #96
    ldr x14, [x14]
    mov x0, x14
    bl _lb_window_9get_state
    mov x14, x0
    cbnz x14, L48_5
    b L48_6
L48_5:
    b L48_7
L48_6:
    sub x19, x29, #176
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    sub x20, x29, #80
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    mov x9, x20
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    ldr x19, [sp, #280]
    ldr x20, [sp, #272]
    ldr x21, [sp, #264]
    ldr x22, [sp, #256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L48_8:
L48_7:
    ldr x19, [x14]
    cbnz x19, L48_9
    b L48_10
L48_9:
    b L48_11
L48_10:
    sub x19, x29, #208
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    sub x20, x29, #80
    mov x10, x19
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    mov x9, x20
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    ldr x19, [sp, #280]
    ldr x20, [sp, #272]
    ldr x21, [sp, #264]
    ldr x22, [sp, #256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L48_12:
L48_11:
    adrp x14, l_text_120@PAGE
    add x14, x14, l_text_120@PAGEOFF
    sub x10, x29, #304
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x20, x0
    cbnz x20, L48_14
    b L48_15
L48_15:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L48_14:
    b L48_17
L48_16:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L48_17:
    sub x21, x29, #240
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    sub x22, x29, #256
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    movz x9, #16368, lsl #48
    fmov d24, x9
    str d24, [x22]
    movz x9, #16434, lsl #48
    fmov d24, x9
    add x14, x22, #8
    str d24, [x14]
    add x14, x21, #16
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x9, x21
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    mov x0, x19
    mov x1, x20
    bl _objc_msgSend
    sub x16, x29, #288
    str d0, [x16, #0]
    sub x16, x29, #288
    str d1, [x16, #8]
    sub x16, x29, #288
    str d2, [x16, #16]
    sub x16, x29, #288
    str d3, [x16, #24]
    sub x14, x29, #288
    sub x21, x29, #80
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    mov x9, x21
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    ldr x19, [sp, #280]
    ldr x20, [sp, #272]
    ldr x21, [sp, #264]
    ldr x22, [sp, #256]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L48_13:
    adrp x0, l_text_121@PAGE
    add x0, x0, l_text_121@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_16mac_text_command
_lb_window_16mac_text_command:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    sub x16, x29, #32
    str x0, [x16]
    sub x16, x29, #48
    str x1, [x16]
    sub x16, x29, #64
    str x2, [x16]
    sub x14, x29, #64
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_10make_class
_lb_window_10make_class:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #192
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #160]
    str x20, [sp, #152]
    str x21, [sp, #144]
    sub x16, x29, #104
    str x0, [x16]
    sub x16, x29, #120
    str x1, [x16]
    sub x14, x29, #104
    ldr x14, [x14]
    mov x0, x14
    sub x8, x29, #160
    bl _lb_window_12native_class
    sub x15, x29, #160
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L50_2
    b L50_1
L50_2:
    add x14, x15, #8
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L50_3:
L50_1:
    ldr x14, [x15]
    sub x19, x29, #120
    ldr x19, [x19]
    mov x0, x14
    mov x1, x19
    mov x2, #0
    bl _objc_allocateClassPair
    mov x19, x0
    cbnz x19, L50_4
    b L50_5
L50_4:
    b L50_6
L50_5:
    sub x19, x29, #88
    add x14, x19, #8
    adrp x15, _lb_window_failed@PAGE
    add x15, x15, _lb_window_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_124@PAGE
    add x15, x15, l_text_124@PAGEOFF
    sub x20, x29, #176
    str x15, [x20]
    add x15, x20, #8
    movz x9, #40
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L50_7:
L50_6:
    adrp x14, l_text_43@PAGE
    add x14, x14, l_text_43@PAGEOFF
    adrp x15, l_text_125@PAGE
    add x15, x15, l_text_125@PAGEOFF
    mov x0, x19
    mov x1, x14
    movz x2, #8
    movz x3, #3
    mov x4, x15
    bl _class_addIvar
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L50_9
L50_8:
    sub x20, x29, #88
    add x14, x20, #8
    adrp x15, _lb_window_failed@PAGE
    add x15, x15, _lb_window_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_126@PAGE
    add x15, x15, l_text_126@PAGEOFF
    sub x21, x29, #192
    str x15, [x21]
    add x15, x21, #8
    movz x9, #38
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_disposeClassPair
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L50_11:
    b L50_10
L50_9:
L50_10:
    sub x14, x29, #88
    str x19, [x14]
    add x15, x14, #32
    mov x9, #0
    strb w9, [x15]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #160]
    ldr x20, [sp, #152]
    ldr x21, [sp, #144]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L50_12:
    adrp x0, l_text_127@PAGE
    add x0, x0, l_text_127@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_13setup_classes
_lb_window_13setup_classes:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #1280
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #1248]
    str x20, [sp, #1240]
    str x21, [sp, #1232]
    str x22, [sp, #1224]
    str x23, [sp, #1216]
    str x24, [sp, #1208]
    str x25, [sp, #1200]
    str x26, [sp, #1192]
    adrp x19, _lb_window_14delegate_class@PAGE
    add x19, x19, _lb_window_14delegate_class@PAGEOFF
    ldr x14, [x19]
    mov x10, #0
    cmp x14, x10
    b.ne L51_2
L51_1:
    adrp x14, l_text_128@PAGE
    add x14, x14, l_text_128@PAGEOFF
    adrp x15, l_text_129@PAGE
    add x15, x15, l_text_129@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x8, x29, #160
    bl _lb_window_10make_class
    sub x15, x29, #160
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L51_5
    b L51_4
L51_5:
    add x14, x15, #8
    sub x19, x29, #120
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
    ldr x19, [sp, #1248]
    ldr x20, [sp, #1240]
    ldr x21, [sp, #1232]
    ldr x22, [sp, #1224]
    ldr x23, [sp, #1216]
    ldr x24, [sp, #1208]
    ldr x25, [sp, #1200]
    ldr x26, [sp, #1192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L51_6:
L51_4:
    ldr x20, [x15]
    adrp x14, l_text_130@PAGE
    add x14, x14, l_text_130@PAGEOFF
    adrp x21, _lb_window_14close_callback@GOTPAGE
    ldr x21, [x21, _lb_window_14close_callback@GOTPAGEOFF]
    adrp x22, l_text_131@PAGE
    add x22, x22, l_text_131@PAGEOFF
    mov x0, x20
    mov x1, x14
    mov x2, x21
    mov x3, x22
    sub x8, x29, #192
    bl _lb_window_10add_method
    sub x21, x29, #192
    add x14, x21, #24
    ldrb w14, [x14]
    cbnz w14, L51_8
    b L51_7
L51_8:
    sub x19, x29, #120
    mov x10, x21
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _objc_disposeClassPair
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1248]
    ldr x20, [sp, #1240]
    ldr x21, [sp, #1232]
    ldr x22, [sp, #1224]
    ldr x23, [sp, #1216]
    ldr x24, [sp, #1208]
    ldr x25, [sp, #1200]
    ldr x26, [sp, #1192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L51_9:
L51_7:
    adrp x14, l_text_132@PAGE
    add x14, x14, l_text_132@PAGEOFF
    adrp x21, _lb_window_15resize_callback@GOTPAGE
    ldr x21, [x21, _lb_window_15resize_callback@GOTPAGEOFF]
    adrp x22, l_text_133@PAGE
    add x22, x22, l_text_133@PAGEOFF
    mov x0, x20
    mov x1, x14
    mov x2, x21
    mov x3, x22
    sub x8, x29, #224
    bl _lb_window_10add_method
    sub x15, x29, #224
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L51_11
    b L51_10
L51_11:
    sub x19, x29, #120
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _objc_disposeClassPair
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1248]
    ldr x20, [sp, #1240]
    ldr x21, [sp, #1232]
    ldr x22, [sp, #1224]
    ldr x23, [sp, #1216]
    ldr x24, [sp, #1208]
    ldr x25, [sp, #1200]
    ldr x26, [sp, #1192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L51_12:
L51_10:
    adrp x14, l_text_134@PAGE
    add x14, x14, l_text_134@PAGEOFF
    mov x0, x20
    mov x1, x14
    mov x2, x21
    mov x3, x22
    sub x8, x29, #256
    bl _lb_window_10add_method
    sub x15, x29, #256
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L51_14
    b L51_13
L51_14:
    sub x19, x29, #120
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _objc_disposeClassPair
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1248]
    ldr x20, [sp, #1240]
    ldr x21, [sp, #1232]
    ldr x22, [sp, #1224]
    ldr x23, [sp, #1216]
    ldr x24, [sp, #1208]
    ldr x25, [sp, #1200]
    ldr x26, [sp, #1192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L51_15:
L51_13:
    adrp x14, l_text_47@PAGE
    add x14, x14, l_text_47@PAGEOFF
    adrp x21, _lb_window_14focus_callback@GOTPAGE
    ldr x21, [x21, _lb_window_14focus_callback@GOTPAGEOFF]
    mov x0, x20
    mov x1, x14
    mov x2, x21
    mov x3, x22
    sub x8, x29, #288
    bl _lb_window_10add_method
    sub x15, x29, #288
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L51_17
    b L51_16
L51_17:
    sub x19, x29, #120
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _objc_disposeClassPair
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1248]
    ldr x20, [sp, #1240]
    ldr x21, [sp, #1232]
    ldr x22, [sp, #1224]
    ldr x23, [sp, #1216]
    ldr x24, [sp, #1208]
    ldr x25, [sp, #1200]
    ldr x26, [sp, #1192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L51_18:
L51_16:
    adrp x14, l_text_135@PAGE
    add x14, x14, l_text_135@PAGEOFF
    mov x0, x20
    mov x1, x14
    mov x2, x21
    mov x3, x22
    sub x8, x29, #320
    bl _lb_window_10add_method
    sub x15, x29, #320
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L51_20
    b L51_19
L51_20:
    sub x19, x29, #120
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _objc_disposeClassPair
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1248]
    ldr x20, [sp, #1240]
    ldr x21, [sp, #1232]
    ldr x22, [sp, #1224]
    ldr x23, [sp, #1216]
    ldr x24, [sp, #1208]
    ldr x25, [sp, #1200]
    ldr x26, [sp, #1192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L51_21:
L51_19:
    adrp x14, l_text_136@PAGE
    add x14, x14, l_text_136@PAGEOFF
    adrp x15, _lb_window_15launch_callback@GOTPAGE
    ldr x15, [x15, _lb_window_15launch_callback@GOTPAGEOFF]
    mov x0, x20
    mov x1, x14
    mov x2, x15
    mov x3, x22
    sub x8, x29, #352
    bl _lb_window_10add_method
    sub x15, x29, #352
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L51_23
    b L51_22
L51_23:
    sub x19, x29, #120
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _objc_disposeClassPair
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1248]
    ldr x20, [sp, #1240]
    ldr x21, [sp, #1232]
    ldr x22, [sp, #1224]
    ldr x23, [sp, #1216]
    ldr x24, [sp, #1208]
    ldr x25, [sp, #1200]
    ldr x26, [sp, #1192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L51_24:
L51_22:
    mov x0, x20
    bl _objc_registerClassPair
    str x20, [x19]
    b L51_3
L51_2:
L51_3:
    adrp x19, _lb_window_10view_class@PAGE
    add x19, x19, _lb_window_10view_class@PAGEOFF
    ldr x14, [x19]
    mov x10, #0
    cmp x14, x10
    b.ne L51_26
L51_25:
    adrp x14, l_text_137@PAGE
    add x14, x14, l_text_137@PAGEOFF
    adrp x15, l_text_138@PAGE
    add x15, x15, l_text_138@PAGEOFF
    mov x0, x14
    mov x1, x15
    sub x8, x29, #392
    bl _lb_window_10make_class
    sub x15, x29, #392
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L51_29
    b L51_28
L51_29:
    add x14, x15, #8
    sub x19, x29, #120
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
    ldr x19, [sp, #1248]
    ldr x20, [sp, #1240]
    ldr x21, [sp, #1232]
    ldr x22, [sp, #1224]
    ldr x23, [sp, #1216]
    ldr x24, [sp, #1208]
    ldr x25, [sp, #1200]
    ldr x26, [sp, #1192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L51_30:
L51_28:
    ldr x20, [x15]
    adrp x14, l_text_139@PAGE
    add x14, x14, l_text_139@PAGEOFF
    adrp x21, _lb_window_12view_accepts@GOTPAGE
    ldr x21, [x21, _lb_window_12view_accepts@GOTPAGEOFF]
    adrp x22, l_text_90@PAGE
    add x22, x22, l_text_90@PAGEOFF
    mov x0, x20
    mov x1, x14
    mov x2, x21
    mov x3, x22
    sub x8, x29, #424
    bl _lb_window_10add_method
    sub x23, x29, #424
    add x14, x23, #24
    ldrb w14, [x14]
    cbnz w14, L51_32
    b L51_31
L51_32:
    sub x19, x29, #120
    mov x10, x23
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _objc_disposeClassPair
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1248]
    ldr x20, [sp, #1240]
    ldr x21, [sp, #1232]
    ldr x22, [sp, #1224]
    ldr x23, [sp, #1216]
    ldr x24, [sp, #1208]
    ldr x25, [sp, #1200]
    ldr x26, [sp, #1192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L51_33:
L51_31:
    adrp x14, l_text_140@PAGE
    add x14, x14, l_text_140@PAGEOFF
    mov x0, x20
    mov x1, x14
    mov x2, x21
    mov x3, x22
    sub x8, x29, #456
    bl _lb_window_10add_method
    sub x15, x29, #456
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L51_35
    b L51_34
L51_35:
    sub x19, x29, #120
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _objc_disposeClassPair
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1248]
    ldr x20, [sp, #1240]
    ldr x21, [sp, #1232]
    ldr x22, [sp, #1224]
    ldr x23, [sp, #1216]
    ldr x24, [sp, #1208]
    ldr x25, [sp, #1200]
    ldr x26, [sp, #1192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L51_36:
L51_34:
    adrp x14, l_text_141@PAGE
    add x14, x14, l_text_141@PAGEOFF
    adrp x15, _lb_window_15cursor_callback@GOTPAGE
    ldr x15, [x15, _lb_window_15cursor_callback@GOTPAGEOFF]
    adrp x21, l_text_133@PAGE
    add x21, x21, l_text_133@PAGEOFF
    mov x0, x20
    mov x1, x14
    mov x2, x15
    mov x3, x21
    sub x8, x29, #488
    bl _lb_window_10add_method
    sub x15, x29, #488
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L51_38
    b L51_37
L51_38:
    sub x19, x29, #120
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _objc_disposeClassPair
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1248]
    ldr x20, [sp, #1240]
    ldr x21, [sp, #1232]
    ldr x22, [sp, #1224]
    ldr x23, [sp, #1216]
    ldr x24, [sp, #1208]
    ldr x25, [sp, #1200]
    ldr x26, [sp, #1192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L51_39:
L51_37:
    sub x10, x29, #888
    str x20, [x10]
    adrp x14, l_text_80@PAGE
    add x14, x14, l_text_80@PAGEOFF
    mov x0, x14
    bl _objc_getProtocol
    mov x14, x0
    cbnz x14, L51_57
    b L51_58
L51_57:
    b L51_59
L51_58:
    sub x22, x29, #872
    adrp x14, _lb_window_failed@PAGE
    add x14, x14, _lb_window_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x22]
    adrp x14, l_text_81@PAGE
    add x14, x14, l_text_81@PAGEOFF
    sub x15, x29, #904
    str x14, [x15]
    add x14, x15, #8
    movz x9, #32
    str x9, [x14]
    add x14, x22, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x22
    sub x11, x29, #520
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L51_98
L51_60:
L51_59:
    mov x0, x20
    mov x1, x14
    bl _class_addProtocol
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    b.ne L51_62
L51_61:
    sub x22, x29, #872
    adrp x14, _lb_window_failed@PAGE
    add x14, x14, _lb_window_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x22]
    adrp x14, l_text_82@PAGE
    add x14, x14, l_text_82@PAGEOFF
    sub x15, x29, #920
    str x14, [x15]
    add x14, x15, #8
    movz x9, #47
    str x9, [x14]
    add x14, x22, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x22, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x22
    sub x11, x29, #520
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L51_98
L51_64:
    b L51_63
L51_62:
L51_63:
    adrp x14, l_text_83@PAGE
    add x14, x14, l_text_83@PAGEOFF
    adrp x15, _lb_window_15mac_insert_text@GOTPAGE
    ldr x15, [x15, _lb_window_15mac_insert_text@GOTPAGEOFF]
    adrp x23, l_text_84@PAGE
    add x23, x23, l_text_84@PAGEOFF
    mov x0, x20
    mov x1, x14
    mov x2, x15
    mov x3, x23
    sub x8, x29, #952
    bl _lb_window_10add_method
    sub x15, x29, #952
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L51_66
    b L51_65
L51_66:
    sub x22, x29, #872
    mov x10, x15
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x22
    sub x11, x29, #520
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L51_98
L51_67:
L51_65:
    adrp x14, l_text_85@PAGE
    add x14, x14, l_text_85@PAGEOFF
    adrp x15, _lb_window_14mac_set_marked@GOTPAGE
    ldr x15, [x15, _lb_window_14mac_set_marked@GOTPAGEOFF]
    adrp x23, l_text_86@PAGE
    add x23, x23, l_text_86@PAGEOFF
    mov x0, x20
    mov x1, x14
    mov x2, x15
    mov x3, x23
    sub x8, x29, #984
    bl _lb_window_10add_method
    sub x15, x29, #984
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L51_69
    b L51_68
L51_69:
    sub x22, x29, #872
    mov x10, x15
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x22
    sub x11, x29, #520
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L51_98
L51_70:
L51_68:
    adrp x14, l_text_87@PAGE
    add x14, x14, l_text_87@PAGEOFF
    adrp x15, _lb_window_10mac_unmark@GOTPAGE
    ldr x15, [x15, _lb_window_10mac_unmark@GOTPAGEOFF]
    adrp x23, l_text_88@PAGE
    add x23, x23, l_text_88@PAGEOFF
    mov x0, x20
    mov x1, x14
    mov x2, x15
    mov x3, x23
    sub x8, x29, #1016
    bl _lb_window_10add_method
    sub x15, x29, #1016
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L51_72
    b L51_71
L51_72:
    sub x22, x29, #872
    mov x10, x15
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x22
    sub x11, x29, #520
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L51_98
L51_73:
L51_71:
    adrp x14, l_text_89@PAGE
    add x14, x14, l_text_89@PAGEOFF
    adrp x15, _lb_window_14mac_has_marked@GOTPAGE
    ldr x15, [x15, _lb_window_14mac_has_marked@GOTPAGEOFF]
    mov x0, x20
    mov x1, x14
    mov x2, x15
    mov x3, x22
    sub x8, x29, #1048
    bl _lb_window_10add_method
    sub x15, x29, #1048
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L51_75
    b L51_74
L51_75:
    sub x22, x29, #872
    mov x10, x15
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x22
    sub x11, x29, #520
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L51_98
L51_76:
L51_74:
    adrp x14, l_text_91@PAGE
    add x14, x14, l_text_91@PAGEOFF
    adrp x15, _lb_window_16mac_marked_range@GOTPAGE
    ldr x15, [x15, _lb_window_16mac_marked_range@GOTPAGEOFF]
    adrp x22, l_text_92@PAGE
    add x22, x22, l_text_92@PAGEOFF
    mov x0, x20
    mov x1, x14
    mov x2, x15
    mov x3, x22
    sub x8, x29, #1080
    bl _lb_window_10add_method
    sub x15, x29, #1080
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L51_78
    b L51_77
L51_78:
    sub x22, x29, #872
    mov x10, x15
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x22
    sub x11, x29, #520
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L51_98
L51_79:
L51_77:
    adrp x14, l_text_93@PAGE
    add x14, x14, l_text_93@PAGEOFF
    adrp x15, _lb_window_18mac_selected_range@GOTPAGE
    ldr x15, [x15, _lb_window_18mac_selected_range@GOTPAGEOFF]
    mov x0, x20
    mov x1, x14
    mov x2, x15
    mov x3, x22
    sub x8, x29, #1112
    bl _lb_window_10add_method
    sub x15, x29, #1112
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L51_81
    b L51_80
L51_81:
    sub x22, x29, #872
    mov x10, x15
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x22
    sub x11, x29, #520
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L51_98
L51_82:
L51_80:
    adrp x14, l_text_94@PAGE
    add x14, x14, l_text_94@PAGEOFF
    adrp x15, _lb_window_21mac_marked_attributes@GOTPAGE
    ldr x15, [x15, _lb_window_21mac_marked_attributes@GOTPAGEOFF]
    adrp x22, l_text_95@PAGE
    add x22, x22, l_text_95@PAGEOFF
    mov x0, x20
    mov x1, x14
    mov x2, x15
    mov x3, x22
    sub x8, x29, #1144
    bl _lb_window_10add_method
    sub x15, x29, #1144
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L51_84
    b L51_83
L51_84:
    sub x22, x29, #872
    mov x10, x15
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x22
    sub x11, x29, #520
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L51_98
L51_85:
L51_83:
    adrp x14, l_text_96@PAGE
    add x14, x14, l_text_96@PAGEOFF
    adrp x15, _lb_window_18mac_text_substring@GOTPAGE
    ldr x15, [x15, _lb_window_18mac_text_substring@GOTPAGEOFF]
    adrp x22, l_text_97@PAGE
    add x22, x22, l_text_97@PAGEOFF
    mov x0, x20
    mov x1, x14
    mov x2, x15
    mov x3, x22
    sub x8, x29, #1176
    bl _lb_window_10add_method
    sub x15, x29, #1176
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L51_87
    b L51_86
L51_87:
    sub x22, x29, #872
    mov x10, x15
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x22
    sub x11, x29, #520
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L51_98
L51_88:
L51_86:
    adrp x14, l_text_98@PAGE
    add x14, x14, l_text_98@PAGEOFF
    adrp x15, _lb_window_14mac_text_index@GOTPAGE
    ldr x15, [x15, _lb_window_14mac_text_index@GOTPAGEOFF]
    adrp x22, l_text_99@PAGE
    add x22, x22, l_text_99@PAGEOFF
    mov x0, x20
    mov x1, x14
    mov x2, x15
    mov x3, x22
    sub x8, x29, #1208
    bl _lb_window_10add_method
    sub x15, x29, #1208
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L51_90
    b L51_89
L51_90:
    sub x22, x29, #872
    mov x10, x15
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x22
    sub x11, x29, #520
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L51_98
L51_91:
L51_89:
    adrp x14, l_text_100@PAGE
    add x14, x14, l_text_100@PAGEOFF
    adrp x15, _lb_window_13mac_text_rect@GOTPAGE
    ldr x15, [x15, _lb_window_13mac_text_rect@GOTPAGEOFF]
    adrp x22, l_text_101@PAGE
    add x22, x22, l_text_101@PAGEOFF
    mov x0, x20
    mov x1, x14
    mov x2, x15
    mov x3, x22
    sub x8, x29, #1240
    bl _lb_window_10add_method
    sub x15, x29, #1240
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L51_93
    b L51_92
L51_93:
    sub x22, x29, #872
    mov x10, x15
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x22
    sub x11, x29, #520
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L51_98
L51_94:
L51_92:
    adrp x14, l_text_102@PAGE
    add x14, x14, l_text_102@PAGEOFF
    adrp x15, _lb_window_16mac_text_command@GOTPAGE
    ldr x15, [x15, _lb_window_16mac_text_command@GOTPAGEOFF]
    adrp x22, l_text_103@PAGE
    add x22, x22, l_text_103@PAGEOFF
    mov x0, x20
    mov x1, x14
    mov x2, x15
    mov x3, x22
    sub x8, x29, #1272
    bl _lb_window_10add_method
    sub x15, x29, #1272
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L51_96
    b L51_95
L51_96:
    sub x22, x29, #872
    mov x10, x15
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x22, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x22
    sub x11, x29, #520
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L51_98
L51_97:
L51_95:
    sub x14, x29, #872
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #520
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L51_98:
    sub x15, x29, #520
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L51_41
    b L51_40
L51_41:
    sub x19, x29, #120
    mov x10, x15
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _objc_disposeClassPair
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1248]
    ldr x20, [sp, #1240]
    ldr x21, [sp, #1232]
    ldr x22, [sp, #1224]
    ldr x23, [sp, #1216]
    ldr x24, [sp, #1208]
    ldr x25, [sp, #1200]
    ldr x26, [sp, #1192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L51_42:
L51_40:
    sub x22, x29, #544
    sub x14, x29, #568
    adrp x15, l_text_142@PAGE
    add x15, x15, l_text_142@PAGEOFF
    str x15, [x14]
    adrp x15, l_text_143@PAGE
    add x15, x15, l_text_143@PAGEOFF
    add x23, x14, #8
    str x15, [x23]
    adrp x15, l_text_144@PAGE
    add x15, x15, l_text_144@PAGEOFF
    add x23, x14, #16
    str x15, [x23]
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    adrp x23, _lb_window_12key_callback@GOTPAGE
    ldr x23, [x23, _lb_window_12key_callback@GOTPAGEOFF]
    sub x26, x29, #600
    add x24, x26, #24
    mov x9, #0
    mov x25, x9
L51_43:
    movz x10, #3
    cmp x25, x10
    b.hs L51_46
L51_44:
    lsl x14, x25, #3
    add x14, x22, x14
    ldr x14, [x14]
    mov x0, x20
    mov x1, x14
    mov x2, x23
    mov x3, x21
    sub x8, x29, #600
    bl _lb_window_10add_method
    ldrb w14, [x24]
    cbnz w14, L51_48
    b L51_47
L51_48:
    sub x19, x29, #120
    mov x10, x26
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _objc_disposeClassPair
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1248]
    ldr x20, [sp, #1240]
    ldr x21, [sp, #1232]
    ldr x22, [sp, #1224]
    ldr x23, [sp, #1216]
    ldr x24, [sp, #1208]
    ldr x25, [sp, #1200]
    ldr x26, [sp, #1192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L51_49:
L51_47:
L51_45:
    add x14, x25, #1
    mov x25, x14
    b L51_43
L51_46:
    sub x22, x29, #704
    sub x14, x29, #808
    adrp x15, l_text_145@PAGE
    add x15, x15, l_text_145@PAGEOFF
    str x15, [x14]
    adrp x15, l_text_146@PAGE
    add x15, x15, l_text_146@PAGEOFF
    add x23, x14, #8
    str x15, [x23]
    adrp x15, l_text_147@PAGE
    add x15, x15, l_text_147@PAGEOFF
    add x23, x14, #16
    str x15, [x23]
    adrp x15, l_text_148@PAGE
    add x15, x15, l_text_148@PAGEOFF
    add x23, x14, #24
    str x15, [x23]
    adrp x15, l_text_149@PAGE
    add x15, x15, l_text_149@PAGEOFF
    add x23, x14, #32
    str x15, [x23]
    adrp x15, l_text_150@PAGE
    add x15, x15, l_text_150@PAGEOFF
    add x23, x14, #40
    str x15, [x23]
    adrp x15, l_text_151@PAGE
    add x15, x15, l_text_151@PAGEOFF
    add x23, x14, #48
    str x15, [x23]
    adrp x15, l_text_152@PAGE
    add x15, x15, l_text_152@PAGEOFF
    add x23, x14, #56
    str x15, [x23]
    adrp x15, l_text_153@PAGE
    add x15, x15, l_text_153@PAGEOFF
    add x23, x14, #64
    str x15, [x23]
    adrp x15, l_text_154@PAGE
    add x15, x15, l_text_154@PAGEOFF
    add x23, x14, #72
    str x15, [x23]
    adrp x15, l_text_155@PAGE
    add x15, x15, l_text_155@PAGEOFF
    add x23, x14, #80
    str x15, [x23]
    adrp x15, l_text_156@PAGE
    add x15, x15, l_text_156@PAGEOFF
    add x23, x14, #88
    str x15, [x23]
    adrp x15, l_text_157@PAGE
    add x15, x15, l_text_157@PAGEOFF
    add x23, x14, #96
    str x15, [x23]
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
    ldr x12, [x10, #96]
    str x12, [x11, #96]
    adrp x23, _lb_window_16pointer_callback@GOTPAGE
    ldr x23, [x23, _lb_window_16pointer_callback@GOTPAGEOFF]
    sub x26, x29, #840
    add x24, x26, #24
    mov x9, #0
    mov x25, x9
L51_50:
    movz x10, #13
    cmp x25, x10
    b.hs L51_53
L51_51:
    lsl x14, x25, #3
    add x14, x22, x14
    ldr x14, [x14]
    mov x0, x20
    mov x1, x14
    mov x2, x23
    mov x3, x21
    sub x8, x29, #840
    bl _lb_window_10add_method
    ldrb w14, [x24]
    cbnz w14, L51_55
    b L51_54
L51_55:
    sub x19, x29, #120
    mov x10, x26
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _objc_disposeClassPair
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #1248]
    ldr x20, [sp, #1240]
    ldr x21, [sp, #1232]
    ldr x22, [sp, #1224]
    ldr x23, [sp, #1216]
    ldr x24, [sp, #1208]
    ldr x25, [sp, #1200]
    ldr x26, [sp, #1192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L51_56:
L51_54:
L51_52:
    add x14, x25, #1
    mov x25, x14
    b L51_50
L51_53:
    mov x0, x20
    bl _objc_registerClassPair
    str x20, [x19]
    b L51_27
L51_26:
L51_27:
    sub x14, x29, #120
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
    ldr x19, [sp, #1248]
    ldr x20, [sp, #1240]
    ldr x21, [sp, #1232]
    ldr x22, [sp, #1224]
    ldr x23, [sp, #1216]
    ldr x24, [sp, #1208]
    ldr x25, [sp, #1200]
    ldr x26, [sp, #1192]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_8mac_open
_lb_window_8mac_open:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #15280
    sub sp, sp, x16
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #15248]
    str x20, [sp, #15240]
    str x21, [sp, #15232]
    str x22, [sp, #15224]
    str x23, [sp, #15216]
    str x24, [sp, #15208]
    str x25, [sp, #15200]
    str x26, [sp, #15192]
    str x27, [sp, #15184]
    sub x16, x29, #168
    str x0, [x16]
    sub x0, x29, #168
    ldr x1, [x0]
    movz x2, #32
    bl _memcpy
    bl _objc_autoreleasePoolPush
    mov x19, x0
    cbnz x19, L52_1
    b L52_2
L52_2:
    adrp x0, l_text_158@PAGE
    add x0, x0, l_text_158@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L52_1:
    sub x8, x29, #200
    bl _lb_window_13setup_classes
    sub x15, x29, #200
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L52_4
    b L52_3
L52_4:
    sub x20, x29, #136
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15248]
    ldr x20, [sp, #15240]
    ldr x21, [sp, #15232]
    ldr x22, [sp, #15224]
    ldr x23, [sp, #15216]
    ldr x24, [sp, #15208]
    ldr x25, [sp, #15200]
    ldr x26, [sp, #15192]
    ldr x27, [sp, #15184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L52_5:
L52_3:
    adrp x20, _lb_window_application@PAGE
    add x20, x20, _lb_window_application@PAGEOFF
    ldr x14, [x20]
    mov x10, #0
    cmp x14, x10
    b.ne L52_7
L52_6:
    adrp x14, l_text_159@PAGE
    add x14, x14, l_text_159@PAGEOFF
    mov x0, x14
    sub x8, x29, #240
    bl _lb_window_12native_class
    sub x15, x29, #240
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L52_10
    b L52_9
L52_10:
    add x14, x15, #8
    sub x20, x29, #136
    add x21, x20, #8
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15248]
    ldr x20, [sp, #15240]
    ldr x21, [sp, #15232]
    ldr x22, [sp, #15224]
    ldr x23, [sp, #15216]
    ldr x24, [sp, #15208]
    ldr x25, [sp, #15200]
    ldr x26, [sp, #15192]
    ldr x27, [sp, #15184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L52_11:
L52_9:
    ldr x21, [x15]
    adrp x14, l_text_160@PAGE
    add x14, x14, l_text_160@PAGEOFF
    movz x16, #15216
    sub x10, x29, x16
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L52_83
    b L52_84
L52_84:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L52_83:
    b L52_86
L52_85:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L52_86:
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    mov x22, x0
    cbnz x22, L52_12
    b L52_13
L52_12:
    b L52_14
L52_13:
    sub x20, x29, #136
    add x14, x20, #8
    adrp x15, _lb_window_failed@PAGE
    add x15, x15, _lb_window_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_161@PAGE
    add x15, x15, l_text_161@PAGEOFF
    sub x21, x29, #256
    str x15, [x21]
    add x15, x21, #8
    movz x9, #42
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15248]
    ldr x20, [sp, #15240]
    ldr x21, [sp, #15232]
    ldr x22, [sp, #15224]
    ldr x23, [sp, #15216]
    ldr x24, [sp, #15208]
    ldr x25, [sp, #15200]
    ldr x26, [sp, #15192]
    ldr x27, [sp, #15184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L52_15:
L52_14:
    mov x0, x22
    sub x8, x29, #288
    bl _lb_window_13finish_launch
    sub x15, x29, #288
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L52_17
    b L52_16
L52_17:
    sub x20, x29, #136
    add x14, x20, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15248]
    ldr x20, [sp, #15240]
    ldr x21, [sp, #15232]
    ldr x22, [sp, #15224]
    ldr x23, [sp, #15216]
    ldr x24, [sp, #15208]
    ldr x25, [sp, #15200]
    ldr x26, [sp, #15192]
    ldr x27, [sp, #15184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L52_18:
L52_16:
    adrp x14, l_text_162@PAGE
    add x14, x14, l_text_162@PAGEOFF
    movz x16, #15216
    sub x10, x29, x16
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L52_87
    b L52_88
L52_88:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L52_87:
    b L52_90
L52_89:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L52_90:
    mov x0, x22
    mov x1, x14
    mov x2, #0
    bl _objc_msgSend
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    b.ne L52_20
L52_19:
    sub x20, x29, #136
    add x14, x20, #8
    adrp x15, _lb_window_failed@PAGE
    add x15, x15, _lb_window_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_163@PAGE
    add x15, x15, l_text_163@PAGEOFF
    sub x21, x29, #304
    str x15, [x21]
    add x15, x21, #8
    movz x9, #57
    str x9, [x15]
    add x14, x14, #8
    mov x10, x21
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15248]
    ldr x20, [sp, #15240]
    ldr x21, [sp, #15232]
    ldr x22, [sp, #15224]
    ldr x23, [sp, #15216]
    ldr x24, [sp, #15208]
    ldr x25, [sp, #15200]
    ldr x26, [sp, #15192]
    ldr x27, [sp, #15184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L52_22:
    b L52_21
L52_20:
L52_21:
    str x22, [x20]
    b L52_8
L52_7:
L52_8:
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x20, x29, #320
    mov x10, x14
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x21, x29, #360
    ldr x14, [x20]
    add x15, x20, #8
    ldr x15, [x15]
    cbnz x15, L52_23
    b L52_24
L52_24:
    adrp x0, l_text_165@PAGE
    add x0, x0, l_text_165@PAGEOFF
    adrp x1, l_text_164@PAGE
    add x1, x1, l_text_164@PAGEOFF
    bl _lb_core_7trap_at
L52_23:
    ldr x20, [x15]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #14432
    movz x2, #8
    sub x8, x29, #384
    ldr x17, [sp], #16
    blr x17
    sub x22, x29, #384
    add x20, x22, #16
    ldrb w20, [x20]
    cbnz w20, L52_25
    b L52_26
L52_26:
    add x14, x21, #8
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_166@PAGE
    add x15, x15, l_text_166@PAGEOFF
    add x20, x14, #8
    str x15, [x20]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    b L52_27
L52_25:
    ldr x20, [x22]
    movz x16, #14816
    sub x23, x29, x16
    mov x0, x23
    mov x1, #0
    movz x2, #14432
    bl _memset
    mov x0, x20
    mov x1, x23
    movz x2, #14432
    bl _memcpy
    str x20, [x21]
    add x14, x21, #32
    mov x9, #0
    strb w9, [x14]
L52_27:
    add x14, x21, #32
    ldrb w14, [x14]
    cbnz w14, L52_29
    b L52_28
L52_29:
    add x14, x21, #8
    sub x20, x29, #136
    add x15, x20, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15248]
    ldr x20, [sp, #15240]
    ldr x21, [sp, #15232]
    ldr x22, [sp, #15224]
    ldr x23, [sp, #15216]
    ldr x24, [sp, #15208]
    ldr x25, [sp, #15200]
    ldr x26, [sp, #15192]
    ldr x27, [sp, #15184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L52_30:
L52_28:
    ldr x20, [x21]
    movz x10, #14392
    add x22, x20, x10
    mov x0, #0
    movz x16, #14856
    sub x8, x29, x16
    bl _lb_window_10mac_cursor
    movz x16, #14856
    sub x15, x29, x16
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L52_32
    b L52_31
L52_32:
    add x14, x15, #8
    sub x21, x29, #136
    add x22, x21, #8
    mov x10, x14
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_window_11mac_destroy
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15248]
    ldr x20, [sp, #15240]
    ldr x21, [sp, #15232]
    ldr x22, [sp, #15224]
    ldr x23, [sp, #15216]
    ldr x24, [sp, #15208]
    ldr x25, [sp, #15200]
    ldr x26, [sp, #15192]
    ldr x27, [sp, #15184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L52_33:
L52_31:
    ldr x14, [x15]
    str x14, [x22]
    movz x16, #14888
    sub x21, x29, x16
    movz x16, #14920
    sub x23, x29, x16
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    movz x16, #14936
    sub x24, x29, x16
    mov x11, x24
    stp xzr, xzr, [x11, #0]
    sub x25, x29, #168
    add x14, x25, #16
    ldr w14, [x14]
    mov w14, w14
    ucvtf d24, x14
    str d24, [x24]
    add x14, x25, #20
    ldr w14, [x14]
    mov w14, w14
    ucvtf d24, x14
    add x14, x24, #8
    str d24, [x14]
    add x14, x23, #16
    mov x10, x24
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, x23
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    adrp x14, l_text_167@PAGE
    add x14, x14, l_text_167@PAGEOFF
    mov x0, x14
    movz x16, #14976
    sub x8, x29, x16
    bl _lb_window_12native_class
    movz x16, #14976
    sub x23, x29, x16
    add x14, x23, #32
    ldrb w14, [x14]
    cbnz w14, L52_35
    b L52_34
L52_35:
    add x14, x23, #8
    sub x21, x29, #136
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
    mov x0, x20
    bl _lb_window_11mac_destroy
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15248]
    ldr x20, [sp, #15240]
    ldr x21, [sp, #15232]
    ldr x22, [sp, #15224]
    ldr x23, [sp, #15216]
    ldr x24, [sp, #15208]
    ldr x25, [sp, #15200]
    ldr x26, [sp, #15192]
    ldr x27, [sp, #15184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L52_36:
L52_34:
    ldr x22, [x23]
    adrp x24, l_text_168@PAGE
    add x24, x24, l_text_168@PAGEOFF
    movz x16, #15216
    sub x10, x29, x16
    str x24, [x10]
    mov x0, x24
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L52_91
    b L52_92
L52_92:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L52_91:
    b L52_94
L52_93:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L52_94:
    mov x0, x22
    mov x1, x14
    bl _objc_msgSend
    mov x23, x0
    cbnz x23, L52_37
    b L52_38
L52_37:
    b L52_39
L52_38:
    sub x21, x29, #136
    add x14, x21, #8
    adrp x15, _lb_window_failed@PAGE
    add x15, x15, _lb_window_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_169@PAGE
    add x15, x15, l_text_169@PAGEOFF
    movz x16, #14992
    sub x22, x29, x16
    str x15, [x22]
    add x15, x22, #8
    movz x9, #34
    str x9, [x15]
    add x14, x14, #8
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_window_11mac_destroy
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15248]
    ldr x20, [sp, #15240]
    ldr x21, [sp, #15232]
    ldr x22, [sp, #15224]
    ldr x23, [sp, #15216]
    ldr x24, [sp, #15208]
    ldr x25, [sp, #15200]
    ldr x26, [sp, #15192]
    ldr x27, [sp, #15184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L52_40:
L52_39:
    adrp x14, l_text_170@PAGE
    add x14, x14, l_text_170@PAGEOFF
    movz x16, #15216
    sub x10, x29, x16
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L52_95
    b L52_96
L52_96:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L52_95:
    b L52_98
L52_97:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L52_98:
    add x15, x25, #24
    ldrb w15, [x15]
    cbnz w15, L52_41
    b L52_42
L52_41:
    movz x9, #15
    mov x15, x9
    b L52_43
L52_42:
    movz x9, #7
    mov x15, x9
L52_43:
    mov x9, x21
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    mov x0, x23
    mov x1, x14
    mov x2, x15
    movz x3, #2
    mov x4, #0
    bl _objc_msgSend
    mov x22, x0
    cbnz x22, L52_44
    b L52_45
L52_44:
    b L52_46
L52_45:
    sub x21, x29, #136
    add x14, x21, #8
    adrp x15, _lb_window_failed@PAGE
    add x15, x15, _lb_window_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_171@PAGE
    add x15, x15, l_text_171@PAGEOFF
    movz x16, #15008
    sub x22, x29, x16
    str x15, [x22]
    add x15, x22, #8
    movz x9, #36
    str x9, [x15]
    add x14, x14, #8
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_window_11mac_destroy
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15248]
    ldr x20, [sp, #15240]
    ldr x21, [sp, #15232]
    ldr x22, [sp, #15224]
    ldr x23, [sp, #15216]
    ldr x24, [sp, #15208]
    ldr x25, [sp, #15200]
    ldr x26, [sp, #15192]
    ldr x27, [sp, #15184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L52_47:
L52_46:
    str x22, [x20]
    adrp x14, l_text_172@PAGE
    add x14, x14, l_text_172@PAGEOFF
    movz x16, #15216
    sub x10, x29, x16
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L52_99
    b L52_100
L52_100:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L52_99:
    b L52_102
L52_101:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L52_102:
    mov x0, x22
    mov x1, x14
    mov x2, #0
    bl _objc_msgSend
    adrp x15, _lb_window_10view_class@PAGE
    add x15, x15, _lb_window_10view_class@PAGEOFF
    ldr x23, [x15]
    movz x16, #15232
    sub x10, x29, x16
    str x23, [x10]
    cbnz x23, L52_103
    b L52_104
L52_103:
    b L52_105
L52_104:
    adrp x14, l_text_41@PAGE
    add x14, x14, l_text_41@PAGEOFF
    movz x16, #15248
    sub x15, x29, x16
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_42@PAGE
    add x14, x14, l_text_42@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L52_105:
    b L52_107
L52_106:
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L52_107:
    movz x16, #15216
    sub x10, x29, x16
    str x24, [x10]
    mov x0, x24
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L52_108
    b L52_109
L52_109:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L52_108:
    b L52_111
L52_110:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L52_111:
    mov x0, x23
    mov x1, x14
    bl _objc_msgSend
    mov x26, x0
    cbnz x26, L52_48
    b L52_49
L52_48:
    b L52_50
L52_49:
    sub x21, x29, #136
    add x14, x21, #8
    adrp x15, _lb_window_failed@PAGE
    add x15, x15, _lb_window_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_173@PAGE
    add x15, x15, l_text_173@PAGEOFF
    movz x16, #15024
    sub x22, x29, x16
    str x15, [x22]
    add x15, x22, #8
    movz x9, #32
    str x9, [x15]
    add x14, x14, #8
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_window_11mac_destroy
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15248]
    ldr x20, [sp, #15240]
    ldr x21, [sp, #15232]
    ldr x22, [sp, #15224]
    ldr x23, [sp, #15216]
    ldr x24, [sp, #15208]
    ldr x25, [sp, #15200]
    ldr x26, [sp, #15192]
    ldr x27, [sp, #15184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L52_51:
L52_50:
    adrp x14, l_text_174@PAGE
    add x14, x14, l_text_174@PAGEOFF
    movz x16, #15216
    sub x10, x29, x16
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L52_112
    b L52_113
L52_113:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L52_112:
    b L52_115
L52_114:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L52_115:
    mov x9, x21
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    mov x0, x26
    mov x1, x14
    bl _objc_msgSend
    mov x23, x0
    cbnz x23, L52_52
    b L52_53
L52_52:
    b L52_54
L52_53:
    sub x21, x29, #136
    add x14, x21, #8
    adrp x15, _lb_window_failed@PAGE
    add x15, x15, _lb_window_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_175@PAGE
    add x15, x15, l_text_175@PAGEOFF
    movz x16, #15040
    sub x22, x29, x16
    str x15, [x22]
    add x15, x22, #8
    movz x9, #34
    str x9, [x15]
    add x14, x14, #8
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_window_11mac_destroy
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15248]
    ldr x20, [sp, #15240]
    ldr x21, [sp, #15232]
    ldr x22, [sp, #15224]
    ldr x23, [sp, #15216]
    ldr x24, [sp, #15208]
    ldr x25, [sp, #15200]
    ldr x26, [sp, #15192]
    ldr x27, [sp, #15184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L52_55:
L52_54:
    add x14, x20, #8
    str x23, [x14]
    movz x16, #15264
    sub x10, x29, x16
    str x23, [x10]
    movz x16, #15280
    sub x10, x29, x16
    str x20, [x10]
    cbnz x20, L52_119
    b L52_117
L52_119:
L52_116:
    adrp x14, l_text_43@PAGE
    add x14, x14, l_text_43@PAGEOFF
    mov x0, x23
    mov x1, x14
    mov x2, x20
    bl _object_setInstanceVariable
    mov x14, x0
    b L52_118
L52_117:
    adrp x14, l_text_43@PAGE
    add x14, x14, l_text_43@PAGEOFF
    mov x0, x23
    mov x1, x14
    mov x2, #0
    bl _object_setInstanceVariable
    mov x14, x0
L52_118:
L52_120:
    adrp x14, l_text_176@PAGE
    add x14, x14, l_text_176@PAGEOFF
    movz x16, #15216
    sub x10, x29, x16
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L52_121
    b L52_122
L52_122:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L52_121:
    b L52_124
L52_123:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L52_124:
    mov x0, x22
    mov x1, x14
    mov x2, x23
    bl _objc_msgSend
    adrp x15, l_text_177@PAGE
    add x15, x15, l_text_177@PAGEOFF
    mov x0, x15
    movz x16, #15080
    sub x8, x29, x16
    bl _lb_window_12native_class
    movz x16, #15080
    sub x26, x29, x16
    add x15, x26, #32
    ldrb w15, [x15]
    cbnz w15, L52_57
    b L52_56
L52_57:
    add x14, x26, #8
    sub x21, x29, #136
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
    mov x0, x20
    bl _lb_window_11mac_destroy
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15248]
    ldr x20, [sp, #15240]
    ldr x21, [sp, #15232]
    ldr x22, [sp, #15224]
    ldr x23, [sp, #15216]
    ldr x24, [sp, #15208]
    ldr x25, [sp, #15200]
    ldr x26, [sp, #15192]
    ldr x27, [sp, #15184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L52_58:
L52_56:
    ldr x27, [x26]
    movz x16, #15216
    sub x10, x29, x16
    str x24, [x10]
    mov x0, x24
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L52_125
    b L52_126
L52_126:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L52_125:
    b L52_128
L52_127:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L52_128:
    mov x0, x27
    mov x1, x14
    bl _objc_msgSend
    mov x26, x0
    cbnz x26, L52_59
    b L52_60
L52_59:
    b L52_61
L52_60:
    sub x21, x29, #136
    add x14, x21, #8
    adrp x15, _lb_window_failed@PAGE
    add x15, x15, _lb_window_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_178@PAGE
    add x15, x15, l_text_178@PAGEOFF
    movz x16, #15096
    sub x22, x29, x16
    str x15, [x22]
    add x15, x22, #8
    movz x9, #35
    str x9, [x15]
    add x14, x14, #8
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_window_11mac_destroy
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15248]
    ldr x20, [sp, #15240]
    ldr x21, [sp, #15232]
    ldr x22, [sp, #15224]
    ldr x23, [sp, #15216]
    ldr x24, [sp, #15208]
    ldr x25, [sp, #15200]
    ldr x26, [sp, #15192]
    ldr x27, [sp, #15184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L52_62:
L52_61:
    adrp x14, l_text_179@PAGE
    add x14, x14, l_text_179@PAGEOFF
    movz x16, #15216
    sub x10, x29, x16
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L52_129
    b L52_130
L52_130:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L52_129:
    b L52_132
L52_131:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L52_132:
    mov x9, x21
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    mov x0, x26
    mov x1, x14
    movz x2, #1573
    mov x3, x23
    mov x4, #0
    bl _objc_msgSend
    mov x27, x0
    cbnz x27, L52_63
    b L52_64
L52_63:
    b L52_65
L52_64:
    sub x21, x29, #136
    add x14, x21, #8
    adrp x15, _lb_window_failed@PAGE
    add x15, x15, _lb_window_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_180@PAGE
    add x15, x15, l_text_180@PAGEOFF
    movz x16, #15112
    sub x22, x29, x16
    str x15, [x22]
    add x15, x22, #8
    movz x9, #37
    str x9, [x15]
    add x14, x14, #8
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_window_11mac_destroy
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15248]
    ldr x20, [sp, #15240]
    ldr x21, [sp, #15232]
    ldr x22, [sp, #15224]
    ldr x23, [sp, #15216]
    ldr x24, [sp, #15208]
    ldr x25, [sp, #15200]
    ldr x26, [sp, #15192]
    ldr x27, [sp, #15184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L52_66:
L52_65:
    adrp x14, l_text_181@PAGE
    add x14, x14, l_text_181@PAGEOFF
    movz x16, #15216
    sub x10, x29, x16
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L52_133
    b L52_134
L52_134:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L52_133:
    b L52_136
L52_135:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L52_136:
    mov x0, x23
    mov x1, x14
    mov x2, x27
    bl _objc_msgSend
    adrp x21, l_text_108@PAGE
    add x21, x21, l_text_108@PAGEOFF
    movz x16, #15216
    sub x10, x29, x16
    str x21, [x10]
    mov x0, x21
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L52_137
    b L52_138
L52_138:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L52_137:
    b L52_140
L52_139:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L52_140:
    mov x0, x27
    mov x1, x15
    bl _objc_msgSend
    adrp x14, _lb_window_14delegate_class@PAGE
    add x14, x14, _lb_window_14delegate_class@PAGEOFF
    ldr x26, [x14]
    movz x16, #15232
    sub x10, x29, x16
    str x26, [x10]
    cbnz x26, L52_141
    b L52_142
L52_141:
    b L52_143
L52_142:
    adrp x14, l_text_41@PAGE
    add x14, x14, l_text_41@PAGEOFF
    movz x16, #15248
    sub x15, x29, x16
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_42@PAGE
    add x14, x14, l_text_42@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L52_143:
    b L52_145
L52_144:
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L52_145:
    adrp x14, l_text_182@PAGE
    add x14, x14, l_text_182@PAGEOFF
    movz x16, #15216
    sub x10, x29, x16
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L52_146
    b L52_147
L52_147:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L52_146:
    b L52_149
L52_148:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L52_149:
    mov x0, x26
    mov x1, x14
    bl _objc_msgSend
    mov x27, x0
    cbnz x27, L52_67
    b L52_68
L52_67:
    b L52_69
L52_68:
    sub x21, x29, #136
    add x14, x21, #8
    adrp x15, _lb_window_failed@PAGE
    add x15, x15, _lb_window_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_183@PAGE
    add x15, x15, l_text_183@PAGEOFF
    movz x16, #15128
    sub x22, x29, x16
    str x15, [x22]
    add x15, x22, #8
    movz x9, #36
    str x9, [x15]
    add x14, x14, #8
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_window_11mac_destroy
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15248]
    ldr x20, [sp, #15240]
    ldr x21, [sp, #15232]
    ldr x22, [sp, #15224]
    ldr x23, [sp, #15216]
    ldr x24, [sp, #15208]
    ldr x25, [sp, #15200]
    ldr x26, [sp, #15192]
    ldr x27, [sp, #15184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L52_70:
L52_69:
    add x14, x20, #16
    str x27, [x14]
    movz x16, #15264
    sub x10, x29, x16
    str x27, [x10]
    movz x16, #15280
    sub x10, x29, x16
    str x20, [x10]
    cbnz x20, L52_153
    b L52_151
L52_153:
L52_150:
    adrp x14, l_text_43@PAGE
    add x14, x14, l_text_43@PAGEOFF
    mov x0, x27
    mov x1, x14
    mov x2, x20
    bl _object_setInstanceVariable
    mov x14, x0
    b L52_152
L52_151:
    adrp x14, l_text_43@PAGE
    add x14, x14, l_text_43@PAGEOFF
    mov x0, x27
    mov x1, x14
    mov x2, #0
    bl _object_setInstanceVariable
    mov x14, x0
L52_152:
L52_154:
    adrp x14, l_text_184@PAGE
    add x14, x14, l_text_184@PAGEOFF
    movz x16, #15216
    sub x10, x29, x16
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L52_155
    b L52_156
L52_156:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L52_155:
    b L52_158
L52_157:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L52_158:
    mov x0, x22
    mov x1, x14
    mov x2, x27
    bl _objc_msgSend
    adrp x15, l_text_185@PAGE
    add x15, x15, l_text_185@PAGEOFF
    movz x16, #15216
    sub x10, x29, x16
    str x15, [x10]
    mov x0, x15
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L52_159
    b L52_160
L52_160:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L52_159:
    b L52_162
L52_161:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L52_162:
    mov x0, x22
    mov x1, x15
    movz x2, #1
    bl _objc_msgSend
    adrp x14, l_text_186@PAGE
    add x14, x14, l_text_186@PAGEOFF
    movz x16, #15216
    sub x10, x29, x16
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L52_163
    b L52_164
L52_164:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L52_163:
    b L52_166
L52_165:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L52_166:
    mov x0, x22
    mov x1, x14
    mov x2, x23
    bl _objc_msgSend
    mov w14, w0
    adrp x15, l_text_104@PAGE
    add x15, x15, l_text_104@PAGEOFF
    mov x0, x15
    movz x16, #15168
    sub x8, x29, x16
    bl _lb_window_12native_class
    movz x16, #15168
    sub x26, x29, x16
    add x15, x26, #32
    ldrb w15, [x15]
    cbnz w15, L52_72
    b L52_71
L52_72:
    add x14, x26, #8
    sub x21, x29, #136
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
    mov x0, x20
    bl _lb_window_11mac_destroy
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15248]
    ldr x20, [sp, #15240]
    ldr x21, [sp, #15232]
    ldr x22, [sp, #15224]
    ldr x23, [sp, #15216]
    ldr x24, [sp, #15208]
    ldr x25, [sp, #15200]
    ldr x26, [sp, #15192]
    ldr x27, [sp, #15184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L52_73:
L52_71:
    ldr x23, [x26]
    movz x16, #15216
    sub x10, x29, x16
    str x24, [x10]
    mov x0, x24
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L52_167
    b L52_168
L52_168:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L52_167:
    b L52_170
L52_169:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L52_170:
    mov x0, x23
    mov x1, x14
    bl _objc_msgSend
    mov x24, x0
    cbnz x24, L52_74
    b L52_75
L52_74:
    b L52_76
L52_75:
    sub x21, x29, #136
    add x14, x21, #8
    adrp x15, _lb_window_failed@PAGE
    add x15, x15, _lb_window_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_187@PAGE
    add x15, x15, l_text_187@PAGEOFF
    movz x16, #15184
    sub x22, x29, x16
    str x15, [x22]
    add x15, x22, #8
    movz x9, #26
    str x9, [x15]
    add x14, x14, #8
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_window_11mac_destroy
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15248]
    ldr x20, [sp, #15240]
    ldr x21, [sp, #15232]
    ldr x22, [sp, #15224]
    ldr x23, [sp, #15216]
    ldr x24, [sp, #15208]
    ldr x25, [sp, #15200]
    ldr x26, [sp, #15192]
    ldr x27, [sp, #15184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L52_77:
L52_76:
    adrp x14, l_text_188@PAGE
    add x14, x14, l_text_188@PAGEOFF
    movz x16, #15216
    sub x10, x29, x16
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L52_171
    b L52_172
L52_172:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L52_171:
    b L52_174
L52_173:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L52_174:
    ldr x15, [x25]
    add x23, x25, #8
    ldr x23, [x23]
    mov x0, x24
    mov x1, x14
    mov x2, x15
    mov x3, x23
    movz x4, #4
    bl _objc_msgSend
    mov x23, x0
    cbnz x23, L52_78
    b L52_79
L52_78:
    b L52_80
L52_79:
    sub x21, x29, #136
    add x14, x21, #8
    adrp x15, _lb_window_failed@PAGE
    add x15, x15, _lb_window_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_189@PAGE
    add x15, x15, l_text_189@PAGEOFF
    movz x16, #15200
    sub x22, x29, x16
    str x15, [x22]
    add x15, x22, #8
    movz x9, #30
    str x9, [x15]
    add x14, x14, #8
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x21, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_window_11mac_destroy
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15248]
    ldr x20, [sp, #15240]
    ldr x21, [sp, #15232]
    ldr x22, [sp, #15224]
    ldr x23, [sp, #15216]
    ldr x24, [sp, #15208]
    ldr x25, [sp, #15200]
    ldr x26, [sp, #15192]
    ldr x27, [sp, #15184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L52_81:
L52_80:
    adrp x14, l_text_190@PAGE
    add x14, x14, l_text_190@PAGEOFF
    movz x16, #15216
    sub x10, x29, x16
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L52_175
    b L52_176
L52_176:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L52_175:
    b L52_178
L52_177:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L52_178:
    mov x0, x22
    mov x1, x14
    mov x2, x23
    bl _objc_msgSend
    adrp x15, l_text_191@PAGE
    add x15, x15, l_text_191@PAGEOFF
    movz x16, #15216
    sub x10, x29, x16
    str x15, [x10]
    mov x0, x15
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L52_179
    b L52_180
L52_180:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L52_179:
    b L52_182
L52_181:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L52_182:
    mov x0, x22
    mov x1, x15
    bl _objc_msgSend
    sub x24, x29, #136
    str x20, [x24]
    add x14, x24, #32
    mov x9, #0
    strb w9, [x14]
    movz x16, #15216
    sub x10, x29, x16
    str x21, [x10]
    mov x0, x21
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L52_183
    b L52_184
L52_184:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L52_183:
    b L52_186
L52_185:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L52_186:
    mov x0, x23
    mov x1, x14
    bl _objc_msgSend
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x24
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15248]
    ldr x20, [sp, #15240]
    ldr x21, [sp, #15232]
    ldr x22, [sp, #15224]
    ldr x23, [sp, #15216]
    ldr x24, [sp, #15208]
    ldr x25, [sp, #15200]
    ldr x26, [sp, #15192]
    ldr x27, [sp, #15184]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L52_82:
    adrp x14, l_text_108@PAGE
    add x14, x14, l_text_108@PAGEOFF
    movz x16, #15216
    sub x10, x29, x16
    str x14, [x10]
    movz x16, #15216
    sub x14, x29, x16
    ldr x14, [x14]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L52_187
    b L52_188
L52_188:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L52_187:
    mov x15, x14
    b L52_190
L52_189:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L52_190:
    mov x19, x15
    mov x0, x14
    mov x1, x19
    bl _objc_msgSend
    mov x19, x20
    mov x0, x19
    bl _objc_autoreleasePoolPop
    adrp x0, l_text_192@PAGE
    add x0, x0, l_text_192@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_13finish_launch
_lb_window_13finish_launch:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #256
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #224]
    str x20, [sp, #216]
    str x21, [sp, #208]
    str x22, [sp, #200]
    sub x16, x29, #104
    str x0, [x16]
    adrp x14, l_text_193@PAGE
    add x14, x14, l_text_193@PAGEOFF
    mov x0, x14
    sub x8, x29, #144
    bl _lb_window_12native_class
    sub x15, x29, #144
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L53_2
    b L53_1
L53_2:
    add x14, x15, #8
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
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    ldr x22, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L53_3:
L53_1:
    ldr x19, [x15]
    adrp x14, l_text_194@PAGE
    add x14, x14, l_text_194@PAGEOFF
    sub x10, x29, #216
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L53_15
    b L53_16
L53_16:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L53_15:
    b L53_18
L53_17:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L53_18:
    mov x0, x19
    mov x1, x14
    bl _objc_msgSend
    mov x20, x0
    sub x10, x29, #232
    str x20, [x10]
    cbnz x20, L53_19
    b L53_20
L53_19:
    b L53_21
L53_20:
    adrp x14, l_text_41@PAGE
    add x14, x14, l_text_41@PAGEOFF
    sub x15, x29, #248
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_42@PAGE
    add x14, x14, l_text_42@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L53_21:
    b L53_23
L53_22:
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L53_23:
    adrp x14, l_text_195@PAGE
    add x14, x14, l_text_195@PAGEOFF
    sub x10, x29, #216
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L53_24
    b L53_25
L53_25:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L53_24:
    b L53_27
L53_26:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L53_27:
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    mov w15, w0
    cbnz w15, L53_4
    b L53_5
L53_4:
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
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    ldr x22, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L53_7:
    b L53_6
L53_5:
L53_6:
    adrp x14, _lb_window_14delegate_class@PAGE
    add x14, x14, _lb_window_14delegate_class@PAGEOFF
    ldr x19, [x14]
    sub x10, x29, #232
    str x19, [x10]
    cbnz x19, L53_28
    b L53_29
L53_28:
    b L53_30
L53_29:
    adrp x14, l_text_41@PAGE
    add x14, x14, l_text_41@PAGEOFF
    sub x15, x29, #248
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_42@PAGE
    add x14, x14, l_text_42@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L53_30:
    b L53_32
L53_31:
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L53_32:
    adrp x14, l_text_182@PAGE
    add x14, x14, l_text_182@PAGEOFF
    sub x10, x29, #216
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L53_33
    b L53_34
L53_34:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L53_33:
    b L53_36
L53_35:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L53_36:
    mov x0, x19
    mov x1, x14
    bl _objc_msgSend
    mov x20, x0
    cbnz x20, L53_8
    b L53_9
L53_8:
    b L53_10
L53_9:
    sub x19, x29, #88
    adrp x14, _lb_window_failed@PAGE
    add x14, x14, _lb_window_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_196@PAGE
    add x14, x14, l_text_196@PAGEOFF
    sub x15, x29, #160
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
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    ldr x22, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L53_11:
L53_10:
    adrp x14, l_text_197@PAGE
    add x14, x14, l_text_197@PAGEOFF
    mov x0, x14
    sub x8, x29, #200
    bl _lb_window_12native_class
    sub x15, x29, #200
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L53_13
    b L53_12
L53_13:
    add x14, x15, #8
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
    adrp x14, l_text_108@PAGE
    add x14, x14, l_text_108@PAGEOFF
    sub x10, x29, #216
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L53_37
    b L53_38
L53_38:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L53_37:
    b L53_40
L53_39:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L53_40:
    mov x0, x20
    mov x1, x14
    bl _objc_msgSend
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    ldr x22, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L53_14:
L53_12:
    ldr x19, [x15]
    adrp x14, l_text_198@PAGE
    add x14, x14, l_text_198@PAGEOFF
    sub x10, x29, #216
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L53_41
    b L53_42
L53_42:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L53_41:
    b L53_44
L53_43:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L53_44:
    mov x0, x19
    mov x1, x14
    bl _objc_msgSend
    mov x21, x0
    sub x10, x29, #232
    str x21, [x10]
    cbnz x21, L53_45
    b L53_46
L53_45:
    b L53_47
L53_46:
    adrp x14, l_text_41@PAGE
    add x14, x14, l_text_41@PAGEOFF
    sub x15, x29, #248
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_42@PAGE
    add x14, x14, l_text_42@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L53_47:
    b L53_49
L53_48:
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L53_49:
    adrp x14, l_text_199@PAGE
    add x14, x14, l_text_199@PAGEOFF
    sub x10, x29, #216
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x19, x0
    cbnz x19, L53_50
    b L53_51
L53_51:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L53_50:
    b L53_53
L53_52:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L53_53:
    adrp x14, l_text_136@PAGE
    add x14, x14, l_text_136@PAGEOFF
    sub x10, x29, #216
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L53_54
    b L53_55
L53_55:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L53_54:
    b L53_57
L53_56:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L53_57:
    adrp x15, _NSApplicationDidFinishLaunchingNotification@GOTPAGE
    ldr x15, [x15, _NSApplicationDidFinishLaunchingNotification@GOTPAGEOFF]
    ldr x15, [x15]
    sub x22, x29, #104
    ldr x22, [x22]
    mov x0, x21
    mov x1, x19
    mov x2, x20
    mov x3, x14
    mov x4, x15
    mov x5, x22
    bl _objc_msgSend
    adrp x15, l_text_200@PAGE
    add x15, x15, l_text_200@PAGEOFF
    sub x10, x29, #216
    str x15, [x10]
    mov x0, x15
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L53_58
    b L53_59
L53_59:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L53_58:
    b L53_61
L53_60:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L53_61:
    mov x0, x22
    mov x1, x15
    bl _objc_msgSend
    adrp x14, l_text_201@PAGE
    add x14, x14, l_text_201@PAGEOFF
    sub x10, x29, #216
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L53_62
    b L53_63
L53_63:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L53_62:
    b L53_65
L53_64:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L53_65:
    mov x0, x21
    mov x1, x14
    mov x2, x20
    bl _objc_msgSend
    adrp x15, l_text_108@PAGE
    add x15, x15, l_text_108@PAGEOFF
    sub x10, x29, #216
    str x15, [x10]
    mov x0, x15
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L53_66
    b L53_67
L53_67:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L53_66:
    b L53_69
L53_68:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L53_69:
    mov x0, x20
    mov x1, x15
    bl _objc_msgSend
    sub x14, x29, #88
    add x19, x14, #24
    mov x9, #0
    strb w9, [x19]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #32
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #224]
    ldr x20, [sp, #216]
    ldr x21, [sp, #208]
    ldr x22, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_15launch_callback
_lb_window_15launch_callback:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #176
    str x19, [sp, #152]
    str x20, [sp, #144]
    str x21, [sp, #136]
    str x22, [sp, #128]
    sub x16, x29, #64
    str x0, [x16]
    sub x16, x29, #80
    str x1, [x16]
    sub x16, x29, #96
    str x2, [x16]
    sub x14, x29, #64
    sub x14, x29, #80
    sub x14, x29, #96
    ldr x19, [x14]
    adrp x14, l_text_202@PAGE
    add x14, x14, l_text_202@PAGEOFF
    sub x10, x29, #144
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L54_4
    b L54_5
L54_5:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L54_4:
    b L54_7
L54_6:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L54_7:
    mov x0, x19
    mov x1, x14
    bl _objc_msgSend
    mov x20, x0
    sub x10, x29, #160
    str x20, [x10]
    cbnz x20, L54_8
    b L54_9
L54_8:
    b L54_10
L54_9:
    adrp x14, l_text_41@PAGE
    add x14, x14, l_text_41@PAGEOFF
    sub x15, x29, #176
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_42@PAGE
    add x14, x14, l_text_42@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L54_10:
    b L54_12
L54_11:
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L54_12:
    adrp x14, l_text_203@PAGE
    add x14, x14, l_text_203@PAGEOFF
    mov x0, x14
    bl _objc_getClass
    mov x19, x0
    cbnz x19, L54_1
    b L54_2
L54_1:
    b L54_3
L54_2:
    adrp x14, l_text_204@PAGE
    add x14, x14, l_text_204@PAGEOFF
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #27
    str x9, [x14]
    adrp x14, l_text_205@PAGE
    add x14, x14, l_text_205@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_205@PAGE
    add x0, x0, l_text_205@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L54_3:
    adrp x14, l_text_206@PAGE
    add x14, x14, l_text_206@PAGEOFF
    sub x10, x29, #144
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x21, x0
    cbnz x21, L54_13
    b L54_14
L54_14:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L54_13:
    b L54_16
L54_15:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L54_16:
    sub x22, x29, #128
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    mov x9, #0
    fmov d24, x9
    movz x16, #16
    sub sp, sp, x16
    mov x9, #0
    str x9, [sp, #0]
    mov x9, x22
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    fmov d16, d24
    fmov d2, d16
    mov x0, x19
    mov x1, x21
    movz x2, #15
    mov x3, #0
    mov x4, #0
    mov x5, #0
    mov x6, #0
    mov x7, #0
    bl _objc_msgSend
    movz x16, #16
    add sp, sp, x16
    mov x22, x0
    sub x10, x29, #160
    str x22, [x10]
    cbnz x22, L54_17
    b L54_18
L54_17:
    b L54_19
L54_18:
    adrp x14, l_text_41@PAGE
    add x14, x14, l_text_41@PAGEOFF
    sub x15, x29, #176
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_42@PAGE
    add x14, x14, l_text_42@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L54_19:
    b L54_21
L54_20:
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L54_21:
    adrp x14, l_text_207@PAGE
    add x14, x14, l_text_207@PAGEOFF
    sub x10, x29, #144
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L54_22
    b L54_23
L54_23:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L54_22:
    b L54_25
L54_24:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L54_25:
    mov x0, x20
    mov x1, x14
    mov x2, x22
    movz x3, #1
    bl _objc_msgSend
    adrp x15, l_text_208@PAGE
    add x15, x15, l_text_208@PAGEOFF
    sub x10, x29, #144
    str x15, [x10]
    mov x0, x15
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L54_26
    b L54_27
L54_27:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L54_26:
    b L54_29
L54_28:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L54_29:
    mov x0, x20
    mov x1, x15
    mov x2, #0
    bl _objc_msgSend
    ldr x19, [sp, #152]
    ldr x20, [sp, #144]
    ldr x21, [sp, #136]
    ldr x22, [sp, #128]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_8mac_size
_lb_window_8mac_size:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #352
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #320]
    str x20, [sp, #312]
    str x21, [sp, #304]
    str x22, [sp, #296]
    str x23, [sp, #288]
    str x24, [sp, #280]
    str x25, [sp, #272]
    sub x16, x29, #136
    str x0, [x16]
    bl _objc_autoreleasePoolPush
    mov x19, x0
    cbnz x19, L55_1
    b L55_2
L55_2:
    adrp x0, l_text_212@PAGE
    add x0, x0, l_text_212@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L55_1:
    sub x14, x29, #136
    ldr x20, [x14]
    add x14, x20, #8
    ldr x21, [x14]
    sub x10, x29, #320
    str x21, [x10]
    cbnz x21, L55_4
    b L55_5
L55_4:
    b L55_6
L55_5:
    adrp x14, l_text_41@PAGE
    add x14, x14, l_text_41@PAGEOFF
    sub x15, x29, #336
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_42@PAGE
    add x14, x14, l_text_42@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L55_6:
    b L55_8
L55_7:
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L55_8:
    sub x22, x29, #168
    adrp x14, l_text_64@PAGE
    add x14, x14, l_text_64@PAGEOFF
    sub x10, x29, #352
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L55_9
    b L55_10
L55_10:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L55_9:
    b L55_12
L55_11:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L55_12:
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    sub x16, x29, #200
    str d0, [x16, #0]
    sub x16, x29, #200
    str d1, [x16, #8]
    sub x16, x29, #200
    str d2, [x16, #16]
    sub x16, x29, #200
    str d3, [x16, #24]
    sub x15, x29, #200
    mov x10, x15
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    sub x23, x29, #232
    adrp x15, l_text_213@PAGE
    add x15, x15, l_text_213@PAGEOFF
    sub x10, x29, #352
    str x15, [x10]
    mov x0, x15
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L55_13
    b L55_14
L55_14:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L55_13:
    b L55_16
L55_15:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L55_16:
    mov x9, x22
    ldr d0, [x9, #0]
    ldr d1, [x9, #8]
    ldr d2, [x9, #16]
    ldr d3, [x9, #24]
    mov x0, x21
    mov x1, x15
    bl _objc_msgSend
    sub x16, x29, #264
    str d0, [x16, #0]
    sub x16, x29, #264
    str d1, [x16, #8]
    sub x16, x29, #264
    str d2, [x16, #16]
    sub x16, x29, #264
    str d3, [x16, #24]
    sub x14, x29, #264
    mov x10, x14
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    sub x25, x29, #304
    mov x11, x25
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    add x14, x22, #16
    ldr d24, [x14]
    str d24, [x25]
    add x14, x14, #8
    ldr d24, [x14]
    add x14, x25, #8
    str d24, [x14]
    add x14, x23, #16
    ldr d24, [x14]
    add x24, x25, #16
    str d24, [x24]
    add x14, x14, #8
    ldr d24, [x14]
    add x14, x25, #24
    str d24, [x14]
    ldr x24, [x20]
    sub x10, x29, #320
    str x24, [x10]
    cbnz x24, L55_17
    b L55_18
L55_17:
    b L55_19
L55_18:
    adrp x14, l_text_41@PAGE
    add x14, x14, l_text_41@PAGEOFF
    sub x15, x29, #336
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_42@PAGE
    add x14, x14, l_text_42@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L55_19:
    b L55_21
L55_20:
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L55_21:
    adrp x14, l_text_214@PAGE
    add x14, x14, l_text_214@PAGEOFF
    sub x10, x29, #352
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L55_22
    b L55_23
L55_23:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L55_22:
    b L55_25
L55_24:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L55_25:
    mov x0, x24
    mov x1, x14
    bl _objc_msgSend
    fmov d24, d0
    add x15, x25, #32
    str d24, [x15]
    sub x20, x29, #120
    mov x10, x25
    mov x11, x20
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    mov x0, x19
    bl _objc_autoreleasePoolPop
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #320]
    ldr x20, [sp, #312]
    ldr x21, [sp, #304]
    ldr x22, [sp, #296]
    ldr x23, [sp, #288]
    ldr x24, [sp, #280]
    ldr x25, [sp, #272]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L55_3:
    mov x0, x14
    bl _objc_autoreleasePoolPop
    adrp x0, l_text_215@PAGE
    add x0, x0, l_text_215@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_11mac_destroy
_lb_window_11mac_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    str x21, [sp, #72]
    sub x16, x29, #56
    str x0, [x16]
    bl _objc_autoreleasePoolPush
    mov x19, x0
    cbnz x19, L56_1
    b L56_2
L56_2:
    adrp x0, l_text_227@PAGE
    add x0, x0, l_text_227@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L56_1:
    sub x14, x29, #56
    ldr x20, [x14]
    movz x10, #14379
    add x14, x20, x10
    movz x9, #1
    strb w9, [x14]
    mov x0, x20
    bl _lb_window_16mac_clear_marked
    add x14, x20, #8
    ldr x14, [x14]
    cbnz x14, L56_6
    b L56_4
L56_6:
L56_3:
    sub x10, x29, #72
    str x14, [x10]
    mov x9, #0
    sub x10, x29, #88
    str x9, [x10]
L56_19:
    adrp x15, l_text_43@PAGE
    add x15, x15, l_text_43@PAGEOFF
    mov x0, x14
    mov x1, x15
    mov x2, #0
    bl _object_setInstanceVariable
    mov x14, x0
L56_20:
L56_22:
    b L56_5
L56_4:
L56_5:
    add x14, x20, #16
    ldr x14, [x14]
    cbnz x14, L56_10
    b L56_8
L56_10:
L56_7:
    sub x10, x29, #72
    str x14, [x10]
    mov x9, #0
    sub x10, x29, #88
    str x9, [x10]
L56_24:
    adrp x15, l_text_43@PAGE
    add x15, x15, l_text_43@PAGEOFF
    mov x0, x14
    mov x1, x15
    mov x2, #0
    bl _object_setInstanceVariable
    mov x14, x0
L56_25:
L56_27:
    b L56_9
L56_8:
L56_9:
    ldr x21, [x20]
    cbnz x21, L56_14
    b L56_12
L56_14:
L56_11:
    adrp x14, l_text_184@PAGE
    add x14, x14, l_text_184@PAGEOFF
    sub x10, x29, #104
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L56_28
    b L56_29
L56_29:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L56_28:
L56_31:
    mov x0, x21
    mov x1, x14
    mov x2, #0
    bl _objc_msgSend
    adrp x15, l_text_228@PAGE
    add x15, x15, l_text_228@PAGEOFF
    sub x10, x29, #104
    str x15, [x10]
    mov x0, x15
    bl _sel_registerName
    mov x15, x0
    cbnz x15, L56_32
    b L56_33
L56_33:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L56_32:
L56_35:
    mov x0, x21
    mov x1, x15
    mov x2, #0
    bl _objc_msgSend
    adrp x14, l_text_229@PAGE
    add x14, x14, l_text_229@PAGEOFF
    sub x10, x29, #104
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L56_36
    b L56_37
L56_37:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L56_36:
L56_39:
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    b L56_13
L56_12:
L56_13:
    movz x10, #14378
    add x14, x20, x10
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    b.ne L56_16
L56_15:
    mov x0, x20
    bl _lb_window_8mac_free
    b L56_17
L56_16:
L56_17:
    mov x0, x19
    bl _objc_autoreleasePoolPop
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_8mac_free
_lb_window_8mac_free:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    str x19, [sp, #72]
    str x20, [sp, #64]
    str x21, [sp, #56]
    sub x16, x29, #56
    str x0, [x16]
    bl _objc_autoreleasePoolPush
    mov x19, x0
    cbnz x19, L57_1
    b L57_2
L57_2:
    adrp x0, l_text_230@PAGE
    add x0, x0, l_text_230@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L57_1:
    sub x14, x29, #56
    ldr x20, [x14]
    ldr x21, [x20]
    cbnz x21, L57_6
    b L57_4
L57_6:
L57_3:
    adrp x14, l_text_108@PAGE
    add x14, x14, l_text_108@PAGEOFF
    sub x10, x29, #88
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L57_17
    b L57_18
L57_18:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L57_17:
    b L57_20
L57_19:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L57_20:
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    b L57_5
L57_4:
L57_5:
    add x14, x20, #8
    ldr x21, [x14]
    cbnz x21, L57_10
    b L57_8
L57_10:
L57_7:
    adrp x14, l_text_108@PAGE
    add x14, x14, l_text_108@PAGEOFF
    sub x10, x29, #88
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L57_21
    b L57_22
L57_22:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L57_21:
    b L57_24
L57_23:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L57_24:
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    b L57_9
L57_8:
L57_9:
    add x14, x20, #16
    ldr x21, [x14]
    cbnz x21, L57_14
    b L57_12
L57_14:
L57_11:
    adrp x14, l_text_108@PAGE
    add x14, x14, l_text_108@PAGEOFF
    sub x10, x29, #88
    str x14, [x10]
    mov x0, x14
    bl _sel_registerName
    mov x14, x0
    cbnz x14, L57_25
    b L57_26
L57_26:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L57_25:
    b L57_28
L57_27:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L57_28:
    mov x0, x21
    mov x1, x14
    bl _objc_msgSend
    b L57_13
L57_12:
L57_13:
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x15, x29, #72
    str x20, [x15]
    add x21, x15, #8
    movz x9, #14432
    str x9, [x21]
    ldr x21, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L57_16
    b L57_15
L57_16:
    add x20, x14, #16
    ldr x20, [x20]
    mov x17, x20
    str x17, [sp, #-16]!
    mov x0, x21
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L57_15:
    mov x0, x19
    bl _objc_autoreleasePoolPop
    ldr x19, [sp, #72]
    ldr x20, [sp, #64]
    ldr x21, [sp, #56]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_8win_open
_lb_window_8win_open:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    movz x16, #15216
    sub sp, sp, x16
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #15184]
    str x20, [sp, #15176]
    str x21, [sp, #15168]
    str x22, [sp, #15160]
    str x23, [sp, #15152]
    str x24, [sp, #15144]
    str x25, [sp, #15136]
    str x26, [sp, #15128]
    str x27, [sp, #15120]
    str x28, [sp, #15112]
    sub x16, x29, #176
    str x0, [x16]
    sub x0, x29, #176
    ldr x1, [x0]
    movz x2, #32
    bl _memcpy
    adrp x19, _lb_window_14win_class_atom@PAGE
    add x19, x19, _lb_window_14win_class_atom@PAGEOFF
    ldrh w14, [x19]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L58_61
L58_60:
    movz x16, #15024
    sub x14, x29, x16
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #208
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L58_70
L58_61:
L58_62:
    movn x0, #3
    bl _SetProcessDpiAwarenessContext
    mov w14, w0
    movz x16, #15104
    sub x20, x29, x16
    movz x16, #15184
    sub x21, x29, x16
    mov x11, x21
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    stp xzr, xzr, [x11, #48]
    stp xzr, xzr, [x11, #64]
    movz x9, #80
    str w9, [x21]
    adrp x14, _lb_window_12win_callback@GOTPAGE
    ldr x14, [x14, _lb_window_12win_callback@GOTPAGEOFF]
    add x15, x21, #8
    str x14, [x15]
    mov x0, #0
    bl _GetModuleHandleW
    mov x14, x0
    cbnz x14, L58_64
    b L58_65
L58_65:
    adrp x0, l_text_231@PAGE
    add x0, x0, l_text_231@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L58_64:
    add x15, x21, #24
    str x14, [x15]
    mov x0, #0
    movz x1, #32512
    bl _LoadCursorW
    mov x15, x0
    add x22, x21, #40
    str x15, [x22]
    add x15, x21, #48
    movz x9, #6
    str x9, [x15]
    adrp x15, _lb_window_14win_class_name@PAGE
    add x15, x15, _lb_window_14win_class_name@PAGEOFF
    add x22, x21, #64
    str x15, [x22]
    mov x10, x21
    mov x11, x20
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
    mov x0, x20
    bl _RegisterClassExW
    mov w15, w0
    strh w15, [x19]
    ldrh w15, [x19]
    mov x10, #0
    cmp w15, w10
    b.ne L58_67
L58_66:
    movz x16, #15024
    sub x19, x29, x16
    adrp x14, _lb_window_failed@PAGE
    add x14, x14, _lb_window_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_232@PAGE
    add x14, x14, l_text_232@PAGEOFF
    movz x16, #15200
    sub x15, x29, x16
    str x14, [x15]
    add x14, x15, #8
    movz x9, #47
    str x9, [x14]
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x19, #24
    movz x9, #1
    strb w9, [x14]
    mov x10, x19
    sub x11, x29, #208
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    b L58_70
L58_67:
L58_68:
    movz x16, #15024
    sub x14, x29, x16
    add x15, x14, #24
    mov x9, #0
    strb w9, [x15]
    mov x10, x14
    sub x11, x29, #208
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
L58_70:
    sub x15, x29, #208
    add x14, x15, #24
    ldrb w14, [x14]
    cbnz w14, L58_2
    b L58_1
L58_2:
    sub x19, x29, #144
    add x14, x19, #8
    mov x10, x15
    mov x11, x14
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
    ldr x19, [sp, #15184]
    ldr x20, [sp, #15176]
    ldr x21, [sp, #15168]
    ldr x22, [sp, #15160]
    ldr x23, [sp, #15152]
    ldr x24, [sp, #15144]
    ldr x25, [sp, #15136]
    ldr x26, [sp, #15128]
    ldr x27, [sp, #15120]
    ldr x28, [sp, #15112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L58_1:
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x19, x29, #224
    mov x10, x14
    mov x11, x19
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    sub x20, x29, #264
    ldr x14, [x19]
    add x15, x19, #8
    ldr x15, [x15]
    cbnz x15, L58_4
    b L58_5
L58_5:
    adrp x0, l_text_233@PAGE
    add x0, x0, l_text_233@PAGEOFF
    adrp x1, l_text_164@PAGE
    add x1, x1, l_text_164@PAGEOFF
    bl _lb_core_7trap_at
L58_4:
    ldr x19, [x15]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #14432
    movz x2, #8
    sub x8, x29, #288
    ldr x17, [sp], #16
    blr x17
    sub x21, x29, #288
    add x19, x21, #16
    ldrb w19, [x19]
    cbnz w19, L58_6
    b L58_7
L58_7:
    add x14, x20, #8
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_166@PAGE
    add x15, x15, l_text_166@PAGEOFF
    add x19, x14, #8
    str x15, [x19]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    b L58_8
L58_6:
    ldr x19, [x21]
    movz x16, #14720
    sub x22, x29, x16
    mov x0, x22
    mov x1, #0
    movz x2, #14432
    bl _memset
    mov x0, x19
    mov x1, x22
    movz x2, #14432
    bl _memcpy
    str x19, [x20]
    add x14, x20, #32
    mov x9, #0
    strb w9, [x14]
L58_8:
    add x14, x20, #32
    ldrb w14, [x14]
    cbnz w14, L58_10
    b L58_9
L58_10:
    add x14, x20, #8
    sub x19, x29, #144
    add x15, x19, #8
    mov x10, x14
    mov x11, x15
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
    ldr x19, [sp, #15184]
    ldr x20, [sp, #15176]
    ldr x21, [sp, #15168]
    ldr x22, [sp, #15160]
    ldr x23, [sp, #15152]
    ldr x24, [sp, #15144]
    ldr x25, [sp, #15136]
    ldr x26, [sp, #15128]
    ldr x27, [sp, #15120]
    ldr x28, [sp, #15112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L58_9:
    ldr x19, [x20]
    movz x10, #14392
    add x21, x19, x10
    mov x0, #0
    movz x16, #14760
    sub x8, x29, x16
    bl _lb_window_10win_cursor
    movz x16, #14760
    sub x15, x29, x16
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L58_13
    b L58_12
L58_13:
    add x14, x15, #8
    sub x20, x29, #144
    add x21, x20, #8
    mov x10, x14
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_window_11win_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15184]
    ldr x20, [sp, #15176]
    ldr x21, [sp, #15168]
    ldr x22, [sp, #15160]
    ldr x23, [sp, #15152]
    ldr x24, [sp, #15144]
    ldr x25, [sp, #15136]
    ldr x26, [sp, #15128]
    ldr x27, [sp, #15120]
    ldr x28, [sp, #15112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L58_12:
    ldr x14, [x15]
    str x14, [x21]
    movz x16, #14776
    sub x23, x29, x16
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    str x0, [sp, #8]
    sub x20, x29, #176
    add x14, x20, #8
    ldr x22, [x14]
    mov x9, x22
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_234@PAGE
    add x0, x0, l_text_234@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x25, x9
    movz x16, #14824
    sub x26, x29, x16
    movz x10, #8192, lsl #48
    cmp x25, x10
    b.ls L58_16
L58_15:
    add x14, x26, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_235@PAGE
    add x15, x15, l_text_235@PAGEOFF
    add x21, x14, #8
    str x15, [x21]
    add x14, x14, #16
    movz x9, #47
    str x9, [x14]
    add x14, x26, #40
    movz x9, #1
    strb w9, [x14]
    b L58_17
L58_16:
    lsl x21, x25, #1
    ldr x9, [sp, #8]
    ldr x14, [x9]
    ldr x9, [sp, #8]
    add x15, x9, #8
    ldr x15, [x15]
    cbnz x15, L58_18
    b L58_19
L58_19:
    adrp x0, l_text_234@PAGE
    add x0, x0, l_text_234@PAGEOFF
    adrp x1, l_text_164@PAGE
    add x1, x1, l_text_164@PAGEOFF
    bl _lb_core_7trap_at
L58_18:
    ldr x27, [x15]
    mov x17, x27
    str x17, [sp, #-16]!
    mov x0, x14
    mov x1, x21
    movz x2, #2
    movz x16, #14848
    sub x8, x29, x16
    ldr x17, [sp], #16
    blr x17
    movz x16, #14848
    sub x24, x29, x16
    add x27, x24, #16
    ldrb w27, [x27]
    mov x10, #0
    cmp x21, x10
    cset w28, ne
    mov x10, #0
    cmp w27, w10
    cset w27, eq
    and w27, w28, w27
    cbnz w27, L58_20
    b L58_21
L58_20:
    add x14, x26, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_166@PAGE
    add x15, x15, l_text_166@PAGEOFF
    add x21, x14, #8
    str x15, [x21]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x26, #40
    movz x9, #1
    strb w9, [x14]
    b L58_17
L58_21:
    ldr x14, [x24]
    str x14, [x26]
    add x14, x26, #8
    str x25, [x14]
    add x14, x26, #40
    mov x9, #0
    strb w9, [x14]
L58_17:
    add x14, x26, #40
    ldrb w14, [x14]
    cbnz w14, L58_23
    b L58_22
L58_23:
    add x14, x26, #16
    sub x20, x29, #144
    add x15, x20, #8
    mov x10, x14
    mov x11, x15
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    mov x0, x19
    bl _lb_window_11win_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15184]
    ldr x20, [sp, #15176]
    ldr x21, [sp, #15168]
    ldr x22, [sp, #15160]
    ldr x23, [sp, #15152]
    ldr x24, [sp, #15144]
    ldr x25, [sp, #15136]
    ldr x26, [sp, #15128]
    ldr x27, [sp, #15120]
    ldr x28, [sp, #15112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L58_22:
    mov x10, x26
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x10, #0
    cmp x22, x10
    b.ls L58_26
L58_25:
    ldr x14, [x20]
    ldr x21, [x23]
    add x15, x23, #8
    ldr x24, [x15]
    mov w9, w24
    movz x10, #1
    subs w9, w9, w10
    b.vc 1f
    adrp x0, l_text_236@PAGE
    add x0, x0, l_text_236@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w15, w9
    movz x0, #65001
    movz x1, #8
    mov x2, x14
    mov x3, x22
    mov x4, x21
    mov x5, x15
    bl _MultiByteToWideChar
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L58_29
L58_28:
    sub x20, x29, #144
    add x14, x20, #8
    adrp x15, _lb_window_15invalid_options@PAGE
    add x15, x15, _lb_window_15invalid_options@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_237@PAGE
    add x15, x15, l_text_237@PAGEOFF
    movz x16, #14864
    sub x22, x29, x16
    str x15, [x22]
    add x15, x22, #8
    movz x9, #49
    str x9, [x15]
    add x14, x14, #8
    mov x10, x22
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    movz x16, #14880
    sub x14, x29, x16
    mov x9, x24
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_238@PAGE
    add x0, x0, l_text_238@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x21, [x14]
    add x22, x14, #8
    str x15, [x22]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    ldr x9, [sp, #8]
    add x22, x9, #8
    ldr x22, [x22]
    cbnz x22, L58_32
    b L58_31
L58_32:
    add x21, x22, #16
    ldr x21, [x21]
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L58_31:
    mov x0, x19
    bl _lb_window_11win_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15184]
    ldr x20, [sp, #15176]
    ldr x21, [sp, #15168]
    ldr x22, [sp, #15160]
    ldr x23, [sp, #15152]
    ldr x24, [sp, #15144]
    ldr x25, [sp, #15136]
    ldr x26, [sp, #15128]
    ldr x27, [sp, #15120]
    ldr x28, [sp, #15112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L58_29:
L58_30:
    mov w15, w14
    b L58_27
L58_26:
    mov x9, #0
    mov w15, w9
L58_27:
    sxtw x14, w15
    ldr x21, [x23]
    add x22, x23, #8
    ldr x22, [x22]
    cmp x14, x22
    b.lo 1f
    adrp x0, l_text_239@PAGE
    add x0, x0, l_text_239@PAGEOFF
    adrp x1, l_text_267@PAGE
    add x1, x1, l_text_267@PAGEOFF
    bl _lb_core_7trap_at
1:
    lsl x14, x14, #1
    add x14, x21, x14
    mov x9, #0
    strh w9, [x14]
    add x14, x20, #24
    ldrb w14, [x14]
    cbnz w14, L58_34
    b L58_35
L58_34:
    movz x9, #207, lsl #16
    mov w23, w9
    b L58_36
L58_35:
    movz x9, #202, lsl #16
    mov w23, w9
L58_36:
    bl _GetDpiForSystem
    mov w24, w0
    movz x16, #14896
    sub x25, x29, x16
    movz x16, #14912
    sub x26, x29, x16
    mov x11, x26
    stp xzr, xzr, [x11, #0]
    add x14, x20, #16
    ldr w14, [x14]
    mov w14, w14
    mov w15, w24
    mul x14, x14, x15
L58_38:
    movz x10, #96
    udiv x27, x14, x10
    add x28, x26, #8
    str w27, [x28]
    add x27, x20, #20
    ldr w27, [x27]
    mov w27, w27
    mul x27, x15, x27
L58_40:
    movz x10, #96
    udiv x14, x27, x10
    add x15, x26, #12
    str w14, [x15]
    mov x10, x26
    mov x11, x25
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x0, x25
    mov x1, x23
    mov x2, #0
    mov x3, #0
    mov x4, x24
    bl _AdjustWindowRectExForDpi
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ne L58_42
L58_41:
    sub x20, x29, #144
    add x14, x20, #8
    adrp x15, _lb_window_failed@PAGE
    add x15, x15, _lb_window_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_241@PAGE
    add x15, x15, l_text_241@PAGEOFF
    movz x16, #14928
    sub x23, x29, x16
    str x15, [x23]
    add x15, x23, #8
    movz x9, #52
    str x9, [x15]
    add x14, x14, #8
    mov x10, x23
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    movz x16, #14944
    sub x14, x29, x16
    mov x9, x22
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_242@PAGE
    add x0, x0, l_text_242@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x21, [x14]
    add x23, x14, #8
    str x15, [x23]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    ldr x9, [sp, #8]
    add x23, x9, #8
    ldr x23, [x23]
    cbnz x23, L58_45
    b L58_44
L58_45:
    add x21, x23, #16
    ldr x21, [x21]
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L58_44:
    mov x0, x19
    bl _lb_window_11win_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15184]
    ldr x20, [sp, #15176]
    ldr x21, [sp, #15168]
    ldr x22, [sp, #15160]
    ldr x23, [sp, #15152]
    ldr x24, [sp, #15144]
    ldr x25, [sp, #15136]
    ldr x26, [sp, #15128]
    ldr x27, [sp, #15120]
    ldr x28, [sp, #15112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L58_42:
L58_43:
    adrp x20, _lb_window_14win_class_name@PAGE
    add x20, x20, _lb_window_14win_class_name@PAGEOFF
    add x14, x25, #8
    ldrsw x14, [x14]
    ldrsw x15, [x25]
    mov w9, w14
    mov w10, w15
    subs w9, w9, w10
    b.vc 1f
    adrp x0, l_text_243@PAGE
    add x0, x0, l_text_243@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w24, w9
    add x14, x25, #12
    ldrsw x14, [x14]
    add x15, x25, #4
    ldrsw x15, [x15]
    mov w9, w14
    mov w10, w15
    subs w9, w9, w10
    b.vc 1f
    adrp x0, l_text_243@PAGE
    add x0, x0, l_text_243@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w26, w9
    mov x0, #0
    bl _GetModuleHandleW
    mov x14, x0
    cbnz x14, L58_47
    b L58_48
L58_48:
    adrp x0, l_text_243@PAGE
    add x0, x0, l_text_243@PAGEOFF
    adrp x1, l_text_37@PAGE
    add x1, x1, l_text_37@PAGEOFF
    bl _lb_core_7trap_at
L58_47:
    movz x16, #32
    sub sp, sp, x16
    mov x9, #0
    str x9, [sp, #0]
    mov x9, #0
    str x9, [sp, #8]
    mov x9, x14
    str x9, [sp, #16]
    mov x9, x19
    str x9, [sp, #24]
    mov x0, #0
    mov x1, x20
    mov x2, x21
    mov x3, x23
    movz x4, #32768, lsl #16
    movk x4, #65535, lsl #32
    movk x4, #65535, lsl #48
    movz x5, #32768, lsl #16
    movk x5, #65535, lsl #32
    movk x5, #65535, lsl #48
    mov x6, x24
    mov x7, x26
    bl _CreateWindowExW
    movz x16, #32
    add sp, sp, x16
    mov x15, x0
    cbnz x15, L58_49
    b L58_50
L58_49:
    b L58_51
L58_50:
    sub x20, x29, #144
    add x14, x20, #8
    adrp x15, _lb_window_failed@PAGE
    add x15, x15, _lb_window_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_244@PAGE
    add x15, x15, l_text_244@PAGEOFF
    movz x16, #14960
    sub x23, x29, x16
    str x15, [x23]
    add x15, x23, #8
    movz x9, #38
    str x9, [x15]
    add x14, x14, #8
    mov x10, x23
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    add x14, x20, #32
    movz x9, #1
    strb w9, [x14]
    movz x16, #14976
    sub x14, x29, x16
    mov x9, x22
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_243@PAGE
    add x0, x0, l_text_243@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    str x21, [x14]
    add x23, x14, #8
    str x15, [x23]
    ldr x9, [sp, #8]
    ldr x15, [x9]
    ldr x9, [sp, #8]
    add x23, x9, #8
    ldr x23, [x23]
    cbnz x23, L58_53
    b L58_52
L58_53:
    add x21, x23, #16
    ldr x21, [x21]
    mov x17, x21
    str x17, [sp, #-16]!
    mov x0, x15
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L58_52:
    mov x0, x19
    bl _lb_window_11win_destroy
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15184]
    ldr x20, [sp, #15176]
    ldr x21, [sp, #15168]
    ldr x22, [sp, #15160]
    ldr x23, [sp, #15152]
    ldr x24, [sp, #15144]
    ldr x25, [sp, #15136]
    ldr x26, [sp, #15128]
    ldr x27, [sp, #15120]
    ldr x28, [sp, #15112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L58_51:
    str x15, [x19]
    sub x20, x29, #144
    str x19, [x20]
    add x14, x20, #32
    mov x9, #0
    strb w9, [x14]
    movz x16, #14992
    sub x14, x29, x16
    mov x9, x22
    movz x10, #2
    umulh x11, x9, x10
    mul x9, x9, x10
    cbz x11, 1f
    adrp x0, l_text_245@PAGE
    add x0, x0, l_text_245@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x23, x9
    str x21, [x14]
    add x24, x14, #8
    str x23, [x24]
    ldr x9, [sp, #8]
    ldr x23, [x9]
    ldr x9, [sp, #8]
    add x24, x9, #8
    ldr x24, [x24]
    cbnz x24, L58_56
    b L58_55
L58_56:
    add x15, x24, #16
    ldr x15, [x15]
    mov x17, x15
    str x17, [sp, #-16]!
    mov x0, x23
    mov x9, x14
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L58_55:
    mov x1, x20
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #15184]
    ldr x20, [sp, #15176]
    ldr x21, [sp, #15168]
    ldr x22, [sp, #15160]
    ldr x23, [sp, #15152]
    ldr x24, [sp, #15144]
    ldr x25, [sp, #15136]
    ldr x26, [sp, #15128]
    ldr x27, [sp, #15120]
    ldr x28, [sp, #15112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_8win_size
_lb_window_8win_size:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #192]
    str x20, [sp, #184]
    str x21, [sp, #176]
    str d8, [sp, #168]
    str d9, [sp, #160]
    str d10, [sp, #152]
    sub x16, x29, #128
    str x0, [x16]
    sub x14, x29, #128
    ldr x14, [x14]
    ldr x19, [x14]
    sub x10, x29, #200
    str x19, [x10]
    cbnz x19, L59_5
    b L59_6
L59_5:
    b L59_7
L59_6:
    adrp x14, l_text_41@PAGE
    add x14, x14, l_text_41@PAGEOFF
    sub x15, x29, #216
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_42@PAGE
    add x14, x14, l_text_42@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L59_7:
    b L59_9
L59_8:
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L59_9:
    sub x20, x29, #144
    mov x11, x20
    stp xzr, xzr, [x11, #0]
    mov x0, x19
    mov x1, x20
    bl _GetClientRect
    mov w14, w0
    mov x0, x19
    bl _GetDpiForWindow
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ls L59_2
L59_1:
    mov w15, w14
    ucvtf d24, x15
    movz x9, #16472, lsl #48
    fmov d25, x9
    fdiv d24, d24, d25
    fmov d8, d24
    b L59_3
L59_2:
    movz x9, #16368, lsl #48
    fmov d8, x9
L59_3:
    add x14, x20, #8
    ldrsw x14, [x14]
    ldrsw x15, [x20]
    mov w9, w14
    mov w10, w15
    subs w9, w9, w10
    b.vc 1f
    adrp x0, l_text_246@PAGE
    add x0, x0, l_text_246@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    sxtw x14, w14
    scvtf d9, x14
    add x14, x20, #12
    ldrsw x14, [x14]
    add x15, x20, #4
    ldrsw x15, [x15]
    mov w9, w14
    mov w10, w15
    subs w9, w9, w10
    b.vc 1f
    adrp x0, l_text_247@PAGE
    add x0, x0, l_text_247@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    sxtw x14, w14
    scvtf d10, x14
    sub x19, x29, #184
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    str xzr, [x11, #32]
    fdiv d24, d9, d8
    str d24, [x19]
    fdiv d24, d10, d8
    add x14, x19, #8
    str d24, [x14]
    add x14, x19, #16
    str d9, [x14]
    add x14, x19, #24
    str d10, [x14]
    add x14, x19, #32
    str d8, [x14]
    sub x21, x29, #112
    mov x10, x19
    mov x11, x21
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldr x12, [x10, #32]
    str x12, [x11, #32]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr d8, [sp, #168]
    ldr d9, [sp, #160]
    ldr d10, [sp, #152]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L59_4:
    adrp x0, l_text_248@PAGE
    add x0, x0, l_text_248@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_10win_resize
_lb_window_10win_resize:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #240
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #208]
    str x20, [sp, #200]
    str x21, [sp, #192]
    str x22, [sp, #184]
    str x23, [sp, #176]
    str x24, [sp, #168]
    str x25, [sp, #160]
    sub x16, x29, #128
    str x0, [x16]
    sub x16, x29, #144
    str w1, [x16]
    sub x16, x29, #160
    str w2, [x16]
    sub x14, x29, #128
    ldr x14, [x14]
    ldr x19, [x14]
    sub x10, x29, #224
    str x19, [x10]
    cbnz x19, L60_11
    b L60_12
L60_11:
    b L60_13
L60_12:
    adrp x14, l_text_41@PAGE
    add x14, x14, l_text_41@PAGEOFF
    sub x15, x29, #240
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_42@PAGE
    add x14, x14, l_text_42@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L60_13:
L60_15:
    mov x0, x19
    bl _GetDpiForWindow
    mov w20, w0
    mov x0, x19
    movn x1, #15
    bl _GetWindowLongPtrW
    mov x21, x0
    sub x22, x29, #176
    sub x23, x29, #192
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    sub x14, x29, #144
    ldr w14, [x14]
    mov w14, w14
    mov w15, w20
    mul x14, x14, x15
L60_2:
    movz x10, #96
    udiv x24, x14, x10
    add x25, x23, #8
    str w24, [x25]
    sub x24, x29, #160
    ldr w24, [x24]
    mov w24, w24
    mul x24, x15, x24
L60_4:
    movz x10, #96
    udiv x14, x24, x10
    add x15, x23, #12
    str w14, [x15]
    mov x10, x23
    mov x11, x22
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    mov x0, x22
    mov x1, x21
    mov x2, #0
    mov x3, #0
    mov x4, x20
    bl _AdjustWindowRectExForDpi
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L60_16
    b L60_8
L60_16:
    mov w15, w14
    b L60_9
L60_8:
    add x14, x22, #8
    ldrsw x14, [x14]
    ldrsw x15, [x22]
    mov w9, w14
    mov w10, w15
    subs w9, w9, w10
    b.vc 1f
    adrp x0, l_text_250@PAGE
    add x0, x0, l_text_250@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    add x15, x22, #12
    ldrsw x15, [x15]
    add x20, x22, #4
    ldrsw x20, [x20]
    mov w9, w15
    mov w10, w20
    subs w9, w9, w10
    b.vc 1f
    adrp x0, l_text_250@PAGE
    add x0, x0, l_text_250@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w15, w9
    mov x0, x19
    mov x1, #0
    mov x2, #0
    mov x3, #0
    mov x4, x14
    mov x5, x15
    movz x6, #22
    bl _SetWindowPos
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L60_9:
    and w14, w15, #255
    cbnz w14, L60_5
    b L60_6
L60_5:
    sub x19, x29, #112
    adrp x14, _lb_window_failed@PAGE
    add x14, x14, _lb_window_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_251@PAGE
    add x14, x14, l_text_251@PAGEOFF
    sub x15, x29, #208
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    ldr x24, [sp, #168]
    ldr x25, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L60_6:
L60_7:
    sub x14, x29, #112
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
    ldr x19, [sp, #208]
    ldr x20, [sp, #200]
    ldr x21, [sp, #192]
    ldr x22, [sp, #184]
    ldr x23, [sp, #176]
    ldr x24, [sp, #168]
    ldr x25, [sp, #160]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_8win_pump
_lb_window_8win_pump:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    str x19, [sp, #88]
    str x20, [sp, #80]
    str x21, [sp, #72]
    str x22, [sp, #64]
    sub x16, x29, #64
    str x0, [x16]
    sub x19, x29, #112
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    sub x20, x29, #64
    mov x9, #0
    mov x21, x9
L61_1:
    movz x10, #256
    cmp x21, x10
    cset w14, lo
    cbnz w14, L61_4
    b L61_14
L61_14:
    mov w15, w14
    b L61_5
L61_4:
    mov x0, x19
    mov x1, #0
    mov x2, #0
    mov x3, #0
    movz x4, #1
    bl _PeekMessageW
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L61_5:
    and w14, w15, #255
    cbnz w14, L61_2
    b L61_3
L61_2:
    mov x0, x19
    bl _TranslateMessage
    mov w14, w0
    mov x0, x19
    bl _DispatchMessageW
    mov x14, x0
    mov x9, x21
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_252@PAGE
    add x0, x0, l_text_252@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    ldr x15, [x20]
    movz x10, #14368
    add x22, x15, x10
    ldr x22, [x22]
    mov x10, #0
    cmp x22, x10
    cset w22, hi
    cbnz w22, L61_15
    b L61_9
L61_15:
    mov w21, w22
    b L61_10
L61_9:
    movz x10, #14377
    add x21, x15, x10
    ldrb w21, [x21]
L61_10:
    and w22, w21, #255
    cbnz w22, L61_16
    b L61_11
L61_16:
    mov w15, w22
    b L61_12
L61_11:
    movz x10, #14376
    add x21, x15, x10
    ldrb w21, [x21]
    mov w15, w21
L61_12:
    and w21, w15, #255
    cbnz w21, L61_6
    b L61_7
L61_6:
    b L61_3
L61_13:
    b L61_8
L61_7:
L61_8:
    mov x21, x14
    b L61_1
L61_3:
    ldr x19, [sp, #88]
    ldr x20, [sp, #80]
    ldr x21, [sp, #72]
    ldr x22, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_11win_destroy
_lb_window_11win_destroy:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #80
    str x19, [sp, #56]
    str x20, [sp, #48]
    sub x16, x29, #48
    str x0, [x16]
    sub x14, x29, #48
    ldr x19, [x14]
    movz x10, #14379
    add x14, x19, x10
    movz x9, #1
    strb w9, [x14]
    ldr x14, [x19]
    cbnz x14, L62_4
    b L62_2
L62_4:
L62_1:
    mov x0, x14
    mov x1, #0
    bl _ShowWindow
    mov w14, w0
    b L62_3
L62_2:
L62_3:
    movz x10, #14378
    add x14, x19, x10
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    b.ne L62_6
L62_5:
    sub x10, x29, #64
    str x19, [x10]
    ldr x20, [x19]
    cbnz x20, L62_11
    b L62_9
L62_11:
L62_8:
    mov x0, x20
    movn x1, #20
    mov x2, #0
    bl _SetWindowLongPtrW
    mov x14, x0
    mov x0, x20
    bl _DestroyWindow
    mov w14, w0
    b L62_10
L62_9:
L62_10:
    adrp x14, _lb_memory_heap@PAGE
    add x14, x14, _lb_memory_heap@PAGEOFF
    sub x15, x29, #80
    str x19, [x15]
    add x20, x15, #8
    movz x9, #14432
    str x9, [x20]
    ldr x20, [x14]
    add x14, x14, #8
    ldr x14, [x14]
    cbnz x14, L62_13
    b L62_12
L62_13:
    add x19, x14, #16
    ldr x19, [x19]
    mov x17, x19
    str x17, [sp, #-16]!
    mov x0, x20
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    ldr x17, [sp], #16
    blr x17
L62_12:
L62_14:
    b L62_7
L62_6:
L62_7:
    ldr x19, [sp, #56]
    ldr x20, [sp, #48]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_13win_modifiers
_lb_window_13win_modifiers:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    str x20, [sp, #16]
    sub x19, x29, #42
    mov x11, x19
    str wzr, [x11, #0]
    strb wzr, [x11, #4]
    movz x0, #16
    bl _GetKeyState
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, lt
    strb w14, [x19]
    movz x0, #17
    bl _GetKeyState
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, lt
    add x15, x19, #1
    strb w14, [x15]
    movz x0, #18
    bl _GetKeyState
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, lt
    add x15, x19, #2
    strb w14, [x15]
    movz x0, #91
    bl _GetKeyState
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, lt
    cbnz w14, L63_4
    b L63_1
L63_4:
    mov w15, w14
    b L63_2
L63_1:
    movz x0, #92
    bl _GetKeyState
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w15, lt
L63_2:
    and w14, w15, #255
    add x20, x19, #3
    strb w14, [x20]
    movz x0, #20
    bl _GetKeyState
    mov w14, w0
    movz x10, #1
    and w14, w14, w10
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    add x20, x19, #4
    strb w14, [x20]
    sub x20, x29, #37
    mov x10, x19
    mov x11, x20
    ldr w12, [x10, #0]
    str w12, [x11, #0]
    ldrb w12, [x10, #4]
    strb w12, [x11, #4]
    mov x16, x20
    ldrb w17, [x16, #4]
    ldr w0, [x16, #0]
    lsl x17, x17, #32
    orr x0, x0, x17
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L63_3:
    adrp x0, l_text_253@PAGE
    add x0, x0, l_text_253@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_11signed_half
_lb_window_11signed_half:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str x0, [x16]
    sub x14, x29, #32
    ldr x14, [x14]
    movz x10, #65535
    and x14, x14, x10
    movz x10, #32768
    cmp w14, w10
    b.lt L64_2
L64_1:
    mov w9, w14
    movz x10, #1, lsl #16
    subs w9, w9, w10
    b.vc 1f
    adrp x0, l_text_254@PAGE
    add x0, x0, l_text_254@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w15, w9
    b L64_3
L64_2:
    mov w15, w14
L64_3:
    mov x9, x15
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L64_4:
    adrp x0, l_text_254@PAGE
    add x0, x0, l_text_254@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_7win_key
_lb_window_7win_key:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #64
    str x19, [sp, #40]
    sub x16, x29, #40
    str x0, [x16]
    sub x14, x29, #40
    ldr x14, [x14]
L65_2:
    asr x15, x14, #16
    movz x10, #255
    and x19, x15, x10
    movz x10, #256, lsl #16
    and x15, x14, x10
    mov x10, #0
    cmp x15, x10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    and w15, w15, #255
    cbnz w15, L65_3
    b L65_4
L65_3:
    sub x14, x29, #48
    str x19, [x14]
    sub x15, x29, #56
    mov x10, x14
    mov x11, x15
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    movz x10, #29
    cmp x19, x10
    b.eq L65_7
L65_9:
    b L65_8
L65_7:
    movz x9, #228
    mov x0, x9
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L65_8:
    movz x10, #56
    cmp x19, x10
    b.eq L65_11
L65_13:
    b L65_12
L65_11:
    movz x9, #230
    mov x0, x9
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L65_12:
    movz x10, #71
    cmp x19, x10
    b.eq L65_15
L65_17:
    b L65_16
L65_15:
    movz x9, #74
    mov x0, x9
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L65_16:
    movz x10, #72
    cmp x19, x10
    b.eq L65_19
L65_21:
    b L65_20
L65_19:
    movz x9, #82
    mov x0, x9
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L65_20:
    movz x10, #73
    cmp x19, x10
    b.eq L65_23
L65_25:
    b L65_24
L65_23:
    movz x9, #75
    mov x0, x9
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L65_24:
    movz x10, #75
    cmp x19, x10
    b.eq L65_27
L65_29:
    b L65_28
L65_27:
    movz x9, #80
    mov x0, x9
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L65_28:
    movz x10, #77
    cmp x19, x10
    b.eq L65_31
L65_33:
    b L65_32
L65_31:
    movz x9, #79
    mov x0, x9
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L65_32:
    movz x10, #79
    cmp x19, x10
    b.eq L65_35
L65_37:
    b L65_36
L65_35:
    movz x9, #77
    mov x0, x9
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L65_36:
    movz x10, #80
    cmp x19, x10
    b.eq L65_39
L65_41:
    b L65_40
L65_39:
    movz x9, #81
    mov x0, x9
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L65_40:
    movz x10, #81
    cmp x19, x10
    b.eq L65_43
L65_45:
    b L65_44
L65_43:
    movz x9, #78
    mov x0, x9
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L65_44:
    movz x10, #83
    cmp x19, x10
    b.eq L65_47
L65_49:
    b L65_48
L65_47:
    movz x9, #76
    mov x0, x9
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L65_48:
    movz x10, #91
    cmp x19, x10
    b.eq L65_51
L65_53:
    b L65_52
L65_51:
    movz x9, #227
    mov x0, x9
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L65_52:
    movz x10, #92
    cmp x19, x10
    b.eq L65_55
L65_57:
    b L65_56
L65_55:
    movz x9, #231
    mov x0, x9
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L65_56:
L65_59:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L65_4:
L65_5:
    movz x10, #64
    cmp x19, x10
    b.hs L65_64
L65_63:
    adrp x14, _lb_window_13win_scan_keys@PAGE
    add x14, x14, _lb_window_13win_scan_keys@PAGEOFF
    lsl x15, x19, #1
    add x14, x14, x15
    ldrh w14, [x14]
    mov w14, w14
    and w14, w14, #65535
    and w14, w14, #65535
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L65_64:
L65_65:
    movz x10, #64
    cmp x19, x10
    cset w14, hs
    cbnz w14, L65_70
    b L65_82
L65_82:
    mov w15, w14
    b L65_71
L65_70:
    movz x10, #68
    cmp x19, x10
    cset w15, ls
L65_71:
    and w14, w15, #255
    cbnz w14, L65_67
    b L65_68
L65_67:
    sub x14, x19, #64
    mov x9, x14
    movz x10, #63
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_257@PAGE
    add x0, x0, l_text_257@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    and w14, w14, #65535
    mov w14, w14
    and w14, w14, #65535
    and w14, w14, #65535
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L65_68:
L65_69:
    movz x10, #87
    cmp x19, x10
    b.ne L65_74
L65_73:
    movz x9, #68
    mov x0, x9
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L65_74:
L65_75:
    movz x10, #88
    cmp x19, x10
    b.ne L65_78
L65_77:
    movz x9, #69
    mov x0, x9
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L65_78:
L65_79:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #40]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_12win_callback
_lb_window_12win_callback:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #768
    str x19, [sp, #744]
    str x20, [sp, #736]
    str x21, [sp, #728]
    str x22, [sp, #720]
    str x23, [sp, #712]
    str x24, [sp, #704]
    str x25, [sp, #696]
    str x26, [sp, #688]
    str x27, [sp, #680]
    str x28, [sp, #672]
    str d8, [sp, #664]
    sub x16, x29, #120
    str x0, [x16]
    sub x16, x29, #136
    str w1, [x16]
    sub x16, x29, #152
    str x2, [x16]
    sub x16, x29, #168
    str x3, [x16]
    sub x14, x29, #136
    ldr w19, [x14]
    movz x10, #129
    cmp w19, w10
    b.ne L66_2
L66_1:
    sub x14, x29, #168
    ldr x20, [x14]
    ldr x14, [x20]
    sub x15, x29, #120
    ldr x21, [x15]
    str x21, [x14]
    mov x0, x21
    movn x1, #20
    mov x2, x14
    bl _SetWindowLongPtrW
    mov x14, x0
    sub x14, x29, #152
    ldr x14, [x14]
    mov x0, x21
    mov x1, x19
    mov x2, x14
    mov x3, x20
    bl _DefWindowProcW
    mov x14, x0
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #744]
    ldr x20, [sp, #736]
    ldr x21, [sp, #728]
    ldr x22, [sp, #720]
    ldr x23, [sp, #712]
    ldr x24, [sp, #704]
    ldr x25, [sp, #696]
    ldr x26, [sp, #688]
    ldr x27, [sp, #680]
    ldr x28, [sp, #672]
    ldr d8, [sp, #664]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L66_2:
L66_3:
    sub x14, x29, #120
    ldr x20, [x14]
    mov x0, x20
    movn x1, #20
    bl _GetWindowLongPtrW
    mov x21, x0
    mov x10, #0
    cmp x21, x10
    b.ne L66_6
L66_5:
    sub x14, x29, #152
    ldr x14, [x14]
    sub x15, x29, #168
    ldr x15, [x15]
    mov x0, x20
    mov x1, x19
    mov x2, x14
    mov x3, x15
    bl _DefWindowProcW
    mov x14, x0
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #744]
    ldr x20, [sp, #736]
    ldr x21, [sp, #728]
    ldr x22, [sp, #720]
    ldr x23, [sp, #712]
    ldr x24, [sp, #704]
    ldr x25, [sp, #696]
    ldr x26, [sp, #688]
    ldr x27, [sp, #680]
    ldr x28, [sp, #672]
    ldr d8, [sp, #664]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L66_6:
L66_7:
    movz x10, #14379
    add x14, x21, x10
    ldrb w14, [x14]
    cbnz w14, L66_9
    b L66_10
L66_9:
    sub x14, x29, #152
    ldr x14, [x14]
    sub x15, x29, #168
    ldr x15, [x15]
    mov x0, x20
    mov x1, x19
    mov x2, x14
    mov x3, x15
    bl _DefWindowProcW
    mov x14, x0
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #744]
    ldr x20, [sp, #736]
    ldr x21, [sp, #728]
    ldr x22, [sp, #720]
    ldr x23, [sp, #712]
    ldr x24, [sp, #704]
    ldr x25, [sp, #696]
    ldr x26, [sp, #688]
    ldr x27, [sp, #680]
    ldr x28, [sp, #672]
    ldr d8, [sp, #664]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L66_10:
L66_11:
    movz x10, #32
    cmp w19, w10
    cset w14, eq
    cbnz w14, L66_16
    b L66_157
L66_157:
    mov w15, w14
    b L66_17
L66_16:
    sub x14, x29, #168
    ldr x14, [x14]
    movz x10, #65535
    and x14, x14, x10
    movz x10, #1
    cmp x14, x10
    cset w15, eq
L66_17:
    and w14, w15, #255
    cbnz w14, L66_13
    b L66_14
L66_13:
    movz x10, #14392
    add x14, x21, x10
    ldr x14, [x14]
    mov x0, x14
    bl _SetCursor
    mov x14, x0
    movz x9, #1
    mov x0, x9
    ldr x19, [sp, #744]
    ldr x20, [sp, #736]
    ldr x21, [sp, #728]
    ldr x22, [sp, #720]
    ldr x23, [sp, #712]
    ldr x24, [sp, #704]
    ldr x25, [sp, #696]
    ldr x26, [sp, #688]
    ldr x27, [sp, #680]
    ldr x28, [sp, #672]
    ldr d8, [sp, #664]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L66_14:
L66_15:
    movz x10, #16
    cmp w19, w10
    b.ne L66_20
L66_19:
    movz x10, #14377
    add x14, x21, x10
    movz x9, #1
    strb w9, [x14]
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #744]
    ldr x20, [sp, #736]
    ldr x21, [sp, #728]
    ldr x22, [sp, #720]
    ldr x23, [sp, #712]
    ldr x24, [sp, #704]
    ldr x25, [sp, #696]
    ldr x26, [sp, #688]
    ldr x27, [sp, #680]
    ldr x28, [sp, #672]
    ldr d8, [sp, #664]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L66_20:
L66_21:
    movz x10, #5
    cmp w19, w10
    b.ne L66_24
L66_23:
    sub x22, x29, #224
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    movz x9, #2
    strb w9, [x22]
    mov x0, x21
    mov x9, x22
    mov x1, x9
    bl _lb_window_10push_event
    b L66_25
L66_24:
    movz x10, #7
    cmp w19, w10
    cset w22, eq
    cbnz w22, L66_158
    b L66_29
L66_158:
    mov w14, w22
    b L66_30
L66_29:
    movz x10, #8
    cmp w19, w10
    cset w14, eq
L66_30:
    and w15, w14, #255
    cbnz w15, L66_26
    b L66_27
L66_26:
    movz x10, #14382
    add x14, x21, x10
    mov x9, #0
    strh w9, [x14]
    sub x23, x29, #280
    mov x11, x23
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    cbnz w22, L66_31
    b L66_32
L66_31:
    movz x9, #3
    mov w14, w9
    b L66_33
L66_32:
    movz x9, #4
    mov w14, w9
L66_33:
    and w15, w14, #255
    strb w15, [x23]
    mov x0, x21
    mov x9, x23
    mov x1, x9
    bl _lb_window_10push_event
    b L66_28
L66_27:
    movz x10, #258
    cmp w19, w10
    b.ne L66_35
L66_34:
    movz x10, #14380
    add x14, x21, x10
    ldrb w14, [x14]
    cbnz w14, L66_37
    b L66_38
L66_37:
    sub x14, x29, #152
    ldr x14, [x14]
    and w14, w14, #65535
    mov x0, x21
    mov x1, x14
    bl _lb_window_10push_utf16
    b L66_39
L66_38:
L66_39:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #744]
    ldr x20, [sp, #736]
    ldr x21, [sp, #728]
    ldr x22, [sp, #720]
    ldr x23, [sp, #712]
    ldr x24, [sp, #704]
    ldr x25, [sp, #696]
    ldr x26, [sp, #688]
    ldr x27, [sp, #680]
    ldr x28, [sp, #672]
    ldr d8, [sp, #664]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L66_35:
    movz x10, #265
    cmp w19, w10
    b.ne L66_42
L66_41:
    sub x14, x29, #152
    ldr x14, [x14]
    movz x10, #65535
    cmp x14, x10
    b.ne L66_45
L66_44:
    movz x9, #1
    mov x0, x9
    ldr x19, [sp, #744]
    ldr x20, [sp, #736]
    ldr x21, [sp, #728]
    ldr x22, [sp, #720]
    ldr x23, [sp, #712]
    ldr x24, [sp, #704]
    ldr x25, [sp, #696]
    ldr x26, [sp, #688]
    ldr x27, [sp, #680]
    ldr x28, [sp, #672]
    ldr d8, [sp, #664]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L66_45:
L66_46:
    movz x10, #14380
    add x15, x21, x10
    ldrb w15, [x15]
    cbnz w15, L66_51
    b L66_159
L66_159:
    mov w19, w15
    b L66_52
L66_51:
    movz x10, #65535
    movk x10, #16, lsl #16
    cmp x14, x10
    cset w19, ls
L66_52:
    and w15, w19, #255
    cbnz w15, L66_48
    b L66_49
L66_48:
    mov x0, x21
    mov x1, x14
    bl _lb_window_11push_scalar
    b L66_50
L66_49:
L66_50:
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #744]
    ldr x20, [sp, #736]
    ldr x21, [sp, #728]
    ldr x22, [sp, #720]
    ldr x23, [sp, #712]
    ldr x24, [sp, #704]
    ldr x25, [sp, #696]
    ldr x26, [sp, #688]
    ldr x27, [sp, #680]
    ldr x28, [sp, #672]
    ldr d8, [sp, #664]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L66_42:
    movz x10, #736
    cmp w19, w10
    b.ne L66_55
L66_54:
    sub x14, x29, #168
    ldr x14, [x14]
    ldrsw x15, [x14]
    add x19, x14, #4
    ldrsw x19, [x19]
    add x22, x14, #8
    ldrsw x22, [x22]
    mov w9, w22
    mov w10, w15
    subs w9, w9, w10
    b.vc 1f
    adrp x0, l_text_259@PAGE
    add x0, x0, l_text_259@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w22, w9
    add x14, x14, #12
    ldrsw x14, [x14]
    mov w9, w14
    mov w10, w19
    subs w9, w9, w10
    b.vc 1f
    adrp x0, l_text_259@PAGE
    add x0, x0, l_text_259@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w14, w9
    mov x0, x20
    mov x1, #0
    mov x2, x15
    mov x3, x19
    mov x4, x22
    mov x5, x14
    movz x6, #20
    bl _SetWindowPos
    mov w14, w0
    sub x19, x29, #336
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    movz x9, #2
    strb w9, [x19]
    mov x0, x21
    mov x9, x19
    mov x1, x9
    bl _lb_window_10push_event
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #744]
    ldr x20, [sp, #736]
    ldr x21, [sp, #728]
    ldr x22, [sp, #720]
    ldr x23, [sp, #712]
    ldr x24, [sp, #704]
    ldr x25, [sp, #696]
    ldr x26, [sp, #688]
    ldr x27, [sp, #680]
    ldr x28, [sp, #672]
    ldr d8, [sp, #664]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L66_55:
    movz x10, #256
    cmp w19, w10
    cset w22, eq
    cbnz w22, L66_160
    b L66_61
L66_160:
    mov w14, w22
    b L66_62
L66_61:
    movz x10, #257
    cmp w19, w10
    cset w14, eq
L66_62:
    and w15, w14, #255
    cbnz w15, L66_161
    b L66_63
L66_161:
    mov w14, w15
    b L66_64
L66_63:
    movz x10, #260
    cmp w19, w10
    cset w14, eq
L66_64:
    and w15, w14, #255
    cbnz w15, L66_162
    b L66_65
L66_162:
    mov w14, w15
    b L66_66
L66_65:
    movz x10, #261
    cmp w19, w10
    cset w14, eq
L66_66:
    and w15, w14, #255
    cbnz w15, L66_58
    b L66_59
L66_58:
    sub x23, x29, #341
    bl _lb_window_13win_modifiers
    sub x16, x29, #346
    str w0, [x16, #0]
    lsr x17, x0, #32
    strb w17, [x16, #4]
    sub x14, x29, #346
    mov x10, x14
    mov x11, x23
    ldr w12, [x10, #0]
    str w12, [x11, #0]
    ldrb w12, [x10, #4]
    strb w12, [x11, #4]
    sub x14, x29, #168
    ldr x24, [x14]
    mov x0, x24
    bl _lb_window_7win_key
    mov w25, w0
    cbnz w22, L66_163
    b L66_67
L66_163:
    mov w14, w22
    b L66_68
L66_67:
    movz x10, #260
    cmp w19, w10
    cset w14, eq
L66_68:
    and w22, w14, #255
    sub x26, x29, #408
    mov x11, x26
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    and w22, w22, #255
    cbnz w22, L66_69
    b L66_70
L66_69:
    movz x9, #5
    mov w14, w9
    b L66_71
L66_70:
    movz x9, #6
    mov w14, w9
L66_71:
    and w15, w14, #255
    strb w15, [x26]
    and w27, w25, #65535
    add x15, x26, #2
    strh w27, [x15]
    add x15, x26, #4
    mov x10, x23
    mov x11, x15
    ldr w12, [x10, #0]
    str w12, [x11, #0]
    ldrb w12, [x10, #4]
    strb w12, [x11, #4]
    cbnz w22, L66_72
    b L66_164
L66_164:
    mov w14, w22
    b L66_73
L66_72:
    movz x10, #16384, lsl #16
    and x14, x24, x10
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
L66_73:
    and w15, w14, #255
    add x22, x26, #9
    strb w15, [x22]
    mov x0, x21
    mov x9, x26
    mov x1, x9
    bl _lb_window_10push_event
    mov w15, w27
    and w15, w15, #65535
    movz x10, #224
    cmp w15, w10
    cset w15, hs
    cbnz w15, L66_165
    b L66_77
L66_165:
    mov w14, w15
    b L66_78
L66_77:
    movz x10, #57
    cmp w27, w10
    cset w14, eq
L66_78:
    and w15, w14, #255
    cbnz w15, L66_74
    b L66_75
L66_74:
    sub x22, x29, #464
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    movz x9, #7
    strb w9, [x22]
    add x14, x22, #4
    mov x10, x23
    mov x11, x14
    ldr w12, [x10, #0]
    str w12, [x11, #0]
    ldrb w12, [x10, #4]
    strb w12, [x11, #4]
    mov x0, x21
    mov x9, x22
    mov x1, x9
    bl _lb_window_10push_event
    b L66_76
L66_75:
L66_76:
    b L66_60
L66_59:
    movz x10, #675
    cmp w19, w10
    b.ne L66_80
L66_79:
    movz x10, #14384
    add x14, x21, x10
    mov x9, #0
    strb w9, [x14]
    sub x19, x29, #520
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    movz x9, #15
    strb w9, [x19]
    mov x0, x21
    mov x9, x19
    mov x1, x9
    bl _lb_window_10push_event
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #744]
    ldr x20, [sp, #736]
    ldr x21, [sp, #728]
    ldr x22, [sp, #720]
    ldr x23, [sp, #712]
    ldr x24, [sp, #704]
    ldr x25, [sp, #696]
    ldr x26, [sp, #688]
    ldr x27, [sp, #680]
    ldr x28, [sp, #672]
    ldr d8, [sp, #664]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L66_80:
    movz x10, #512
    cmp w19, w10
    cset w14, hs
    cbnz w14, L66_86
    b L66_166
L66_166:
    mov w15, w14
    b L66_87
L66_86:
    movz x10, #526
    cmp w19, w10
    cset w15, ls
L66_87:
    and w14, w15, #255
    cbnz w14, L66_83
    b L66_84
L66_83:
    sub x23, x29, #528
    sub x24, x29, #536
    mov x11, x24
    str xzr, [x11, #0]
    sub x14, x29, #168
    ldr x22, [x14]
    mov x0, x22
    bl _lb_window_11signed_half
    mov w14, w0
    str w14, [x24]
L66_89:
    asr x14, x22, #16
    mov x0, x14
    bl _lb_window_11signed_half
    mov w14, w0
    add x15, x24, #4
    str w14, [x15]
    mov x10, x24
    mov x11, x23
    ldr x12, [x10, #0]
    str x12, [x11, #0]
    movz x10, #522
    cmp w19, w10
    cset w25, eq
    cbnz w25, L66_167
    b L66_90
L66_167:
    mov w14, w25
    b L66_91
L66_90:
    movz x10, #526
    cmp w19, w10
    cset w14, eq
L66_91:
    and w15, w14, #255
    and w24, w15, #255
    cbnz w24, L66_92
    b L66_93
L66_92:
    mov x0, x20
    mov x1, x23
    bl _ScreenToClient
    mov w14, w0
    b L66_94
L66_93:
L66_94:
    mov x0, x20
    bl _GetDpiForWindow
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    b.ls L66_96
L66_95:
    mov w15, w14
    ucvtf d24, x15
    movz x9, #16472, lsl #48
    fmov d25, x9
    fdiv d24, d24, d25
    fmov d8, d24
    b L66_97
L66_96:
    movz x9, #16368, lsl #48
    fmov d8, x9
L66_97:
    sub x26, x29, #592
    sub x27, x29, #648
    mov x11, x27
    stp xzr, xzr, [x11, #0]
    stp xzr, xzr, [x11, #16]
    stp xzr, xzr, [x11, #32]
    str xzr, [x11, #48]
    movz x9, #8
    strb w9, [x27]
    bl _lb_window_13win_modifiers
    sub x16, x29, #653
    str w0, [x16, #0]
    lsr x17, x0, #32
    strb w17, [x16, #4]
    sub x14, x29, #653
    add x15, x27, #4
    mov x10, x14
    mov x11, x15
    ldr w12, [x10, #0]
    str w12, [x11, #0]
    ldrb w12, [x10, #4]
    strb w12, [x11, #4]
    ldrsw x14, [x23]
    sxtw x14, w14
    scvtf d24, x14
    fdiv d24, d24, d8
    add x14, x27, #16
    str d24, [x14]
    add x14, x23, #4
    ldrsw x14, [x14]
    sxtw x14, w14
    scvtf d24, x14
    fdiv d24, d24, d8
    add x14, x27, #24
    str d24, [x14]
    mov x10, x27
    mov x11, x26
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    movz x10, #512
    cmp w19, w10
    cset w27, eq
    cbnz w27, L66_101
    b L66_168
L66_168:
    mov w14, w27
    b L66_102
L66_101:
    movz x10, #14384
    add x14, x21, x10
    ldrb w14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w14, eq
L66_102:
    and w15, w14, #255
    cbnz w15, L66_98
    b L66_99
L66_98:
    sub x23, x29, #680
    sub x28, x29, #704
    mov x11, x28
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    movz x9, #24
    str w9, [x28]
    add x14, x28, #4
    movz x9, #2
    str w9, [x14]
    add x14, x28, #8
    str x20, [x14]
    mov x10, x28
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldr x12, [x10, #16]
    str x12, [x11, #16]
    movz x10, #14384
    add x28, x21, x10
    mov x0, x23
    bl _TrackMouseEvent
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    strb w14, [x28]
    sub x23, x29, #760
    mov x10, x26
    mov x11, x23
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
    ldp x12, x13, [x10, #16]
    stp x12, x13, [x11, #16]
    ldp x12, x13, [x10, #32]
    stp x12, x13, [x11, #32]
    ldr x12, [x10, #48]
    str x12, [x11, #48]
    movz x9, #14
    strb w9, [x23]
    mov x0, x21
    mov x9, x23
    mov x1, x9
    bl _lb_window_10push_event
    b L66_100
L66_99:
L66_100:
    cbnz w24, L66_103
    b L66_104
L66_103:
    movz x9, #11
    strb w9, [x26]
    sub x14, x29, #152
    ldr x14, [x14]
L66_107:
    lsr x15, x14, #16
    mov x0, x15
    bl _lb_window_11signed_half
    mov w15, w0
    sxtw x15, w15
    scvtf d24, x15
    movz x9, #16478, lsl #48
    fmov d25, x9
    fdiv d24, d24, d25
    add x20, x26, #32
    movz x10, #526
    cmp w19, w10
    b.ne L66_109
L66_108:
    fneg d25, d24
    b L66_110
L66_109:
    mov x9, #0
    fmov d25, x9
L66_110:
    str d25, [x20]
    add x14, x26, #40
    cbnz w25, L66_111
    b L66_112
L66_111:
    fmov d25, d24
    b L66_113
L66_112:
    mov x9, #0
    fmov d25, x9
L66_113:
    str d25, [x14]
    add x15, x26, #48
    mov x9, #0
    strb w9, [x15]
    b L66_105
L66_104:
    mov x10, #0
    cmp w27, w10
    b.ne L66_115
L66_114:
    movz x10, #513
    cmp w19, w10
    cset w14, eq
    cbnz w14, L66_169
    b L66_117
L66_169:
    mov w15, w14
    b L66_118
L66_117:
    movz x10, #516
    cmp w19, w10
    cset w15, eq
L66_118:
    and w14, w15, #255
    cbnz w14, L66_170
    b L66_119
L66_170:
    mov w15, w14
    b L66_120
L66_119:
    movz x10, #519
    cmp w19, w10
    cset w15, eq
L66_120:
    and w14, w15, #255
    cbnz w14, L66_171
    b L66_121
L66_171:
    mov w15, w14
    b L66_122
L66_121:
    movz x10, #523
    cmp w19, w10
    cset w15, eq
L66_122:
    and w14, w15, #255
    movz x10, #514
    cmp w19, w10
    cset w23, eq
    cbnz w23, L66_172
    b L66_123
L66_172:
    mov w15, w23
    b L66_124
L66_123:
    movz x10, #517
    cmp w19, w10
    cset w15, eq
L66_124:
    and w23, w15, #255
    cbnz w23, L66_173
    b L66_125
L66_173:
    mov w15, w23
    b L66_126
L66_125:
    movz x10, #520
    cmp w19, w10
    cset w15, eq
L66_126:
    and w23, w15, #255
    cbnz w23, L66_174
    b L66_127
L66_174:
    mov w15, w23
    b L66_128
L66_127:
    movz x10, #524
    cmp w19, w10
    cset w15, eq
L66_128:
    and w23, w15, #255
    and w24, w14, #255
    mov x10, #0
    cmp w24, w10
    cset w25, eq
    cbnz w25, L66_132
    b L66_175
L66_175:
    mov w14, w25
    b L66_133
L66_132:
    and w14, w23, #255
    mov x10, #0
    cmp w14, w10
    cset w14, eq
L66_133:
    and w15, w14, #255
    cbnz w15, L66_129
    b L66_130
L66_129:
    sub x14, x29, #152
    ldr x14, [x14]
    mov x0, x20
    mov x1, x19
    mov x2, x14
    mov x3, x22
    bl _DefWindowProcW
    mov x14, x0
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #744]
    ldr x20, [sp, #736]
    ldr x21, [sp, #728]
    ldr x22, [sp, #720]
    ldr x23, [sp, #712]
    ldr x24, [sp, #704]
    ldr x25, [sp, #696]
    ldr x26, [sp, #688]
    ldr x27, [sp, #680]
    ldr x28, [sp, #672]
    ldr d8, [sp, #664]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L66_130:
L66_131:
    cbnz w24, L66_135
    b L66_136
L66_135:
    movz x9, #9
    mov w14, w9
    b L66_137
L66_136:
    movz x9, #10
    mov w14, w9
L66_137:
    and w15, w14, #255
    strb w15, [x26]
    add x22, x26, #12
    movz x10, #514
    cmp w19, w10
    b.hi L66_139
L66_138:
    mov x9, #0
    mov w14, w9
    b L66_140
L66_139:
    movz x10, #517
    cmp w19, w10
    b.hi L66_142
L66_141:
    movz x9, #1
    mov w14, w9
    b L66_143
L66_142:
    movz x10, #520
    cmp w19, w10
    b.hi L66_145
L66_144:
    movz x9, #2
    mov w14, w9
    b L66_146
L66_145:
    sub x14, x29, #152
    ldr x14, [x14]
L66_148:
    lsr x15, x14, #16
    mov w9, w15
    movz x10, #2
    adds w9, w9, w10
    b.cc 1f
    adrp x0, l_text_262@PAGE
    add x0, x0, l_text_262@PAGEOFF
    adrp x1, l_text_266@PAGE
    add x1, x1, l_text_266@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov w15, w9
    mov w14, w15
L66_146:
L66_143:
L66_140:
    str w14, [x22]
    cbnz w24, L66_149
    b L66_150
L66_149:
    mov x0, x20
    bl _SetCapture
    mov x14, x0
    b L66_151
L66_150:
    sub x14, x29, #152
    ldr x14, [x14]
    movz x10, #115
    and x14, x14, x10
    mov x10, #0
    cmp x14, x10
    b.ne L66_153
L66_152:
    bl _ReleaseCapture
    mov w14, w0
    b L66_154
L66_153:
L66_154:
L66_151:
    b L66_116
L66_115:
L66_116:
L66_105:
    mov x0, x21
    mov x9, x26
    mov x1, x9
    bl _lb_window_10push_event
    mov x9, #0
    mov x0, x9
    ldr x19, [sp, #744]
    ldr x20, [sp, #736]
    ldr x21, [sp, #728]
    ldr x22, [sp, #720]
    ldr x23, [sp, #712]
    ldr x24, [sp, #704]
    ldr x25, [sp, #696]
    ldr x26, [sp, #688]
    ldr x27, [sp, #680]
    ldr x28, [sp, #672]
    ldr d8, [sp, #664]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L66_84:
L66_85:
L66_81:
L66_60:
L66_56:
L66_43:
L66_36:
L66_28:
L66_25:
    sub x14, x29, #152
    ldr x14, [x14]
    sub x15, x29, #168
    ldr x15, [x15]
    mov x0, x20
    mov x1, x19
    mov x2, x14
    mov x3, x15
    bl _DefWindowProcW
    mov x14, x0
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #744]
    ldr x20, [sp, #736]
    ldr x21, [sp, #728]
    ldr x22, [sp, #720]
    ldr x23, [sp, #712]
    ldr x24, [sp, #704]
    ldr x25, [sp, #696]
    ldr x26, [sp, #688]
    ldr x27, [sp, #680]
    ldr x28, [sp, #672]
    ldr d8, [sp, #664]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_window_10win_cursor
_lb_window_10win_cursor:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    str x20, [sp, #88]
    sub x16, x29, #96
    str w0, [x16]
    sub x14, x29, #96
    ldrb w14, [x14]
    sub x15, x29, #97
    strb w14, [x15]
    sub x19, x29, #98
    mov x10, x15
    mov x11, x19
    ldrb w12, [x10, #0]
    strb w12, [x11, #0]
    ldrb w14, [x19]
    movz x10, #1
    cmp w14, w10
    b.eq L67_2
L67_4:
    b L67_3
L67_2:
    movz x9, #32513
    mov x14, x9
    b L67_1
L67_3:
    movz x10, #2
    cmp w14, w10
    b.eq L67_5
L67_7:
    b L67_6
L67_5:
    movz x9, #32649
    mov x14, x9
    b L67_1
L67_6:
    movz x10, #3
    cmp w14, w10
    b.eq L67_8
L67_10:
    b L67_9
L67_8:
    movz x9, #32644
    mov x14, x9
    b L67_1
L67_9:
    movz x10, #4
    cmp w14, w10
    b.eq L67_11
L67_13:
    b L67_12
L67_11:
    movz x9, #32645
    mov x14, x9
    b L67_1
L67_12:
    movz x10, #5
    cmp w14, w10
    b.eq L67_14
L67_16:
    b L67_15
L67_14:
    movz x9, #32646
    mov x14, x9
    b L67_1
L67_15:
    movz x10, #6
    cmp w14, w10
    b.eq L67_17
L67_19:
    b L67_18
L67_17:
    movz x9, #32646
    mov x14, x9
    b L67_1
L67_18:
    movz x10, #7
    cmp w14, w10
    b.eq L67_20
L67_22:
    b L67_21
L67_20:
    movz x9, #32648
    mov x14, x9
    b L67_1
L67_21:
    b L67_23
L67_25:
    b L67_24
L67_23:
    movz x9, #32512
    mov x14, x9
    b L67_1
L67_24:
L67_1:
    mov x0, #0
    mov x1, x14
    bl _LoadCursorW
    mov x15, x0
    cbnz x15, L67_26
    b L67_27
L67_26:
    b L67_28
L67_27:
    sub x19, x29, #80
    add x14, x19, #8
    adrp x15, _lb_window_failed@PAGE
    add x15, x15, _lb_window_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_264@PAGE
    add x15, x15, l_text_264@PAGEOFF
    sub x20, x29, #120
    str x15, [x20]
    add x15, x20, #8
    movz x9, #38
    str x9, [x15]
    add x14, x14, #8
    mov x10, x20
    mov x11, x14
    ldp x12, x13, [x10, #0]
    stp x12, x13, [x11, #0]
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
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L67_29:
L67_28:
    sub x14, x29, #80
    str x15, [x14]
    add x19, x14, #32
    mov x9, #0
    strb w9, [x19]
    mov x1, x14
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #40
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L67_30:
    adrp x0, l_text_265@PAGE
    add x0, x0, l_text_265@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_window_14win_set_cursor
_lb_window_14win_set_cursor:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #224
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #192]
    str x20, [sp, #184]
    str x21, [sp, #176]
    str x22, [sp, #168]
    sub x16, x29, #104
    str x0, [x16]
    sub x16, x29, #120
    str w1, [x16]
    sub x14, x29, #104
    ldr x19, [x14]
    movz x10, #14392
    add x20, x19, x10
    ldr x14, [x20]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L68_4
    b L68_39
L68_39:
    mov w15, w14
    b L68_5
L68_4:
    movz x10, #14385
    add x14, x19, x10
    ldrb w14, [x14]
    sub x15, x29, #120
    ldrb w15, [x15]
    cmp w14, w15
    cset w15, eq
L68_5:
    and w14, w15, #255
    cbnz w14, L68_1
    b L68_2
L68_1:
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L68_6:
    b L68_3
L68_2:
L68_3:
    ldr x14, [x20]
    mov x10, #0
    cmp x14, x10
    cset w14, eq
    cbnz w14, L68_40
    b L68_10
L68_40:
    mov w15, w14
    b L68_11
L68_10:
    movz x10, #14385
    add x14, x19, x10
    ldrb w14, [x14]
    sub x15, x29, #120
    ldrb w15, [x15]
    cmp w14, w15
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w15, eq
L68_11:
    and w14, w15, #255
    cbnz w14, L68_7
    b L68_8
L68_7:
    sub x14, x29, #120
    ldrb w21, [x14]
    mov x0, x21
    sub x8, x29, #160
    bl _lb_window_10win_cursor
    sub x15, x29, #160
    add x14, x15, #32
    ldrb w14, [x14]
    cbnz w14, L68_13
    b L68_12
L68_13:
    add x14, x15, #8
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L68_14:
L68_12:
    ldr x14, [x15]
    str x14, [x20]
    movz x10, #14385
    add x14, x19, x10
    strb w21, [x14]
    b L68_9
L68_8:
L68_9:
    ldr x21, [x19]
    sub x10, x29, #200
    str x21, [x10]
    cbnz x21, L68_34
    b L68_35
L68_34:
    b L68_36
L68_35:
    adrp x14, l_text_41@PAGE
    add x14, x14, l_text_41@PAGEOFF
    sub x15, x29, #216
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
    str x9, [x14]
    adrp x14, l_text_42@PAGE
    add x14, x14, l_text_42@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L68_36:
    b L68_38
L68_37:
    adrp x0, l_text_42@PAGE
    add x0, x0, l_text_42@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at
L68_38:
    sub x19, x29, #168
    mov x11, x19
    str xzr, [x11, #0]
    bl _GetCapture
    mov x14, x0
    cmp x21, x14
    b.ne L68_16
L68_15:
    ldr x14, [x20]
    mov x0, x14
    bl _SetCursor
    mov x14, x0
    b L68_17
L68_16:
    mov x0, x19
    bl _GetCursorPos
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L68_21
    b L68_41
L68_41:
    mov w15, w14
    b L68_22
L68_21:
    mov x9, x19
    ldr x0, [x9]
    bl _WindowFromPoint
    mov x14, x0
    cmp x21, x14
    cset w15, eq
L68_22:
    and w14, w15, #255
    cbnz w14, L68_18
    b L68_19
L68_18:
    mov x0, x21
    mov x1, x19
    bl _ScreenToClient
    mov w14, w0
    sub x22, x29, #184
    mov x11, x22
    stp xzr, xzr, [x11, #0]
    mov x0, x21
    mov x1, x22
    bl _GetClientRect
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    cbnz w14, L68_26
    b L68_42
L68_42:
    mov w15, w14
    b L68_27
L68_26:
    ldrsw x14, [x19]
    mov x10, #0
    cmp w14, w10
    cset w15, ge
L68_27:
    and w14, w15, #255
    cbnz w14, L68_28
    b L68_43
L68_43:
    mov w15, w14
    b L68_29
L68_28:
    add x14, x19, #4
    ldrsw x14, [x14]
    mov x10, #0
    cmp w14, w10
    cset w15, ge
L68_29:
    and w14, w15, #255
    cbnz w14, L68_30
    b L68_44
L68_44:
    mov w15, w14
    b L68_31
L68_30:
    ldrsw x14, [x19]
    add x15, x22, #8
    ldrsw x15, [x15]
    cmp w14, w15
    cset w15, lt
L68_31:
    and w14, w15, #255
    cbnz w14, L68_32
    b L68_45
L68_45:
    mov w15, w14
    b L68_33
L68_32:
    add x14, x19, #4
    ldrsw x14, [x14]
    add x15, x22, #12
    ldrsw x15, [x15]
    cmp w14, w15
    cset w15, lt
L68_33:
    and w14, w15, #255
    cbnz w14, L68_23
    b L68_24
L68_23:
    ldr x14, [x20]
    mov x0, x14
    bl _SetCursor
    mov x14, x0
    b L68_25
L68_24:
L68_25:
    b L68_20
L68_19:
L68_20:
L68_17:
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
    ldr x19, [sp, #192]
    ldr x20, [sp, #184]
    ldr x21, [sp, #176]
    ldr x22, [sp, #168]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_window_0init

    .section __TEXT,__const
l_text_0:
    .asciz "unreachable"
l_text_1:
    .asciz "src/std/window/module.lucb:19:5"
l_text_2:
    .asciz "the window title is not valid UTF-8"
l_text_3:
    .asciz "src/std/window/module.lucb:52:13"
l_text_4:
    .asciz "src/std/window/module.lucb:67:13"
l_text_5:
    .asciz "unknown system cursor"
l_text_6:
    .asciz "src/std/window/module.lucb:104:9"
l_text_7:
    .asciz "the window already has a presentation surface"
l_text_8:
    .asciz "src/std/window/module.lucb:113:9"
l_text_9:
    .asciz "src/std/window/module.lucb:133:9"
l_text_10:
    .asciz "window destruction requires the main thread"
l_text_11:
    .asciz "src/std/window/module.lucb:141:13"
l_text_12:
    .asciz "the window is closed"
l_text_13:
    .asciz "src/std/window/module.lucb:150:9"
l_text_14:
    .asciz "native windows are not implemented for this target"
l_text_15:
    .asciz "window operations require the main thread"
l_text_16:
    .asciz "window dimensions must be between 1 and 10000 points"
l_text_17:
    .asciz "src/std/window/queue.lucb:41:9"
l_text_18:
    .asciz "src/std/window/queue.lucb:53:5"
l_text_19:
    .asciz "division by zero"
l_text_20:
    .asciz "src/std/window/queue.lucb:54:5"
l_text_21:
    .asciz "src/std/window/queue.lucb:65:5"
l_text_22:
    .asciz "src/std/window/queue.lucb:66:5"
l_text_23:
    .asciz "src/std/window/queue.lucb:67:5"
l_text_24:
    .asciz "src/std/window/queue.lucb:68:5"
l_text_25:
    .asciz "src/std/window/presentation.lucb:11:13"
l_text_26:
    .asciz "isVisible"
l_text_27:
    .asciz "isMiniaturized"
l_text_28:
    .asciz "src/std/window/presentation.lucb:22:13"
l_text_29:
    .asciz "src/std/window/presentation.lucb:35:13"
l_text_30:
    .asciz "this window has no Windows handle"
l_text_31:
    .asciz "src/std/window/presentation.lucb:43:9"
l_text_32:
    .asciz "presentation lease destruction requires the main thread"
l_text_33:
    .asciz "src/std/window/presentation.lucb:49:13"
l_text_34:
    .asciz "the presentation lease is closed"
l_text_35:
    .asciz "the presentation window is closed"
l_text_36:
    .asciz "src/std/window/presentation.lucb:63:9"
l_text_37:
    .asciz "null_foreign"
l_text_38:
    .asciz "src/std/window/macos/objc.lucb:65:5"
l_text_39:
    .asciz "a required AppKit class is unavailable; link AppKit and Foundation"
l_text_40:
    .asciz "src/std/window/macos/objc.lucb:68:5"
l_text_41:
    .asciz "the native window lost an owned object"
l_text_42:
    .asciz "src/std/window/macos/objc.lucb:71:5"
l_text_43:
    .asciz "luceState"
l_text_44:
    .asciz "src/std/window/macos/objc.lucb:77:5"
l_text_45:
    .asciz "could not register a native window callback"
l_text_46:
    .asciz "src/std/window/macos/events.lucb:9:5"
l_text_47:
    .asciz "windowDidBecomeKey:"
l_text_48:
    .asciz "src/std/window/macos/events.lucb:30:5"
l_text_49:
    .asciz "shift count out of range"
l_text_50:
    .asciz "src/std/window/macos/events.lucb:33:5"
l_text_51:
    .asciz "type"
l_text_52:
    .asciz "modifierFlags"
l_text_53:
    .asciz "keyCode"
l_text_54:
    .asciz "isARepeat"
l_text_55:
    .asciz "NSArray"
l_text_56:
    .asciz "arrayWithObject:"
l_text_57:
    .asciz "interpretKeyEvents:"
l_text_58:
    .asciz "convertPoint:fromView:"
l_text_59:
    .asciz "locationInWindow"
l_text_60:
    .asciz "buttonNumber"
l_text_61:
    .asciz "scrollingDeltaX"
l_text_62:
    .asciz "scrollingDeltaY"
l_text_63:
    .asciz "hasPreciseScrollingDeltas"
l_text_64:
    .asciz "bounds"
l_text_65:
    .asciz "src/std/window/macos/events.lucb:101:5"
l_text_66:
    .asciz "arrowCursor"
l_text_67:
    .asciz "IBeamCursor"
l_text_68:
    .asciz "pointingHandCursor"
l_text_69:
    .asciz "resizeLeftRightCursor"
l_text_70:
    .asciz "resizeUpDownCursor"
l_text_71:
    .asciz "openHandCursor"
l_text_72:
    .asciz "closedHandCursor"
l_text_73:
    .asciz "operationNotAllowedCursor"
l_text_74:
    .asciz "NSCursor"
l_text_75:
    .asciz "AppKit could not load a system cursor"
l_text_76:
    .asciz "src/std/window/macos/cursor.lucb:14:5"
l_text_77:
    .asciz "src/std/window/macos/cursor.lucb:18:5"
l_text_78:
    .asciz "isKeyWindow"
l_text_79:
    .asciz "set"
l_text_80:
    .asciz "NSTextInputClient"
l_text_81:
    .asciz "AppKit text input is unavailable"
l_text_82:
    .asciz "could not register the native text input client"
l_text_83:
    .asciz "insertText:replacementRange:"
l_text_84:
    .asciz "v@:@{_NSRange=QQ}"
l_text_85:
    .asciz "setMarkedText:selectedRange:replacementRange:"
l_text_86:
    .asciz "v@:@{_NSRange=QQ}{_NSRange=QQ}"
l_text_87:
    .asciz "unmarkText"
l_text_88:
    .asciz "v@:"
l_text_89:
    .asciz "hasMarkedText"
l_text_90:
    .asciz "B@:"
l_text_91:
    .asciz "markedRange"
l_text_92:
    .asciz "{_NSRange=QQ}@:"
l_text_93:
    .asciz "selectedRange"
l_text_94:
    .asciz "validAttributesForMarkedText"
l_text_95:
    .asciz "@@:"
l_text_96:
    .asciz "attributedSubstringForProposedRange:actualRange:"
l_text_97:
    .asciz "@@:{_NSRange=QQ}^{_NSRange=QQ}"
l_text_98:
    .asciz "characterIndexForPoint:"
l_text_99:
    .asciz "Q@:{CGPoint=dd}"
l_text_100:
    .asciz "firstRectForCharacterRange:actualRange:"
l_text_101:
    .asciz "{CGRect={CGPoint=dd}{CGSize=dd}}@:{_NSRange=QQ}^{_NSRange=QQ}"
l_text_102:
    .asciz "doCommandBySelector:"
l_text_103:
    .asciz "v@::"
l_text_104:
    .asciz "NSString"
l_text_105:
    .asciz "isKindOfClass:"
l_text_106:
    .asciz "string"
l_text_107:
    .asciz "src/std/window/macos/text.lucb:25:5"
l_text_108:
    .asciz "release"
l_text_109:
    .asciz "length"
l_text_110:
    .asciz "src/std/window/macos/text.lucb:42:5"
l_text_111:
    .asciz "characterAtIndex:"
l_text_112:
    .asciz "copy"
l_text_113:
    .asciz "src/std/window/macos/text.lucb:68:5"
l_text_114:
    .asciz "src/std/window/macos/text.lucb:73:5"
l_text_115:
    .asciz "src/std/window/macos/text.lucb:77:5"
l_text_116:
    .asciz "array"
l_text_117:
    .asciz "src/std/window/macos/text.lucb:81:5"
l_text_118:
    .asciz "src/std/window/macos/text.lucb:86:5"
l_text_119:
    .asciz "src/std/window/macos/text.lucb:89:5"
l_text_120:
    .asciz "convertRectToScreen:"
l_text_121:
    .asciz "src/std/window/macos/text.lucb:96:5"
l_text_122:
    .asciz "inputContext"
l_text_123:
    .asciz "discardMarkedText"
l_text_124:
    .asciz "could not allocate a native window class"
l_text_125:
    .asciz "^v"
l_text_126:
    .asciz "could not register native window state"
l_text_127:
    .asciz "src/std/window/macos/lifecycle.lucb:14:5"
l_text_128:
    .asciz "NSObject"
l_text_129:
    .asciz "LuceBaseWindowDelegateV1"
l_text_130:
    .asciz "windowShouldClose:"
l_text_131:
    .asciz "B@:@"
l_text_132:
    .asciz "windowDidResize:"
l_text_133:
    .asciz "v@:@"
l_text_134:
    .asciz "windowDidChangeBackingProperties:"
l_text_135:
    .asciz "windowDidResignKey:"
l_text_136:
    .asciz "luceDidFinishLaunching:"
l_text_137:
    .asciz "NSView"
l_text_138:
    .asciz "LuceBaseWindowViewV1"
l_text_139:
    .asciz "acceptsFirstResponder"
l_text_140:
    .asciz "isFlipped"
l_text_141:
    .asciz "cursorUpdate:"
l_text_142:
    .asciz "keyDown:"
l_text_143:
    .asciz "keyUp:"
l_text_144:
    .asciz "flagsChanged:"
l_text_145:
    .asciz "mouseDown:"
l_text_146:
    .asciz "mouseUp:"
l_text_147:
    .asciz "rightMouseDown:"
l_text_148:
    .asciz "rightMouseUp:"
l_text_149:
    .asciz "otherMouseDown:"
l_text_150:
    .asciz "otherMouseUp:"
l_text_151:
    .asciz "mouseMoved:"
l_text_152:
    .asciz "mouseDragged:"
l_text_153:
    .asciz "rightMouseDragged:"
l_text_154:
    .asciz "otherMouseDragged:"
l_text_155:
    .asciz "scrollWheel:"
l_text_156:
    .asciz "mouseEntered:"
l_text_157:
    .asciz "mouseExited:"
l_text_158:
    .asciz "src/std/window/macos/lifecycle.lucb:45:5"
l_text_159:
    .asciz "NSApplication"
l_text_160:
    .asciz "sharedApplication"
l_text_161:
    .asciz "AppKit could not initialize an application"
l_text_162:
    .asciz "setActivationPolicy:"
l_text_163:
    .asciz "AppKit refused the application's window activation policy"
l_text_164:
    .asciz "memory.unset"
l_text_165:
    .asciz "src/std/window/macos/lifecycle.lucb:54:5"
l_text_166:
    .asciz "memory.exhausted"
l_text_167:
    .asciz "NSWindow"
l_text_168:
    .asciz "alloc"
l_text_169:
    .asciz "could not allocate a native window"
l_text_170:
    .asciz "initWithContentRect:styleMask:backing:defer:"
l_text_171:
    .asciz "could not initialize a native window"
l_text_172:
    .asciz "setReleasedWhenClosed:"
l_text_173:
    .asciz "could not allocate a native view"
l_text_174:
    .asciz "initWithFrame:"
l_text_175:
    .asciz "could not initialize a native view"
l_text_176:
    .asciz "setContentView:"
l_text_177:
    .asciz "NSTrackingArea"
l_text_178:
    .asciz "could not allocate pointer tracking"
l_text_179:
    .asciz "initWithRect:options:owner:userInfo:"
l_text_180:
    .asciz "could not initialize pointer tracking"
l_text_181:
    .asciz "addTrackingArea:"
l_text_182:
    .asciz "new"
l_text_183:
    .asciz "could not allocate a window delegate"
l_text_184:
    .asciz "setDelegate:"
l_text_185:
    .asciz "setAcceptsMouseMovedEvents:"
l_text_186:
    .asciz "makeFirstResponder:"
l_text_187:
    .asciz "could not allocate a title"
l_text_188:
    .asciz "initWithBytes:length:encoding:"
l_text_189:
    .asciz "could not initialize the title"
l_text_190:
    .asciz "setTitle:"
l_text_191:
    .asciz "center"
l_text_192:
    .asciz "src/std/window/macos/lifecycle.lucb:85:5"
l_text_193:
    .asciz "NSRunningApplication"
l_text_194:
    .asciz "currentApplication"
l_text_195:
    .asciz "isFinishedLaunching"
l_text_196:
    .asciz "could not allocate a launch observer"
l_text_197:
    .asciz "NSNotificationCenter"
l_text_198:
    .asciz "defaultCenter"
l_text_199:
    .asciz "addObserver:selector:name:object:"
l_text_200:
    .asciz "run"
l_text_201:
    .asciz "removeObserver:"
l_text_202:
    .asciz "object"
l_text_203:
    .asciz "NSEvent"
l_text_204:
    .asciz "AppKit has no NSEvent class"
l_text_205:
    .asciz "src/std/window/macos/lifecycle.lucb:106:5"
l_text_206:
    .asciz "otherEventWithType:location:modifierFlags:timestamp:windowNumber:context:subtype:data1:data2:"
l_text_207:
    .asciz "postEvent:atStart:"
l_text_208:
    .asciz "stop:"
l_text_209:
    .asciz "src/std/window/macos/lifecycle.lucb:112:5"
l_text_210:
    .asciz "activateIgnoringOtherApps:"
l_text_211:
    .asciz "makeKeyAndOrderFront:"
l_text_212:
    .asciz "src/std/window/macos/lifecycle.lucb:118:5"
l_text_213:
    .asciz "convertRectToBacking:"
l_text_214:
    .asciz "backingScaleFactor"
l_text_215:
    .asciz "src/std/window/macos/lifecycle.lucb:123:5"
l_text_216:
    .asciz "src/std/window/macos/lifecycle.lucb:126:5"
l_text_217:
    .asciz "setContentSize:"
l_text_218:
    .asciz "src/std/window/macos/lifecycle.lucb:132:5"
l_text_219:
    .asciz "NSDate"
l_text_220:
    .asciz "AppKit has no NSDate class"
l_text_221:
    .asciz "src/std/window/macos/lifecycle.lucb:134:5"
l_text_222:
    .asciz "distantPast"
l_text_223:
    .asciz "nextEventMatchingMask:untilDate:inMode:dequeue:"
l_text_224:
    .asciz "sendEvent:"
l_text_225:
    .asciz "src/std/window/macos/lifecycle.lucb:140:9"
l_text_226:
    .asciz "updateWindows"
l_text_227:
    .asciz "src/std/window/macos/lifecycle.lucb:147:5"
l_text_228:
    .asciz "orderOut:"
l_text_229:
    .asciz "close"
l_text_230:
    .asciz "src/std/window/macos/lifecycle.lucb:165:5"
l_text_231:
    .asciz "src/std/window/windows/native.lucb:63:5"
l_text_232:
    .asciz "the native window class could not be registered"
l_text_233:
    .asciz "src/std/window/windows/native.lucb:72:5"
l_text_234:
    .asciz "src/std/window/windows/native.lucb:75:5"
l_text_235:
    .asciz "memory.exhausted: the allocation size overflows"
l_text_236:
    .asciz "src/std/window/windows/native.lucb:79:9"
l_text_237:
    .asciz "the window title could not be converted to UTF-16"
l_text_238:
    .asciz "src/std/window/windows/native.lucb:81:13"
l_text_239:
    .asciz "src/std/window/windows/native.lucb:82:5"
l_text_240:
    .asciz "src/std/window/windows/native.lucb:85:5"
l_text_241:
    .asciz "the native window dimensions could not be calculated"
l_text_242:
    .asciz "src/std/window/windows/native.lucb:87:9"
l_text_243:
    .asciz "src/std/window/windows/native.lucb:88:5"
l_text_244:
    .asciz "the native window could not be created"
l_text_245:
    .asciz "src/std/window/windows/native.lucb:91:5"
l_text_246:
    .asciz "src/std/window/windows/native.lucb:99:5"
l_text_247:
    .asciz "src/std/window/windows/native.lucb:100:5"
l_text_248:
    .asciz "src/std/window/windows/native.lucb:101:5"
l_text_249:
    .asciz "src/std/window/windows/native.lucb:107:5"
l_text_250:
    .asciz "src/std/window/windows/native.lucb:108:5"
l_text_251:
    .asciz "the native window could not be resized"
l_text_252:
    .asciz "src/std/window/windows/native.lucb:117:9"
l_text_253:
    .asciz "src/std/window/windows/events.lucb:16:5"
l_text_254:
    .asciz "src/std/window/windows/events.lucb:22:5"
l_text_255:
    .asciz "src/std/window/windows/events.lucb:31:5"
l_text_256:
    .asciz "src/std/window/windows/events.lucb:50:9"
l_text_257:
    .asciz "src/std/window/windows/events.lucb:52:9"
l_text_258:
    .asciz "src/std/window/windows/events.lucb:55:5"
l_text_259:
    .asciz "src/std/window/windows/events.lucb:95:9"
l_text_260:
    .asciz "src/std/window/windows/events.lucb:113:9"
l_text_261:
    .asciz "src/std/window/windows/events.lucb:128:13"
l_text_262:
    .asciz "src/std/window/windows/events.lucb:140:13"
l_text_263:
    .asciz "src/std/window/windows/events.lucb:147:5"
l_text_264:
    .asciz "Windows could not load a system cursor"
l_text_265:
    .asciz "src/std/window/windows/cursor.lucb:19:5"
l_text_266:
    .asciz "integer overflow"
l_text_267:
    .asciz "index out of bounds"

    .section __DATA,__const
    .p2align 3
    .globl _lb_window_unsupported
    .zerofill __DATA,__bss,_lb_window_unsupported,4,2
    .globl _lb_window_12wrong_thread
    .zerofill __DATA,__bss,_lb_window_12wrong_thread,4,2
    .globl _lb_window_15invalid_options
    .zerofill __DATA,__bss,_lb_window_15invalid_options,4,2
    .globl _lb_window_failed
    .zerofill __DATA,__bss,_lb_window_failed,4,2
    .globl _lb_window_closed
    .zerofill __DATA,__bss,_lb_window_closed,4,2
    .globl _lb_window_19presentation_in_use
    .zerofill __DATA,__bss,_lb_window_19presentation_in_use,4,2
    .globl _lb_window_13key_positions
    .zerofill __DATA,__bss,_lb_window_13key_positions,256,1
    .globl _lb_window_13mac_not_found
    .zerofill __DATA,__bss,_lb_window_13mac_not_found,8,3
    .globl _lb_window_10view_class
    .zerofill __DATA,__bss,_lb_window_10view_class,8,3
    .globl _lb_window_14delegate_class
    .zerofill __DATA,__bss,_lb_window_14delegate_class,8,3
    .globl _lb_window_application
    .zerofill __DATA,__bss,_lb_window_application,8,3
    .globl _lb_window_14win_class_atom
    .zerofill __DATA,__bss,_lb_window_14win_class_atom,2,1
    .globl _lb_window_14win_class_name
    .zerofill __DATA,__bss,_lb_window_14win_class_name,22,1
    .globl _lb_window_13win_scan_keys
    .zerofill __DATA,__bss,_lb_window_13win_scan_keys,128,1

