    .text

    .p2align 2
    .globl lb_os_module_0init
    .type lb_os_module_0init, %function
lb_os_module_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    str x19, [sp, #8]
    adrp x14, lb_os_failed
    add x14, x14, :lo12:lb_os_failed
    movz x9, #12
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_platform_arm64
    add x14, x14, :lo12:lb_platform_arm64
    ldrb w14, [x14]
    adrp x15, lb_os_arm64
    add x15, x15, :lo12:lb_os_arm64
    strb w14, [x15]
    adrp x14, lb_platform_6x86_64
    add x14, x14, :lo12:lb_platform_6x86_64
    ldrb w14, [x14]
    adrp x15, lb_os_6x86_64
    add x15, x15, :lo12:lb_os_6x86_64
    strb w14, [x15]
    adrp x14, lb_platform_wasm32
    add x14, x14, :lo12:lb_platform_wasm32
    ldrb w14, [x14]
    adrp x15, lb_os_wasm32
    add x15, x15, :lo12:lb_os_wasm32
    strb w14, [x15]
    adrp x19, lb_platform_macos
    add x19, x19, :lo12:lb_platform_macos
    ldrb w14, [x19]
    adrp x15, lb_os_macos
    add x15, x15, :lo12:lb_os_macos
    strb w14, [x15]
    adrp x14, lb_platform_linux
    add x14, x14, :lo12:lb_platform_linux
    ldrb w14, [x14]
    adrp x15, lb_os_linux
    add x15, x15, :lo12:lb_os_linux
    strb w14, [x15]
    adrp x14, lb_platform_windows
    add x14, x14, :lo12:lb_platform_windows
    ldrb w14, [x14]
    adrp x15, lb_os_windows
    add x15, x15, :lo12:lb_os_windows
    strb w14, [x15]
    adrp x14, lb_platform_posix
    add x14, x14, :lo12:lb_platform_posix
    ldrb w14, [x14]
    adrp x15, lb_os_posix
    add x15, x15, :lo12:lb_os_posix
    strb w14, [x15]
    adrp x14, lb_platform_12pointer_bits
    add x14, x14, :lo12:lb_platform_12pointer_bits
    ldr w14, [x14]
    adrp x15, lb_os_12pointer_bits
    add x15, x15, :lo12:lb_os_12pointer_bits
    str w14, [x15]
    adrp x14, lb_platform_name
    add x14, x14, :lo12:lb_platform_name
    adrp x15, lb_os_name
    add x15, x15, :lo12:lb_os_name
    mov x10, x14
    mov x11, x15
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x14, lb_platform_9cpu_level
    add x14, x14, :lo12:lb_platform_9cpu_level
    ldr w14, [x14]
    adrp x15, lb_os_9cpu_level
    add x15, x15, :lo12:lb_os_9cpu_level
    str w14, [x15]
    ldrb w14, [x19]
    cbnz w14, .L0_1
    b .L0_2
.L0_1:
    movz x9, #58
    mov w14, w9
    b .L0_3
.L0_2:
    movz x9, #84
    mov w14, w9
.L0_3:
    adrp x15, lb_os_17processors_online
    add x15, x15, :lo12:lb_os_17processors_online
    str w14, [x15]
    ldr x19, [sp, #8]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_os_module_0init, .-lb_os_module_0init

    .p2align 2
    .globl lb_os_12random_bytes
    .type lb_os_12random_bytes, %function
lb_os_12random_bytes:
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
.L1_1:
    ldr x14, [x20]
    cmp x21, x14
    b.hs .L1_3
.L1_2:
    sub x15, x14, x21
    movz x10, #256
    cmp x15, x10
    b.hs .L1_5
.L1_4:
    mov x22, x15
    b .L1_6
.L1_5:
    movz x9, #256
    mov x22, x9
.L1_6:
    ldr x15, [x19]
    add x12, x14, #1
    cmp x21, x12
    b.lo 1f
    adrp x0, .Ltext_1
    add x0, x0, :lo12:.Ltext_1
    adrp x1, .Ltext_35
    add x1, x1, :lo12:.Ltext_35
    bl lb_core_7trap_at
1:
    add x15, x15, x21
    mov x0, x15
    mov x1, x22
    bl getentropy
    mov w15, w0
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    b.ne .L1_8
.L1_7:
    sub x19, x29, #88
    adrp x14, lb_os_failed
    add x14, x14, :lo12:lb_os_failed
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_2
    add x14, x14, :lo12:.Ltext_2
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
.L1_10:
    b .L1_9
.L1_8:
.L1_9:
    mov x9, x21
    mov x10, x22
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_3
    add x0, x0, :lo12:.Ltext_3
    adrp x1, .Ltext_45
    add x1, x1, :lo12:.Ltext_45
    bl lb_core_7trap_at
1:
    mov x14, x9
    mov x21, x14
    b .L1_1
.L1_3:
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

    .size lb_os_12random_bytes, .-lb_os_12random_bytes

    .p2align 2
    .globl lb_os_17cpu_level_running
    .type lb_os_17cpu_level_running, %function
lb_os_17cpu_level_running:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    movz x9, #1
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_1:
    adrp x0, .Ltext_5
    add x0, x0, :lo12:.Ltext_5
    adrp x1, .Ltext_4
    add x1, x1, :lo12:.Ltext_4
    bl lb_core_7trap_at

    .size lb_os_17cpu_level_running, .-lb_os_17cpu_level_running

    .p2align 2
    .globl lb_os_cpus
    .type lb_os_cpus, %function
lb_os_cpus:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, lb_os_17processors_online
    add x14, x14, :lo12:lb_os_17processors_online
    ldrsw x14, [x14]
    mov x0, x14
    bl sysconf
    mov x14, x0
    mov x10, #0
    cmp x14, x10
    b.le .L3_2
.L3_1:
    mov w15, w14
    b .L3_3
.L3_2:
    movz x9, #1
    mov w15, w9
.L3_3:
    mov x9, x15
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L3_4:
    adrp x0, .Ltext_15
    add x0, x0, :lo12:.Ltext_15
    adrp x1, .Ltext_4
    add x1, x1, :lo12:.Ltext_4
    bl lb_core_7trap_at

    .size lb_os_cpus, .-lb_os_cpus

    .p2align 2
    .globl lb_os_9page_size
    .type lb_os_9page_size, %function
lb_os_9page_size:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    bl getpagesize
    mov w14, w0
    sxtw x14, w14
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L4_1:
    adrp x0, .Ltext_16
    add x0, x0, :lo12:.Ltext_16
    adrp x1, .Ltext_4
    add x1, x1, :lo12:.Ltext_4
    bl lb_core_7trap_at

    .size lb_os_9page_size, .-lb_os_9page_size

    .p2align 2
    .globl lb_os_env
    .type lb_os_env, %function
lb_os_env:
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
    bl getenv
    mov x19, x0
    cbnz x19, .L5_1
    b .L5_2
.L5_1:
    b .L5_3
.L5_2:
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
.L5_4:
.L5_3:
    mov x0, x19
    bl strlen
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
.L5_5:
    adrp x0, .Ltext_17
    add x0, x0, :lo12:.Ltext_17
    adrp x1, .Ltext_4
    add x1, x1, :lo12:.Ltext_4
    bl lb_core_7trap_at

    .size lb_os_env, .-lb_os_env

    .p2align 2
    .globl lb_os_7set_env
    .type lb_os_7set_env, %function
lb_os_7set_env:
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
    bl setenv
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L6_2
.L6_1:
    sub x19, x29, #64
    adrp x14, lb_os_failed
    add x14, x14, :lo12:lb_os_failed
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_18
    add x14, x14, :lo12:.Ltext_18
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
.L6_4:
    b .L6_3
.L6_2:
.L6_3:
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

    .size lb_os_7set_env, .-lb_os_7set_env

    .p2align 2
    .globl lb_os_9unset_env
    .type lb_os_9unset_env, %function
lb_os_9unset_env:
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
    bl unsetenv
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L7_2
.L7_1:
    sub x19, x29, #64
    adrp x14, lb_os_failed
    add x14, x14, :lo12:lb_os_failed
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_19
    add x14, x14, :lo12:.Ltext_19
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
.L7_4:
    b .L7_3
.L7_2:
.L7_3:
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

    .size lb_os_9unset_env, .-lb_os_9unset_env

    .p2align 2
    .globl lb_os_cwd
    .type lb_os_cwd, %function
lb_os_cwd:
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
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x20, x0
    sub x21, x29, #192
.L8_2:
    ldr x14, [x20]
    add x22, x20, #8
    ldr x15, [x22]
    cbnz x15, .L8_4
    b .L8_5
.L8_5:
    adrp x0, .Ltext_22
    add x0, x0, :lo12:.Ltext_22
    adrp x1, .Ltext_21
    add x1, x1, :lo12:.Ltext_21
    bl lb_core_7trap_at
.L8_4:
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
    cbnz w12, .L8_6
    b .L8_7
.L8_6:
    add x14, x21, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_23
    add x15, x15, :lo12:.Ltext_23
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x21, #40
    movz x9, #1
    strb w9, [x14]
    b .L8_3
.L8_7:
    ldr x14, [x13]
    str x14, [x21]
    add x14, x21, #8
    movz x9, #4096
    str x9, [x14]
    add x14, x21, #40
    mov x9, #0
    strb w9, [x14]
.L8_3:
    add x14, x21, #40
    ldrb w14, [x14]
    cbnz w14, .L8_9
    b .L8_8
.L8_9:
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
.L8_8:
    mov x10, x21
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x23, [x19]
    add x14, x19, #8
    ldr x24, [x14]
    mov x0, x23
    mov x1, x24
    bl getcwd
    mov x25, x0
    mov x10, #0
    cmp x25, x10
    b.ne .L8_12
.L8_11:
    sub x14, x29, #232
    str x23, [x14]
    add x15, x14, #8
    str x24, [x15]
    ldr x15, [x20]
    ldr x12, [x22]
    cbnz x12, .L8_15
    b .L8_14
.L8_15:
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
.L8_14:
    sub x19, x29, #128
    add x14, x19, #16
    adrp x15, lb_os_failed
    add x15, x15, :lo12:lb_os_failed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_25
    add x15, x15, :lo12:.Ltext_25
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
.L8_12:
.L8_13:
    cbnz x25, .L8_17
    b .L8_18
.L8_17:
    b .L8_19
.L8_18:
    adrp x14, .Ltext_4
    add x14, x14, :lo12:.Ltext_4
    sub x15, x29, #264
    str x14, [x15]
    add x14, x15, #8
    movz x9, #11
    str x9, [x14]
    adrp x14, .Ltext_26
    add x14, x14, :lo12:.Ltext_26
    mov x0, x14
    mov x9, x15
    ldr x1, [x9]
    ldr x2, [x9, #8]
    bl lb_core_12trap_text_at
    adrp x0, .Ltext_26
    add x0, x0, :lo12:.Ltext_26
    adrp x1, .Ltext_4
    add x1, x1, :lo12:.Ltext_4
    bl lb_core_7trap_at
.L8_19:
    mov x0, x25
    bl strlen
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

    .size lb_os_cwd, .-lb_os_cwd

    .p2align 2
    .globl lb_os_executable
    .type lb_os_executable, %function
lb_os_executable:
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
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x20, x0
    sub x21, x29, #184
.L9_2:
    ldr x14, [x20]
    add x22, x20, #8
    ldr x15, [x22]
    cbnz x15, .L9_4
    b .L9_5
.L9_5:
    adrp x0, .Ltext_28
    add x0, x0, :lo12:.Ltext_28
    adrp x1, .Ltext_21
    add x1, x1, :lo12:.Ltext_21
    bl lb_core_7trap_at
.L9_4:
    ldr x12, [x15]
    mov x17, x12
    str x17, [sp, #-16]!
    mov x0, x14
    movz x1, #4096
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
    cbnz w12, .L9_6
    b .L9_7
.L9_6:
    add x14, x21, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_23
    add x15, x15, :lo12:.Ltext_23
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x21, #40
    movz x9, #1
    strb w9, [x14]
    b .L9_3
.L9_7:
    ldr x14, [x13]
    str x14, [x21]
    add x14, x21, #8
    movz x9, #4096
    str x9, [x14]
    add x14, x21, #40
    mov x9, #0
    strb w9, [x14]
.L9_3:
    add x14, x21, #40
    ldrb w14, [x14]
    cbnz w14, .L9_9
    b .L9_8
.L9_9:
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
.L9_8:
    mov x10, x21
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    adrp x14, .Ltext_29
    add x14, x14, :lo12:.Ltext_29
    ldr x23, [x19]
    add x15, x19, #8
    ldr x24, [x15]
    mov x9, x24
    movz x10, #1
    subs x9, x9, x10
    b.cs 1f
    adrp x0, .Ltext_30
    add x0, x0, :lo12:.Ltext_30
    adrp x1, .Ltext_45
    add x1, x1, :lo12:.Ltext_45
    bl lb_core_7trap_at
1:
    mov x15, x9
    mov x0, x14
    mov x1, x23
    mov x2, x15
    bl readlink
    mov x14, x0
    mov x10, #0
    cmp x14, x10
    b.ge .L9_12
.L9_11:
    sub x14, x29, #224
    str x23, [x14]
    add x15, x14, #8
    str x24, [x15]
    ldr x15, [x20]
    ldr x12, [x22]
    cbnz x12, .L9_15
    b .L9_14
.L9_15:
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
.L9_14:
    sub x19, x29, #120
    add x14, x19, #16
    adrp x15, lb_os_failed
    add x15, x15, :lo12:lb_os_failed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_32
    add x15, x15, :lo12:.Ltext_32
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
    ldr x24, [sp, #200]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L9_12:
.L9_13:
    cmp x14, x24
    b.lo 1f
    adrp x0, .Ltext_33
    add x0, x0, :lo12:.Ltext_33
    adrp x1, .Ltext_35
    add x1, x1, :lo12:.Ltext_35
    bl lb_core_7trap_at
1:
    add x15, x23, x14
    mov x9, #0
    strb w9, [x15]
    add x15, x24, #1
    mov x9, #0
    cmp x9, x15
    b.lo 1f
    adrp x0, .Ltext_34
    add x0, x0, :lo12:.Ltext_34
    adrp x1, .Ltext_35
    add x1, x1, :lo12:.Ltext_35
    bl lb_core_7trap_at
1:
    cmp x14, x15
    b.lo 1f
    adrp x0, .Ltext_34
    add x0, x0, :lo12:.Ltext_34
    adrp x1, .Ltext_35
    add x1, x1, :lo12:.Ltext_35
    bl lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x14
    b.ls .L9_17
.L9_18:
    adrp x0, .Ltext_34
    add x0, x0, :lo12:.Ltext_34
    adrp x1, .Ltext_35
    add x1, x1, :lo12:.Ltext_35
    bl lb_core_7trap_at
.L9_17:
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

    .size lb_os_executable, .-lb_os_executable

    .p2align 2
    .globl lb_os_10change_dir
    .type lb_os_10change_dir, %function
lb_os_10change_dir:
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
    bl chdir
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L10_2
.L10_1:
    sub x19, x29, #64
    adrp x14, lb_os_failed
    add x14, x14, :lo12:lb_os_failed
    ldr w14, [x14]
    str w14, [x19]
    adrp x14, .Ltext_36
    add x14, x14, :lo12:.Ltext_36
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
.L10_4:
    b .L10_3
.L10_2:
.L10_3:
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

    .size lb_os_10change_dir, .-lb_os_10change_dir

    .p2align 2
    .globl lb_os_pid
    .type lb_os_pid, %function
lb_os_pid:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    bl getpid
    mov w14, w0
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L11_1:
    adrp x0, .Ltext_37
    add x0, x0, :lo12:.Ltext_37
    adrp x1, .Ltext_4
    add x1, x1, :lo12:.Ltext_4
    bl lb_core_7trap_at

    .size lb_os_pid, .-lb_os_pid

    .p2align 2
    .globl lb_os_10parent_pid
    .type lb_os_10parent_pid, %function
lb_os_10parent_pid:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    bl getppid
    mov w14, w0
    mov x9, x14
    mov x0, x9
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L12_1:
    adrp x0, .Ltext_38
    add x0, x0, :lo12:.Ltext_38
    adrp x1, .Ltext_4
    add x1, x1, :lo12:.Ltext_4
    bl lb_core_7trap_at

    .size lb_os_10parent_pid, .-lb_os_10parent_pid

    .p2align 2
    .globl lb_os_hostname
    .type lb_os_hostname, %function
lb_os_hostname:
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
    adrp x0, :gottprel:lb_memory_allocator
    ldr x0, [x0, :gottprel_lo12:lb_memory_allocator]
    mrs x16, tpidr_el0
    add x0, x16, x0
    mov x20, x0
    sub x21, x29, #184
.L13_2:
    ldr x14, [x20]
    add x22, x20, #8
    ldr x15, [x22]
    cbnz x15, .L13_4
    b .L13_5
.L13_5:
    adrp x0, .Ltext_39
    add x0, x0, :lo12:.Ltext_39
    adrp x1, .Ltext_21
    add x1, x1, :lo12:.Ltext_21
    bl lb_core_7trap_at
.L13_4:
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
    cbnz w12, .L13_6
    b .L13_7
.L13_6:
    add x14, x21, #16
    movz x9, #1
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x15, .Ltext_23
    add x15, x15, :lo12:.Ltext_23
    add x12, x14, #8
    str x15, [x12]
    add x14, x14, #16
    movz x9, #16
    str x9, [x14]
    add x14, x21, #40
    movz x9, #1
    strb w9, [x14]
    b .L13_3
.L13_7:
    ldr x14, [x13]
    str x14, [x21]
    add x14, x21, #8
    movz x9, #256
    str x9, [x14]
    add x14, x21, #40
    mov x9, #0
    strb w9, [x14]
.L13_3:
    add x14, x21, #40
    ldrb w14, [x14]
    cbnz w14, .L13_9
    b .L13_8
.L13_9:
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
.L13_8:
    mov x10, x21
    mov x11, x19
    ldp x16, x17, [x10, #0]
    stp x16, x17, [x11, #0]
    ldr x23, [x19]
    add x14, x19, #8
    ldr x24, [x14]
    mov x0, x23
    mov x1, x24
    bl gethostname
    mov w14, w0
    mov x10, #0
    cmp w14, w10
    cset w14, eq
    mov x10, #0
    cmp w14, w10
    b.ne .L13_12
.L13_11:
    sub x14, x29, #224
    str x23, [x14]
    add x15, x14, #8
    str x24, [x15]
    ldr x15, [x20]
    ldr x12, [x22]
    cbnz x12, .L13_15
    b .L13_14
.L13_15:
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
.L13_14:
    sub x19, x29, #120
    add x14, x19, #16
    adrp x15, lb_os_failed
    add x15, x15, :lo12:lb_os_failed
    ldr w15, [x15]
    str w15, [x14]
    adrp x15, .Ltext_41
    add x15, x15, :lo12:.Ltext_41
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
.L13_12:
.L13_13:
    mov x9, #0
    mov x14, x9
.L13_17:
    cmp x14, x24
    cset w15, lo
    cbnz w15, .L13_20
    b .L13_25
.L13_25:
    mov w12, w15
    b .L13_21
.L13_20:
    add x15, x23, x14
    ldrb w15, [x15]
    mov x10, #0
    cmp w15, w10
    cset w15, eq
    mov x10, #0
    cmp w15, w10
    cset w12, eq
.L13_21:
    and w15, w12, #255
    cbnz w15, .L13_18
    b .L13_19
.L13_18:
    mov x9, x14
    movz x10, #1
    adds x9, x9, x10
    b.cc 1f
    adrp x0, .Ltext_43
    add x0, x0, :lo12:.Ltext_43
    adrp x1, .Ltext_45
    add x1, x1, :lo12:.Ltext_45
    bl lb_core_7trap_at
1:
    mov x15, x9
    mov x14, x15
    b .L13_17
.L13_19:
    add x15, x24, #1
    mov x9, #0
    cmp x9, x15
    b.lo 1f
    adrp x0, .Ltext_44
    add x0, x0, :lo12:.Ltext_44
    adrp x1, .Ltext_35
    add x1, x1, :lo12:.Ltext_35
    bl lb_core_7trap_at
1:
    cmp x14, x15
    b.lo 1f
    adrp x0, .Ltext_44
    add x0, x0, :lo12:.Ltext_44
    adrp x1, .Ltext_35
    add x1, x1, :lo12:.Ltext_35
    bl lb_core_7trap_at
1:
    mov x9, #0
    cmp x9, x14
    b.ls .L13_22
.L13_23:
    adrp x0, .Ltext_44
    add x0, x0, :lo12:.Ltext_44
    adrp x1, .Ltext_35
    add x1, x1, :lo12:.Ltext_35
    bl lb_core_7trap_at
.L13_22:
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

    .size lb_os_hostname, .-lb_os_hostname

    .p2align 2
    .globl lb_os_exit
    .type lb_os_exit, %function
lb_os_exit:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #32
    sub x16, x29, #32
    str w0, [x16]
    sub x14, x29, #32
    ldrsw x14, [x14]
    mov x0, x14
    bl exit
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_os_exit, .-lb_os_exit

    .section .init_array,"aw"
    .p2align 3
    .quad lb_os_module_0init

    .section .rodata
.Ltext_0:
    .asciz "src/std/os/module.lucb:29:9"
.Ltext_1:
    .asciz "src/std/os/module.lucb:34:13"
.Ltext_2:
    .asciz "operating system randomness is unavailable"
.Ltext_3:
    .asciz "src/std/os/module.lucb:37:9"
.Ltext_4:
    .asciz "unreachable"
.Ltext_5:
    .asciz "src/std/os/module.lucb:63:5"
.Ltext_6:
    .asciz "shift count out of range"
.Ltext_7:
    .asciz "src/std/os/module.lucb:73:5"
.Ltext_8:
    .asciz "src/std/os/module.lucb:74:5"
.Ltext_9:
    .asciz "src/std/os/module.lucb:75:5"
.Ltext_10:
    .asciz "src/std/os/module.lucb:77:5"
.Ltext_11:
    .asciz "src/std/os/module.lucb:78:5"
.Ltext_12:
    .asciz "src/std/os/module.lucb:79:5"
.Ltext_13:
    .asciz "src/std/os/module.lucb:80:5"
.Ltext_14:
    .asciz "src/std/os/module.lucb:85:5"
.Ltext_15:
    .asciz "src/std/os/module.lucb:96:5"
.Ltext_16:
    .asciz "src/std/os/module.lucb:103:5"
.Ltext_17:
    .asciz "src/std/os/module.lucb:111:5"
.Ltext_18:
    .asciz "the environment variable cannot be set"
.Ltext_19:
    .asciz "the environment variable cannot be unset"
.Ltext_20:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_21:
    .asciz "memory.unset"
.Ltext_22:
    .asciz "src/std/os/module.lucb:140:5"
.Ltext_23:
    .asciz "memory.exhausted"
.Ltext_24:
    .asciz "src/std/os/module.lucb:143:9"
.Ltext_25:
    .asciz "the working directory cannot be read"
.Ltext_26:
    .asciz "src/std/os/module.lucb:145:5"
.Ltext_27:
    .asciz "src/std/os/module.lucb:146:5"
.Ltext_28:
    .asciz "src/std/os/module.lucb:153:5"
.Ltext_29:
    .asciz "/proc/self/exe"
.Ltext_30:
    .asciz "src/std/os/module.lucb:163:9"
.Ltext_31:
    .asciz "src/std/os/module.lucb:165:13"
.Ltext_32:
    .asciz "the executable path cannot be read"
.Ltext_33:
    .asciz "src/std/os/module.lucb:168:5"
.Ltext_34:
    .asciz "src/std/os/module.lucb:169:5"
.Ltext_35:
    .asciz "index out of bounds"
.Ltext_36:
    .asciz "the directory cannot be entered"
.Ltext_37:
    .asciz "src/std/os/module.lucb:184:5"
.Ltext_38:
    .asciz "src/std/os/module.lucb:189:5"
.Ltext_39:
    .asciz "src/std/os/module.lucb:199:5"
.Ltext_40:
    .asciz "src/std/os/module.lucb:201:9"
.Ltext_41:
    .asciz "the host name cannot be read"
.Ltext_42:
    .asciz "src/std/os/module.lucb:204:5"
.Ltext_43:
    .asciz "src/std/os/module.lucb:205:9"
.Ltext_44:
    .asciz "src/std/os/module.lucb:206:5"
.Ltext_45:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_os_failed
    .type lb_os_failed, %object
    .p2align 2
lb_os_failed:
    .zero 4

    .bss
    .globl lb_os_arm64
    .type lb_os_arm64, %object
    .p2align 0
lb_os_arm64:
    .zero 1

    .bss
    .globl lb_os_6x86_64
    .type lb_os_6x86_64, %object
    .p2align 0
lb_os_6x86_64:
    .zero 1

    .bss
    .globl lb_os_wasm32
    .type lb_os_wasm32, %object
    .p2align 0
lb_os_wasm32:
    .zero 1

    .bss
    .globl lb_os_macos
    .type lb_os_macos, %object
    .p2align 0
lb_os_macos:
    .zero 1

    .bss
    .globl lb_os_linux
    .type lb_os_linux, %object
    .p2align 0
lb_os_linux:
    .zero 1

    .bss
    .globl lb_os_windows
    .type lb_os_windows, %object
    .p2align 0
lb_os_windows:
    .zero 1

    .bss
    .globl lb_os_posix
    .type lb_os_posix, %object
    .p2align 0
lb_os_posix:
    .zero 1

    .bss
    .globl lb_os_12pointer_bits
    .type lb_os_12pointer_bits, %object
    .p2align 2
lb_os_12pointer_bits:
    .zero 4

    .bss
    .globl lb_os_name
    .type lb_os_name, %object
    .p2align 3
lb_os_name:
    .zero 16

    .bss
    .globl lb_os_9cpu_level
    .type lb_os_9cpu_level, %object
    .p2align 2
lb_os_9cpu_level:
    .zero 4

    .bss
    .globl lb_os_17processors_online
    .type lb_os_17processors_online, %object
    .p2align 2
lb_os_17processors_online:
    .zero 4


    .section .note.GNU-stack,"",%progbits
