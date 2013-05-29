// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)
varying     vec4 _color1;
varying     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct output_dummy {
    vec4 _color1;
};
vec4 _oPosition1;
uniform mat4 MVPMatrix;
vec4 _r0002;
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
    _r0002.x = dot(MVPMatrix_[0], VertexCoord);
    _r0002.y = dot(MVPMatrix_[1], VertexCoord);
    _r0002.z = dot(MVPMatrix_[2], VertexCoord);
    _r0002.w = dot(MVPMatrix_[3], VertexCoord);
    _oPosition1 = _r0002;
    _oColor = COLOR;
    _otexCoord = TexCoord.xy;
    gl_Position = _r0002;
    COL0 = COLOR;
    TEX0.xy = TexCoord.xy;
} 
#elif defined(FRAGMENT)
#ifdef GL_ES
precision mediump float;
#endif
varying     vec4 _color;
varying     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct output_dummy {
    vec4 _color;
};
vec4 _TMP1;
vec4 _TMP0;
uniform sampler2D Texture;
vec2 _c0007;
vec2 _c0009;
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
    vec4 _Color;
    _Color = texture2D(Texture, TEX0.xy);
    _c0007 = TEX0.xy + 9.99999975E-05;
    _TMP0 = texture2D(Texture, _c0007);
    _Color = _Color - _TMP0*3.00000000E+01;
    _c0009 = TEX0.xy - 9.99999975E-05;
    _TMP1 = texture2D(Texture, _c0009);
    _Color = _Color + _TMP1*3.00000000E+01;
    _Color.w = 1.00000000E+00;
    gl_FragColor = _Color;
    return;
} 
#endif
