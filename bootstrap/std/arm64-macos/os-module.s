    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_os_module_0init
_lb_os_module_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    adrp x14, _lb_os_failed@PAGE
    add x14, x14, _lb_os_failed@PAGEOFF
    movz x9, #12
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_os_arm64@PAGE
    add x14, x14, _lb_os_arm64@PAGEOFF
    movz x9, #1
    strb w9, [x14]
    adrp x14, _lb_os_6x86_64@PAGE
    add x14, x14, _lb_os_6x86_64@PAGEOFF
    mov x9, #0
    strb w9, [x14]
    adrp x14, _lb_os_wasm32@PAGE
    add x14, x14, _lb_os_wasm32@PAGEOFF
    mov x9, #0
    strb w9, [x14]
    adrp x14, _lb_os_macos@PAGE
    add x14, x14, _lb_os_macos@PAGEOFF
    movz x9, #1
    strb w9, [x14]
    adrp x14, _lb_os_linux@PAGE
    add x14, x14, _lb_os_linux@PAGEOFF
    mov x9, #0
    strb w9, [x14]
    adrp x14, _lb_os_windows@PAGE
    add x14, x14, _lb_os_windows@PAGEOFF
    mov x9, #0
    strb w9, [x14]
    adrp x14, _lb_os_posix@PAGE
    add x14, x14, _lb_os_posix@PAGEOFF
    movz x9, #1
    strb w9, [x14]
    adrp x14, _lb_os_12pointer_bits@PAGE
    add x14, x14, _lb_os_12pointer_bits@PAGEOFF
    movz x9, #64
    str w9, [x14]
    adrp x14, l_text_0@PAGE
    add x14, x14, l_text_0@PAGEOFF
    sub x15, x29, #32
    str x14, [x15]
    add x14, x15, #8
    movz x9, #11
    str x9, [x14]
    adrp x14, _lb_os_name@PAGE
    add x14, x14, _lb_os_name@PAGEOFF
    mov x10, x15
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x14, _lb_os_9cpu_level@PAGE
    add x14, x14, _lb_os_9cpu_level@PAGEOFF
    movz x9, #1
    str w9, [x14]
    adrp x14, _lb_os_17processors_online@PAGE
    add x14, x14, _lb_os_17processors_online@PAGEOFF
    movz x9, #58
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_os_12random_bytes
    .no_dead_strip _lb_os_12random_bytes
_lb_os_12random_bytes:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #128
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #96]
    str x20, [sp, #88]
    str x21, [sp, #80]
    str x22, [sp, #72]
    sub x16, x29, #104
    str x0, [x16]
    str x1, [x16, #8]
    sub x19, x29, #104
    add x20, x19, #8
    mov x9, #0
    mov x21, x9
L1_1:
    ldr x14, [x20]
    cmp x21, x14
    b.hs L1_3
L1_2:
    sub x15, x14, x21
    movz x10, #256
    cmp x15, x10
    b.hs L1_5
L1_4:
    mov x22, x15
    b L1_6
L1_5:
    movz x9, #256
    mov x22, x9
L1_6:
    ldr x15, [x19]
    add x12, x14, #1
    cmp x21, x12
    b.lo 1f
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x15, x15, x21
    mov x0, x15
    mov x1, x22
    bl _getentropy
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne L1_8
L1_7:
    sub x19, x29, #88
    adrp x14, _lb_os_failed@PAGE
    add x14, x14, _lb_os_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_3@PAGE
    add x14, x14, l_text_3@PAGEOFF
    sub x15, x29, #120
    str x14, [x15]
    add x14, x15, #8
    movz x9, #42
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
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    ldr x21, [sp, #80]
    ldr x22, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_10:
    b L1_9
L1_8:
L1_9:
    mov x9, x21
    mov x10, x22
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_4@PAGE
    add x0, x0, l_text_4@PAGEOFF
    adrp x1, l_text_46@PAGE
    add x1, x1, l_text_46@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x14, x9
    mov x21, x14
    b L1_1
L1_3:
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
    ldr x19, [sp, #96]
    ldr x20, [sp, #88]
    ldr x21, [sp, #80]
    ldr x22, [sp, #72]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_os_17cpu_level_running
    .no_dead_strip _lb_os_17cpu_level_running
_lb_os_17cpu_level_running:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    movz x9, #1
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_1:
    adrp x0, l_text_6@PAGE
    add x0, x0, l_text_6@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_os_cpus
    .no_dead_strip _lb_os_cpus
_lb_os_cpus:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    movz x0, #58
    bl _sysconf
    mov x14, x0
    mov x10, #0
    cmp x14, x10
    b.le L3_2
L3_1:
    mov w15, w14
    b L3_3
L3_2:
    movz x9, #1
    mov w15, w9
L3_3:
    mov x9, x15
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L3_4:
    adrp x0, l_text_16@PAGE
    add x0, x0, l_text_16@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_os_9page_size
    .no_dead_strip _lb_os_9page_size
_lb_os_9page_size:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    bl _getpagesize
    mov w14, w0
    sxtw x14, w14
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L4_1:
    adrp x0, l_text_17@PAGE
    add x0, x0, l_text_17@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_os_env
    .no_dead_strip _lb_os_env
_lb_os_env:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #160
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #128]
    str x20, [sp, #120]
    str x21, [sp, #112]
    sub x16, x29, #88
    str x0, [x16]
    sub x14, x29, #88
    ldr x14, [x14]
    mov x0, x14
    bl _getenv
    mov x19, x0
    cbnz x19, L5_1
    b L5_2
L5_1:
    b L5_3
L5_2:
    sub x19, x29, #112
    mov x11, x19
    stp xzr, xzr, [x11, #0]
    str xzr, [x11, #16]
    sub x20, x29, #72
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
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_4:
L5_3:
    mov x0, x19
    bl _strlen
    mov x14, x0
    sub x15, x29, #128
    str x19, [x15]
    add x12, x15, #8
    str x14, [x12]
    sub x20, x29, #152
    mov x10, x15
    mov x11, x20
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x14, x20, #16
    movz x9, #1
    strb w9, [x14]
    sub x21, x29, #72
    mov x10, x20
    mov x11, x21
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x16, [x10, #16]
    str x16, [x11, #16]
    mov x1, x21
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #24
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #128]
    ldr x20, [sp, #120]
    ldr x21, [sp, #112]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L5_5:
    adrp x0, l_text_18@PAGE
    add x0, x0, l_text_18@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_os_7set_env
    .no_dead_strip _lb_os_7set_env
_lb_os_7set_env:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #112
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #80]
    sub x16, x29, #80
    str x0, [x16]
    sub x16, x29, #96
    str x1, [x16]
    sub x14, x29, #80
    ldr x14, [x14]
    sub x15, x29, #96
    ldr x15, [x15]
    mov x0, x14
    mov x1, x15
    movz x2, #1
    bl _setenv
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L6_2
L6_1:
    sub x19, x29, #64
    adrp x14, _lb_os_failed@PAGE
    add x14, x14, _lb_os_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_19@PAGE
    add x14, x14, l_text_19@PAGEOFF
    sub x15, x29, #112
    str x14, [x15]
    add x14, x15, #8
    movz x9, #38
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
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #80]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L6_4:
    b L6_3
L6_2:
L6_3:
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
    .globl _lb_os_9unset_env
    .no_dead_strip _lb_os_9unset_env
_lb_os_9unset_env:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #64]
    sub x16, x29, #80
    str x0, [x16]
    sub x14, x29, #80
    ldr x14, [x14]
    mov x0, x14
    bl _unsetenv
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L7_2
L7_1:
    sub x19, x29, #64
    adrp x14, _lb_os_failed@PAGE
    add x14, x14, _lb_os_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_20@PAGE
    add x14, x14, l_text_20@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #40
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
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L7_4:
    b L7_3
L7_2:
L7_3:
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
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_os_cwd
    .no_dead_strip _lb_os_cwd
_lb_os_cwd:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #288
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #256]
    str x20, [sp, #248]
    str x21, [sp, #240]
    str x22, [sp, #232]
    str x23, [sp, #224]
    str x24, [sp, #216]
    str x25, [sp, #208]
    sub x19, x29, #144
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x20, x0
    sub x21, x29, #192
L8_2:
    ldr x14, [x20]
    add x22, x20, #8
    ldr x15, [x22]
    cbnz x15, L8_4
    b L8_5
L8_5:
    adrp x0, l_text_23@PAGE
    add x0, x0, l_text_23@PAGEOFF
    adrp x1, l_text_22@PAGE
    add x1, x1, l_text_22@PAGEOFF
    bl _lb_core_7trap_at
L8_4:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #4096
    movz x2, #1
    sub x8, x29, #216
    ldr x17, [sp], #16
    blr x17
    sub x13, x29, #216
    add x12, x13, #16
    ldrb w12, [x12]
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    movz x10, #1
    and w12, w12, w10
    cbnz w12, L8_6
    b L8_7
L8_6:
    add x14, x21, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_24@PAGE
    add x15, x15, l_text_24@PAGEOFF
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x21, #40
    movz x9, #1
    strb w9, [x14]
    b L8_3
L8_7:
    ldr x14, [x13]
    str x14, [x21]
    add x14, x21, #8
    movz x9, #4096
    str x9, [x14]
    add x14, x21, #40
    mov x9, #0
    strb w9, [x14]
L8_3:
    add x14, x21, #40
    ldrb w14, [x14]
    cbnz w14, L8_9
    b L8_8
L8_9:
    add x14, x21, #16
    sub x19, x29, #128
    add x15, x19, #16
    mov x10, x14
    mov x11, x15
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
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    ldr x25, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_8:
    mov x10, x21
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x23, [x19]
    add x14, x19, #8
    ldr x24, [x14]
    mov x0, x23
    mov x1, x24
    bl _getcwd
    mov x25, x0
    mov x10, #0
    cmp x25, x10
    b.ne L8_12
L8_11:
    sub x14, x29, #232
    str x23, [x14]
    add x15, x14, #8
    str x24, [x15]
    ldr x15, [x20]
    ldr x12, [x22]
    cbnz x12, L8_15
    b L8_14
L8_15:
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
L8_14:
    sub x19, x29, #128
    add x14, x19, #16
    adrp x15, _lb_os_failed@PAGE
    add x15, x15, _lb_os_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_26@PAGE
    add x15, x15, l_text_26@PAGEOFF
    sub x12, x29, #248
    str x15, [x12]
    add x15, x12, #8
    movz x9, #36
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    ldr x25, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L8_12:
L8_13:
    cbnz x25, L8_17
    b L8_18
L8_17:
    b L8_19
L8_18:
    adrp x14, l_text_5@PAGE
    add x14, x14, l_text_5@PAGEOFF
    sub x15, x29, #264
    str x14, [x15]
    add x14, x15, #8
    movz x9, #11
    str x9, [x14]
    adrp x14, l_text_27@PAGE
    add x14, x14, l_text_27@PAGEOFF
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl _lb_core_12trap_text_at
    adrp x0, l_text_27@PAGE
    add x0, x0, l_text_27@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at
L8_19:
    mov x0, x25
    bl _strlen
    mov x14, x0
    sub x15, x29, #280
    str x25, [x15]
    add x12, x15, #8
    str x14, [x12]
    sub x19, x29, #128
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    ldr x19, [sp, #256]
    ldr x20, [sp, #248]
    ldr x21, [sp, #240]
    ldr x22, [sp, #232]
    ldr x23, [sp, #224]
    ldr x24, [sp, #216]
    ldr x25, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_os_executable
    .no_dead_strip _lb_os_executable
_lb_os_executable:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #272
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #240]
    str x20, [sp, #232]
    str x21, [sp, #224]
    str x22, [sp, #216]
    str x23, [sp, #208]
    sub x19, x29, #128
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x20, x0
    sub x21, x29, #176
L9_2:
    ldr x14, [x20]
    add x22, x20, #8
    ldr x15, [x22]
    cbnz x15, L9_4
    b L9_5
L9_5:
    adrp x0, l_text_29@PAGE
    add x0, x0, l_text_29@PAGEOFF
    adrp x1, l_text_22@PAGE
    add x1, x1, l_text_22@PAGEOFF
    bl _lb_core_7trap_at
L9_4:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #4096
    movz x2, #1
    sub x8, x29, #200
    ldr x17, [sp], #16
    blr x17
    sub x13, x29, #200
    add x12, x13, #16
    ldrb w12, [x12]
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    movz x10, #1
    and w12, w12, w10
    cbnz w12, L9_6
    b L9_7
L9_6:
    add x14, x21, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_24@PAGE
    add x15, x15, l_text_24@PAGEOFF
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x21, #40
    movz x9, #1
    strb w9, [x14]
    b L9_3
L9_7:
    ldr x14, [x13]
    str x14, [x21]
    add x14, x21, #8
    movz x9, #4096
    str x9, [x14]
    add x14, x21, #40
    mov x9, #0
    strb w9, [x14]
L9_3:
    add x14, x21, #40
    ldrb w14, [x14]
    cbnz w14, L9_9
    b L9_8
L9_9:
    add x14, x21, #16
    sub x19, x29, #112
    add x15, x19, #16
    mov x10, x14
    mov x11, x15
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
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_8:
    mov x10, x21
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    sub x14, x29, #204
    movz x9, #4096
    str w9, [x14]
    ldr x23, [x19]
    mov x0, x23
    mov x1, x14
    bl __NSGetExecutablePath
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L9_12
L9_11:
    sub x14, x29, #224
    add x15, x19, #8
    ldr x15, [x15]
    str x23, [x14]
    add x12, x14, #8
    str x15, [x12]
    ldr x15, [x20]
    ldr x12, [x22]
    cbnz x12, L9_15
    b L9_14
L9_15:
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
L9_14:
    sub x19, x29, #112
    add x14, x19, #16
    adrp x15, _lb_os_failed@PAGE
    add x15, x15, _lb_os_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_31@PAGE
    add x15, x15, l_text_31@PAGEOFF
    sub x12, x29, #240
    str x15, [x12]
    add x15, x12, #8
    movz x9, #34
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L9_12:
L9_13:
    add x14, x19, #8
    ldr x14, [x14]
    mov x9, #0
    mov x15, x9
L9_17:
    cmp x15, x14
    cset w12, lo
    cbnz w12, L9_20
    b L9_25
L9_25:
    mov w13, w12
    b L9_21
L9_20:
    add x12, x23, x15
    ldrb w12, [x12]
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    mov x10, #0
    cmp w12, w10
    cset w13, eq
L9_21:
    and w12, w13, #255
    cbnz w12, L9_18
    b L9_19
L9_18:
    mov x9, x15
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_33@PAGE
    add x0, x0, l_text_33@PAGEOFF
    adrp x1, l_text_46@PAGE
    add x1, x1, l_text_46@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x12, x9
    mov x15, x12
    b L9_17
L9_19:
    cmp x15, x14
    b.lo 1f
    adrp x0, l_text_34@PAGE
    add x0, x0, l_text_34@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    add x12, x23, x15
    mov x9, #0
    strb w9, [x12]
    add x12, x14, #1
    mov x9, #0
    cmp x9, x12
    b.lo 1f
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x15, x12
    b.lo 1f
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x15
    b.ls L9_22
L9_23:
    adrp x0, l_text_35@PAGE
    add x0, x0, l_text_35@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
L9_22:
    sub x14, x29, #256
    str x23, [x14]
    add x14, x14, #8
    str x15, [x14]
    sub x14, x29, #272
    str x23, [x14]
    add x12, x14, #8
    str x15, [x12]
    sub x19, x29, #112
    mov x10, x14
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_os_10change_dir
    .no_dead_strip _lb_os_10change_dir
_lb_os_10change_dir:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #96
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #64]
    sub x16, x29, #80
    str x0, [x16]
    sub x14, x29, #80
    ldr x14, [x14]
    mov x0, x14
    bl _chdir
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L10_2
L10_1:
    sub x19, x29, #64
    adrp x14, _lb_os_failed@PAGE
    add x14, x14, _lb_os_failed@PAGEOFF
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, l_text_37@PAGE
    add x14, x14, l_text_37@PAGEOFF
    sub x15, x29, #96
    str x14, [x15]
    add x14, x15, #8
    movz x9, #31
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
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L10_4:
    b L10_3
L10_2:
L10_3:
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
    ldr x19, [sp, #64]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_os_pid
    .no_dead_strip _lb_os_pid
_lb_os_pid:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    bl _getpid
    mov w14, w0
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L11_1:
    adrp x0, l_text_38@PAGE
    add x0, x0, l_text_38@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_os_10parent_pid
    .no_dead_strip _lb_os_10parent_pid
_lb_os_10parent_pid:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    bl _getppid
    mov w14, w0
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L12_1:
    adrp x0, l_text_39@PAGE
    add x0, x0, l_text_39@PAGEOFF
    adrp x1, l_text_5@PAGE
    add x1, x1, l_text_5@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_os_hostname
    .no_dead_strip _lb_os_hostname
_lb_os_hostname:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #272
    sub x16, x29, #24
    str x8, [x16]
    str x19, [sp, #240]
    str x20, [sp, #232]
    str x21, [sp, #224]
    str x22, [sp, #216]
    str x23, [sp, #208]
    str x24, [sp, #200]
    sub x19, x29, #136
    adrp x0, _lb_memory_allocator@TLVPPAGE
    ldr x0, [x0, _lb_memory_allocator@TLVPPAGEOFF]
    ldr x16, [x0]
    blr x16
    mov x20, x0
    sub x21, x29, #184
L13_2:
    ldr x14, [x20]
    add x22, x20, #8
    ldr x15, [x22]
    cbnz x15, L13_4
    b L13_5
L13_5:
    adrp x0, l_text_40@PAGE
    add x0, x0, l_text_40@PAGEOFF
    adrp x1, l_text_22@PAGE
    add x1, x1, l_text_22@PAGEOFF
    bl _lb_core_7trap_at
L13_4:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #256
    movz x2, #1
    sub x8, x29, #208
    ldr x17, [sp], #16
    blr x17
    sub x13, x29, #208
    add x12, x13, #16
    ldrb w12, [x12]
    mov x10, #0
    cmp w12, w10
    cset w12, eq
    movz x10, #1
    and w12, w12, w10
    cbnz w12, L13_6
    b L13_7
L13_6:
    add x14, x21, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, l_text_24@PAGE
    add x15, x15, l_text_24@PAGEOFF
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x21, #40
    movz x9, #1
    strb w9, [x14]
    b L13_3
L13_7:
    ldr x14, [x13]
    str x14, [x21]
    add x14, x21, #8
    movz x9, #256
    str x9, [x14]
    add x14, x21, #40
    mov x9, #0
    strb w9, [x14]
L13_3:
    add x14, x21, #40
    ldrb w14, [x14]
    cbnz w14, L13_9
    b L13_8
L13_9:
    add x14, x21, #16
    sub x19, x29, #120
    add x15, x19, #16
    mov x10, x14
    mov x11, x15
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
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    ldr x24, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_8:
    mov x10, x21
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x23, [x19]
    add x14, x19, #8
    ldr x24, [x14]
    mov x0, x23
    mov x1, x24
    bl _gethostname
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne L13_12
L13_11:
    sub x14, x29, #224
    str x23, [x14]
    add x15, x14, #8
    str x24, [x15]
    ldr x15, [x20]
    ldr x12, [x22]
    cbnz x12, L13_15
    b L13_14
L13_15:
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
L13_14:
    sub x19, x29, #120
    add x14, x19, #16
    adrp x15, _lb_os_failed@PAGE
    add x15, x15, _lb_os_failed@PAGEOFF
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, l_text_42@PAGE
    add x15, x15, l_text_42@PAGEOFF
    sub x12, x29, #240
    str x15, [x12]
    add x15, x12, #8
    movz x9, #28
    str x9, [x15]
    add x14, x14, #8
    mov x10, x12
    mov x11, x14
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
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
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    ldr x24, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L13_12:
L13_13:
    mov x9, #0
    mov x14, x9
L13_17:
    cmp x14, x24
    cset w15, lo
    cbnz w15, L13_20
    b L13_25
L13_25:
    mov w12, w15
    b L13_21
L13_20:
    add x15, x23, x14
    ldrb w15, [x15]
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w12, eq
L13_21:
    and w15, w12, #255
    cbnz w15, L13_18
    b L13_19
L13_18:
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, l_text_44@PAGE
    add x0, x0, l_text_44@PAGEOFF
    adrp x1, l_text_46@PAGE
    add x1, x1, l_text_46@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x15, x9
    mov x14, x15
    b L13_17
L13_19:
    add x15, x24, #1
    mov x9, #0
    cmp x9, x15
    b.lo 1f
    adrp x0, l_text_45@PAGE
    add x0, x0, l_text_45@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    cmp x14, x15
    b.lo 1f
    adrp x0, l_text_45@PAGE
    add x0, x0, l_text_45@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x14
    b.ls L13_22
L13_23:
    adrp x0, l_text_45@PAGE
    add x0, x0, l_text_45@PAGEOFF
    adrp x1, l_text_36@PAGE
    add x1, x1, l_text_36@PAGEOFF
    bl _lb_core_7trap_at
L13_22:
    sub x15, x29, #256
    str x23, [x15]
    add x15, x15, #8
    str x14, [x15]
    sub x15, x29, #272
    str x23, [x15]
    add x12, x15, #8
    str x14, [x12]
    sub x19, x29, #120
    mov x10, x15
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    add x15, x19, #40
    mov x9, #0
    strb w9, [x15]
    mov x1, x19
    sub x16, x29, #24
    ldr x0, [x16]
    movz x2, #48
    bl _memcpy
    sub x16, x29, #24
    ldr x0, [x16]
    ldr x19, [sp, #240]
    ldr x20, [sp, #232]
    ldr x21, [sp, #224]
    ldr x22, [sp, #216]
    ldr x23, [sp, #208]
    ldr x24, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_os_exit
    .no_dead_strip _lb_os_exit
_lb_os_exit:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str w0, [x16]
    sub x14, x29, #32
    ldrsw x14, [x14]
    mov x0, x14
    bl _exit
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_os_module_0init

    .section __TEXT,__const
l_text_0:
    .asciz "arm64-macos"
l_text_1:
    .asciz "src/std/os/module.lucb:29:9"
l_text_2:
    .asciz "src/std/os/module.lucb:34:13"
l_text_3:
    .asciz "operating system randomness is unavailable"
l_text_4:
    .asciz "src/std/os/module.lucb:37:9"
l_text_5:
    .asciz "unreachable"
l_text_6:
    .asciz "src/std/os/module.lucb:63:5"
l_text_7:
    .asciz "shift count out of range"
l_text_8:
    .asciz "src/std/os/module.lucb:73:5"
l_text_9:
    .asciz "src/std/os/module.lucb:74:5"
l_text_10:
    .asciz "src/std/os/module.lucb:75:5"
l_text_11:
    .asciz "src/std/os/module.lucb:77:5"
l_text_12:
    .asciz "src/std/os/module.lucb:78:5"
l_text_13:
    .asciz "src/std/os/module.lucb:79:5"
l_text_14:
    .asciz "src/std/os/module.lucb:80:5"
l_text_15:
    .asciz "src/std/os/module.lucb:85:5"
l_text_16:
    .asciz "src/std/os/module.lucb:96:5"
l_text_17:
    .asciz "src/std/os/module.lucb:103:5"
l_text_18:
    .asciz "src/std/os/module.lucb:111:5"
l_text_19:
    .asciz "the environment variable cannot be set"
l_text_20:
    .asciz "the environment variable cannot be unset"
l_text_21:
    .asciz "memory.exhausted: the allocation size overflows"
l_text_22:
    .asciz "memory.unset"
l_text_23:
    .asciz "src/std/os/module.lucb:140:5"
l_text_24:
    .asciz "memory.exhausted"
l_text_25:
    .asciz "src/std/os/module.lucb:143:9"
l_text_26:
    .asciz "the working directory cannot be read"
l_text_27:
    .asciz "src/std/os/module.lucb:145:5"
l_text_28:
    .asciz "src/std/os/module.lucb:146:5"
l_text_29:
    .asciz "src/std/os/module.lucb:153:5"
l_text_30:
    .asciz "src/std/os/module.lucb:158:13"
l_text_31:
    .asciz "the executable path cannot be read"
l_text_32:
    .asciz "src/std/os/module.lucb:160:9"
l_text_33:
    .asciz "src/std/os/module.lucb:161:13"
l_text_34:
    .asciz "src/std/os/module.lucb:168:5"
l_text_35:
    .asciz "src/std/os/module.lucb:169:5"
l_text_36:
    .asciz "index out of bounds"
l_text_37:
    .asciz "the directory cannot be entered"
l_text_38:
    .asciz "src/std/os/module.lucb:184:5"
l_text_39:
    .asciz "src/std/os/module.lucb:189:5"
l_text_40:
    .asciz "src/std/os/module.lucb:199:5"
l_text_41:
    .asciz "src/std/os/module.lucb:201:9"
l_text_42:
    .asciz "the host name cannot be read"
l_text_43:
    .asciz "src/std/os/module.lucb:204:5"
l_text_44:
    .asciz "src/std/os/module.lucb:205:9"
l_text_45:
    .asciz "src/std/os/module.lucb:206:5"
l_text_46:
    .asciz "integer overflow"

    .section __DATA,__const
    .p2align 3
    .globl _lb_os_failed
    .no_dead_strip _lb_os_failed
    .zerofill __DATA,__bss,_lb_os_failed,4,2
    .globl _lb_os_arm64
    .no_dead_strip _lb_os_arm64
    .zerofill __DATA,__bss,_lb_os_arm64,1,0
    .globl _lb_os_6x86_64
    .no_dead_strip _lb_os_6x86_64
    .zerofill __DATA,__bss,_lb_os_6x86_64,1,0
    .globl _lb_os_wasm32
    .no_dead_strip _lb_os_wasm32
    .zerofill __DATA,__bss,_lb_os_wasm32,1,0
    .globl _lb_os_macos
    .no_dead_strip _lb_os_macos
    .zerofill __DATA,__bss,_lb_os_macos,1,0
    .globl _lb_os_linux
    .no_dead_strip _lb_os_linux
    .zerofill __DATA,__bss,_lb_os_linux,1,0
    .globl _lb_os_windows
    .no_dead_strip _lb_os_windows
    .zerofill __DATA,__bss,_lb_os_windows,1,0
    .globl _lb_os_posix
    .no_dead_strip _lb_os_posix
    .zerofill __DATA,__bss,_lb_os_posix,1,0
    .globl _lb_os_12pointer_bits
    .no_dead_strip _lb_os_12pointer_bits
    .zerofill __DATA,__bss,_lb_os_12pointer_bits,4,2
    .globl _lb_os_name
    .no_dead_strip _lb_os_name
    .zerofill __DATA,__bss,_lb_os_name,16,3
    .globl _lb_os_9cpu_level
    .no_dead_strip _lb_os_9cpu_level
    .zerofill __DATA,__bss,_lb_os_9cpu_level,4,2
    .globl _lb_os_17processors_online
    .zerofill __DATA,__bss,_lb_os_17processors_online,4,2

.subsections_via_symbols
