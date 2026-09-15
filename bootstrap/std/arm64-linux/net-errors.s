    .text

    .p2align 2
    .globl lb_net_errors_0init
    .type lb_net_errors_0init, %function
lb_net_errors_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, lb_net_failed
    add x14, x14, :lo12:lb_net_failed
    movz x9, #9
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_net_closed
    add x14, x14, :lo12:lb_net_closed
    movz x9, #10
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_net_12unknown_host
    add x14, x14, :lo12:lb_net_12unknown_host
    movz x9, #11
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_net_15invalid_options
    add x14, x14, :lo12:lb_net_15invalid_options
    movz x9, #35
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_net_17message_too_large
    add x14, x14, :lo12:lb_net_17message_too_large
    movz x9, #36
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_net_cancelled
    add x14, x14, :lo12:lb_net_cancelled
    movz x9, #37
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_net_9timed_out
    add x14, x14, :lo12:lb_net_9timed_out
    movz x9, #38
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_net_18connection_refused
    add x14, x14, :lo12:lb_net_18connection_refused
    movz x9, #39
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_net_19network_unreachable
    add x14, x14, :lo12:lb_net_19network_unreachable
    movz x9, #40
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_net_14address_in_use
    add x14, x14, :lo12:lb_net_14address_in_use
    movz x9, #41
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_net_19address_unavailable
    add x14, x14, :lo12:lb_net_19address_unavailable
    movz x9, #42
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_net_17permission_denied
    add x14, x14, :lo12:lb_net_17permission_denied
    movz x9, #43
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_net_18resource_exhausted
    add x14, x14, :lo12:lb_net_18resource_exhausted
    movz x9, #44
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_net_18connection_aborted
    add x14, x14, :lo12:lb_net_18connection_aborted
    movz x9, #45
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_net_unsupported
    add x14, x14, :lo12:lb_net_unsupported
    movz x9, #46
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, lb_net_20resolution_temporary
    add x14, x14, :lo12:lb_net_20resolution_temporary
    movz x9, #47
    movk x9, #3178, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .size lb_net_errors_0init, .-lb_net_errors_0init

    .p2align 2
    .globl lb_net_12socket_error
    .type lb_net_12socket_error, %function
lb_net_12socket_error:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    str x20, [sp, #16]
    sub x16, x29, #48
    str w0, [x16]
    sub x14, x29, #48
    ldrsw x15, [x14]
    adrp x14, lb_platform_macos
    add x14, x14, :lo12:lb_platform_macos
    ldrb w14, [x14]
    cbnz w14, .L1_4
    b .L1_5
.L1_4:
    movz x9, #35
    mov w19, w9
    b .L1_6
.L1_5:
    movz x9, #11
    mov w19, w9
.L1_6:
    cmp w15, w19
    b.ne .L1_2
.L1_1:
    adrp x14, lb_io_11would_block
    add x14, x14, :lo12:lb_io_11would_block
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_7:
    b .L1_3
.L1_2:
.L1_3:
    movz x10, #9
    cmp w15, w10
    cset w19, eq
    cbnz w19, .L1_181
    b .L1_11
.L1_181:
    mov w20, w19
    b .L1_12
.L1_11:
    movz x10, #32
    cmp w15, w10
    cset w20, eq
.L1_12:
    and w19, w20, #255
    cbnz w19, .L1_182
    b .L1_13
.L1_182:
    mov w20, w19
    b .L1_14
.L1_13:
    cbnz w14, .L1_15
    b .L1_16
.L1_15:
    movz x9, #54
    mov w19, w9
    b .L1_17
.L1_16:
    movz x9, #104
    mov w19, w9
.L1_17:
    cmp w15, w19
    cset w20, eq
.L1_14:
    and w19, w20, #255
    cbnz w19, .L1_183
    b .L1_18
.L1_183:
    mov w20, w19
    b .L1_19
.L1_18:
    cbnz w14, .L1_20
    b .L1_21
.L1_20:
    movz x9, #57
    mov w19, w9
    b .L1_22
.L1_21:
    movz x9, #107
    mov w19, w9
.L1_22:
    cmp w15, w19
    cset w20, eq
.L1_19:
    and w19, w20, #255
    cbnz w19, .L1_184
    b .L1_23
.L1_184:
    mov w20, w19
    b .L1_24
.L1_23:
    cbnz w14, .L1_25
    b .L1_26
.L1_25:
    movz x9, #58
    mov w19, w9
    b .L1_27
.L1_26:
    movz x9, #108
    mov w19, w9
.L1_27:
    cmp w15, w19
    cset w20, eq
.L1_24:
    and w19, w20, #255
    cbnz w19, .L1_185
    b .L1_28
.L1_185:
    mov w20, w19
    b .L1_29
.L1_28:
    cbnz w14, .L1_30
    b .L1_31
.L1_30:
    movz x9, #52
    mov w19, w9
    b .L1_32
.L1_31:
    movz x9, #102
    mov w19, w9
.L1_32:
    cmp w15, w19
    cset w20, eq
.L1_29:
    and w19, w20, #255
    cbnz w19, .L1_8
    b .L1_9
.L1_8:
    adrp x14, lb_net_closed
    add x14, x14, :lo12:lb_net_closed
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_33:
    b .L1_10
.L1_9:
.L1_10:
    cbnz w14, .L1_37
    b .L1_38
.L1_37:
    movz x9, #60
    mov w19, w9
    b .L1_39
.L1_38:
    movz x9, #110
    mov w19, w9
.L1_39:
    cmp w15, w19
    b.ne .L1_35
.L1_34:
    adrp x14, lb_net_9timed_out
    add x14, x14, :lo12:lb_net_9timed_out
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_40:
    b .L1_36
.L1_35:
.L1_36:
    cbnz w14, .L1_44
    b .L1_45
.L1_44:
    movz x9, #89
    mov w19, w9
    b .L1_46
.L1_45:
    movz x9, #125
    mov w19, w9
.L1_46:
    cmp w15, w19
    b.ne .L1_42
.L1_41:
    adrp x14, lb_net_cancelled
    add x14, x14, :lo12:lb_net_cancelled
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_47:
    b .L1_43
.L1_42:
.L1_43:
    cbnz w14, .L1_51
    b .L1_52
.L1_51:
    movz x9, #61
    mov w19, w9
    b .L1_53
.L1_52:
    movz x9, #111
    mov w19, w9
.L1_53:
    cmp w15, w19
    b.ne .L1_49
.L1_48:
    adrp x14, lb_net_18connection_refused
    add x14, x14, :lo12:lb_net_18connection_refused
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_54:
    b .L1_50
.L1_49:
.L1_50:
    cbnz w14, .L1_58
    b .L1_59
.L1_58:
    movz x9, #50
    mov w19, w9
    b .L1_60
.L1_59:
    movz x9, #100
    mov w19, w9
.L1_60:
    cmp w15, w19
    cset w20, eq
    cbnz w20, .L1_186
    b .L1_61
.L1_186:
    mov w19, w20
    b .L1_62
.L1_61:
    cbnz w14, .L1_63
    b .L1_64
.L1_63:
    movz x9, #51
    mov w19, w9
    b .L1_65
.L1_64:
    movz x9, #101
    mov w19, w9
.L1_65:
    cmp w15, w19
    cset w20, eq
    mov w19, w20
.L1_62:
    and w20, w19, #255
    cbnz w20, .L1_187
    b .L1_66
.L1_187:
    mov w19, w20
    b .L1_67
.L1_66:
    cbnz w14, .L1_68
    b .L1_69
.L1_68:
    movz x9, #64
    mov w19, w9
    b .L1_70
.L1_69:
    movz x9, #112
    mov w19, w9
.L1_70:
    cmp w15, w19
    cset w20, eq
    mov w19, w20
.L1_67:
    and w20, w19, #255
    cbnz w20, .L1_188
    b .L1_71
.L1_188:
    mov w19, w20
    b .L1_72
.L1_71:
    cbnz w14, .L1_73
    b .L1_74
.L1_73:
    movz x9, #65
    mov w19, w9
    b .L1_75
.L1_74:
    movz x9, #113
    mov w19, w9
.L1_75:
    cmp w15, w19
    cset w20, eq
    mov w19, w20
.L1_72:
    and w20, w19, #255
    cbnz w20, .L1_55
    b .L1_56
.L1_55:
    adrp x14, lb_net_19network_unreachable
    add x14, x14, :lo12:lb_net_19network_unreachable
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_76:
    b .L1_57
.L1_56:
.L1_57:
    cbnz w14, .L1_80
    b .L1_81
.L1_80:
    movz x9, #48
    mov w19, w9
    b .L1_82
.L1_81:
    movz x9, #98
    mov w19, w9
.L1_82:
    cmp w15, w19
    b.ne .L1_78
.L1_77:
    adrp x14, lb_net_14address_in_use
    add x14, x14, :lo12:lb_net_14address_in_use
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_83:
    b .L1_79
.L1_78:
.L1_79:
    cbnz w14, .L1_87
    b .L1_88
.L1_87:
    movz x9, #49
    mov w19, w9
    b .L1_89
.L1_88:
    movz x9, #99
    mov w19, w9
.L1_89:
    cmp w15, w19
    b.ne .L1_85
.L1_84:
    adrp x14, lb_net_19address_unavailable
    add x14, x14, :lo12:lb_net_19address_unavailable
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_90:
    b .L1_86
.L1_85:
.L1_86:
    movz x10, #1
    cmp w15, w10
    cset w19, eq
    cbnz w19, .L1_189
    b .L1_94
.L1_189:
    mov w20, w19
    b .L1_95
.L1_94:
    movz x10, #13
    cmp w15, w10
    cset w20, eq
.L1_95:
    and w19, w20, #255
    cbnz w19, .L1_91
    b .L1_92
.L1_91:
    adrp x14, lb_net_17permission_denied
    add x14, x14, :lo12:lb_net_17permission_denied
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_96:
    b .L1_93
.L1_92:
.L1_93:
    movz x10, #12
    cmp w15, w10
    cset w19, eq
    cbnz w19, .L1_190
    b .L1_100
.L1_190:
    mov w20, w19
    b .L1_101
.L1_100:
    movz x10, #23
    cmp w15, w10
    cset w20, eq
.L1_101:
    and w19, w20, #255
    cbnz w19, .L1_191
    b .L1_102
.L1_191:
    mov w20, w19
    b .L1_103
.L1_102:
    movz x10, #24
    cmp w15, w10
    cset w20, eq
.L1_103:
    and w19, w20, #255
    cbnz w19, .L1_192
    b .L1_104
.L1_192:
    mov w20, w19
    b .L1_105
.L1_104:
    cbnz w14, .L1_106
    b .L1_107
.L1_106:
    movz x9, #55
    mov w19, w9
    b .L1_108
.L1_107:
    movz x9, #105
    mov w19, w9
.L1_108:
    cmp w15, w19
    cset w20, eq
.L1_105:
    and w19, w20, #255
    cbnz w19, .L1_97
    b .L1_98
.L1_97:
    adrp x14, lb_net_18resource_exhausted
    add x14, x14, :lo12:lb_net_18resource_exhausted
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_109:
    b .L1_99
.L1_98:
.L1_99:
    cbnz w14, .L1_113
    b .L1_114
.L1_113:
    movz x9, #53
    mov w19, w9
    b .L1_115
.L1_114:
    movz x9, #103
    mov w19, w9
.L1_115:
    cmp w15, w19
    b.ne .L1_111
.L1_110:
    adrp x14, lb_net_18connection_aborted
    add x14, x14, :lo12:lb_net_18connection_aborted
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_116:
    b .L1_112
.L1_111:
.L1_112:
    cbnz w14, .L1_120
    b .L1_121
.L1_120:
    movz x9, #40
    mov w19, w9
    b .L1_122
.L1_121:
    movz x9, #90
    mov w19, w9
.L1_122:
    cmp w15, w19
    b.ne .L1_118
.L1_117:
    adrp x14, lb_net_17message_too_large
    add x14, x14, :lo12:lb_net_17message_too_large
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_123:
    b .L1_119
.L1_118:
.L1_119:
    movz x10, #22
    cmp w15, w10
    cset w19, eq
    cbnz w19, .L1_193
    b .L1_127
.L1_193:
    mov w20, w19
    b .L1_128
.L1_127:
    cbnz w14, .L1_129
    b .L1_130
.L1_129:
    movz x9, #38
    mov w19, w9
    b .L1_131
.L1_130:
    movz x9, #88
    mov w19, w9
.L1_131:
    cmp w15, w19
    cset w20, eq
.L1_128:
    and w19, w20, #255
    cbnz w19, .L1_194
    b .L1_132
.L1_194:
    mov w20, w19
    b .L1_133
.L1_132:
    cbnz w14, .L1_134
    b .L1_135
.L1_134:
    movz x9, #39
    mov w19, w9
    b .L1_136
.L1_135:
    movz x9, #89
    mov w19, w9
.L1_136:
    cmp w15, w19
    cset w20, eq
.L1_133:
    and w19, w20, #255
    cbnz w19, .L1_195
    b .L1_137
.L1_195:
    mov w20, w19
    b .L1_138
.L1_137:
    cbnz w14, .L1_139
    b .L1_140
.L1_139:
    movz x9, #41
    mov w19, w9
    b .L1_141
.L1_140:
    movz x9, #91
    mov w19, w9
.L1_141:
    cmp w15, w19
    cset w20, eq
.L1_138:
    and w19, w20, #255
    cbnz w19, .L1_124
    b .L1_125
.L1_124:
    adrp x14, lb_net_15invalid_options
    add x14, x14, :lo12:lb_net_15invalid_options
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_142:
    b .L1_126
.L1_125:
.L1_126:
    cbnz w14, .L1_146
    b .L1_147
.L1_146:
    movz x9, #42
    mov w19, w9
    b .L1_148
.L1_147:
    movz x9, #92
    mov w19, w9
.L1_148:
    cmp w15, w19
    cset w20, eq
    cbnz w20, .L1_196
    b .L1_149
.L1_196:
    mov w19, w20
    b .L1_150
.L1_149:
    cbnz w14, .L1_151
    b .L1_152
.L1_151:
    movz x9, #43
    mov w19, w9
    b .L1_153
.L1_152:
    movz x9, #93
    mov w19, w9
.L1_153:
    cmp w15, w19
    cset w20, eq
    mov w19, w20
.L1_150:
    and w20, w19, #255
    cbnz w20, .L1_197
    b .L1_154
.L1_197:
    mov w19, w20
    b .L1_155
.L1_154:
    cbnz w14, .L1_156
    b .L1_157
.L1_156:
    movz x9, #44
    mov w19, w9
    b .L1_158
.L1_157:
    movz x9, #94
    mov w19, w9
.L1_158:
    cmp w15, w19
    cset w20, eq
    mov w19, w20
.L1_155:
    and w20, w19, #255
    cbnz w20, .L1_198
    b .L1_159
.L1_198:
    mov w19, w20
    b .L1_160
.L1_159:
    cbnz w14, .L1_161
    b .L1_162
.L1_161:
    movz x9, #45
    mov w19, w9
    b .L1_163
.L1_162:
    movz x9, #95
    mov w19, w9
.L1_163:
    cmp w15, w19
    cset w20, eq
    mov w19, w20
.L1_160:
    and w20, w19, #255
    cbnz w20, .L1_199
    b .L1_164
.L1_199:
    mov w19, w20
    b .L1_165
.L1_164:
    cbnz w14, .L1_166
    b .L1_167
.L1_166:
    movz x9, #46
    mov w19, w9
    b .L1_168
.L1_167:
    movz x9, #96
    mov w19, w9
.L1_168:
    cmp w15, w19
    cset w20, eq
    mov w19, w20
.L1_165:
    and w20, w19, #255
    cbnz w20, .L1_200
    b .L1_169
.L1_200:
    mov w19, w20
    b .L1_170
.L1_169:
    cbnz w14, .L1_171
    b .L1_172
.L1_171:
    movz x9, #47
    mov w19, w9
    b .L1_173
.L1_172:
    movz x9, #97
    mov w19, w9
.L1_173:
    cmp w15, w19
    cset w20, eq
    mov w19, w20
.L1_170:
    and w20, w19, #255
    cbnz w20, .L1_201
    b .L1_174
.L1_201:
    mov w14, w20
    b .L1_175
.L1_174:
    cbnz w14, .L1_176
    b .L1_177
.L1_176:
    movz x9, #78
    mov w14, w9
    b .L1_178
.L1_177:
    movz x9, #38
    mov w14, w9
.L1_178:
    cmp w15, w14
    cset w19, eq
    mov w14, w19
.L1_175:
    and w15, w14, #255
    cbnz w15, .L1_143
    b .L1_144
.L1_143:
    adrp x14, lb_net_unsupported
    add x14, x14, :lo12:lb_net_unsupported
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_179:
    b .L1_145
.L1_144:
.L1_145:
    adrp x14, lb_net_failed
    add x14, x14, :lo12:lb_net_failed
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L1_180:
    adrp x0, .Ltext_1
    add x0, x0, :lo12:.Ltext_1
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_net_12socket_error, .-lb_net_12socket_error

    .p2align 2
    .globl lb_net_14resolver_error
    .type lb_net_14resolver_error, %function
lb_net_14resolver_error:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    str x20, [sp, #16]
    sub x16, x29, #48
    str w0, [x16]
    sub x14, x29, #48
    ldrsw x15, [x14]
    adrp x14, lb_platform_macos
    add x14, x14, :lo12:lb_platform_macos
    ldrb w14, [x14]
    cbnz w14, .L2_4
    b .L2_5
.L2_4:
    movz x9, #2
    mov w19, w9
    b .L2_6
.L2_5:
    movn x9, #2
    mov w19, w9
.L2_6:
    cmp w15, w19
    b.ne .L2_2
.L2_1:
    adrp x14, lb_net_20resolution_temporary
    add x14, x14, :lo12:lb_net_20resolution_temporary
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_7:
    b .L2_3
.L2_2:
.L2_3:
    cbnz w14, .L2_11
    b .L2_12
.L2_11:
    movz x9, #6
    mov w19, w9
    b .L2_13
.L2_12:
    movn x9, #9
    mov w19, w9
.L2_13:
    cmp w15, w19
    b.ne .L2_9
.L2_8:
    adrp x14, lb_net_18resource_exhausted
    add x14, x14, :lo12:lb_net_18resource_exhausted
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_14:
    b .L2_10
.L2_9:
.L2_10:
    cbnz w14, .L2_18
    b .L2_19
.L2_18:
    movz x9, #11
    mov w19, w9
    b .L2_20
.L2_19:
    movn x9, #10
    mov w19, w9
.L2_20:
    cmp w15, w19
    b.ne .L2_16
.L2_15:
    bl lb_net_12socket_errno
    mov w14, w0
    mov x0, x14
    bl lb_net_12socket_error
    mov w14, w0
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_21:
    b .L2_17
.L2_16:
.L2_17:
    cbnz w14, .L2_25
    b .L2_26
.L2_25:
    movz x9, #8
    mov w19, w9
    b .L2_27
.L2_26:
    movn x9, #1
    mov w19, w9
.L2_27:
    cmp w15, w19
    cset w20, eq
    cbnz w20, .L2_64
    b .L2_28
.L2_64:
    mov w19, w20
    b .L2_29
.L2_28:
    cbnz w14, .L2_30
    b .L2_31
.L2_30:
    movz x9, #7
    mov w19, w9
    b .L2_32
.L2_31:
    movn x9, #4
    mov w19, w9
.L2_32:
    cmp w15, w19
    cset w20, eq
    mov w19, w20
.L2_29:
    and w20, w19, #255
    cbnz w20, .L2_65
    b .L2_33
.L2_65:
    mov w19, w20
    b .L2_34
.L2_33:
    cbnz w14, .L2_35
    b .L2_36
.L2_35:
    movz x9, #1
    mov w19, w9
    b .L2_37
.L2_36:
    movn x9, #8
    mov w19, w9
.L2_37:
    cmp w15, w19
    cset w20, eq
    mov w19, w20
.L2_34:
    and w20, w19, #255
    cbnz w20, .L2_22
    b .L2_23
.L2_22:
    adrp x14, lb_net_12unknown_host
    add x14, x14, :lo12:lb_net_12unknown_host
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_38:
    b .L2_24
.L2_23:
.L2_24:
    cbnz w14, .L2_42
    b .L2_43
.L2_42:
    movz x9, #5
    mov w19, w9
    b .L2_44
.L2_43:
    movn x9, #5
    mov w19, w9
.L2_44:
    cmp w15, w19
    cset w20, eq
    cbnz w20, .L2_66
    b .L2_45
.L2_66:
    mov w19, w20
    b .L2_46
.L2_45:
    cbnz w14, .L2_47
    b .L2_48
.L2_47:
    movz x9, #10
    mov w19, w9
    b .L2_49
.L2_48:
    movn x9, #6
    mov w19, w9
.L2_49:
    cmp w15, w19
    cset w20, eq
    mov w19, w20
.L2_46:
    and w20, w19, #255
    cbnz w20, .L2_39
    b .L2_40
.L2_39:
    adrp x14, lb_net_unsupported
    add x14, x14, :lo12:lb_net_unsupported
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_50:
    b .L2_41
.L2_40:
.L2_41:
    cbnz w14, .L2_54
    b .L2_55
.L2_54:
    movz x9, #3
    mov w19, w9
    b .L2_56
.L2_55:
    movn x9, #0
    mov w19, w9
.L2_56:
    cmp w15, w19
    cset w20, eq
    cbnz w20, .L2_67
    b .L2_57
.L2_67:
    mov w14, w20
    b .L2_58
.L2_57:
    cbnz w14, .L2_59
    b .L2_60
.L2_59:
    movz x9, #9
    mov w14, w9
    b .L2_61
.L2_60:
    movn x9, #7
    mov w14, w9
.L2_61:
    cmp w15, w14
    cset w19, eq
    mov w14, w19
.L2_58:
    and w15, w14, #255
    cbnz w15, .L2_51
    b .L2_52
.L2_51:
    adrp x14, lb_net_15invalid_options
    add x14, x14, :lo12:lb_net_15invalid_options
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_62:
    b .L2_53
.L2_52:
.L2_53:
    adrp x14, lb_net_failed
    add x14, x14, :lo12:lb_net_failed
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
.L2_63:
    adrp x0, .Ltext_2
    add x0, x0, :lo12:.Ltext_2
    adrp x1, .Ltext_0
    add x1, x1, :lo12:.Ltext_0
    bl lb_core_7trap_at

    .size lb_net_14resolver_error, .-lb_net_14resolver_error

    .section .init_array,"aw"
    .p2align 3
    .quad lb_net_errors_0init

    .section .rodata
.Ltext_0:
    .asciz "unreachable"
.Ltext_1:
    .asciz "src/std/net/errors.lucb:71:5"
.Ltext_2:
    .asciz "src/std/net/errors.lucb:94:5"

    .section .data.rel.ro,"aw"
    .p2align 3

    .bss
    .globl lb_net_failed
    .type lb_net_failed, %object
    .p2align 2
lb_net_failed:
    .zero 4

    .bss
    .globl lb_net_closed
    .type lb_net_closed, %object
    .p2align 2
lb_net_closed:
    .zero 4

    .bss
    .globl lb_net_12unknown_host
    .type lb_net_12unknown_host, %object
    .p2align 2
lb_net_12unknown_host:
    .zero 4

    .bss
    .globl lb_net_15invalid_options
    .type lb_net_15invalid_options, %object
    .p2align 2
lb_net_15invalid_options:
    .zero 4

    .bss
    .globl lb_net_17message_too_large
    .type lb_net_17message_too_large, %object
    .p2align 2
lb_net_17message_too_large:
    .zero 4

    .bss
    .globl lb_net_cancelled
    .type lb_net_cancelled, %object
    .p2align 2
lb_net_cancelled:
    .zero 4

    .bss
    .globl lb_net_9timed_out
    .type lb_net_9timed_out, %object
    .p2align 2
lb_net_9timed_out:
    .zero 4

    .bss
    .globl lb_net_18connection_refused
    .type lb_net_18connection_refused, %object
    .p2align 2
lb_net_18connection_refused:
    .zero 4

    .bss
    .globl lb_net_19network_unreachable
    .type lb_net_19network_unreachable, %object
    .p2align 2
lb_net_19network_unreachable:
    .zero 4

    .bss
    .globl lb_net_14address_in_use
    .type lb_net_14address_in_use, %object
    .p2align 2
lb_net_14address_in_use:
    .zero 4

    .bss
    .globl lb_net_19address_unavailable
    .type lb_net_19address_unavailable, %object
    .p2align 2
lb_net_19address_unavailable:
    .zero 4

    .bss
    .globl lb_net_17permission_denied
    .type lb_net_17permission_denied, %object
    .p2align 2
lb_net_17permission_denied:
    .zero 4

    .bss
    .globl lb_net_18resource_exhausted
    .type lb_net_18resource_exhausted, %object
    .p2align 2
lb_net_18resource_exhausted:
    .zero 4

    .bss
    .globl lb_net_18connection_aborted
    .type lb_net_18connection_aborted, %object
    .p2align 2
lb_net_18connection_aborted:
    .zero 4

    .bss
    .globl lb_net_unsupported
    .type lb_net_unsupported, %object
    .p2align 2
lb_net_unsupported:
    .zero 4

    .bss
    .globl lb_net_20resolution_temporary
    .type lb_net_20resolution_temporary, %object
    .p2align 2
lb_net_20resolution_temporary:
    .zero 4


    .section .note.GNU-stack,"",%progbits
