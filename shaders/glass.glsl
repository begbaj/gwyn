// TEST shader: tinta rossa forte per verificare che picom applichi lo shader a Dunst
vec4 default_post_processing(vec4 c);

vec4 window_shader() {
    vec4 c = textureLod(tex, texcoord, 0);
    // Tinta rossa intensa — impossibile non vederla
    c.r = 1.0;
    c.g *= 0.2;
    c.b *= 0.2;
    return default_post_processing(c);
}
