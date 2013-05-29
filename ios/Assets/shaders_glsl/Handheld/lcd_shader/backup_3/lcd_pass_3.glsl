// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)
varying     vec2 _upper_bound;
varying     vec2 _lower_bound;
varying     vec2 _tex_coord_2;
varying     vec2 _tex_coord_1;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
float _placeholder33;
};
struct pass_1 {
float _placeholder37;
};
struct blur_coords {
    vec2 _tex_coord_1;
    vec2 _tex_coord_2;
    vec2 _lower_bound;
    vec2 _upper_bound;
};
vec4 _oPosition1;
blur_coords _oBlurCoords1;
uniform mat4 MVPMatrix;
input_dummy _IN1;
vec4 _r0004;
attribute vec4 VertexCoord;
attribute vec4 TexCoord;
varying vec4 TEX0;
varying vec4 TEX1;
varying vec4 TEX2;
varying vec4 TEX3;
varying vec4 TEX4;
 

         mat4 transpose_(mat4 matrix)
         {
            mat4 ret;
            for (int i = 0; i < 4; i++)
               for (int j = 0; j < 4; j++)
                  ret[i][j] = matrix[j][i];

            return ret;
         }
         
uniform int FrameDirection;
uniform int FrameCount;
#ifdef GL_ES
uniform mediump vec2 OutputSize;
uniform mediump vec2 TextureSize;
uniform mediump vec2 InputSize;
#else
uniform vec2 OutputSize;
uniform vec2 TextureSize;
uniform vec2 InputSize;
#endif
void main()
{
    mat4 MVPMatrix_ = transpose_(MVPMatrix);
    vec2 _oTexCoord;
    vec2 _texel;
    blur_coords _TMP2;
    _r0004.x = dot(MVPMatrix_[0], VertexCoord);
    _r0004.y = dot(MVPMatrix_[1], VertexCoord);
    _r0004.z = dot(MVPMatrix_[2], VertexCoord);
    _r0004.w = dot(MVPMatrix_[3], VertexCoord);
    _oPosition1 = _r0004;
    _oTexCoord = TexCoord.xy;
    _texel = vec2(float((1.00000000E+00/TextureSize).x), float((1.00000000E+00/TextureSize).y));
    _TMP2._tex_coord_1 = vec2(float((TexCoord.xy + vec2(0.00000000E+00, float(_texel.y))).x), float((TexCoord.xy + vec2(0.00000000E+00, float(_texel.y))).y));
    _TMP2._tex_coord_2 = vec2(float((TexCoord.xy + vec2(0.00000000E+00, float(-_texel.y))).x), float((TexCoord.xy + vec2(0.00000000E+00, float(-_texel.y))).y));
    _TMP2._upper_bound = vec2(float((vec2(float(_texel.x), float(_texel.y))*(OutputSize - 2.00000000E+00)).x), float((vec2(float(_texel.x), float(_texel.y))*(OutputSize - 2.00000000E+00)).y));
    _oBlurCoords1._tex_coord_1 = _TMP2._tex_coord_1;
    _oBlurCoords1._tex_coord_2 = _TMP2._tex_coord_2;
    _oBlurCoords1._lower_bound = vec2( 0.00000000E+00, 0.00000000E+00);
    _oBlurCoords1._upper_bound = _TMP2._upper_bound;
    gl_Position = _r0004;
    TEX0.xy = TexCoord.xy;
    TEX1.xy = _TMP2._tex_coord_1;
    TEX2.xy = _TMP2._tex_coord_2;
    TEX3.xy = vec2( 0.00000000E+00, 0.00000000E+00);
    TEX4.xy = _TMP2._upper_bound;
} 
#elif defined(FRAGMENT)
#ifdef GL_ES
precision mediump float;
#endif
varying     vec2 _upper_bound;
varying     vec2 _lower_bound;
varying     vec2 _tex_coord_2;
varying     vec2 _tex_coord_1;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
float _placeholder31;
};
struct pass_1 {
float _placeholder35;
};
struct blur_coords {
    vec2 _tex_coord_1;
    vec2 _tex_coord_2;
    vec2 _lower_bound;
    vec2 _upper_bound;
};
vec4 _ret_0;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec2 _TMP5;
vec2 _TMP7;
vec2 _TMP6;
vec4 _TMP0;
pass_1 _PASS11;
input_dummy _IN2;
vec4 _adjacent_texel_10014;
vec4 _adjacent_texel_20014;
vec4 _adjacent_texel_30014;
vec4 _adjacent_texel_40014;
vec3 _LCD_color0014;
vec4 _COLOR0014;
vec3 _original_color0014;
vec2 _TMP15;
vec2 _TMP21;
vec2 _c0028;
vec2 _c0030;
vec2 _c0032;
vec2 _c0034;
varying vec4 TEX0;
varying vec4 TEX1;
varying vec4 TEX2;
varying vec4 TEX3;
varying vec4 TEX4;
 
uniform sampler2D Texture;
uniform sampler2D Pass1Texture;
uniform int FrameDirection;
uniform int FrameCount;
#ifdef GL_ES
uniform mediump vec2 OutputSize;
uniform mediump vec2 TextureSize;
uniform mediump vec2 InputSize;
#else
uniform vec2 OutputSize;
uniform vec2 TextureSize;
uniform vec2 InputSize;
#endif
void main()
{
    vec4 _out_color;
    _TMP0 = texture2D(Texture, TEX0.xy);
    _out_color = vec4(float(_TMP0.x), float(_TMP0.y), float(_TMP0.z), float(_TMP0.w));
    if (_out_color.w > 0.00000000E+00 && _out_color.w < 1.00000000E+00) { 
        _TMP6 = min(vec2(float(TEX4.x), float(TEX4.y)), vec2(float(TEX1.x), float(TEX1.y)));
        _TMP5 = vec2(float(_TMP6.x), float(_TMP6.y));
        _TMP7 = max(vec2(float(TEX3.x), float(TEX3.y)), vec2(float(_TMP5.x), float(_TMP5.y)));
        _TMP15 = vec2(float(_TMP7.x), float(_TMP7.y));
        _TMP6 = min(vec2(float(TEX4.x), float(TEX4.y)), vec2(float(TEX2.x), float(TEX2.y)));
        _TMP5 = vec2(float(_TMP6.x), float(_TMP6.y));
        _TMP7 = max(vec2(float(TEX3.x), float(TEX3.y)), vec2(float(_TMP5.x), float(_TMP5.y)));
        _TMP21 = vec2(float(_TMP7.x), float(_TMP7.y));
        _c0028 = vec2(float(_TMP15.x), float(_TMP15.y));
        _TMP1 = texture2D(Texture, _c0028);
        _adjacent_texel_10014 = vec4(float(_TMP1.x), float(_TMP1.y), float(_TMP1.z), float(_TMP1.w));
        _c0030 = vec2(float(_TMP21.x), float(_TMP21.y));
        _TMP2 = texture2D(Texture, _c0030);
        _adjacent_texel_20014 = vec4(float(_TMP2.x), float(_TMP2.y), float(_TMP2.z), float(_TMP2.w));
        _c0032 = vec2(float(_TMP15.x), float(_TMP15.y));
        _TMP3 = texture2D(Pass1Texture, _c0032);
        _adjacent_texel_30014 = vec4(float(_TMP3.x), float(_TMP3.y), float(_TMP3.z), float(_TMP3.w));
        _c0034 = vec2(float(_TMP21.x), float(_TMP21.y));
        _TMP4 = texture2D(Pass1Texture, _c0034);
        _adjacent_texel_40014 = vec4(float(_TMP4.x), float(_TMP4.y), float(_TMP4.z), float(_TMP4.w));
        _LCD_color0014 = ((_out_color.xyz - _adjacent_texel_10014.xyz) + (_out_color.xyz - _adjacent_texel_20014.xyz))*2.50000000E-01;
        _original_color0014 = ((_out_color.xyz - _adjacent_texel_30014.xyz) + (_out_color.xyz - _adjacent_texel_40014.xyz))*2.50000000E-01;
        _COLOR0014.xyz = _out_color.xyz - (_original_color0014 + _LCD_color0014);
        _COLOR0014.w = 1.00000000E+00;
        _out_color = _COLOR0014;
    } 
    _ret_0 = vec4(float(_out_color.x), float(_out_color.y), float(_out_color.z), float(_out_color.w));
    gl_FragColor = _ret_0;
    return;
} 
#endif
