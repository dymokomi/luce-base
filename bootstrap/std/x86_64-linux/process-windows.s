    .text

    .p2align 4
    .globl lb_process_windows_0init
    .type lb_process_windows_0init, @function
lb_process_windows_0init:
    pushq %rbp
    movq %rsp, %rbp
    movq %rbp, %rsp
    popq %rbp
    ret

    .p2align 4
    .globl lb_process_15release_storage_0g1_u16
    .type lb_process_15release_storage_0g1_u16, @function
    .weak lb_process_15release_storage_0g1_u16
lb_process_15release_storage_0g1_u16:
    pushq %rbp
    movq %rsp, %rbp
    subq $80, %rsp
    movq %rbx, -8(%rbp)
    movq %r12, -16(%rbp)
    movq %r13, -24(%rbp)
    movq %r14, -32(%rbp)
    movq %r15, -40(%rbp)
    leaq -56(%rbp), %r10
    movq %rdi, 0(%r10)
    movq %rsi, 8(%r10)
    leaq -56(%rbp), %rbx
    movq $8, %rcx
    movq %rbx, %r12
    addq %rcx, %r12
    movq %r12, %r10
    movq (%r10), %r12
    movq $0, %rcx
    cmpq %rcx, %r12
    jbe .L1_2
.L1_1:
    movq %fs:0, %rax
    addq lb_memory_allocator@GOTTPOFF(%rip), %rax
    movq %rax, -80(%rbp)
    leaq -72(%rbp), %r14
    movq %rbx, %r10
    movq (%r10), %r15
    movq %r12, %rax
    movq $2, %rcx
    mulq %rcx
    jnc 1f
    leaq .Ltext_79(%rip), %rdi
    leaq .Ltext_80(%rip), %rsi
    call lb_core_7trap_at@PLT
1:
    movq %rax, %r13
    movq %r14, %r10
    movq %r15, (%r10)
    movq $8, %rcx
    movq %r14, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq %r13, (%r10)
    movq -80(%rbp), %r10
    movq (%r10), %r13
    movq -80(%rbp), %rax
    movq $8, %rcx
    movq %rax, %r15
    addq %rcx, %r15
    movq %r15, %r10
    movq (%r10), %r15
    testq %r15, %r15
    jne .L1_5
    jmp .L1_4
.L1_5:
    movq $16, %rcx
    movq %r15, %rbx
    addq %rcx, %rbx
    movq %rbx, %r10
    movq (%r10), %rbx
    movq %r13, %rdi
    movq %r14, %r10
    movq 0(%r10), %rsi
    movq 8(%r10), %rdx
    movq %rbx, %r11
    call *%r11
.L1_4:
    jmp .L1_3
.L1_2:
.L1_3:
    movq -8(%rbp), %rbx
    movq -16(%rbp), %r12
    movq -24(%rbp), %r13
    movq -32(%rbp), %r14
    movq -40(%rbp), %r15
    movq %rbp, %rsp
    popq %rbp
    ret

    .section .init_array,"aw"
    .p2align 3
    .quad lb_process_windows_0init
    .text

    .section .rodata
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "src/std/process/windows.lucb:53:13"
.Ltext_1:
    .asciz "src/std/process/windows.lucb:54:13"
.Ltext_2:
    .asciz "src/std/process/windows.lucb:56:5"
.Ltext_3:
    .asciz "src/std/process/windows.lucb:57:5"
.Ltext_4:
    .asciz "src/std/process/windows.lucb:61:13"
.Ltext_5:
    .asciz "src/std/process/windows.lucb:63:9"
.Ltext_6:
    .asciz "src/std/process/windows.lucb:66:13"
.Ltext_7:
    .asciz "src/std/process/windows.lucb:67:13"
.Ltext_8:
    .asciz "src/std/process/windows.lucb:68:9"
.Ltext_9:
    .asciz "src/std/process/windows.lucb:69:9"
.Ltext_10:
    .asciz "src/std/process/windows.lucb:71:5"
.Ltext_11:
    .asciz "src/std/process/windows.lucb:73:9"
.Ltext_12:
    .asciz "src/std/process/windows.lucb:74:9"
.Ltext_13:
    .asciz "src/std/process/windows.lucb:75:5"
.Ltext_14:
    .asciz "src/std/process/windows.lucb:76:5"
.Ltext_15:
    .asciz "null_foreign"
.Ltext_16:
    .asciz "src/std/process/windows.lucb:80:5"
.Ltext_17:
    .asciz "a child stream could not be inherited"
.Ltext_18:
    .asciz "a child stream has no handle"
.Ltext_19:
    .asciz "unreachable"
.Ltext_20:
    .asciz "src/std/process/windows.lucb:83:5"
.Ltext_21:
    .asciz "a child stream could not be measured"
.Ltext_22:
    .asciz "a child stream could not be read"
.Ltext_23:
    .asciz "memory.exhausted: the allocation size overflows"
.Ltext_24:
    .asciz "memory.unset"
.Ltext_25:
    .asciz "src/std/process/windows.lucb:91:5"
.Ltext_26:
    .asciz "memory.exhausted"
.Ltext_27:
    .asciz "src/std/process/windows.lucb:93:9"
.Ltext_28:
    .asciz "src/std/process/windows.lucb:95:5"
.Ltext_29:
    .asciz "src/std/process/windows.lucb:100:5"
.Ltext_30:
    .asciz "src/std/process/windows.lucb:101:5"
.Ltext_31:
    .asciz "the child temporary directory is unavailable"
.Ltext_32:
    .asciz "0123456789abcdef"
.Ltext_33:
    .asciz "src/std/process/windows.lucb:109:13"
.Ltext_34:
    .asciz "shift count out of range"
.Ltext_35:
    .asciz "src/std/process/windows.lucb:110:13"
.Ltext_36:
    .asciz "src/std/process/windows.lucb:111:9"
.Ltext_37:
    .asciz "src/std/process/windows.lucb:112:9"
.Ltext_38:
    .asciz "a child capture file could not be created"
.Ltext_39:
    .asciz "a child capture descriptor could not be created"
.Ltext_40:
    .asciz "w+b"
.Ltext_41:
    .asciz "a child capture stream could not be created"
.Ltext_42:
    .asciz "no unused child capture name was found"
.Ltext_43:
    .asciz "src/std/process/windows.lucb:124:5"
.Ltext_44:
    .asciz "the process command is too long"
.Ltext_45:
    .asciz "src/std/process/windows.lucb:134:5"
.Ltext_46:
    .asciz "src/std/process/windows.lucb:139:9"
.Ltext_47:
    .asciz "src/std/process/windows.lucb:140:9"
.Ltext_48:
    .asciz "src/std/process/windows.lucb:142:5"
.Ltext_49:
    .asciz "src/std/process/windows.lucb:143:5"
.Ltext_50:
    .asciz "index out of bounds"
.Ltext_51:
    .asciz "src/std/process/windows.lucb:146:9"
.Ltext_52:
    .asciz "src/std/process/windows.lucb:149:9"
.Ltext_53:
    .asciz "src/std/process/windows.lucb:153:9"
.Ltext_54:
    .asciz "src/std/process/windows.lucb:155:5"
.Ltext_55:
    .asciz "src/std/process/windows.lucb:157:5"
.Ltext_56:
    .asciz "NUL"
.Ltext_57:
    .asciz "rb"
.Ltext_58:
    .asciz "the child input could not be opened"
.Ltext_59:
    .asciz "src/std/process/windows.lucb:159:5"
.Ltext_60:
    .asciz "src/std/process/windows.lucb:161:5"
.Ltext_61:
    .asciz "src/std/process/windows.lucb:163:5"
.Ltext_62:
    .asciz "src/std/process/windows.lucb:165:5"
.Ltext_63:
    .asciz "the process could not be started"
.Ltext_64:
    .asciz "src/std/process/windows.lucb:177:9"
.Ltext_65:
    .asciz "CreateProcess returned no process"
.Ltext_66:
    .asciz "src/std/process/windows.lucb:178:5"
.Ltext_67:
    .asciz "CreateProcess returned no thread"
.Ltext_68:
    .asciz "src/std/process/windows.lucb:179:5"
.Ltext_69:
    .asciz "src/std/process/windows.lucb:183:9"
.Ltext_70:
    .asciz "waiting for the process failed"
.Ltext_71:
    .asciz "src/std/process/windows.lucb:187:9"
.Ltext_72:
    .asciz "the process exit status is unavailable"
.Ltext_73:
    .asciz "src/std/process/windows.lucb:190:9"
.Ltext_74:
    .asciz ""
.Ltext_75:
    .asciz "src/std/process/windows.lucb:192:9"
.Ltext_76:
    .asciz "src/std/process/windows.lucb:193:5"
.Ltext_77:
    .asciz "src/std/process/windows.lucb:196:9"
.Ltext_78:
    .asciz "src/std/process/windows.lucb:197:5"
.Ltext_79:
    .asciz "src/std/process/module.lucb:174:9"
.Ltext_80:
    .asciz "integer overflow"

    .section .data.rel.ro,"aw"
    .p2align 3

    .section .note.GNU-stack,"",@progbits
