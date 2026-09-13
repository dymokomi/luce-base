#version 450
layout(location = 0) in vec4 vertex_color;
layout(location = 0) out vec4 fragment_color;
layout(set = 0, binding = 0, std430) readonly buffer Coverage { uint data[]; };
layout(push_constant) uniform Mask {
    float x, y, width, height;
    uint columns, rows, offset, reserved;
} mask;
float coverage(ivec2 p) {
    p = clamp(p, ivec2(0), ivec2(mask.columns - 1, mask.rows - 1));
    uint i = mask.offset + uint(p.y) * mask.columns + uint(p.x);
    return float((data[i / 4] >> ((i % 4) * 8)) & 255u) / 255.0;
}
void main() {
    float alpha = 1.0;
    if (mask.columns != 0) {
        vec2 p = (gl_FragCoord.xy - vec2(mask.x, mask.y)) / vec2(mask.width, mask.height)
            * vec2(mask.columns, mask.rows) - 0.5;
        ivec2 q = ivec2(floor(p));
        vec2 f = fract(p);
        alpha = mix(mix(coverage(q), coverage(q + ivec2(1, 0)), f.x),
                    mix(coverage(q + ivec2(0, 1)), coverage(q + ivec2(1, 1)), f.x), f.y);
    }
    fragment_color = vec4(vertex_color.rgb, vertex_color.a * alpha);
}
