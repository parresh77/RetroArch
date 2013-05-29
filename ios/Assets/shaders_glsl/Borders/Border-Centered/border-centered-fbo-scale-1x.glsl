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
input_dummy _IN1;
vec4 _r0005;
attribute vec4 VertexCoord;
attribute vec4 COLOR;
varying vec4 COL0;
attribute vec4 TexCoord;
varying vec4 TEX0;
attribute vec4 LUTTexCoord;
varying vec4 TEX1;
 

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
    vec2 _otex_border;
    vec2 _scale;
    vec2 _middle;
    vec2 _diff;
    vec2 _dist;
    _r0005.x = dot(MVPMatrix_[0], VertexCoord);
    _r0005.y = dot(MVPMatrix_[1], VertexCoord);
    _r0005.z = dot(MVPMatrix_[2], VertexCoord);
    _r0005.w = dot(MVPMatrix_[3], VertexCoord);
    _oPosition1 = _r0005;
    _oColor = COLOR;
    _scale = (OutputSize/vec2( 2.56000000E+02, 2.24000000E+02))/4.00000000E+00;
    _middle = (5.00000000E-01*InputSize)/TextureSize;
    _diff = TexCoord.xy - _middle;
    _oTex = _middle + _diff*_scale;
    _dist = LUTTexCoord.xy - vec2( 5.00000000E-01, 5.00000000E-01);
    _otex_border = vec2( 5.00000000E-01, 5.00000000E-01) + (_dist*OutputSize)/vec2( 1.92000000E+03, 1.08000000E+03);
    gl_Position = _r0005;
    COL0 = COLOR;
    TEX0.xy = _oTex;
    TEX1.xy = _otex_border;
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
    float _frame_count1;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _ret_0;
vec4 _TMP0;
uniform sampler2D Texture;
uniform sampler2D bg;
varying vec4 TEX0;
varying vec4 TEX1;
 
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
    vec4 _frame;
    vec4 _background;
    _frame = texture2D(Texture, TEX0.xy);
    _TMP0 = texture2D(bg, TEX1.xy);
    _background = vec4(_TMP0.x, _TMP0.y, _TMP0.z, _TMP0.w);
    _ret_0 = _frame + _background.w*(_background - _frame);
    gl_FragColor = _ret_0;
    return;
} 
#endif
