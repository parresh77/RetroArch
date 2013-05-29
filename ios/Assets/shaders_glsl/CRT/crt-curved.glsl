// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)
varying     vec4 _color1;
struct output_dummy {
    vec4 _color1;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
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
struct output_dummy {
    vec4 _color;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};
float _TMP19;
float _TMP18;
float _TMP17;
float _TMP16;
float _TMP24;
float _TMP23;
float _TMP22;
float _TMP21;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP20;
float _TMP28;
float _TMP27;
float _TMP26;
float _TMP25;
vec4 _TMP6;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP15;
vec4 _TMP1;
vec4 _TMP0;
float _TMP14;
float _TMP13;
float _TMP12;
float _TMP11;
uniform sampler2D Texture;
input_dummy _IN1;
vec2 _cc0032;
float _dist0032;
vec2 _c0036;
vec2 _c0040;
vec2 _c0042;
vec2 _c0044;
vec2 _c0046;
vec2 _c0048;
vec2 _c0050;
vec2 _x0052;
vec4 _x0054;
vec4 _x0064;
vec4 _TMP73;
vec4 _x0074;
vec4 _TMP79;
vec4 _x0080;
vec4 _a0116;
vec4 _a0128;
vec4 _TMP137;
vec4 _x0138;
vec4 _a0160;
vec4 _a0172;
vec4 _TMP181;
vec4 _x0182;
float _a0194;
float _c0194;
float _a0196;
vec4 _a0202;
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
    output_dummy _OUT;
    vec2 _xy;
    vec2 _one;
    vec4 _texels[8];
    vec2 _uv_ratio;
    vec4 _col;
    vec4 _col2;
    vec4 _coeffs;
    vec4 _wid;
    vec4 _weights;
    vec4 _weights2;
    vec4 _mcol;
    _cc0032 = TEX0.xy - 5.00000000E-01;
    _dist0032 = dot(_cc0032, _cc0032);
    _xy = TEX0.xy + _cc0032*(_dist0032 + 3.99999991E-02*_dist0032*_dist0032)*3.99999991E-02;
    _one = 1.00000000E+00/TextureSize;
    _xy = _xy + vec2(0.00000000E+00, -5.00000000E-01*(InputSize.y/OutputSize.y)*_one.y);
    _c0036 = _xy + vec2(-_one.x, 0.00000000E+00);
    _texels[0] = texture2D(Texture, _c0036);
    _texels[1] = texture2D(Texture, _xy);
    _c0040 = _xy + vec2(_one.x, 0.00000000E+00);
    _texels[2] = texture2D(Texture, _c0040);
    _c0042 = _xy + vec2(2.00000000E+00*_one.x, 0.00000000E+00);
    _texels[3] = texture2D(Texture, _c0042);
    _c0044 = _xy + vec2(-_one.x, _one.y);
    _texels[4] = texture2D(Texture, _c0044);
    _c0046 = _xy + vec2(0.00000000E+00, _one.y);
    _texels[5] = texture2D(Texture, _c0046);
    _c0048 = _xy + _one;
    _texels[6] = texture2D(Texture, _c0048);
    _c0050 = _xy + vec2(2.00000000E+00*_one.x, _one.y);
    _texels[7] = texture2D(Texture, _c0050);
    _x0052 = _xy*TextureSize;
    _uv_ratio = fract(_x0052);
    _coeffs = vec4(1.00000000E+00 + _uv_ratio.x, _uv_ratio.x, 1.00000000E+00 - _uv_ratio.x, 2.00000000E+00 - _uv_ratio.x);
    _x0054 = 3.14159274E+00*_coeffs;
    _TMP11 = sin(_x0054.x);
    _TMP12 = sin(_x0054.y);
    _TMP13 = sin(_x0054.z);
    _TMP14 = sin(_x0054.w);
    _TMP0 = vec4(_TMP11, _TMP12, _TMP13, _TMP14);
    _x0064 = (3.14159274E+00*_coeffs)/2.00000000E+00;
    _TMP11 = sin(_x0064.x);
    _TMP12 = sin(_x0064.y);
    _TMP13 = sin(_x0064.z);
    _TMP14 = sin(_x0064.w);
    _TMP1 = vec4(_TMP11, _TMP12, _TMP13, _TMP14);
    _coeffs = (_TMP0*_TMP1)/(_coeffs*_coeffs);
    _coeffs = _coeffs/(_coeffs.x + _coeffs.y + _coeffs.z + _coeffs.w);
    _x0074 = _coeffs.x*_texels[0] + _coeffs.y*_texels[1] + _coeffs.z*_texels[2] + _coeffs.w*_texels[3];
    _TMP15 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0074);
    _TMP73 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP15);
    _x0080 = _coeffs.x*_texels[4] + _coeffs.y*_texels[5] + _coeffs.z*_texels[6] + _coeffs.w*_texels[7];
    _TMP15 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0080);
    _TMP79 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP15);
    _TMP16 = pow(_TMP73.x, 2.50000000E+00);
    _TMP17 = pow(_TMP73.y, 2.50000000E+00);
    _TMP18 = pow(_TMP73.z, 2.50000000E+00);
    _TMP19 = pow(_TMP73.w, 2.50000000E+00);
    _col = vec4(_TMP16, _TMP17, _TMP18, _TMP19);
    _TMP16 = pow(_TMP79.x, 2.50000000E+00);
    _TMP17 = pow(_TMP79.y, 2.50000000E+00);
    _TMP18 = pow(_TMP79.z, 2.50000000E+00);
    _TMP19 = pow(_TMP79.w, 2.50000000E+00);
    _col2 = vec4(_TMP16, _TMP17, _TMP18, _TMP19);
    _TMP16 = pow(_col.x, 4.00000000E+00);
    _TMP17 = pow(_col.y, 4.00000000E+00);
    _TMP18 = pow(_col.z, 4.00000000E+00);
    _TMP19 = pow(_col.w, 4.00000000E+00);
    _TMP2 = vec4(_TMP16, _TMP17, _TMP18, _TMP19);
    _wid = 2.00000000E+00 + 2.00000000E+00*_TMP2;
    _weights = vec4(_uv_ratio.y/3.00000012E-01, _uv_ratio.y/3.00000012E-01, _uv_ratio.y/3.00000012E-01, _uv_ratio.y/3.00000012E-01);
    _a0116 = 2.00000000E+00/_wid;
    _TMP25 = inversesqrt(_a0116.x);
    _TMP26 = inversesqrt(_a0116.y);
    _TMP27 = inversesqrt(_a0116.z);
    _TMP28 = inversesqrt(_a0116.w);
    _TMP20 = vec4(_TMP25, _TMP26, _TMP27, _TMP28);
    _TMP3 = 1.00000000E+00/_TMP20;
    _a0128 = _weights*_TMP3;
    _TMP16 = pow(_a0128.x, _wid.x);
    _TMP17 = pow(_a0128.y, _wid.y);
    _TMP18 = pow(_a0128.z, _wid.z);
    _TMP19 = pow(_a0128.w, _wid.w);
    _TMP4 = vec4(_TMP16, _TMP17, _TMP18, _TMP19);
    _x0138 = -_TMP4;
    _TMP16 = pow(2.71828198E+00, _x0138.x);
    _TMP17 = pow(2.71828198E+00, _x0138.y);
    _TMP18 = pow(2.71828198E+00, _x0138.z);
    _TMP19 = pow(2.71828198E+00, _x0138.w);
    _TMP137 = vec4(_TMP16, _TMP17, _TMP18, _TMP19);
    _weights = ((5.09999990E-01*_TMP137)/3.00000012E-01)/(6.00000024E-01 + 2.00000003E-01*_wid);
    _TMP16 = pow(_col2.x, 4.00000000E+00);
    _TMP17 = pow(_col2.y, 4.00000000E+00);
    _TMP18 = pow(_col2.z, 4.00000000E+00);
    _TMP19 = pow(_col2.w, 4.00000000E+00);
    _TMP6 = vec4(_TMP16, _TMP17, _TMP18, _TMP19);
    _wid = 2.00000000E+00 + 4.00000000E+00*_TMP6;
    _weights2 = vec4((1.00000000E+00 - _uv_ratio.y)/3.00000012E-01, (1.00000000E+00 - _uv_ratio.y)/3.00000012E-01, (1.00000000E+00 - _uv_ratio.y)/3.00000012E-01, (1.00000000E+00 - _uv_ratio.y)/3.00000012E-01);
    _a0160 = 2.00000000E+00/_wid;
    _TMP25 = inversesqrt(_a0160.x);
    _TMP26 = inversesqrt(_a0160.y);
    _TMP27 = inversesqrt(_a0160.z);
    _TMP28 = inversesqrt(_a0160.w);
    _TMP20 = vec4(_TMP25, _TMP26, _TMP27, _TMP28);
    _TMP7 = 1.00000000E+00/_TMP20;
    _a0172 = _weights2*_TMP7;
    _TMP16 = pow(_a0172.x, _wid.x);
    _TMP17 = pow(_a0172.y, _wid.y);
    _TMP18 = pow(_a0172.z, _wid.z);
    _TMP19 = pow(_a0172.w, _wid.w);
    _TMP8 = vec4(_TMP16, _TMP17, _TMP18, _TMP19);
    _x0182 = -_TMP8;
    _TMP16 = pow(2.71828198E+00, _x0182.x);
    _TMP17 = pow(2.71828198E+00, _x0182.y);
    _TMP18 = pow(2.71828198E+00, _x0182.z);
    _TMP19 = pow(2.71828198E+00, _x0182.w);
    _TMP181 = vec4(_TMP16, _TMP17, _TMP18, _TMP19);
    _weights2 = ((5.09999990E-01*_TMP181)/3.00000012E-01)/(6.00000024E-01 + 2.00000003E-01*_wid);
    _mcol = vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00);
    _a0194 = _xy.x*OutputSize.x;
    _a0196 = _a0194/2.00000000E+00;
    _TMP21 = abs(_a0196);
    _TMP22 = fract(_TMP21);
    _TMP23 = abs(2.00000000E+00);
    _c0194 = _TMP22*_TMP23;
    if (_a0194 < 0.00000000E+00) { 
        _TMP24 = -_c0194;
    } else {
        _TMP24 = _c0194;
    } 
    if (_TMP24 < 1.00000000E+00) { 
        _mcol.y = 6.99999988E-01;
    } else {
        _mcol.xz = vec2( 6.99999988E-01, 6.99999988E-01);
    } 
    _a0202 = _mcol*(_col*_weights + _col2*_weights2);
    _TMP16 = pow(_a0202.x, 4.54545438E-01);
    _TMP17 = pow(_a0202.y, 4.54545438E-01);
    _TMP18 = pow(_a0202.z, 4.54545438E-01);
    _TMP19 = pow(_a0202.w, 4.54545438E-01);
    _OUT._color = vec4(_TMP16, _TMP17, _TMP18, _TMP19);
    gl_FragColor = _OUT._color;
    return;
} 
#endif
