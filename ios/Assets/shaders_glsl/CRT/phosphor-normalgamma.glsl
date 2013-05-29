// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)
varying     float _frame_rotation;
varying     vec2 _tex_index;
varying     vec2 _coord_prev_prev;
varying     vec2 _coord_prev;
varying     vec2 _coord;
struct coords {
    vec2 _coord;
    vec2 _coord_prev;
    vec2 _coord_prev_prev;
    vec2 _tex_index;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _oPosition1;
uniform mat4 MVPMatrix;
input_dummy _IN1;
vec4 _r0003;
attribute vec4 VertexCoord;
attribute vec4 TexCoord;
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
    coords _co;
    vec2 _one_x;
    _r0003.x = dot(MVPMatrix_[0], VertexCoord);
    _r0003.y = dot(MVPMatrix_[1], VertexCoord);
    _r0003.z = dot(MVPMatrix_[2], VertexCoord);
    _r0003.w = dot(MVPMatrix_[3], VertexCoord);
    _oPosition1 = _r0003;
    _one_x = vec2(1.00000000E+00/(3.00000000E+00*TextureSize.x), 0.00000000E+00);
    _co._coord = TexCoord.xy;
    _co._coord_prev = TexCoord.xy - _one_x;
    _co._coord_prev_prev = TexCoord.xy - 2.00000000E+00*_one_x;
    _co._tex_index = TexCoord.xy*TextureSize;
    gl_Position = _r0003;
    TEX1.xy = TexCoord.xy;
    TEX2.xy = _co._coord_prev;
    TEX3.xy = _co._coord_prev_prev;
    TEX4.xy = _co._tex_index;
} 
#elif defined(FRAGMENT)
#ifdef GL_ES
precision mediump float;
#endif
varying     float _frame_rotation;
varying     vec2 _tex_index;
varying     vec2 _coord_prev_prev;
varying     vec2 _coord_prev;
varying     vec2 _coord;
struct coords {
    vec2 _coord;
    vec2 _coord_prev;
    vec2 _coord_prev_prev;
    vec2 _tex_index;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _ret_0;
vec3 _TMP4;
vec3 _TMP13;
float _TMP12;
float _TMP11;
float _TMP10;
vec3 _TMP3;
float _TMP9;
float _TMP8;
float _TMP7;
float _TMP6;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
uniform sampler2D Texture;
float _c0017;
float _TMP24;
float _x0025;
vec3 _TMP58;
float _a0061;
float _c0061;
float _a0063;
vec3 _TMP68;
float _pixel0069;
float _a0071;
float _c0071;
float _a0073;
vec3 _TMP78;
float _pixel0079;
float _a0081;
float _c0081;
float _a0083;
vec3 _a0097;
vec3 _TMP104;
varying vec4 TEX1;
varying vec4 TEX2;
varying vec4 TEX3;
varying vec4 TEX4;
 
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
    vec3 _color;
    vec3 _color_prev;
    vec3 _color_prev_prev;
    float _pixel_x;
    vec3 _result;
    _TMP6 = abs(TEX4.y);
    _TMP7 = fract(_TMP6);
    _TMP8 = abs(1.00000000E+00);
    _c0017 = _TMP7*_TMP8;
    if (TEX4.y < 0.00000000E+00) { 
        _TMP9 = -_c0017;
    } else {
        _TMP9 = _c0017;
    } 
    _x0025 = -2.00000003E-01*_TMP9;
    _TMP24 = pow(2.71828198E+00, _x0025);
    _TMP0 = texture2D(Texture, TEX1.xy);
    _TMP10 = pow(_TMP0.x, 2.40000010E+00);
    _TMP11 = pow(_TMP0.y, 2.40000010E+00);
    _TMP12 = pow(_TMP0.z, 2.40000010E+00);
    _color = vec3(_TMP10, _TMP11, _TMP12);
    _TMP1 = texture2D(Texture, TEX2.xy);
    _TMP10 = pow(_TMP1.x, 2.40000010E+00);
    _TMP11 = pow(_TMP1.y, 2.40000010E+00);
    _TMP12 = pow(_TMP1.z, 2.40000010E+00);
    _color_prev = vec3(_TMP10, _TMP11, _TMP12);
    _TMP2 = texture2D(Texture, TEX3.xy);
    _TMP10 = pow(_TMP2.x, 2.40000010E+00);
    _TMP11 = pow(_TMP2.y, 2.40000010E+00);
    _TMP12 = pow(_TMP2.z, 2.40000010E+00);
    _color_prev_prev = vec3(_TMP10, _TMP11, _TMP12);
    _pixel_x = 3.00000000E+00*TEX4.x;
    _a0061 = _pixel_x + 3.00000000E+00;
    _a0063 = _a0061/3.00000000E+00;
    _TMP6 = abs(_a0063);
    _TMP7 = fract(_TMP6);
    _TMP8 = abs(3.00000000E+00);
    _c0061 = _TMP7*_TMP8;
    if (_a0061 < 0.00000000E+00) { 
        _TMP9 = -_c0061;
    } else {
        _TMP9 = _c0061;
    } 
    if (_TMP9 >= 2.00000000E+00) { 
        _TMP58 = vec3(_TMP9 - 2.00000000E+00, 0.00000000E+00, 3.00000000E+00 - _TMP9);
    } else {
        if (_TMP9 >= 1.00000000E+00) { 
            _TMP58 = vec3(0.00000000E+00, 2.00000000E+00 - _TMP9, _TMP9 - 1.00000000E+00);
        } else {
            _TMP58 = vec3(1.00000000E+00 - _TMP9, _TMP9, 0.00000000E+00);
        } 
    } 
    _pixel0069 = _pixel_x - 1.00000000E+00;
    _a0071 = _pixel0069 + 3.00000000E+00;
    _a0073 = _a0071/3.00000000E+00;
    _TMP6 = abs(_a0073);
    _TMP7 = fract(_TMP6);
    _TMP8 = abs(3.00000000E+00);
    _c0071 = _TMP7*_TMP8;
    if (_a0071 < 0.00000000E+00) { 
        _TMP9 = -_c0071;
    } else {
        _TMP9 = _c0071;
    } 
    if (_TMP9 >= 2.00000000E+00) { 
        _TMP68 = vec3(_TMP9 - 2.00000000E+00, 0.00000000E+00, 3.00000000E+00 - _TMP9);
    } else {
        if (_TMP9 >= 1.00000000E+00) { 
            _TMP68 = vec3(0.00000000E+00, 2.00000000E+00 - _TMP9, _TMP9 - 1.00000000E+00);
        } else {
            _TMP68 = vec3(1.00000000E+00 - _TMP9, _TMP9, 0.00000000E+00);
        } 
    } 
    _pixel0079 = _pixel_x - 2.00000000E+00;
    _a0081 = _pixel0079 + 3.00000000E+00;
    _a0083 = _a0081/3.00000000E+00;
    _TMP6 = abs(_a0083);
    _TMP7 = fract(_TMP6);
    _TMP8 = abs(3.00000000E+00);
    _c0081 = _TMP7*_TMP8;
    if (_a0081 < 0.00000000E+00) { 
        _TMP9 = -_c0081;
    } else {
        _TMP9 = _c0081;
    } 
    if (_TMP9 >= 2.00000000E+00) { 
        _TMP78 = vec3(_TMP9 - 2.00000000E+00, 0.00000000E+00, 3.00000000E+00 - _TMP9);
    } else {
        if (_TMP9 >= 1.00000000E+00) { 
            _TMP78 = vec3(0.00000000E+00, 2.00000000E+00 - _TMP9, _TMP9 - 1.00000000E+00);
        } else {
            _TMP78 = vec3(1.00000000E+00 - _TMP9, _TMP9, 0.00000000E+00);
        } 
    } 
    _result = (8.00000012E-01*_color)*_TMP58 + (6.00000024E-01*_color_prev)*_TMP68 + (3.00000012E-01*_color_prev_prev)*_TMP78;
    _TMP10 = pow(_result.x, 1.39999998E+00);
    _TMP11 = pow(_result.y, 1.39999998E+00);
    _TMP12 = pow(_result.z, 1.39999998E+00);
    _TMP3 = vec3(_TMP10, _TMP11, _TMP12);
    _result = 2.29999995E+00*_TMP3;
    _result = _result*vec3( 1.45000005E+00, 1.45000005E+00, 1.45000005E+00);
    _a0097 = _TMP24*_result;
    _TMP10 = pow(_a0097.x, 4.54545438E-01);
    _TMP11 = pow(_a0097.y, 4.54545438E-01);
    _TMP12 = pow(_a0097.z, 4.54545438E-01);
    _TMP4 = vec3(_TMP10, _TMP11, _TMP12);
    _TMP13 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP4);
    _TMP104 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP13);
    _ret_0 = vec4(_TMP104.x, _TMP104.y, _TMP104.z, 1.00000000E+00);
    gl_FragColor = _ret_0;
    return;
} 
#endif
