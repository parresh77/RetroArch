// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)
varying     float _frame_rotation;
varying     vec4 _color1;
struct output_dummy {
    vec4 _color1;
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
vec4 _r0003;
attribute vec4 VertexCoord;
attribute vec4 COLOR;
attribute vec4 TexCoord;
varying vec4 COL0;
varying vec4 TEX0;
 

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
    vec4 _oColor;
    vec2 _otexCoord;
    _r0003.x = dot(MVPMatrix_[0], VertexCoord);
    _r0003.y = dot(MVPMatrix_[1], VertexCoord);
    _r0003.z = dot(MVPMatrix_[2], VertexCoord);
    _r0003.w = dot(MVPMatrix_[3], VertexCoord);
    _oPosition1 = _r0003;
    _oColor = COLOR;
    _otexCoord = TexCoord.xy;
    gl_Position = _r0003;
    COL0 = COLOR;
    TEX0.xy = TexCoord.xy;
} 
#elif defined(FRAGMENT)
#ifdef GL_ES
precision mediump float;
#endif
varying     float _frame_rotation;
varying     vec4 _color1;
struct output_dummy {
    vec4 _color1;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _TMP1;
float _TMP22;
vec4 _TMP19;
vec4 _TMP18;
vec4 _TMP21;
float _TMP17;
float _TMP20;
float _TMP16;
float _TMP15;
float _TMP14;
float _TMP13;
float _TMP12;
float _TMP11;
float _TMP10;
vec4 _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
input_dummy _IN1;
vec4 _g000027;
vec4 _g010027;
vec4 _g020027;
vec4 _g100027;
vec4 _g120027;
vec4 _g200027;
vec4 _g210027;
vec4 _g220027;
vec4 _Gx0027;
vec4 _Gy0027;
vec4 _color0027;
vec2 _c0029;
vec2 _c0031;
vec2 _c0033;
vec2 _c0035;
vec2 _c0037;
vec2 _c0039;
vec2 _c0041;
vec2 _c0043;
float _x0065;
float _TMP66;
vec2 _c0073;
varying vec4 TEX0;
sampler2D _TMP76;
uniform sampler2D Texture;
sampler2D _TMP78;
sampler2D _TMP79;
sampler2D _TMP80;
sampler2D _TMP81;
sampler2D _TMP82;
sampler2D _TMP83;
sampler2D _TMP84;
 
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
    vec4 _outcolor;
    vec2 _texelSize;
    vec2 _offset;
    float _gradient;
    vec4 _sum;
    vec4 _pixelColor;
    output_dummy _OUT;
    _texelSize = 1.00000000E+00/TextureSize;
    _offset = vec2(_texelSize.x, _texelSize.y);
    _TMP76 = sampler2D(sampler(Texture));
    _c0029 = TEX0.xy + vec2(float(float(-_offset.x)), float(float(-_offset.y)));
    _TMP2 = texture2D(_TMP76, _c0029);
    _g000027 = vec4(float(_TMP2.x), float(_TMP2.y), float(_TMP2.z), float(_TMP2.w));
    _TMP78 = sampler2D(sampler(Texture));
    _c0031 = TEX0.xy + vec2(0.00000000E+00, float(float(-_offset.y)));
    _TMP3 = texture2D(_TMP78, _c0031);
    _g010027 = vec4(float(_TMP3.x), float(_TMP3.y), float(_TMP3.z), float(_TMP3.w));
    _TMP79 = sampler2D(sampler(Texture));
    _c0033 = TEX0.xy + vec2(float(float(_offset.x)), float(float(-_offset.y)));
    _TMP4 = texture2D(_TMP79, _c0033);
    _g020027 = vec4(float(_TMP4.x), float(_TMP4.y), float(_TMP4.z), float(_TMP4.w));
    _TMP80 = sampler2D(sampler(Texture));
    _c0035 = TEX0.xy + vec2(float(float(-_offset.x)), 0.00000000E+00);
    _TMP5 = texture2D(_TMP80, _c0035);
    _g100027 = vec4(float(_TMP5.x), float(_TMP5.y), float(_TMP5.z), float(_TMP5.w));
    _TMP81 = sampler2D(sampler(Texture));
    _c0037 = TEX0.xy + vec2(float(float(_offset.x)), 0.00000000E+00);
    _TMP6 = texture2D(_TMP81, _c0037);
    _g120027 = vec4(float(_TMP6.x), float(_TMP6.y), float(_TMP6.z), float(_TMP6.w));
    _TMP82 = sampler2D(sampler(Texture));
    _c0039 = TEX0.xy + vec2(float(float(-_offset.x)), float(float(_offset.y)));
    _TMP7 = texture2D(_TMP82, _c0039);
    _g200027 = vec4(float(_TMP7.x), float(_TMP7.y), float(_TMP7.z), float(_TMP7.w));
    _TMP83 = sampler2D(sampler(Texture));
    _c0041 = TEX0.xy + vec2(0.00000000E+00, float(float(_offset.y)));
    _TMP8 = texture2D(_TMP83, _c0041);
    _g210027 = vec4(float(_TMP8.x), float(_TMP8.y), float(_TMP8.z), float(_TMP8.w));
    _TMP84 = sampler2D(sampler(Texture));
    _c0043 = TEX0.xy + vec2(float(float(_offset.x)), float(float(_offset.y)));
    _TMP9 = texture2D(_TMP84, _c0043);
    _g220027 = vec4(float(_TMP9.x), float(_TMP9.y), float(_TMP9.z), float(_TMP9.w));
    _TMP20 = dot(vec3(float(_g000027.x), float(_g000027.y), float(_g000027.z)), vec3( 3.00048828E-01, 5.89843750E-01, 1.09985352E-01));
    _TMP10 = float(_TMP20);
    _TMP20 = dot(vec3(float(_g010027.x), float(_g010027.y), float(_g010027.z)), vec3( 3.00048828E-01, 5.89843750E-01, 1.09985352E-01));
    _TMP11 = float(_TMP20);
    _TMP20 = dot(vec3(float(_g020027.x), float(_g020027.y), float(_g020027.z)), vec3( 3.00048828E-01, 5.89843750E-01, 1.09985352E-01));
    _TMP12 = float(_TMP20);
    _TMP20 = dot(vec3(float(_g100027.x), float(_g100027.y), float(_g100027.z)), vec3( 3.00048828E-01, 5.89843750E-01, 1.09985352E-01));
    _TMP13 = float(_TMP20);
    _TMP20 = dot(vec3(float(_g120027.x), float(_g120027.y), float(_g120027.z)), vec3( 3.00048828E-01, 5.89843750E-01, 1.09985352E-01));
    _TMP14 = float(_TMP20);
    _TMP20 = dot(vec3(float(_g200027.x), float(_g200027.y), float(_g200027.z)), vec3( 3.00048828E-01, 5.89843750E-01, 1.09985352E-01));
    _TMP15 = float(_TMP20);
    _TMP20 = dot(vec3(float(_g210027.x), float(_g210027.y), float(_g210027.z)), vec3( 3.00048828E-01, 5.89843750E-01, 1.09985352E-01));
    _TMP16 = float(_TMP20);
    _TMP20 = dot(vec3(float(_g220027.x), float(_g220027.y), float(_g220027.z)), vec3( 3.00048828E-01, 5.89843750E-01, 1.09985352E-01));
    _TMP17 = float(_TMP20);
    _Gx0027 = -(vec4(_TMP10, _TMP10, _TMP10, _TMP10) + 2.00000000E+00*vec4(_TMP13, _TMP13, _TMP13, _TMP13) + vec4(_TMP15, _TMP15, _TMP15, _TMP15)) + vec4(_TMP12, _TMP12, _TMP12, _TMP12) + 2.00000000E+00*vec4(_TMP14, _TMP14, _TMP14, _TMP14) + vec4(_TMP17, _TMP17, _TMP17, _TMP17);
    _Gy0027 = -(vec4(_TMP10, _TMP10, _TMP10, _TMP10) + 2.00000000E+00*vec4(_TMP11, _TMP11, _TMP11, _TMP11) + vec4(_TMP12, _TMP12, _TMP12, _TMP12)) + vec4(_TMP15, _TMP15, _TMP15, _TMP15) + 2.00000000E+00*vec4(_TMP16, _TMP16, _TMP16, _TMP16) + vec4(_TMP17, _TMP17, _TMP17, _TMP17);
    _TMP21 = abs(vec4(float(_Gx0027.x), float(_Gx0027.y), float(_Gx0027.z), float(_Gx0027.w)));
    _TMP18 = vec4(float(_TMP21.x), float(_TMP21.y), float(_TMP21.z), float(_TMP21.w));
    _TMP21 = abs(vec4(float(_Gy0027.x), float(_Gy0027.y), float(_Gy0027.z), float(_Gy0027.w)));
    _TMP19 = vec4(float(_TMP21.x), float(_TMP21.y), float(_TMP21.z), float(_TMP21.w));
    _color0027 = _TMP18 + _TMP19;
    _gradient = float(_color0027.x);
    _x0065 = _gradient*2.00000003E-01;
    _TMP22 = min(1.00000000E+00, _x0065);
    _TMP66 = max(0.00000000E+00, _TMP22);
    _c0073 = TEX0.xy + -6.00000000E+00*_offset.xy;
    _TMP1 = texture2D(Texture, _c0073);
    _sum = _TMP1*2.21600011E-03;
    _c0073 = TEX0.xy + -5.00000000E+00*_offset.xy;
    _TMP1 = texture2D(Texture, _c0073);
    _sum = _sum + _TMP1*8.76399968E-03;
    _c0073 = TEX0.xy + -4.00000000E+00*_offset.xy;
    _TMP1 = texture2D(Texture, _c0073);
    _sum = _sum + _TMP1*2.69949995E-02;
    _c0073 = TEX0.xy + -3.00000000E+00*_offset.xy;
    _TMP1 = texture2D(Texture, _c0073);
    _sum = _sum + _TMP1*6.47590011E-02;
    _c0073 = TEX0.xy + -2.00000000E+00*_offset.xy;
    _TMP1 = texture2D(Texture, _c0073);
    _sum = _sum + _TMP1*1.20985001E-01;
    _c0073 = TEX0.xy + -_offset.xy;
    _TMP1 = texture2D(Texture, _c0073);
    _sum = _sum + _TMP1*1.76033005E-01;
    _TMP1 = texture2D(Texture, TEX0.xy);
    _sum = _sum + _TMP1*1.99470997E-01;
    _c0073 = TEX0.xy + _offset.xy;
    _TMP1 = texture2D(Texture, _c0073);
    _sum = _sum + _TMP1*1.76033005E-01;
    _c0073 = TEX0.xy + 2.00000000E+00*_offset.xy;
    _TMP1 = texture2D(Texture, _c0073);
    _sum = _sum + _TMP1*1.20985001E-01;
    _c0073 = TEX0.xy + 3.00000000E+00*_offset.xy;
    _TMP1 = texture2D(Texture, _c0073);
    _sum = _sum + _TMP1*6.47590011E-02;
    _c0073 = TEX0.xy + 4.00000000E+00*_offset.xy;
    _TMP1 = texture2D(Texture, _c0073);
    _sum = _sum + _TMP1*2.69949995E-02;
    _c0073 = TEX0.xy + 5.00000000E+00*_offset.xy;
    _TMP1 = texture2D(Texture, _c0073);
    _sum = _sum + _TMP1*8.76399968E-03;
    _c0073 = TEX0.xy + 6.00000000E+00*_offset.xy;
    _TMP1 = texture2D(Texture, _c0073);
    _sum = _sum + _TMP1*2.21600011E-03;
    _pixelColor = texture2D(Texture, TEX0.xy);
    _outcolor = (-_TMP66 + (_TMP66*_pixelColor)*2.00000000E+00) + _sum;
    _OUT._color1.xyz = _outcolor.xyz;
    gl_FragColor = _OUT._color1;
    return;
} 
#endif
