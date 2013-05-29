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
vec4 _r0002;
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
    _r0002.x = dot(MVPMatrix_[0], VertexCoord);
    _r0002.y = dot(MVPMatrix_[1], VertexCoord);
    _r0002.z = dot(MVPMatrix_[2], VertexCoord);
    _r0002.w = dot(MVPMatrix_[3], VertexCoord);
    _oPosition1 = _r0002;
    _oColor = COLOR;
    _oTex = TexCoord.xy;
    gl_Position = _r0002;
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
float _TMP2;
float _TMP3;
float _TMP1;
float _TMP0;
uniform sampler2D Texture;
float _frame_cnt0007;
vec2 _constant10007;
float _constant20007;
float _x0015;
float _x0017;
float _TMP18;
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
    vec4 _color;
    _frame_cnt0007 = cos(0.00000000E+00);
    _constant10007 = _frame_cnt0007*vec2( 1.29090910E+01, 7.82307663E+01);
    _constant20007 = (_frame_cnt0007*4.81344000E+05)/1.10000000E+01;
    _TMP0 = dot(TEX0.xy, _constant10007);
    _TMP1 = sin(_TMP0);
    _x0015 = _TMP1*_constant20007;
    _TMP2 = fract(_x0015);
    _x0017 = _TMP2 + 2.00000003E-01;
    _TMP3 = min(1.00000000E+00, _x0017);
    _TMP18 = max(0.00000000E+00, _TMP3);
    _color = texture2D(Texture, TEX0.xy);
    _color = (_color - 6.27451017E-02)*1.16438353E+00;
    _ret_0 = _color*_TMP18;
    gl_FragColor = _ret_0;
    return;
} 
#endif
