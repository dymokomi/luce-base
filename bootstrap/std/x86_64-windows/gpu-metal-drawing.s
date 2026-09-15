    .text

    .p2align 4
    .globl lb_gpu_13metal_drawing_0init
lb_gpu_13metal_drawing_0init:
    .seh_proc lb_gpu_13metal_drawing_0init
    pushq %rbp
    .seh_pushreg %rbp
    subq $176, %rsp
    .seh_stackalloc 176
    movq %rsp, %rbp
    .seh_setframe %rbp, 0
    movq %rdi, 168(%rbp)
    .seh_savereg %rdi, 168
    movq %rsi, 160(%rbp)
    .seh_savereg %rsi, 160
    movdqu %xmm6, 144(%rbp)
    .seh_savexmm %xmm6, 144
    movdqu %xmm7, 128(%rbp)
    .seh_savexmm %xmm7, 128
    movdqu %xmm8, 112(%rbp)
    .seh_savexmm %xmm8, 112
    movdqu %xmm9, 96(%rbp)
    .seh_savexmm %xmm9, 96
    movdqu %xmm10, 80(%rbp)
    .seh_savexmm %xmm10, 80
    movdqu %xmm11, 64(%rbp)
    .seh_savexmm %xmm11, 64
    movdqu %xmm12, 48(%rbp)
    .seh_savexmm %xmm12, 48
    movdqu %xmm13, 32(%rbp)
    .seh_savexmm %xmm13, 32
    movdqu %xmm14, 16(%rbp)
    .seh_savexmm %xmm14, 16
    movdqu %xmm15, 0(%rbp)
    .seh_savexmm %xmm15, 0
    .seh_endprologue
    movq %rcx, 192(%rbp)
    movq %rdx, 200(%rbp)
    movq %r8, 208(%rbp)
    movq %r9, 216(%rbp)
    movq 168(%rbp), %rdi
    movq 160(%rbp), %rsi
    movdqu 144(%rbp), %xmm6
    movdqu 128(%rbp), %xmm7
    movdqu 112(%rbp), %xmm8
    movdqu 96(%rbp), %xmm9
    movdqu 80(%rbp), %xmm10
    movdqu 64(%rbp), %xmm11
    movdqu 48(%rbp), %xmm12
    movdqu 32(%rbp), %xmm13
    movdqu 16(%rbp), %xmm14
    movdqu 0(%rbp), %xmm15
    leaq 176(%rbp), %rsp
    popq %rbp
    ret
    .seh_endproc

    .section .CRT$XCU,"dr"
    .p2align 3
    .quad lb_gpu_13metal_drawing_0init
    .text

    .section .rdata,"dr"
    .p2align 4
.Lvsign32:
    .long 2147483648, 2147483648, 2147483648, 2147483648
.Lvsign64:
    .quad -9223372036854775808, -9223372036854775808
.Ltext_0:
    .asciz "NSString"
.Ltext_1:
    .asciz "stringWithUTF8String:"
.Ltext_2:
    .asciz "could not create Metal shader text"
.Ltext_3:
    .asciz "unreachable"
.Ltext_4:
    .asciz "src/std/gpu/metal/drawing.lucb:13:5"
.Ltext_5:
    .asciz "memory.unset"
.Ltext_6:
    .asciz "src/std/gpu/metal/drawing.lucb:16:5"
.Ltext_7:
    .asciz "memory.exhausted"
.Ltext_8:
    .asciz "#include <metal_stdlib>\nusing namespace metal;\nstruct V { float4 position [[position]]; float4 color; };\nstruct Mask { float x,y,width,height; uint columns,rows,offset,reserved; };\nvertex V luce_vertex(const device float* data [[buffer(0)]], uint id [[vertex_id]]) {\n uint i=id*8; V v; v.position=float4(data[i],data[i+1],data[i+2],data[i+3]); v.color=float4(data[i+4],data[i+5],data[i+6],data[i+7]); return v;\n}\nfloat coverage(const device uint* data, constant Mask& m, int2 p) {\n p=clamp(p,int2(0),int2(m.columns-1,m.rows-1)); uint i=m.offset+uint(p.y)*m.columns+uint(p.x);\n return float((data[i/4] >> ((i%4)*8)) & 255u)/255.0;\n}\nfragment float4 luce_fragment(V v [[stage_in]], const device uint* data [[buffer(0)]], constant Mask& m [[buffer(1)]]) {\n if(m.columns==0) return v.color;\n float2 p=(v.position.xy-float2(m.x,m.y))/float2(m.width,m.height)*float2(m.columns,m.rows)-0.5;\n int2 q=int2(floor(p)); float2 f=fract(p);\n float a=mix(mix(coverage(data,m,q),coverage(data,m,q+int2(1,0)),f.x),mix(coverage(data,m,q+int2(0,1)),coverage(data,m,q+int2(1,1)),f.x),f.y);\n return float4(v.color.rgb,v.color.a*a);\n}"
.Ltext_9:
    .asciz "newLibraryWithSource:options:error:"
.Ltext_10:
    .asciz "could not compile the portable triangle pipeline"
.Ltext_11:
    .asciz "newFunctionWithName:"
.Ltext_12:
    .asciz "luce_vertex"
.Ltext_13:
    .asciz "release"
.Ltext_14:
    .asciz "the GPU vertex entry is missing"
.Ltext_15:
    .asciz "luce_fragment"
.Ltext_16:
    .asciz "the GPU fragment entry is missing"
.Ltext_17:
    .asciz "MTLRenderPipelineDescriptor"
.Ltext_18:
    .asciz "new"
.Ltext_19:
    .asciz "could not create a GPU pipeline descriptor"
.Ltext_20:
    .asciz "setVertexFunction:"
.Ltext_21:
    .asciz "setFragmentFunction:"
.Ltext_22:
    .asciz "setDepthAttachmentPixelFormat:"
.Ltext_23:
    .asciz "colorAttachments"
.Ltext_24:
    .asciz "objectAtIndexedSubscript:"
.Ltext_25:
    .asciz "setPixelFormat:"
.Ltext_26:
    .asciz "setBlendingEnabled:"
.Ltext_27:
    .asciz "setSourceRGBBlendFactor:"
.Ltext_28:
    .asciz "setDestinationRGBBlendFactor:"
.Ltext_29:
    .asciz "setSourceAlphaBlendFactor:"
.Ltext_30:
    .asciz "setDestinationAlphaBlendFactor:"
.Ltext_31:
    .asciz "newRenderPipelineStateWithDescriptor:error:"
.Ltext_32:
    .asciz "could not create the portable triangle pipeline"
.Ltext_33:
    .asciz "MTLDepthStencilDescriptor"
.Ltext_34:
    .asciz "could not create a GPU depth descriptor"
.Ltext_35:
    .asciz "setDepthCompareFunction:"
.Ltext_36:
    .asciz "setDepthWriteEnabled:"
.Ltext_37:
    .asciz "newDepthStencilStateWithDescriptor:"
.Ltext_38:
    .asciz "could not create GPU depth testing"
.Ltext_39:
    .asciz "could not create GPU overlay state"
.Ltext_40:
    .asciz "src/std/gpu/metal/drawing.lucb:50:5"
.Ltext_41:
    .asciz "MTLTextureDescriptor"
.Ltext_42:
    .asciz "could not create a GPU depth texture descriptor"
.Ltext_43:
    .asciz "setTextureType:"
.Ltext_44:
    .asciz "setWidth:"
.Ltext_45:
    .asciz "setHeight:"
.Ltext_46:
    .asciz "setStorageMode:"
.Ltext_47:
    .asciz "setUsage:"
.Ltext_48:
    .asciz "newTextureWithDescriptor:"
.Ltext_49:
    .asciz "could not allocate GPU depth storage"
.Ltext_50:
    .asciz "src/std/gpu/metal/drawing.lucb:69:5"
.Ltext_51:
    .asciz "setRenderPipelineState:"
.Ltext_52:
    .asciz "setVertexBuffer:offset:atIndex:"
.Ltext_53:
    .asciz "setFragmentBuffer:offset:atIndex:"
.Ltext_54:
    .asciz "src/std/gpu/metal/drawing.lucb:86:5"
.Ltext_55:
    .asciz "index out of bounds"
.Ltext_56:
    .asciz "src/std/gpu/metal/drawing.lucb:89:9"
.Ltext_57:
    .asciz "src/std/gpu/metal/drawing.lucb:90:9"
.Ltext_58:
    .asciz "setViewport:"
.Ltext_59:
    .asciz "setScissorRect:"
.Ltext_60:
    .asciz "setDepthStencilState:"
.Ltext_61:
    .asciz "setFragmentBytes:length:atIndex:"
.Ltext_62:
    .asciz "drawPrimitives:vertexStart:vertexCount:"
.Ltext_63:
    .asciz "src/std/gpu/metal/drawing.lucb:102:5"

    .section .rdata,"dr"
    .p2align 3
