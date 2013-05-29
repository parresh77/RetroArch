// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)
varying     float _frame_rotation;
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
vec4 _r0010;
attribute vec4 VertexCoord;
attribute vec4 COLOR;
varying vec4 COL0;
attribute vec4 TexCoord;
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
    vec2 _oTex;
    _r0010.x = dot(MVPMatrix_[0], VertexCoord);
    _r0010.y = dot(MVPMatrix_[1], VertexCoord);
    _r0010.z = dot(MVPMatrix_[2], VertexCoord);
    _r0010.w = dot(MVPMatrix_[3], VertexCoord);
    _oPosition1 = _r0010;
    _oColor = COLOR;
    _oTex = TexCoord.xy;
    gl_Position = _r0010;
    COL0 = COLOR;
    TEX0.xy = TexCoord.xy;
} 
#elif defined(FRAGMENT)
#ifdef GL_ES
precision mediump float;
#endif
varying     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _ret_0;
float _TMP7;
float _TMP6;
float _TMP8;
input_dummy _IN1;
uniform sampler2D Texture;
float _TMP20;
vec2 _diff0021;
float _dist0021;
float _TMP30;
vec2 _diff0031;
float _dist0031;
float _TMP40;
vec2 _diff0041;
float _dist0041;
float _TMP50;
vec2 _diff0051;
float _dist0051;
float _TMP60;
vec2 _diff0061;
float _dist0061;
float _TMP70;
vec2 _diff0071;
float _dist0071;
float _TMP80;
vec2 _diff0081;
float _dist0081;
varying vec4 TEX0;
 
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
    vec4 _output_dummy;
    vec2 _scale;
    float _res;
    _output_dummy = texture2D(Texture, TEX0.xy);
    _scale = (TEX0.xy*TextureSize)/InputSize;
    _diff0021 = _scale - vec2( 6.00000024E-01, 6.99999988E-01);
    _TMP6 = dot(_diff0021, _diff0021);
    _TMP8 = inversesqrt(_TMP6);
    _TMP7 = 1.00000000E+00/_TMP8;
    _dist0021 = 3.00000000E+02*_TMP7;
    _dist0021 = _dist0021 - 1.50000006E-01*float(FrameCount);
    _TMP20 = sin(_dist0021);
    _diff0031 = _scale - vec2( 8.99999976E-01, 8.99999976E-01);
    _TMP6 = dot(_diff0031, _diff0031);
    _TMP8 = inversesqrt(_TMP6);
    _TMP7 = 1.00000000E+00/_TMP8;
    _dist0031 = 3.00000000E+02*_TMP7;
    _dist0031 = _dist0031 - 1.50000006E-01*float(FrameCount);
    _TMP30 = sin(_dist0031);
    _res = _TMP20 + _TMP30;
    _diff0041 = _scale - vec2( -6.00000024E-01, 3.00000012E-01);
    _TMP6 = dot(_diff0041, _diff0041);
    _TMP8 = inversesqrt(_TMP6);
    _TMP7 = 1.00000000E+00/_TMP8;
    _dist0041 = 3.00000000E+02*_TMP7;
    _dist0041 = _dist0041 - 1.50000006E-01*float(FrameCount);
    _TMP40 = sin(_dist0041);
    _res = _res + _TMP40;
    _diff0051 = _scale - vec2( 1.00000001E-01, 4.00000006E-01);
    _TMP6 = dot(_diff0051, _diff0051);
    _TMP8 = inversesqrt(_TMP6);
    _TMP7 = 1.00000000E+00/_TMP8;
    _dist0051 = 3.00000000E+02*_TMP7;
    _dist0051 = _dist0051 - 1.50000006E-01*float(FrameCount);
    _TMP50 = sin(_dist0051);
    _res = _res + _TMP50;
    _diff0061 = _scale - vec2( 1.00000001E-01, 4.00000006E-01);
    _TMP6 = dot(_diff0061, _diff0061);
    _TMP8 = inversesqrt(_TMP6);
    _TMP7 = 1.00000000E+00/_TMP8;
    _dist0061 = 3.00000000E+02*_TMP7;
    _dist0061 = _dist0061 - 1.50000006E-01*float(FrameCount);
    _TMP60 = sin(_dist0061);
    _res = _res + _TMP60;
    _diff0071 = _scale - vec2( 5.00000000E-01, 5.00000000E-01);
    _TMP6 = dot(_diff0071, _diff0071);
    _TMP8 = inversesqrt(_TMP6);
    _TMP7 = 1.00000000E+00/_TMP8;
    _dist0071 = 3.00000000E+02*_TMP7;
    _dist0071 = _dist0071 - 1.50000006E-01*float(FrameCount);
    _TMP70 = sin(_dist0071);
    _res = _res + _TMP70;
    _diff0081 = _scale - vec2( -1.00000000E+00, 1.00000000E+00);
    _TMP6 = dot(_diff0081, _diff0081);
    _TMP8 = inversesqrt(_TMP6);
    _TMP7 = 1.00000000E+00/_TMP8;
    _dist0081 = 3.00000000E+02*_TMP7;
    _dist0081 = _dist0081 - 1.50000006E-01*float(FrameCount);
    _TMP80 = sin(_dist0081);
    _res = _res + _TMP80;
    _ret_0 = _output_dummy*(8.99999976E-01 + 1.20000001E-02*_res);
    gl_FragColor = _ret_0;
    return;
} 
#endif
