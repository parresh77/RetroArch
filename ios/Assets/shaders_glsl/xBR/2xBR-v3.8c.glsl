// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)
varying     vec4 VARt7;
varying     vec4 VARt6;
varying     vec4 VARt5;
varying     vec4 VARt4;
varying     vec4 VARt3;
varying     vec4 VARt2;
varying     vec4 VARt1;
varying     vec2 _texCoord1;
varying     vec4 _color1;
varying     vec4 _position1;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec4 _position1;
    vec4 _color1;
    vec2 _texCoord1;
    vec4 VARt1;
    vec4 VARt2;
    vec4 VARt3;
    vec4 VARt4;
    vec4 VARt5;
    vec4 VARt6;
    vec4 VARt7;
};
out_vertex _ret_0;
float _TMP1;
uniform mat4 MVPMatrix;
input_dummy _IN1;
vec4 _r0007;
vec4 _v0007;
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
    out_vertex _OUT;
    vec2 _ps;
    _v0007 = vec4(float(VertexCoord.x), float(VertexCoord.y), float(VertexCoord.z), float(VertexCoord.w));
    _TMP1 = dot(vec4(float(MVPMatrix_[0].x), float(MVPMatrix_[0].y), float(MVPMatrix_[0].z), float(MVPMatrix_[0].w)), vec4(float(_v0007.x), float(_v0007.y), float(_v0007.z), float(_v0007.w)));
    _r0007.x = float(_TMP1);
    _TMP1 = dot(vec4(float(MVPMatrix_[1].x), float(MVPMatrix_[1].y), float(MVPMatrix_[1].z), float(MVPMatrix_[1].w)), vec4(float(_v0007.x), float(_v0007.y), float(_v0007.z), float(_v0007.w)));
    _r0007.y = float(_TMP1);
    _TMP1 = dot(vec4(float(MVPMatrix_[2].x), float(MVPMatrix_[2].y), float(MVPMatrix_[2].z), float(MVPMatrix_[2].w)), vec4(float(_v0007.x), float(_v0007.y), float(_v0007.z), float(_v0007.w)));
    _r0007.z = float(_TMP1);
    _TMP1 = dot(vec4(float(MVPMatrix_[3].x), float(MVPMatrix_[3].y), float(MVPMatrix_[3].z), float(MVPMatrix_[3].w)), vec4(float(_v0007.x), float(_v0007.y), float(_v0007.z), float(_v0007.w)));
    _r0007.w = float(_TMP1);
    _OUT._position1 = vec4(float(_r0007.x), float(_r0007.y), float(_r0007.z), float(_r0007.w));
    _ps = vec2(1.00000000E+00/TextureSize.x, 1.00000000E+00/TextureSize.y);
    _OUT.VARt1 = TexCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float((-2.00000000E+00*_ps.y))));
    _OUT.VARt2 = TexCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float(-_ps.y)));
    _OUT.VARt3 = TexCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), 0.00000000E+00);
    _OUT.VARt4 = TexCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float(_ps.y)));
    _OUT.VARt5 = TexCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float((2.00000000E+00*_ps.y))));
    _OUT.VARt6 = TexCoord.xyyy + vec4(float(float((-2.00000000E+00*_ps.x))), float(float(-_ps.y)), 0.00000000E+00, float(float(_ps.y)));
    _OUT.VARt7 = TexCoord.xyyy + vec4(float(float((2.00000000E+00*_ps.x))), float(float(-_ps.y)), 0.00000000E+00, float(float(_ps.y)));
    _ret_0._position1 = _OUT._position1;
    _ret_0._color1 = COLOR;
    _ret_0._texCoord1 = TexCoord.xy;
    VARt1 = _OUT.VARt1;
    VARt2 = _OUT.VARt2;
    VARt3 = _OUT.VARt3;
    VARt4 = _OUT.VARt4;
    VARt5 = _OUT.VARt5;
    VARt6 = _OUT.VARt6;
    VARt7 = _OUT.VARt7;
    gl_Position = _OUT._position1;
    COL0 = COLOR;
    TEX0.xy = TexCoord.xy;
    return;
    COL0 = _ret_0._color1;
    TEX0.xy = _ret_0._texCoord1;
} 
#elif defined(FRAGMENT)
#ifdef GL_ES
precision mediump float;
#endif
varying     vec4 VARt7;
varying     vec4 VARt6;
varying     vec4 VARt5;
varying     vec4 VARt4;
varying     vec4 VARt3;
varying     vec4 VARt2;
varying     vec4 VARt1;
varying     vec2 _texCoord;
varying     vec4 _color;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec4 _color;
    vec2 _texCoord;
    vec4 VARt1;
    vec4 VARt2;
    vec4 VARt3;
    vec4 VARt4;
    vec4 VARt5;
    vec4 VARt6;
    vec4 VARt7;
};
vec4 _ret_0;
float _TMP57;
float _TMP56;
float _TMP55;
vec3 _TMP65;
vec3 _TMP54;
vec3 _TMP53;
vec3 _TMP52;
vec3 _TMP51;
vec3 _TMP50;
vec3 _TMP49;
vec3 _TMP48;
vec3 _TMP47;
vec4 _TMP46;
vec4 _TMP39;
vec4 _TMP38;
vec4 _TMP66;
bvec4 _TMP37;
bvec4 _TMP36;
bvec4 _TMP35;
bvec4 _TMP34;
bvec4 _TMP33;
bvec4 _TMP32;
bvec4 _TMP31;
bvec4 _TMP30;
bvec4 _TMP29;
bvec4 _TMP28;
bvec4 _TMP27;
float _TMP64;
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
vec2 _x0080;
vec4 _r0124;
vec4 _r0134;
vec4 _r0144;
vec4 _r0154;
vec4 _r0164;
vec4 _r0174;
vec4 _TMP185;
vec4 _a0188;
vec4 _TMP191;
vec4 _a0194;
vec4 _TMP197;
vec4 _a0200;
vec4 _TMP203;
vec4 _a0206;
vec4 _TMP209;
vec4 _a0212;
vec4 _TMP215;
vec4 _a0218;
vec4 _TMP221;
vec4 _a0224;
vec4 _TMP227;
vec4 _a0230;
vec4 _TMP233;
vec4 _a0236;
vec4 _TMP239;
vec4 _a0242;
vec4 _TMP245;
vec4 _a0248;
vec4 _x0252;
vec4 _TMP253;
vec4 _x0262;
vec4 _TMP263;
vec4 _x0272;
vec4 _TMP273;
vec4 _TMP281;
vec4 _a0284;
vec4 _TMP285;
vec4 _a0288;
vec4 _TMP289;
vec4 _a0292;
vec4 _TMP293;
vec4 _a0296;
vec4 _TMP297;
vec4 _a0300;
vec4 _TMP303;
vec4 _a0306;
vec4 _TMP307;
vec4 _a0310;
vec4 _TMP311;
vec4 _a0314;
vec4 _TMP315;
vec4 _a0318;
vec4 _TMP319;
vec4 _a0322;
vec4 _TMP323;
vec4 _a0326;
vec4 _TMP327;
vec4 _a0330;
vec4 _TMP331;
vec4 _a0334;
vec4 _TMP335;
vec4 _a0338;
vec4 _TMP339;
vec4 _a0342;
vec4 _TMP343;
vec4 _a0346;
float _t0352;
float _t0354;
vec3 _df0356;
vec3 _a0358;
vec3 _df0360;
vec3 _a0362;
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
    bvec4 _edr;
    bvec4 _edr_left;
    bvec4 _edr_up;
    bvec4 _px;
    bvec4 _interp_restriction_lv1;
    bvec4 _interp_restriction_lv2_left;
    bvec4 _interp_restriction_lv2_up;
    bvec4 _nc;
    bvec4 _nc30;
    bvec4 _nc60;
    bvec4 _nc45;
    vec4 _fx;
    vec4 _fx_left;
    vec4 _fx_up;
    vec3 _res1;
    vec3 _res2;
    vec3 _pix1;
    vec3 _pix2;
    float _blend1;
    float _blend2;
    vec2 _fp;
    vec3 _A11;
    vec3 _B11;
    vec3 _C1;
    vec3 _A2;
    vec3 _B2;
    vec3 _C;
    vec3 _D;
    vec3 _E;
    vec3 _F;
    vec3 _G;
    vec3 _H;
    vec3 _I;
    vec3 _G5;
    vec3 _H5;
    vec3 _I5;
    vec3 _A0;
    vec3 _D0;
    vec3 _G0;
    vec3 _C4;
    vec3 _F4;
    vec3 _I4;
    vec4 _b1;
    vec4 _c3;
    vec4 _e1;
    vec4 _i4;
    vec4 _i5;
    vec4 _h5;
    vec4 _fx45;
    vec4 _fx30;
    vec4 _fx60;
    vec4 _final45;
    vec4 _final30;
    vec4 _final60;
    vec4 _maximo;
    vec3 _res;
    _x0080 = TEX0.xy*TextureSize;
    _fp = fract(_x0080);
    _TMP0 = texture2D(Texture, VARt1.xw);
    _A11 = vec3(float(_TMP0.x), float(_TMP0.y), float(_TMP0.z));
    _TMP1 = texture2D(Texture, VARt1.yw);
    _B11 = vec3(float(_TMP1.x), float(_TMP1.y), float(_TMP1.z));
    _TMP2 = texture2D(Texture, VARt1.zw);
    _C1 = vec3(float(_TMP2.x), float(_TMP2.y), float(_TMP2.z));
    _TMP3 = texture2D(Texture, VARt2.xw);
    _A2 = vec3(float(_TMP3.x), float(_TMP3.y), float(_TMP3.z));
    _TMP4 = texture2D(Texture, VARt2.yw);
    _B2 = vec3(float(_TMP4.x), float(_TMP4.y), float(_TMP4.z));
    _TMP5 = texture2D(Texture, VARt2.zw);
    _C = vec3(float(_TMP5.x), float(_TMP5.y), float(_TMP5.z));
    _TMP6 = texture2D(Texture, VARt3.xw);
    _D = vec3(float(_TMP6.x), float(_TMP6.y), float(_TMP6.z));
    _TMP7 = texture2D(Texture, VARt3.yw);
    _E = vec3(float(_TMP7.x), float(_TMP7.y), float(_TMP7.z));
    _TMP8 = texture2D(Texture, VARt3.zw);
    _F = vec3(float(_TMP8.x), float(_TMP8.y), float(_TMP8.z));
    _TMP9 = texture2D(Texture, VARt4.xw);
    _G = vec3(float(_TMP9.x), float(_TMP9.y), float(_TMP9.z));
    _TMP10 = texture2D(Texture, VARt4.yw);
    _H = vec3(float(_TMP10.x), float(_TMP10.y), float(_TMP10.z));
    _TMP11 = texture2D(Texture, VARt4.zw);
    _I = vec3(float(_TMP11.x), float(_TMP11.y), float(_TMP11.z));
    _TMP12 = texture2D(Texture, VARt5.xw);
    _G5 = vec3(float(_TMP12.x), float(_TMP12.y), float(_TMP12.z));
    _TMP13 = texture2D(Texture, VARt5.yw);
    _H5 = vec3(float(_TMP13.x), float(_TMP13.y), float(_TMP13.z));
    _TMP14 = texture2D(Texture, VARt5.zw);
    _I5 = vec3(float(_TMP14.x), float(_TMP14.y), float(_TMP14.z));
    _TMP15 = texture2D(Texture, VARt6.xy);
    _A0 = vec3(float(_TMP15.x), float(_TMP15.y), float(_TMP15.z));
    _TMP16 = texture2D(Texture, VARt6.xz);
    _D0 = vec3(float(_TMP16.x), float(_TMP16.y), float(_TMP16.z));
    _TMP17 = texture2D(Texture, VARt6.xw);
    _G0 = vec3(float(_TMP17.x), float(_TMP17.y), float(_TMP17.z));
    _TMP18 = texture2D(Texture, VARt7.xy);
    _C4 = vec3(float(_TMP18.x), float(_TMP18.y), float(_TMP18.z));
    _TMP19 = texture2D(Texture, VARt7.xz);
    _F4 = vec3(float(_TMP19.x), float(_TMP19.y), float(_TMP19.z));
    _TMP20 = texture2D(Texture, VARt7.xw);
    _I4 = vec3(float(_TMP20.x), float(_TMP20.y), float(_TMP20.z));
    _TMP64 = dot(vec3(float(_B2.x), float(_B2.y), float(_B2.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0124.x = float(_TMP64);
    _TMP64 = dot(vec3(float(_D.x), float(_D.y), float(_D.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0124.y = float(_TMP64);
    _TMP64 = dot(vec3(float(_H.x), float(_H.y), float(_H.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0124.z = float(_TMP64);
    _TMP64 = dot(vec3(float(_F.x), float(_F.y), float(_F.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0124.w = float(_TMP64);
    _b1 = vec4(float(_r0124.x), float(_r0124.y), float(_r0124.z), float(_r0124.w));
    _TMP64 = dot(vec3(float(_C.x), float(_C.y), float(_C.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0134.x = float(_TMP64);
    _TMP64 = dot(vec3(float(_A2.x), float(_A2.y), float(_A2.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0134.y = float(_TMP64);
    _TMP64 = dot(vec3(float(_G.x), float(_G.y), float(_G.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0134.z = float(_TMP64);
    _TMP64 = dot(vec3(float(_I.x), float(_I.y), float(_I.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0134.w = float(_TMP64);
    _c3 = vec4(float(_r0134.x), float(_r0134.y), float(_r0134.z), float(_r0134.w));
    _TMP64 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0144.x = float(_TMP64);
    _TMP64 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0144.y = float(_TMP64);
    _TMP64 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0144.z = float(_TMP64);
    _TMP64 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0144.w = float(_TMP64);
    _e1 = vec4(float(_r0144.x), float(_r0144.y), float(_r0144.z), float(_r0144.w));
    _TMP64 = dot(vec3(float(_I4.x), float(_I4.y), float(_I4.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0154.x = float(_TMP64);
    _TMP64 = dot(vec3(float(_C1.x), float(_C1.y), float(_C1.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0154.y = float(_TMP64);
    _TMP64 = dot(vec3(float(_A0.x), float(_A0.y), float(_A0.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0154.z = float(_TMP64);
    _TMP64 = dot(vec3(float(_G5.x), float(_G5.y), float(_G5.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0154.w = float(_TMP64);
    _i4 = vec4(float(_r0154.x), float(_r0154.y), float(_r0154.z), float(_r0154.w));
    _TMP64 = dot(vec3(float(_I5.x), float(_I5.y), float(_I5.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0164.x = float(_TMP64);
    _TMP64 = dot(vec3(float(_C4.x), float(_C4.y), float(_C4.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0164.y = float(_TMP64);
    _TMP64 = dot(vec3(float(_A11.x), float(_A11.y), float(_A11.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0164.z = float(_TMP64);
    _TMP64 = dot(vec3(float(_G0.x), float(_G0.y), float(_G0.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0164.w = float(_TMP64);
    _i5 = vec4(float(_r0164.x), float(_r0164.y), float(_r0164.z), float(_r0164.w));
    _TMP64 = dot(vec3(float(_H5.x), float(_H5.y), float(_H5.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0174.x = float(_TMP64);
    _TMP64 = dot(vec3(float(_F4.x), float(_F4.y), float(_F4.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0174.y = float(_TMP64);
    _TMP64 = dot(vec3(float(_B11.x), float(_B11.y), float(_B11.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0174.z = float(_TMP64);
    _TMP64 = dot(vec3(float(_D0.x), float(_D0.y), float(_D0.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0174.w = float(_TMP64);
    _h5 = vec4(float(_r0174.x), float(_r0174.y), float(_r0174.z), float(_r0174.w));
    _fx = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x;
    _fx_left = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x;
    _fx_up = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x;
    _a0188 = _b1.wxyz - _b1;
    _TMP185 = abs(_a0188);
    _TMP27 = bvec4(_TMP185.x < 1.50000000E+01, _TMP185.y < 1.50000000E+01, _TMP185.z < 1.50000000E+01, _TMP185.w < 1.50000000E+01);
    _a0194 = _b1.wxyz - _c3;
    _TMP191 = abs(_a0194);
    _TMP28 = bvec4(_TMP191.x < 1.50000000E+01, _TMP191.y < 1.50000000E+01, _TMP191.z < 1.50000000E+01, _TMP191.w < 1.50000000E+01);
    _a0200 = _b1.zwxy - _b1.yzwx;
    _TMP197 = abs(_a0200);
    _TMP29 = bvec4(_TMP197.x < 1.50000000E+01, _TMP197.y < 1.50000000E+01, _TMP197.z < 1.50000000E+01, _TMP197.w < 1.50000000E+01);
    _a0206 = _b1.zwxy - _c3.zwxy;
    _TMP203 = abs(_a0206);
    _TMP30 = bvec4(_TMP203.x < 1.50000000E+01, _TMP203.y < 1.50000000E+01, _TMP203.z < 1.50000000E+01, _TMP203.w < 1.50000000E+01);
    _a0212 = _e1 - _c3.wxyz;
    _TMP209 = abs(_a0212);
    _TMP31 = bvec4(_TMP209.x < 1.50000000E+01, _TMP209.y < 1.50000000E+01, _TMP209.z < 1.50000000E+01, _TMP209.w < 1.50000000E+01);
    _a0218 = _b1.wxyz - _h5.yzwx;
    _TMP215 = abs(_a0218);
    _TMP32 = bvec4(_TMP215.x < 1.50000000E+01, _TMP215.y < 1.50000000E+01, _TMP215.z < 1.50000000E+01, _TMP215.w < 1.50000000E+01);
    _a0224 = _b1.wxyz - _i4;
    _TMP221 = abs(_a0224);
    _TMP33 = bvec4(_TMP221.x < 1.50000000E+01, _TMP221.y < 1.50000000E+01, _TMP221.z < 1.50000000E+01, _TMP221.w < 1.50000000E+01);
    _a0230 = _b1.zwxy - _h5;
    _TMP227 = abs(_a0230);
    _TMP34 = bvec4(_TMP227.x < 1.50000000E+01, _TMP227.y < 1.50000000E+01, _TMP227.z < 1.50000000E+01, _TMP227.w < 1.50000000E+01);
    _a0236 = _b1.zwxy - _i5;
    _TMP233 = abs(_a0236);
    _TMP35 = bvec4(_TMP233.x < 1.50000000E+01, _TMP233.y < 1.50000000E+01, _TMP233.z < 1.50000000E+01, _TMP233.w < 1.50000000E+01);
    _a0242 = _e1 - _c3.zwxy;
    _TMP239 = abs(_a0242);
    _TMP36 = bvec4(_TMP239.x < 1.50000000E+01, _TMP239.y < 1.50000000E+01, _TMP239.z < 1.50000000E+01, _TMP239.w < 1.50000000E+01);
    _a0248 = _e1 - _c3;
    _TMP245 = abs(_a0248);
    _TMP37 = bvec4(_TMP245.x < 1.50000000E+01, _TMP245.y < 1.50000000E+01, _TMP245.z < 1.50000000E+01, _TMP245.w < 1.50000000E+01);
    _interp_restriction_lv1 = bvec4(_e1.x != _b1.w && _e1.x != _b1.z && (!_TMP27.x && !_TMP28.x || !_TMP29.x && !_TMP30.x || _TMP31.x && (!_TMP32.x && !_TMP33.x || !_TMP34.x && !_TMP35.x) || _TMP36.x || _TMP37.x), _e1.y != _b1.x && _e1.y != _b1.w && (!_TMP27.y && !_TMP28.y || !_TMP29.y && !_TMP30.y || _TMP31.y && (!_TMP32.y && !_TMP33.y || !_TMP34.y && !_TMP35.y) || _TMP36.y || _TMP37.y), _e1.z != _b1.y && _e1.z != _b1.x && (!_TMP27.z && !_TMP28.z || !_TMP29.z && !_TMP30.z || _TMP31.z && (!_TMP32.z && !_TMP33.z || !_TMP34.z && !_TMP35.z) || _TMP36.z || _TMP37.z), _e1.w != _b1.z && _e1.w != _b1.y && (!_TMP27.w && !_TMP28.w || !_TMP29.w && !_TMP30.w || _TMP31.w && (!_TMP32.w && !_TMP33.w || !_TMP34.w && !_TMP35.w) || _TMP36.w || _TMP37.w));
    _interp_restriction_lv2_left = bvec4(_e1.x != _c3.z && _b1.y != _c3.z, _e1.y != _c3.w && _b1.z != _c3.w, _e1.z != _c3.x && _b1.w != _c3.x, _e1.w != _c3.y && _b1.x != _c3.y);
    _interp_restriction_lv2_up = bvec4(_e1.x != _c3.x && _b1.x != _c3.x, _e1.y != _c3.y && _b1.y != _c3.y, _e1.z != _c3.z && _b1.z != _c3.z, _e1.w != _c3.w && _b1.w != _c3.w);
    _x0252 = _fx - vec4( 1.00000000E+00, 0.00000000E+00, -1.00000000E+00, 0.00000000E+00);
    _TMP66 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0252);
    _TMP253 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP66);
    _fx45 = _TMP253*_TMP253*(3.00000000E+00 - 2.00000000E+00*_TMP253);
    _x0262 = _fx_left - vec4( 5.00000000E-01, 5.00000000E-01, -1.00000000E+00, -5.00000000E-01);
    _TMP66 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0262);
    _TMP263 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP66);
    _fx30 = _TMP263*_TMP263*(3.00000000E+00 - 2.00000000E+00*_TMP263);
    _x0272 = _fx_up - vec4( 1.50000000E+00, -5.00000000E-01, -1.50000000E+00, 0.00000000E+00);
    _TMP66 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0272);
    _TMP273 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP66);
    _fx60 = _TMP273*_TMP273*(3.00000000E+00 - 2.00000000E+00*_TMP273);
    _a0284 = _e1 - _c3;
    _TMP281 = abs(_a0284);
    _a0288 = _e1 - _c3.zwxy;
    _TMP285 = abs(_a0288);
    _a0292 = _c3.wxyz - _h5;
    _TMP289 = abs(_a0292);
    _a0296 = _c3.wxyz - _h5.yzwx;
    _TMP293 = abs(_a0296);
    _a0300 = _b1.zwxy - _b1.wxyz;
    _TMP297 = abs(_a0300);
    _TMP38 = _TMP281 + _TMP285 + _TMP289 + _TMP293 + 4.00000000E+00*_TMP297;
    _a0306 = _b1.zwxy - _b1.yzwx;
    _TMP303 = abs(_a0306);
    _a0310 = _b1.zwxy - _i5;
    _TMP307 = abs(_a0310);
    _a0314 = _b1.wxyz - _i4;
    _TMP311 = abs(_a0314);
    _a0318 = _b1.wxyz - _b1;
    _TMP315 = abs(_a0318);
    _a0322 = _e1 - _c3.wxyz;
    _TMP319 = abs(_a0322);
    _TMP39 = _TMP303 + _TMP307 + _TMP311 + _TMP315 + 4.00000000E+00*_TMP319;
    _edr = bvec4(_TMP38.x < _TMP39.x && _interp_restriction_lv1.x, _TMP38.y < _TMP39.y && _interp_restriction_lv1.y, _TMP38.z < _TMP39.z && _interp_restriction_lv1.z, _TMP38.w < _TMP39.w && _interp_restriction_lv1.w);
    _a0326 = _b1.wxyz - _c3.zwxy;
    _TMP323 = abs(_a0326);
    _a0330 = _b1.zwxy - _c3;
    _TMP327 = abs(_a0330);
    _edr_left = bvec4((2.00000000E+00*_TMP323).x <= _TMP327.x && _interp_restriction_lv2_left.x, (2.00000000E+00*_TMP323).y <= _TMP327.y && _interp_restriction_lv2_left.y, (2.00000000E+00*_TMP323).z <= _TMP327.z && _interp_restriction_lv2_left.z, (2.00000000E+00*_TMP323).w <= _TMP327.w && _interp_restriction_lv2_left.w);
    _a0334 = _b1.wxyz - _c3.zwxy;
    _TMP331 = abs(_a0334);
    _a0338 = _b1.zwxy - _c3;
    _TMP335 = abs(_a0338);
    _edr_up = bvec4(_TMP331.x >= (2.00000000E+00*_TMP335).x && _interp_restriction_lv2_up.x, _TMP331.y >= (2.00000000E+00*_TMP335).y && _interp_restriction_lv2_up.y, _TMP331.z >= (2.00000000E+00*_TMP335).z && _interp_restriction_lv2_up.z, _TMP331.w >= (2.00000000E+00*_TMP335).w && _interp_restriction_lv2_up.w);
    _nc45 = bvec4(_edr.x && bool(_fx45.x), _edr.y && bool(_fx45.y), _edr.z && bool(_fx45.z), _edr.w && bool(_fx45.w));
    _nc30 = bvec4(_edr.x && _edr_left.x && bool(_fx30.x), _edr.y && _edr_left.y && bool(_fx30.y), _edr.z && _edr_left.z && bool(_fx30.z), _edr.w && _edr_left.w && bool(_fx30.w));
    _nc60 = bvec4(_edr.x && _edr_up.x && bool(_fx60.x), _edr.y && _edr_up.y && bool(_fx60.y), _edr.z && _edr_up.z && bool(_fx60.z), _edr.w && _edr_up.w && bool(_fx60.w));
    _a0342 = _e1 - _b1.wxyz;
    _TMP339 = abs(_a0342);
    _a0346 = _e1 - _b1.zwxy;
    _TMP343 = abs(_a0346);
    _px = bvec4(_TMP339.x <= _TMP343.x, _TMP339.y <= _TMP343.y, _TMP339.z <= _TMP343.z, _TMP339.w <= _TMP343.w);
    _nc = bvec4(_nc30.x || _nc60.x || _nc45.x, _nc30.y || _nc60.y || _nc45.y, _nc30.z || _nc60.z || _nc45.z, _nc30.w || _nc60.w || _nc45.w);
    _final45 = vec4(float(_nc45.x), float(_nc45.y), float(_nc45.z), float(_nc45.w))*_fx45;
    _final30 = vec4(float(_nc30.x), float(_nc30.y), float(_nc30.z), float(_nc30.w))*_fx30;
    _final60 = vec4(float(_nc60.x), float(_nc60.y), float(_nc60.z), float(_nc60.w))*_fx60;
    _TMP46 = max(_final30, _final60);
    _maximo = max(_TMP46, _final45);
    if (_nc.x) { 
        if (_px.x) { 
            _TMP47 = _F;
        } else {
            _TMP47 = _H;
        } 
        _pix1 = _TMP47;
        _blend1 = _maximo.x;
    } else {
        if (_nc.y) { 
            if (_px.y) { 
                _TMP48 = _B2;
            } else {
                _TMP48 = _F;
            } 
            _pix1 = _TMP48;
            _blend1 = _maximo.y;
        } else {
            if (_nc.z) { 
                if (_px.z) { 
                    _TMP49 = _D;
                } else {
                    _TMP49 = _B2;
                } 
                _pix1 = _TMP49;
                _blend1 = _maximo.z;
            } else {
                if (_nc.w) { 
                    if (_px.w) { 
                        _TMP50 = _H;
                    } else {
                        _TMP50 = _D;
                    } 
                    _pix1 = _TMP50;
                    _blend1 = _maximo.w;
                } 
            } 
        } 
    } 
    if (_nc.w) { 
        if (_px.w) { 
            _TMP51 = _H;
        } else {
            _TMP51 = _D;
        } 
        _pix2 = _TMP51;
        _blend2 = _maximo.w;
    } else {
        if (_nc.z) { 
            if (_px.z) { 
                _TMP52 = _D;
            } else {
                _TMP52 = _B2;
            } 
            _pix2 = _TMP52;
            _blend2 = _maximo.z;
        } else {
            if (_nc.y) { 
                if (_px.y) { 
                    _TMP53 = _B2;
                } else {
                    _TMP53 = _F;
                } 
                _pix2 = _TMP53;
                _blend2 = _maximo.y;
            } else {
                if (_nc.x) { 
                    if (_px.x) { 
                        _TMP54 = _F;
                    } else {
                        _TMP54 = _H;
                    } 
                    _pix2 = _TMP54;
                    _blend2 = _maximo.x;
                } 
            } 
        } 
    } 
    _t0352 = float(_blend1);
    _res1 = _E + _t0352*(_pix1 - _E);
    _t0354 = float(_blend2);
    _res2 = _E + _t0354*(_pix2 - _E);
    _a0358 = _E - _res1;
    _TMP65 = abs(vec3(float(_a0358.x), float(_a0358.y), float(_a0358.z)));
    _df0356 = vec3(float(_TMP65.x), float(_TMP65.y), float(_TMP65.z));
    _TMP55 = _df0356.x + _df0356.y + _df0356.z;
    _a0362 = _E - _res2;
    _TMP65 = abs(vec3(float(_a0362.x), float(_a0362.y), float(_a0362.z)));
    _df0360 = vec3(float(_TMP65.x), float(_TMP65.y), float(_TMP65.z));
    _TMP56 = _df0360.x + _df0360.y + _df0360.z;
    _TMP57 = float((_TMP56 >= _TMP55));
    _res = _res1 + _TMP57*(_res2 - _res1);
    _ret_0 = vec4(float(_res.x), float(_res.y), float(_res.z), 1.00000000E+00);
    gl_FragColor = _ret_0;
    return;
} 
#endif
