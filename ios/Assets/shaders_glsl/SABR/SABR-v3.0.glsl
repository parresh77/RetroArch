// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)
varying     vec4 VARxyp_21_22_23;
varying     vec4 VARxyp_16_17_18;
varying     vec4 VARxyp_11_12_13;
varying     vec4 VARxyp_9_14_9;
varying     vec4 VARxyp_6_7_8;
varying     vec4 VARxyp_5_10_15;
varying     vec4 VARxyp_1_2_3;
varying     vec2 _tc;
varying     vec4 _color1;
varying     vec4 _pos;
varying     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _pos;
    vec4 _color1;
    vec2 _tc;
    vec4 VARxyp_1_2_3;
    vec4 VARxyp_5_10_15;
    vec4 VARxyp_6_7_8;
    vec4 VARxyp_9_14_9;
    vec4 VARxyp_11_12_13;
    vec4 VARxyp_16_17_18;
    vec4 VARxyp_21_22_23;
};
out_vertex _ret_0;
float _TMP0;
uniform mat4 MVPMatrix;
input_dummy _IN1;
vec4 _r0004;
attribute vec4 VertexCoord;
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
    out_vertex _OUT;
    float _x;
    float _y;
    _TMP0 = dot(vec4(float(MVPMatrix_[0].x), float(MVPMatrix_[0].y), float(MVPMatrix_[0].z), float(MVPMatrix_[0].w)), vec4(float(VertexCoord.x), float(VertexCoord.y), float(VertexCoord.z), float(VertexCoord.w)));
    _r0004.x = float(_TMP0);
    _TMP0 = dot(vec4(float(MVPMatrix_[1].x), float(MVPMatrix_[1].y), float(MVPMatrix_[1].z), float(MVPMatrix_[1].w)), vec4(float(VertexCoord.x), float(VertexCoord.y), float(VertexCoord.z), float(VertexCoord.w)));
    _r0004.y = float(_TMP0);
    _TMP0 = dot(vec4(float(MVPMatrix_[2].x), float(MVPMatrix_[2].y), float(MVPMatrix_[2].z), float(MVPMatrix_[2].w)), vec4(float(VertexCoord.x), float(VertexCoord.y), float(VertexCoord.z), float(VertexCoord.w)));
    _r0004.z = float(_TMP0);
    _TMP0 = dot(vec4(float(MVPMatrix_[3].x), float(MVPMatrix_[3].y), float(MVPMatrix_[3].z), float(MVPMatrix_[3].w)), vec4(float(VertexCoord.x), float(VertexCoord.y), float(VertexCoord.z), float(VertexCoord.w)));
    _r0004.w = float(_TMP0);
    _x = 1.00000000E+00/TextureSize.x;
    _y = 1.00000000E+00/TextureSize.y;
    _OUT.VARxyp_1_2_3 = TexCoord.xxxy + vec4(-_x, 0.00000000E+00, _x, -2.00000000E+00*_y);
    _OUT.VARxyp_6_7_8 = TexCoord.xxxy + vec4(-_x, 0.00000000E+00, _x, -_y);
    _OUT.VARxyp_11_12_13 = TexCoord.xxxy + vec4(-_x, 0.00000000E+00, _x, 0.00000000E+00);
    _OUT.VARxyp_16_17_18 = TexCoord.xxxy + vec4(-_x, 0.00000000E+00, _x, _y);
    _OUT.VARxyp_21_22_23 = TexCoord.xxxy + vec4(-_x, 0.00000000E+00, _x, 2.00000000E+00*_y);
    _OUT.VARxyp_5_10_15 = TexCoord.xyyy + vec4(-2.00000000E+00*_x, -_y, 0.00000000E+00, _y);
    _OUT.VARxyp_9_14_9 = TexCoord.xyyy + vec4(2.00000000E+00*_x, -_y, 0.00000000E+00, _y);
    _ret_0._pos = _r0004;
    _ret_0._color1 = _OUT._color1;
    _ret_0._tc = TexCoord.xy;
    VARxyp_1_2_3 = _OUT.VARxyp_1_2_3;
    VARxyp_5_10_15 = _OUT.VARxyp_5_10_15;
    VARxyp_6_7_8 = _OUT.VARxyp_6_7_8;
    VARxyp_9_14_9 = _OUT.VARxyp_9_14_9;
    VARxyp_11_12_13 = _OUT.VARxyp_11_12_13;
    VARxyp_16_17_18 = _OUT.VARxyp_16_17_18;
    VARxyp_21_22_23 = _OUT.VARxyp_21_22_23;
    gl_Position = vec4(float(_r0004.x), float(_r0004.y), float(_r0004.z), float(_r0004.w));
    COL0 = _OUT._color1;
    TEX0.xy = TexCoord.xy;
    return;
    COL0 = _ret_0._color1;
    TEX0.xy = _ret_0._tc;
} 
#elif defined(FRAGMENT)
#ifdef GL_ES
precision mediump float;
#endif
varying     vec4 VARxyp_21_22_23;
varying     vec4 VARxyp_16_17_18;
varying     vec4 VARxyp_11_12_13;
varying     vec4 VARxyp_9_14_9;
varying     vec4 VARxyp_6_7_8;
varying     vec4 VARxyp_5_10_15;
varying     vec4 VARxyp_1_2_3;
varying     vec2 _tc;
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
struct out_vertex {
    vec4 _color;
    vec2 _tc;
    vec4 VARxyp_1_2_3;
    vec4 VARxyp_5_10_15;
    vec4 VARxyp_6_7_8;
    vec4 VARxyp_9_14_9;
    vec4 VARxyp_11_12_13;
    vec4 VARxyp_16_17_18;
    vec4 VARxyp_21_22_23;
};
vec4 _ret_0;
vec3 _TMP46;
float _TMP45;
float _TMP44;
float _TMP43;
vec3 _TMP42;
vec3 _TMP41;
vec3 _TMP40;
vec3 _TMP39;
vec3 _TMP38;
vec3 _TMP37;
vec3 _TMP36;
vec3 _TMP35;
vec4 _TMP34;
bvec4 _TMP31;
bvec4 _TMP30;
bvec4 _TMP29;
bvec4 _TMP28;
bvec4 _TMP27;
bvec4 _TMP26;
bvec4 _TMP25;
bvec4 _TMP24;
bvec4 _TMP23;
bvec4 _TMP22;
bvec4 _TMP21;
vec4 _TMP57;
float _TMP50;
float _TMP49;
float _TMP48;
float _TMP47;
vec4 _TMP20;
vec4 _TMP19;
vec4 _TMP18;
vec4 _TMP17;
vec4 _TMP16;
vec4 _TMP15;
vec4 _TMP14;
vec4 _TMP13;
vec4 _TMP12;
vec4 _TMP11;
vec4 _TMP10;
vec4 _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
out_vertex _VAR1;
uniform sampler2D Texture;
input_dummy _IN1;
vec2 _x0165;
vec4 _x0167;
vec4 _x0169;
vec4 _TMP170;
vec4 _x0177;
vec4 _x0179;
vec4 _TMP180;
vec4 _x0187;
vec4 _x0189;
vec4 _TMP190;
vec4 _x0197;
vec4 _x0199;
vec4 _TMP200;
vec4 _TMP208;
vec4 _a0211;
vec4 _TMP212;
vec4 _a0215;
vec4 _TMP216;
vec4 _a0219;
vec4 _TMP220;
vec4 _a0223;
vec4 _TMP224;
vec4 _a0227;
vec4 _TMP230;
vec4 _a0233;
vec4 _TMP234;
vec4 _a0237;
vec4 _TMP238;
vec4 _a0241;
vec4 _TMP242;
vec4 _a0245;
vec4 _TMP246;
vec4 _a0249;
vec4 _TMP250;
vec4 _a0253;
vec4 _TMP254;
vec4 _a0257;
vec4 _TMP260;
vec4 _a0263;
vec4 _TMP266;
vec4 _a0269;
vec4 _TMP272;
vec4 _a0275;
vec4 _TMP278;
vec4 _a0281;
vec4 _TMP284;
vec4 _a0287;
vec4 _TMP290;
vec4 _a0293;
vec4 _TMP296;
vec4 _a0299;
vec4 _TMP302;
vec4 _a0305;
vec4 _TMP308;
vec4 _a0311;
vec4 _TMP314;
vec4 _a0317;
vec4 _TMP320;
vec4 _a0323;
vec4 _TMP324;
vec4 _a0327;
vec4 _TMP328;
vec4 _a0331;
vec3 _df0369;
vec3 _a0371;
vec3 _df0373;
vec3 _a0375;
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
    vec4 _p7;
    vec4 _p8;
    vec4 _p12;
    vec4 _p14;
    vec4 _p19;
    vec4 _p23;
    vec2 _fp;
    vec4 _ma45;
    vec4 _ma30;
    vec4 _ma60;
    vec4 _marn;
    vec4 _e45;
    vec4 _econt;
    bvec4 _r45;
    bvec4 _r30;
    bvec4 _r60;
    bvec4 _edr45;
    bvec4 _edrrn;
    bvec4 _edr30;
    bvec4 _edr60;
    vec4 _final45;
    vec4 _final30;
    vec4 _final60;
    vec4 _final36;
    vec4 _finalrn;
    vec4 _px;
    vec4 _mac;
    vec3 _res1;
    vec3 _res2;
    _TMP0 = texture2D(Texture, VARxyp_1_2_3.xw);
    _TMP1 = texture2D(Texture, VARxyp_1_2_3.yw);
    _TMP2 = texture2D(Texture, VARxyp_1_2_3.zw);
    _TMP3 = texture2D(Texture, VARxyp_6_7_8.xw);
    _TMP4 = texture2D(Texture, VARxyp_6_7_8.yw);
    _TMP5 = texture2D(Texture, VARxyp_6_7_8.zw);
    _TMP6 = texture2D(Texture, VARxyp_11_12_13.xw);
    _TMP7 = texture2D(Texture, VARxyp_11_12_13.yw);
    _TMP8 = texture2D(Texture, VARxyp_11_12_13.zw);
    _TMP9 = texture2D(Texture, VARxyp_16_17_18.xw);
    _TMP10 = texture2D(Texture, VARxyp_16_17_18.yw);
    _TMP11 = texture2D(Texture, VARxyp_16_17_18.zw);
    _TMP12 = texture2D(Texture, VARxyp_21_22_23.xw);
    _TMP13 = texture2D(Texture, VARxyp_21_22_23.yw);
    _TMP14 = texture2D(Texture, VARxyp_21_22_23.zw);
    _TMP15 = texture2D(Texture, VARxyp_5_10_15.xy);
    _TMP16 = texture2D(Texture, VARxyp_5_10_15.xz);
    _TMP17 = texture2D(Texture, VARxyp_5_10_15.xw);
    _TMP18 = texture2D(Texture, VARxyp_9_14_9.xy);
    _TMP19 = texture2D(Texture, VARxyp_9_14_9.xz);
    _TMP20 = texture2D(Texture, VARxyp_9_14_9.xw);
    _TMP47 = dot(vec3( 2.09999993E-01, 7.20000029E-01, 7.00000003E-02), _TMP4.xyz);
    _TMP48 = dot(vec3( 2.09999993E-01, 7.20000029E-01, 7.00000003E-02), _TMP6.xyz);
    _TMP49 = dot(vec3( 2.09999993E-01, 7.20000029E-01, 7.00000003E-02), _TMP10.xyz);
    _TMP50 = dot(vec3( 2.09999993E-01, 7.20000029E-01, 7.00000003E-02), _TMP8.xyz);
    _p7 = vec4(_TMP47, _TMP48, _TMP49, _TMP50);
    _TMP47 = dot(vec3( 2.09999993E-01, 7.20000029E-01, 7.00000003E-02), _TMP5.xyz);
    _TMP48 = dot(vec3( 2.09999993E-01, 7.20000029E-01, 7.00000003E-02), _TMP3.xyz);
    _TMP49 = dot(vec3( 2.09999993E-01, 7.20000029E-01, 7.00000003E-02), _TMP9.xyz);
    _TMP50 = dot(vec3( 2.09999993E-01, 7.20000029E-01, 7.00000003E-02), _TMP11.xyz);
    _p8 = vec4(_TMP47, _TMP48, _TMP49, _TMP50);
    _TMP47 = dot(vec3( 2.09999993E-01, 7.20000029E-01, 7.00000003E-02), _TMP7.xyz);
    _TMP48 = dot(vec3( 2.09999993E-01, 7.20000029E-01, 7.00000003E-02), _TMP7.xyz);
    _TMP49 = dot(vec3( 2.09999993E-01, 7.20000029E-01, 7.00000003E-02), _TMP7.xyz);
    _TMP50 = dot(vec3( 2.09999993E-01, 7.20000029E-01, 7.00000003E-02), _TMP7.xyz);
    _p12 = vec4(_TMP47, _TMP48, _TMP49, _TMP50);
    _TMP47 = dot(vec3( 2.09999993E-01, 7.20000029E-01, 7.00000003E-02), _TMP19.xyz);
    _TMP48 = dot(vec3( 2.09999993E-01, 7.20000029E-01, 7.00000003E-02), _TMP1.xyz);
    _TMP49 = dot(vec3( 2.09999993E-01, 7.20000029E-01, 7.00000003E-02), _TMP16.xyz);
    _TMP50 = dot(vec3( 2.09999993E-01, 7.20000029E-01, 7.00000003E-02), _TMP13.xyz);
    _p14 = vec4(_TMP47, _TMP48, _TMP49, _TMP50);
    _TMP47 = dot(vec3( 2.09999993E-01, 7.20000029E-01, 7.00000003E-02), _TMP20.xyz);
    _TMP48 = dot(vec3( 2.09999993E-01, 7.20000029E-01, 7.00000003E-02), _TMP2.xyz);
    _TMP49 = dot(vec3( 2.09999993E-01, 7.20000029E-01, 7.00000003E-02), _TMP15.xyz);
    _TMP50 = dot(vec3( 2.09999993E-01, 7.20000029E-01, 7.00000003E-02), _TMP12.xyz);
    _p19 = vec4(_TMP47, _TMP48, _TMP49, _TMP50);
    _TMP47 = dot(vec3( 2.09999993E-01, 7.20000029E-01, 7.00000003E-02), _TMP14.xyz);
    _TMP48 = dot(vec3( 2.09999993E-01, 7.20000029E-01, 7.00000003E-02), _TMP18.xyz);
    _TMP49 = dot(vec3( 2.09999993E-01, 7.20000029E-01, 7.00000003E-02), _TMP0.xyz);
    _TMP50 = dot(vec3( 2.09999993E-01, 7.20000029E-01, 7.00000003E-02), _TMP17.xyz);
    _p23 = vec4(_TMP47, _TMP48, _TMP49, _TMP50);
    _x0165 = TEX0.xy*TextureSize;
    _fp = fract(_x0165);
    _x0167 = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x;
    _x0169 = (_x0167 - vec4( 1.10000002E+00, 9.99999940E-02, -8.99999976E-01, 9.99999940E-02))/vec4( 7.99999952E-01, 7.99999952E-01, 7.99999952E-01, 7.99999952E-01);
    _TMP57 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0169);
    _TMP170 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP57);
    _ma45 = _TMP170*_TMP170*(3.00000000E+00 - 2.00000000E+00*_TMP170);
    _x0177 = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x;
    _x0179 = (_x0177 - vec4( 8.00000012E-01, 6.00000024E-01, -6.99999988E-01, -4.00000006E-01))/vec4( 4.00000036E-01, 7.99999952E-01, 3.99999976E-01, 8.00000012E-01);
    _TMP57 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0179);
    _TMP180 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP57);
    _ma30 = _TMP180*_TMP180*(3.00000000E+00 - 2.00000000E+00*_TMP180);
    _x0187 = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x;
    _x0189 = (_x0187 - vec4( 1.60000002E+00, -2.00000003E-01, -1.39999998E+00, 3.00000012E-01))/vec4( 8.00000072E-01, 4.00000006E-01, 7.99999952E-01, 3.99999976E-01);
    _TMP57 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0189);
    _TMP190 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP57);
    _ma60 = _TMP190*_TMP190*(3.00000000E+00 - 2.00000000E+00*_TMP190);
    _x0197 = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x;
    _x0199 = (_x0197 - vec4( 1.30000007E+00, 3.00000012E-01, -6.99999988E-01, 3.00000012E-01))/vec4( 7.99999833E-01, 8.00000012E-01, 8.00000012E-01, 8.00000012E-01);
    _TMP57 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0199);
    _TMP200 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP57);
    _marn = _TMP200*_TMP200*(3.00000000E+00 - 2.00000000E+00*_TMP200);
    _a0211 = _p12 - _p8;
    _TMP208 = abs(_a0211);
    _a0215 = _p12 - _p8.zwxy;
    _TMP212 = abs(_a0215);
    _a0219 = _p8.wxyz - _p14.wxyz;
    _TMP216 = abs(_a0219);
    _a0223 = _p8.wxyz - _p14;
    _TMP220 = abs(_a0223);
    _a0227 = _p7.zwxy - _p7.wxyz;
    _TMP224 = abs(_a0227);
    _e45 = _TMP208 + _TMP212 + _TMP216 + _TMP220 + 4.00000000E+00*_TMP224;
    _a0233 = _p7.zwxy - _p7.yzwx;
    _TMP230 = abs(_a0233);
    _a0237 = _p7.zwxy - _p23;
    _TMP234 = abs(_a0237);
    _a0241 = _p7.wxyz - _p7;
    _TMP238 = abs(_a0241);
    _a0245 = _p7.wxyz - _p19;
    _TMP242 = abs(_a0245);
    _a0249 = _p12 - _p8.wxyz;
    _TMP246 = abs(_a0249);
    _econt = _TMP230 + _TMP234 + _TMP238 + _TMP242 + 4.00000000E+00*_TMP246;
    _a0253 = _p7.wxyz - _p8.zwxy;
    _TMP250 = abs(_a0253);
    _a0257 = _p8 - _p7.zwxy;
    _TMP254 = abs(_a0257);
    _a0263 = _p7.wxyz - _p7;
    _TMP260 = abs(_a0263);
    _TMP21 = bvec4(_TMP260.x < 3.19999993E-01, _TMP260.y < 3.19999993E-01, _TMP260.z < 3.19999993E-01, _TMP260.w < 3.19999993E-01);
    _a0269 = _p7.wxyz - _p8;
    _TMP266 = abs(_a0269);
    _TMP22 = bvec4(_TMP266.x < 3.19999993E-01, _TMP266.y < 3.19999993E-01, _TMP266.z < 3.19999993E-01, _TMP266.w < 3.19999993E-01);
    _a0275 = _p7.zwxy - _p7.yzwx;
    _TMP272 = abs(_a0275);
    _TMP23 = bvec4(_TMP272.x < 3.19999993E-01, _TMP272.y < 3.19999993E-01, _TMP272.z < 3.19999993E-01, _TMP272.w < 3.19999993E-01);
    _a0281 = _p7.zwxy - _p8.zwxy;
    _TMP278 = abs(_a0281);
    _TMP24 = bvec4(_TMP278.x < 3.19999993E-01, _TMP278.y < 3.19999993E-01, _TMP278.z < 3.19999993E-01, _TMP278.w < 3.19999993E-01);
    _a0287 = _p12 - _p8.wxyz;
    _TMP284 = abs(_a0287);
    _TMP25 = bvec4(_TMP284.x < 3.19999993E-01, _TMP284.y < 3.19999993E-01, _TMP284.z < 3.19999993E-01, _TMP284.w < 3.19999993E-01);
    _a0293 = _p7.wxyz - _p14;
    _TMP290 = abs(_a0293);
    _TMP26 = bvec4(_TMP290.x < 3.19999993E-01, _TMP290.y < 3.19999993E-01, _TMP290.z < 3.19999993E-01, _TMP290.w < 3.19999993E-01);
    _a0299 = _p7.wxyz - _p19;
    _TMP296 = abs(_a0299);
    _TMP27 = bvec4(_TMP296.x < 3.19999993E-01, _TMP296.y < 3.19999993E-01, _TMP296.z < 3.19999993E-01, _TMP296.w < 3.19999993E-01);
    _a0305 = _p7.zwxy - _p14.wxyz;
    _TMP302 = abs(_a0305);
    _TMP28 = bvec4(_TMP302.x < 3.19999993E-01, _TMP302.y < 3.19999993E-01, _TMP302.z < 3.19999993E-01, _TMP302.w < 3.19999993E-01);
    _a0311 = _p7.zwxy - _p23;
    _TMP308 = abs(_a0311);
    _TMP29 = bvec4(_TMP308.x < 3.19999993E-01, _TMP308.y < 3.19999993E-01, _TMP308.z < 3.19999993E-01, _TMP308.w < 3.19999993E-01);
    _a0317 = _p12 - _p8.zwxy;
    _TMP314 = abs(_a0317);
    _TMP30 = bvec4(_TMP314.x < 3.19999993E-01, _TMP314.y < 3.19999993E-01, _TMP314.z < 3.19999993E-01, _TMP314.w < 3.19999993E-01);
    _a0323 = _p12 - _p8;
    _TMP320 = abs(_a0323);
    _TMP31 = bvec4(_TMP320.x < 3.19999993E-01, _TMP320.y < 3.19999993E-01, _TMP320.z < 3.19999993E-01, _TMP320.w < 3.19999993E-01);
    _r45 = bvec4(_p12.x != _p7.w && _p12.x != _p7.z && (!_TMP21.x && !_TMP22.x || !_TMP23.x && !_TMP24.x || _TMP25.x && (!_TMP26.x && !_TMP27.x || !_TMP28.x && !_TMP29.x) || _TMP30.x || _TMP31.x), _p12.y != _p7.x && _p12.y != _p7.w && (!_TMP21.y && !_TMP22.y || !_TMP23.y && !_TMP24.y || _TMP25.y && (!_TMP26.y && !_TMP27.y || !_TMP28.y && !_TMP29.y) || _TMP30.y || _TMP31.y), _p12.z != _p7.y && _p12.z != _p7.x && (!_TMP21.z && !_TMP22.z || !_TMP23.z && !_TMP24.z || _TMP25.z && (!_TMP26.z && !_TMP27.z || !_TMP28.z && !_TMP29.z) || _TMP30.z || _TMP31.z), _p12.w != _p7.z && _p12.w != _p7.y && (!_TMP21.w && !_TMP22.w || !_TMP23.w && !_TMP24.w || _TMP25.w && (!_TMP26.w && !_TMP27.w || !_TMP28.w && !_TMP29.w) || _TMP30.w || _TMP31.w));
    _r30 = bvec4(_p12.x != _p8.z && _p7.y != _p8.z, _p12.y != _p8.w && _p7.z != _p8.w, _p12.z != _p8.x && _p7.w != _p8.x, _p12.w != _p8.y && _p7.x != _p8.y);
    _r60 = bvec4(_p12.x != _p8.x && _p7.x != _p8.x, _p12.y != _p8.y && _p7.y != _p8.y, _p12.z != _p8.z && _p7.z != _p8.z, _p12.w != _p8.w && _p7.w != _p8.w);
    _edr45 = bvec4(_e45.x < _econt.x && _r45.x, _e45.y < _econt.y && _r45.y, _e45.z < _econt.z && _r45.z, _e45.w < _econt.w && _r45.w);
    _edrrn = bvec4(_e45.x <= _econt.x, _e45.y <= _econt.y, _e45.z <= _econt.z, _e45.w <= _econt.w);
    _edr30 = bvec4((_TMP250*2.00000000E+00).x <= _TMP254.x && _r30.x, (_TMP250*2.00000000E+00).y <= _TMP254.y && _r30.y, (_TMP250*2.00000000E+00).z <= _TMP254.z && _r30.z, (_TMP250*2.00000000E+00).w <= _TMP254.w && _r30.w);
    _edr60 = bvec4((_TMP254*2.00000000E+00).x <= _TMP250.x && _r60.x, (_TMP254*2.00000000E+00).y <= _TMP250.y && _r60.y, (_TMP254*2.00000000E+00).z <= _TMP250.z && _r60.z, (_TMP254*2.00000000E+00).w <= _TMP250.w && _r60.w);
    _final45 = vec4(float((!_edr30.x && !_edr60.x && _edr45.x)), float((!_edr30.y && !_edr60.y && _edr45.y)), float((!_edr30.z && !_edr60.z && _edr45.z)), float((!_edr30.w && !_edr60.w && _edr45.w)));
    _final30 = vec4(float((_edr45.x && _edr30.x && !_edr60.x)), float((_edr45.y && _edr30.y && !_edr60.y)), float((_edr45.z && _edr30.z && !_edr60.z)), float((_edr45.w && _edr30.w && !_edr60.w)));
    _final60 = vec4(float((_edr45.x && _edr60.x && !_edr30.x)), float((_edr45.y && _edr60.y && !_edr30.y)), float((_edr45.z && _edr60.z && !_edr30.z)), float((_edr45.w && _edr60.w && !_edr30.w)));
    _final36 = vec4(float((_edr45.x && _edr30.x && _edr60.x)), float((_edr45.y && _edr30.y && _edr60.y)), float((_edr45.z && _edr30.z && _edr60.z)), float((_edr45.w && _edr30.w && _edr60.w)));
    _finalrn = vec4(float((!_edr45.x && _edrrn.x)), float((!_edr45.y && _edrrn.y)), float((!_edr45.z && _edrrn.z)), float((!_edr45.w && _edrrn.w)));
    _a0327 = _p12 - _p7.zwxy;
    _TMP324 = abs(_a0327);
    _a0331 = _p12 - _p7.wxyz;
    _TMP328 = abs(_a0331);
    _px = vec4(float((_TMP328.x >= _TMP324.x)), float((_TMP328.y >= _TMP324.y)), float((_TMP328.z >= _TMP324.z)), float((_TMP328.w >= _TMP324.w)));
    _TMP34 = max(_ma30, _ma60);
    _mac = _final36*_TMP34 + _final30*_ma30 + _final60*_ma60 + _final45*_ma45 + _finalrn*_marn;
    _TMP35 = _TMP8.xyz + _px.x*(_TMP10.xyz - _TMP8.xyz);
    _res1 = _TMP7.xyz + _mac.x*(_TMP35 - _TMP7.xyz);
    _TMP36 = _TMP4.xyz + _px.y*(_TMP8.xyz - _TMP4.xyz);
    _res1 = _res1 + _mac.y*(_TMP36 - _res1);
    _TMP37 = _TMP6.xyz + _px.z*(_TMP4.xyz - _TMP6.xyz);
    _res1 = _res1 + _mac.z*(_TMP37 - _res1);
    _TMP38 = _TMP10.xyz + _px.w*(_TMP6.xyz - _TMP10.xyz);
    _res1 = _res1 + _mac.w*(_TMP38 - _res1);
    _TMP39 = _TMP10.xyz + _px.w*(_TMP6.xyz - _TMP10.xyz);
    _res2 = _TMP7.xyz + _mac.w*(_TMP39 - _TMP7.xyz);
    _TMP40 = _TMP6.xyz + _px.z*(_TMP4.xyz - _TMP6.xyz);
    _res2 = _res2 + _mac.z*(_TMP40 - _res2);
    _TMP41 = _TMP4.xyz + _px.y*(_TMP8.xyz - _TMP4.xyz);
    _res2 = _res2 + _mac.y*(_TMP41 - _res2);
    _TMP42 = _TMP8.xyz + _px.x*(_TMP10.xyz - _TMP8.xyz);
    _res2 = _res2 + _mac.x*(_TMP42 - _res2);
    _a0371 = _TMP7.xyz - _res1;
    _df0369 = abs(_a0371);
    _TMP43 = _df0369.x + _df0369.y + _df0369.z;
    _a0375 = _TMP7.xyz - _res2;
    _df0373 = abs(_a0375);
    _TMP44 = _df0373.x + _df0373.y + _df0373.z;
    _TMP45 = float((_TMP44 >= _TMP43));
    _TMP46 = _res1 + _TMP45*(_res2 - _res1);
    _ret_0 = vec4(_TMP46.x, _TMP46.y, _TMP46.z, 1.00000000E+00);
    gl_FragColor = _ret_0;
    return;
} 
#endif
