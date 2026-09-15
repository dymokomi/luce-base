    .section __TEXT,__text,regular,pure_instructions

    .p2align 2
    .globl _lb_net_errors_0init
_lb_net_errors_0init:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #16
    adrp x14, _lb_net_failed@PAGE
    add x14, x14, _lb_net_failed@PAGEOFF
    movz x9, #9
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_net_closed@PAGE
    add x14, x14, _lb_net_closed@PAGEOFF
    movz x9, #10
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_net_12unknown_host@PAGE
    add x14, x14, _lb_net_12unknown_host@PAGEOFF
    movz x9, #11
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_net_15invalid_options@PAGE
    add x14, x14, _lb_net_15invalid_options@PAGEOFF
    movz x9, #35
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_net_17message_too_large@PAGE
    add x14, x14, _lb_net_17message_too_large@PAGEOFF
    movz x9, #36
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_net_cancelled@PAGE
    add x14, x14, _lb_net_cancelled@PAGEOFF
    movz x9, #37
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_net_9timed_out@PAGE
    add x14, x14, _lb_net_9timed_out@PAGEOFF
    movz x9, #38
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_net_18connection_refused@PAGE
    add x14, x14, _lb_net_18connection_refused@PAGEOFF
    movz x9, #39
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_net_19network_unreachable@PAGE
    add x14, x14, _lb_net_19network_unreachable@PAGEOFF
    movz x9, #40
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_net_14address_in_use@PAGE
    add x14, x14, _lb_net_14address_in_use@PAGEOFF
    movz x9, #41
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_net_19address_unavailable@PAGE
    add x14, x14, _lb_net_19address_unavailable@PAGEOFF
    movz x9, #42
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_net_17permission_denied@PAGE
    add x14, x14, _lb_net_17permission_denied@PAGEOFF
    movz x9, #43
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_net_18resource_exhausted@PAGE
    add x14, x14, _lb_net_18resource_exhausted@PAGEOFF
    movz x9, #44
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_net_18connection_aborted@PAGE
    add x14, x14, _lb_net_18connection_aborted@PAGEOFF
    movz x9, #45
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_net_unsupported@PAGE
    add x14, x14, _lb_net_unsupported@PAGEOFF
    movz x9, #46
    movk x9, #3178, lsl #16
    str w9, [x14]
    adrp x14, _lb_net_20resolution_temporary@PAGE
    add x14, x14, _lb_net_20resolution_temporary@PAGEOFF
    movz x9, #47
    movk x9, #3178, lsl #16
    str w9, [x14]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret

    .p2align 2
    .globl _lb_net_12socket_error
    .no_dead_strip _lb_net_12socket_error
_lb_net_12socket_error:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    str x20, [sp, #16]
    sub x16, x29, #48
    str w0, [x16]
    sub x14, x29, #48
    ldrsw x15, [x14]
    adrp x14, _lb_platform_macos@PAGE
    add x14, x14, _lb_platform_macos@PAGEOFF
    ldrb w14, [x14]
    cbnz w14, L1_4
    b L1_5
L1_4:
    movz x9, #35
    mov w19, w9
    b L1_6
L1_5:
    movz x9, #11
    mov w19, w9
L1_6:
    cmp w15, w19
    b.ne L1_2
L1_1:
    adrp x14, _lb_io_11would_block@PAGE
    add x14, x14, _lb_io_11would_block@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_7:
    b L1_3
L1_2:
L1_3:
    movz x10, #9
    cmp w15, w10
    cset w19, eq
    cbnz w19, L1_187
    b L1_11
L1_187:
    mov w20, w19
    b L1_12
L1_11:
    movz x10, #32
    cmp w15, w10
    cset w20, eq
L1_12:
    and w19, w20, #255
    cbnz w19, L1_188
    b L1_13
L1_188:
    mov w20, w19
    b L1_14
L1_13:
    cbnz w14, L1_15
    b L1_16
L1_15:
    movz x9, #54
    mov w19, w9
    b L1_17
L1_16:
    movz x9, #104
    mov w19, w9
L1_17:
    cmp w15, w19
    cset w20, eq
L1_14:
    and w19, w20, #255
    cbnz w19, L1_189
    b L1_18
L1_189:
    mov w20, w19
    b L1_19
L1_18:
    cbnz w14, L1_20
    b L1_21
L1_20:
    movz x9, #57
    mov w19, w9
    b L1_22
L1_21:
    movz x9, #107
    mov w19, w9
L1_22:
    cmp w15, w19
    cset w20, eq
L1_19:
    and w19, w20, #255
    cbnz w19, L1_190
    b L1_23
L1_190:
    mov w20, w19
    b L1_24
L1_23:
    cbnz w14, L1_25
    b L1_26
L1_25:
    movz x9, #58
    mov w19, w9
    b L1_27
L1_26:
    movz x9, #108
    mov w19, w9
L1_27:
    cmp w15, w19
    cset w20, eq
L1_24:
    and w19, w20, #255
    cbnz w19, L1_191
    b L1_28
L1_191:
    mov w20, w19
    b L1_29
L1_28:
    cbnz w14, L1_30
    b L1_31
L1_30:
    movz x9, #52
    mov w19, w9
    b L1_32
L1_31:
    movz x9, #102
    mov w19, w9
L1_32:
    cmp w15, w19
    cset w20, eq
L1_29:
    and w19, w20, #255
    cbnz w19, L1_8
    b L1_9
L1_8:
    adrp x14, _lb_net_closed@PAGE
    add x14, x14, _lb_net_closed@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_33:
    b L1_10
L1_9:
L1_10:
    cbnz w14, L1_37
    b L1_38
L1_37:
    movz x9, #60
    mov w19, w9
    b L1_39
L1_38:
    movz x9, #110
    mov w19, w9
L1_39:
    cmp w15, w19
    b.ne L1_35
L1_34:
    adrp x14, _lb_net_9timed_out@PAGE
    add x14, x14, _lb_net_9timed_out@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_40:
    b L1_36
L1_35:
L1_36:
    cbnz w14, L1_44
    b L1_45
L1_44:
    movz x9, #89
    mov w19, w9
    b L1_46
L1_45:
    movz x9, #125
    mov w19, w9
L1_46:
    cmp w15, w19
    b.ne L1_42
L1_41:
    adrp x14, _lb_net_cancelled@PAGE
    add x14, x14, _lb_net_cancelled@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_47:
    b L1_43
L1_42:
L1_43:
    cbnz w14, L1_51
    b L1_52
L1_51:
    movz x9, #61
    mov w19, w9
    b L1_53
L1_52:
    movz x9, #111
    mov w19, w9
L1_53:
    cmp w15, w19
    b.ne L1_49
L1_48:
    adrp x14, _lb_net_18connection_refused@PAGE
    add x14, x14, _lb_net_18connection_refused@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_54:
    b L1_50
L1_49:
L1_50:
    cbnz w14, L1_58
    b L1_59
L1_58:
    movz x9, #50
    mov w19, w9
    b L1_60
L1_59:
    movz x9, #100
    mov w19, w9
L1_60:
    cmp w15, w19
    cset w20, eq
    cbnz w20, L1_192
    b L1_61
L1_192:
    mov w19, w20
    b L1_62
L1_61:
    cbnz w14, L1_63
    b L1_64
L1_63:
    movz x9, #51
    mov w19, w9
    b L1_65
L1_64:
    movz x9, #101
    mov w19, w9
L1_65:
    cmp w15, w19
    cset w20, eq
    mov w19, w20
L1_62:
    and w20, w19, #255
    cbnz w20, L1_193
    b L1_66
L1_193:
    mov w19, w20
    b L1_67
L1_66:
    cbnz w14, L1_68
    b L1_69
L1_68:
    movz x9, #64
    mov w19, w9
    b L1_70
L1_69:
    movz x9, #112
    mov w19, w9
L1_70:
    cmp w15, w19
    cset w20, eq
    mov w19, w20
L1_67:
    and w20, w19, #255
    cbnz w20, L1_194
    b L1_71
L1_194:
    mov w19, w20
    b L1_72
L1_71:
    cbnz w14, L1_73
    b L1_74
L1_73:
    movz x9, #65
    mov w19, w9
    b L1_75
L1_74:
    movz x9, #113
    mov w19, w9
L1_75:
    cmp w15, w19
    cset w20, eq
    mov w19, w20
L1_72:
    and w20, w19, #255
    cbnz w20, L1_55
    b L1_56
L1_55:
    adrp x14, _lb_net_19network_unreachable@PAGE
    add x14, x14, _lb_net_19network_unreachable@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_76:
    b L1_57
L1_56:
L1_57:
    cbnz w14, L1_80
    b L1_81
L1_80:
    movz x9, #48
    mov w19, w9
    b L1_82
L1_81:
    movz x9, #98
    mov w19, w9
L1_82:
    cmp w15, w19
    b.ne L1_78
L1_77:
    adrp x14, _lb_net_14address_in_use@PAGE
    add x14, x14, _lb_net_14address_in_use@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_83:
    b L1_79
L1_78:
L1_79:
    cbnz w14, L1_87
    b L1_88
L1_87:
    movz x9, #49
    mov w19, w9
    b L1_89
L1_88:
    movz x9, #99
    mov w19, w9
L1_89:
    cmp w15, w19
    b.ne L1_85
L1_84:
    adrp x14, _lb_net_19address_unavailable@PAGE
    add x14, x14, _lb_net_19address_unavailable@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_90:
    b L1_86
L1_85:
L1_86:
    movz x10, #1
    cmp w15, w10
    cset w19, eq
    cbnz w19, L1_195
    b L1_94
L1_195:
    mov w20, w19
    b L1_95
L1_94:
    movz x10, #13
    cmp w15, w10
    cset w20, eq
L1_95:
    and w19, w20, #255
    cbnz w19, L1_91
    b L1_92
L1_91:
    adrp x14, _lb_net_17permission_denied@PAGE
    add x14, x14, _lb_net_17permission_denied@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_96:
    b L1_93
L1_92:
L1_93:
    movz x10, #12
    cmp w15, w10
    cset w19, eq
    cbnz w19, L1_196
    b L1_100
L1_196:
    mov w20, w19
    b L1_101
L1_100:
    movz x10, #23
    cmp w15, w10
    cset w20, eq
L1_101:
    and w19, w20, #255
    cbnz w19, L1_197
    b L1_102
L1_197:
    mov w20, w19
    b L1_103
L1_102:
    movz x10, #24
    cmp w15, w10
    cset w20, eq
L1_103:
    and w19, w20, #255
    cbnz w19, L1_198
    b L1_104
L1_198:
    mov w20, w19
    b L1_105
L1_104:
    cbnz w14, L1_106
    b L1_107
L1_106:
    movz x9, #55
    mov w19, w9
    b L1_108
L1_107:
    movz x9, #105
    mov w19, w9
L1_108:
    cmp w15, w19
    cset w20, eq
L1_105:
    and w19, w20, #255
    cbnz w19, L1_97
    b L1_98
L1_97:
    adrp x14, _lb_net_18resource_exhausted@PAGE
    add x14, x14, _lb_net_18resource_exhausted@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_109:
    b L1_99
L1_98:
L1_99:
    cbnz w14, L1_113
    b L1_114
L1_113:
    movz x9, #53
    mov w19, w9
    b L1_115
L1_114:
    movz x9, #103
    mov w19, w9
L1_115:
    cmp w15, w19
    b.ne L1_111
L1_110:
    adrp x14, _lb_net_18connection_aborted@PAGE
    add x14, x14, _lb_net_18connection_aborted@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_116:
    b L1_112
L1_111:
L1_112:
    cbnz w14, L1_120
    b L1_121
L1_120:
    movz x9, #40
    mov w19, w9
    b L1_122
L1_121:
    movz x9, #90
    mov w19, w9
L1_122:
    cmp w15, w19
    b.ne L1_118
L1_117:
    adrp x14, _lb_net_17message_too_large@PAGE
    add x14, x14, _lb_net_17message_too_large@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_123:
    b L1_119
L1_118:
L1_119:
    movz x10, #22
    cmp w15, w10
    cset w19, eq
    cbnz w19, L1_199
    b L1_127
L1_199:
    mov w20, w19
    b L1_128
L1_127:
    cbnz w14, L1_129
    b L1_130
L1_129:
    movz x9, #38
    mov w19, w9
    b L1_131
L1_130:
    movz x9, #88
    mov w19, w9
L1_131:
    cmp w15, w19
    cset w20, eq
L1_128:
    and w19, w20, #255
    cbnz w19, L1_200
    b L1_132
L1_200:
    mov w20, w19
    b L1_133
L1_132:
    cbnz w14, L1_134
    b L1_135
L1_134:
    movz x9, #39
    mov w19, w9
    b L1_136
L1_135:
    movz x9, #89
    mov w19, w9
L1_136:
    cmp w15, w19
    cset w20, eq
L1_133:
    and w19, w20, #255
    cbnz w19, L1_201
    b L1_137
L1_201:
    mov w20, w19
    b L1_138
L1_137:
    cbnz w14, L1_139
    b L1_140
L1_139:
    movz x9, #41
    mov w19, w9
    b L1_141
L1_140:
    movz x9, #91
    mov w19, w9
L1_141:
    cmp w15, w19
    cset w20, eq
L1_138:
    and w19, w20, #255
    cbnz w19, L1_124
    b L1_125
L1_124:
    adrp x14, _lb_net_15invalid_options@PAGE
    add x14, x14, _lb_net_15invalid_options@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_142:
    b L1_126
L1_125:
L1_126:
    cbnz w14, L1_146
    b L1_147
L1_146:
    movz x9, #42
    mov w19, w9
    b L1_148
L1_147:
    movz x9, #92
    mov w19, w9
L1_148:
    cmp w15, w19
    cset w20, eq
    cbnz w20, L1_202
    b L1_149
L1_202:
    mov w19, w20
    b L1_150
L1_149:
    cbnz w14, L1_151
    b L1_152
L1_151:
    movz x9, #43
    mov w19, w9
    b L1_153
L1_152:
    movz x9, #93
    mov w19, w9
L1_153:
    cmp w15, w19
    cset w20, eq
    mov w19, w20
L1_150:
    and w20, w19, #255
    cbnz w20, L1_203
    b L1_154
L1_203:
    mov w19, w20
    b L1_155
L1_154:
    cbnz w14, L1_156
    b L1_157
L1_156:
    movz x9, #44
    mov w19, w9
    b L1_158
L1_157:
    movz x9, #94
    mov w19, w9
L1_158:
    cmp w15, w19
    cset w20, eq
    mov w19, w20
L1_155:
    and w20, w19, #255
    cbnz w20, L1_204
    b L1_159
L1_204:
    mov w19, w20
    b L1_160
L1_159:
    cbnz w14, L1_161
    b L1_162
L1_161:
    movz x9, #45
    mov w19, w9
    b L1_163
L1_162:
    movz x9, #95
    mov w19, w9
L1_163:
    cmp w15, w19
    cset w20, eq
    mov w19, w20
L1_160:
    and w20, w19, #255
    cbnz w20, L1_205
    b L1_164
L1_205:
    mov w19, w20
    b L1_165
L1_164:
    cbnz w14, L1_166
    b L1_167
L1_166:
    movz x9, #46
    mov w19, w9
    b L1_168
L1_167:
    movz x9, #96
    mov w19, w9
L1_168:
    cmp w15, w19
    cset w20, eq
    mov w19, w20
L1_165:
    and w20, w19, #255
    cbnz w20, L1_206
    b L1_169
L1_206:
    mov w19, w20
    b L1_170
L1_169:
    cbnz w14, L1_171
    b L1_172
L1_171:
    movz x9, #47
    mov w19, w9
    b L1_173
L1_172:
    movz x9, #97
    mov w19, w9
L1_173:
    cmp w15, w19
    cset w20, eq
    mov w19, w20
L1_170:
    and w20, w19, #255
    cbnz w20, L1_207
    b L1_174
L1_207:
    mov w19, w20
    b L1_175
L1_174:
    cbnz w14, L1_176
    b L1_177
L1_176:
    movz x9, #78
    mov w19, w9
    b L1_178
L1_177:
    movz x9, #38
    mov w19, w9
L1_178:
    cmp w15, w19
    cset w20, eq
    mov w19, w20
L1_175:
    and w20, w19, #255
    cbnz w20, L1_143
    b L1_144
L1_143:
    adrp x14, _lb_net_unsupported@PAGE
    add x14, x14, _lb_net_unsupported@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_179:
    b L1_145
L1_144:
L1_145:
    cbnz w14, L1_183
    b L1_208
L1_208:
    mov w15, w14
    b L1_184
L1_183:
    movz x10, #102
    cmp w15, w10
    cset w14, eq
    mov w15, w14
L1_184:
    and w14, w15, #255
    cbnz w14, L1_180
    b L1_181
L1_180:
    adrp x14, _lb_net_unsupported@PAGE
    add x14, x14, _lb_net_unsupported@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_185:
    b L1_182
L1_181:
L1_182:
    adrp x14, _lb_net_failed@PAGE
    add x14, x14, _lb_net_failed@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L1_186:
    adrp x0, l_text_1@PAGE
    add x0, x0, l_text_1@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .p2align 2
    .globl _lb_net_14resolver_error
    .no_dead_strip _lb_net_14resolver_error
_lb_net_14resolver_error:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    sub sp, sp, #48
    str x19, [sp, #24]
    str x20, [sp, #16]
    sub x16, x29, #48
    str w0, [x16]
    sub x14, x29, #48
    ldrsw x15, [x14]
    adrp x14, _lb_platform_macos@PAGE
    add x14, x14, _lb_platform_macos@PAGEOFF
    ldrb w14, [x14]
    cbnz w14, L2_4
    b L2_5
L2_4:
    movz x9, #2
    mov w19, w9
    b L2_6
L2_5:
    movn x9, #2
    mov w19, w9
L2_6:
    cmp w15, w19
    b.ne L2_2
L2_1:
    adrp x14, _lb_net_20resolution_temporary@PAGE
    add x14, x14, _lb_net_20resolution_temporary@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_7:
    b L2_3
L2_2:
L2_3:
    cbnz w14, L2_11
    b L2_12
L2_11:
    movz x9, #6
    mov w19, w9
    b L2_13
L2_12:
    movn x9, #9
    mov w19, w9
L2_13:
    cmp w15, w19
    b.ne L2_9
L2_8:
    adrp x14, _lb_net_18resource_exhausted@PAGE
    add x14, x14, _lb_net_18resource_exhausted@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_14:
    b L2_10
L2_9:
L2_10:
    cbnz w14, L2_18
    b L2_19
L2_18:
    movz x9, #11
    mov w19, w9
    b L2_20
L2_19:
    movn x9, #10
    mov w19, w9
L2_20:
    cmp w15, w19
    b.ne L2_16
L2_15:
    bl _lb_net_12socket_errno
    mov w14, w0
    mov x0, x14
    bl _lb_net_12socket_error
    mov w14, w0
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_21:
    b L2_17
L2_16:
L2_17:
    cbnz w14, L2_25
    b L2_26
L2_25:
    movz x9, #8
    mov w19, w9
    b L2_27
L2_26:
    movn x9, #1
    mov w19, w9
L2_27:
    cmp w15, w19
    cset w20, eq
    cbnz w20, L2_64
    b L2_28
L2_64:
    mov w19, w20
    b L2_29
L2_28:
    cbnz w14, L2_30
    b L2_31
L2_30:
    movz x9, #7
    mov w19, w9
    b L2_32
L2_31:
    movn x9, #4
    mov w19, w9
L2_32:
    cmp w15, w19
    cset w20, eq
    mov w19, w20
L2_29:
    and w20, w19, #255
    cbnz w20, L2_65
    b L2_33
L2_65:
    mov w19, w20
    b L2_34
L2_33:
    cbnz w14, L2_35
    b L2_36
L2_35:
    movz x9, #1
    mov w19, w9
    b L2_37
L2_36:
    movn x9, #8
    mov w19, w9
L2_37:
    cmp w15, w19
    cset w20, eq
    mov w19, w20
L2_34:
    and w20, w19, #255
    cbnz w20, L2_22
    b L2_23
L2_22:
    adrp x14, _lb_net_12unknown_host@PAGE
    add x14, x14, _lb_net_12unknown_host@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_38:
    b L2_24
L2_23:
L2_24:
    cbnz w14, L2_42
    b L2_43
L2_42:
    movz x9, #5
    mov w19, w9
    b L2_44
L2_43:
    movn x9, #5
    mov w19, w9
L2_44:
    cmp w15, w19
    cset w20, eq
    cbnz w20, L2_66
    b L2_45
L2_66:
    mov w19, w20
    b L2_46
L2_45:
    cbnz w14, L2_47
    b L2_48
L2_47:
    movz x9, #10
    mov w19, w9
    b L2_49
L2_48:
    movn x9, #6
    mov w19, w9
L2_49:
    cmp w15, w19
    cset w20, eq
    mov w19, w20
L2_46:
    and w20, w19, #255
    cbnz w20, L2_39
    b L2_40
L2_39:
    adrp x14, _lb_net_unsupported@PAGE
    add x14, x14, _lb_net_unsupported@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_50:
    b L2_41
L2_40:
L2_41:
    cbnz w14, L2_54
    b L2_55
L2_54:
    movz x9, #3
    mov w19, w9
    b L2_56
L2_55:
    movn x9, #0
    mov w19, w9
L2_56:
    cmp w15, w19
    cset w20, eq
    cbnz w20, L2_67
    b L2_57
L2_67:
    mov w14, w20
    b L2_58
L2_57:
    cbnz w14, L2_59
    b L2_60
L2_59:
    movz x9, #9
    mov w14, w9
    b L2_61
L2_60:
    movn x9, #7
    mov w14, w9
L2_61:
    cmp w15, w14
    cset w19, eq
    mov w14, w19
L2_58:
    and w15, w14, #255
    cbnz w15, L2_51
    b L2_52
L2_51:
    adrp x14, _lb_net_15invalid_options@PAGE
    add x14, x14, _lb_net_15invalid_options@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_62:
    b L2_53
L2_52:
L2_53:
    adrp x14, _lb_net_failed@PAGE
    add x14, x14, _lb_net_failed@PAGEOFF
    ldr w14, [x14]
    mov x9, x14
    mov x0, x9
    ldr x19, [sp, #24]
    ldr x20, [sp, #16]
    mov sp, x29
    ldp x29, x30, [sp], #16
    ret
L2_63:
    adrp x0, l_text_2@PAGE
    add x0, x0, l_text_2@PAGEOFF
    adrp x1, l_text_0@PAGE
    add x1, x1, l_text_0@PAGEOFF
    bl _lb_core_7trap_at

    .section __DATA,__mod_init_func,mod_init_funcs
    .p2align 3
    .quad _lb_net_errors_0init

    .section __TEXT,__const
l_text_0:
    .asciz "unreachable"
l_text_1:
    .asciz "src/std/net/errors.lucb:71:5"
l_text_2:
    .asciz "src/std/net/errors.lucb:94:5"

    .section __DATA,__const
    .p2align 3
    .section __DATA,__data
    .p2align 2
    .globl _lb_net_failed
    .weak_definition _lb_net_failed
    .no_dead_strip _lb_net_failed
_lb_net_failed:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_net_closed
    .weak_definition _lb_net_closed
    .no_dead_strip _lb_net_closed
_lb_net_closed:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_net_12unknown_host
    .weak_definition _lb_net_12unknown_host
    .no_dead_strip _lb_net_12unknown_host
_lb_net_12unknown_host:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_net_15invalid_options
    .weak_definition _lb_net_15invalid_options
    .no_dead_strip _lb_net_15invalid_options
_lb_net_15invalid_options:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_net_17message_too_large
    .weak_definition _lb_net_17message_too_large
    .no_dead_strip _lb_net_17message_too_large
_lb_net_17message_too_large:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_net_cancelled
    .weak_definition _lb_net_cancelled
    .no_dead_strip _lb_net_cancelled
_lb_net_cancelled:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_net_9timed_out
    .weak_definition _lb_net_9timed_out
    .no_dead_strip _lb_net_9timed_out
_lb_net_9timed_out:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_net_18connection_refused
    .weak_definition _lb_net_18connection_refused
    .no_dead_strip _lb_net_18connection_refused
_lb_net_18connection_refused:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_net_19network_unreachable
    .weak_definition _lb_net_19network_unreachable
    .no_dead_strip _lb_net_19network_unreachable
_lb_net_19network_unreachable:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_net_14address_in_use
    .weak_definition _lb_net_14address_in_use
    .no_dead_strip _lb_net_14address_in_use
_lb_net_14address_in_use:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_net_19address_unavailable
    .weak_definition _lb_net_19address_unavailable
    .no_dead_strip _lb_net_19address_unavailable
_lb_net_19address_unavailable:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_net_17permission_denied
    .weak_definition _lb_net_17permission_denied
    .no_dead_strip _lb_net_17permission_denied
_lb_net_17permission_denied:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_net_18resource_exhausted
    .weak_definition _lb_net_18resource_exhausted
    .no_dead_strip _lb_net_18resource_exhausted
_lb_net_18resource_exhausted:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_net_18connection_aborted
    .weak_definition _lb_net_18connection_aborted
    .no_dead_strip _lb_net_18connection_aborted
_lb_net_18connection_aborted:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_net_unsupported
    .weak_definition _lb_net_unsupported
    .no_dead_strip _lb_net_unsupported
_lb_net_unsupported:
    .zero 4
    .section __DATA,__data
    .p2align 2
    .globl _lb_net_20resolution_temporary
    .weak_definition _lb_net_20resolution_temporary
    .no_dead_strip _lb_net_20resolution_temporary
_lb_net_20resolution_temporary:
    .zero 4

.subsections_via_symbols
