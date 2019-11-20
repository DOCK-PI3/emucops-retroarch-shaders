// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)
varying     vec2 VARpix_no;
varying     vec2 VARtex;


struct data {
    vec2 VARtex;
    vec2 VARpix_no;
};

struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
};

vec4 _oPosition1;
data _oData1;
uniform mat4 MVPMatrix;
input_dummy _IN1;
vec4 _r0006;
attribute vec4 VertexCoord;
attribute vec4 TexCoord;

 

         mat4 transpose_(mat4 matrix)
         {
            mat4 ret;
            for (int i = 0; i != 4; i++)
               for (int j = 0; j != 4; j++)
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


    _r0006.x = dot(MVPMatrix_[0], VertexCoord);
    _r0006.y = dot(MVPMatrix_[1], VertexCoord);
    _r0006.z = dot(MVPMatrix_[2], VertexCoord);
    _r0006.w = dot(MVPMatrix_[3], VertexCoord);
    _oPosition1 = _r0006;
    VARtex = TexCoord.xy;
    VARpix_no = TexCoord.xy*TextureSize;
    gl_Position = _r0006;
} 
#elif defined(FRAGMENT)
#ifdef GL_ES
precision mediump float;
#endif
varying     vec2 _pix_no;
varying     vec2 VARtex;


struct data {
    vec2 VARtex;
    vec2 _pix_no;
};

struct input_dummy {
    vec2 _video_size;
    vec2 VARtexture_size;
    vec2 _output_dummy_size;
    float _frame_count;
};

vec4 _ret_0;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
input_dummy _IN1;
data _vertex1;
uniform sampler2D Texture;
vec2 _c0012;
vec2 _c0014;
vec3 _r0020;

 
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

    float _one_x;
    vec3 _signal;
    vec3 _sums1;

    _one_x = 1.00000000E+000/TextureSize.x;
    _c0012 = VARtex + vec2(-8.00000000E+000*_one_x, 0.00000000E+000);
    _TMP1 = texture2D(Texture, _c0012);
    _c0014 = VARtex + vec2(8.00000000E+000*_one_x, 0.00000000E+000);
    _TMP2 = texture2D(Texture, _c0014);
    _sums1 = _TMP1.xyz + _TMP2.xyz;
    _signal = _sums1*vec3( -2.00000009E-003, 4.60000010E-003, 4.60000010E-003);
    _c0012 = VARtex + vec2(-7.00000000E+000*_one_x, 0.00000000E+000);
    _TMP1 = texture2D(Texture, _c0012);
    _c0014 = VARtex + vec2(7.00000000E+000*_one_x, 0.00000000E+000);
    _TMP2 = texture2D(Texture, _c0014);
    _sums1 = _TMP1.xyz + _TMP2.xyz;
    _signal = _signal + _sums1*vec3( -8.99999985E-004, 8.20000004E-003, 8.20000004E-003);
    _c0012 = VARtex + vec2(-6.00000000E+000*_one_x, 0.00000000E+000);
    _TMP1 = texture2D(Texture, _c0012);
    _c0014 = VARtex + vec2(6.00000000E+000*_one_x, 0.00000000E+000);
    _TMP2 = texture2D(Texture, _c0014);
    _sums1 = _TMP1.xyz + _TMP2.xyz;
    _signal = _signal + _sums1*vec3( 3.80000006E-003, 1.82000007E-002, 1.82000007E-002);
    _c0012 = VARtex + vec2(-5.00000000E+000*_one_x, 0.00000000E+000);
    _TMP1 = texture2D(Texture, _c0012);
    _c0014 = VARtex + vec2(5.00000000E+000*_one_x, 0.00000000E+000);
    _TMP2 = texture2D(Texture, _c0014);
    _sums1 = _TMP1.xyz + _TMP2.xyz;
    _signal = _signal + _sums1*vec3( 1.77999996E-002, 3.53000015E-002, 3.53000015E-002);
    _c0012 = VARtex + vec2(-4.00000000E+000*_one_x, 0.00000000E+000);
    _TMP1 = texture2D(Texture, _c0012);
    _c0014 = VARtex + vec2(4.00000000E+000*_one_x, 0.00000000E+000);
    _TMP2 = texture2D(Texture, _c0014);
    _sums1 = _TMP1.xyz + _TMP2.xyz;
    _signal = _signal + _sums1*vec3( 4.45000008E-002, 5.00999987E-002, 5.00999987E-002);
    _c0012 = VARtex + vec2(-3.00000000E+000*_one_x, 0.00000000E+000);
    _TMP1 = texture2D(Texture, _c0012);
    _c0014 = VARtex + vec2(3.00000000E+000*_one_x, 0.00000000E+000);
    _TMP2 = texture2D(Texture, _c0014);
    _sums1 = _TMP1.xyz + _TMP2.xyz;
    _signal = _signal + _sums1*vec3( 8.16999972E-002, 8.32000002E-002, 8.32000002E-002);
    _c0012 = VARtex + vec2(-2.00000000E+000*_one_x, 0.00000000E+000);
    _TMP1 = texture2D(Texture, _c0012);
    _c0014 = VARtex + vec2(2.00000000E+000*_one_x, 0.00000000E+000);
    _TMP2 = texture2D(Texture, _c0014);
    _sums1 = _TMP1.xyz + _TMP2.xyz;
    _signal = _signal + _sums1*vec3( 1.21399999E-001, 1.06200002E-001, 1.06200002E-001);
    _c0012 = VARtex + vec2(-_one_x, 0.00000000E+000);
    _TMP1 = texture2D(Texture, _c0012);
    _c0014 = VARtex + vec2(_one_x, 0.00000000E+000);
    _TMP2 = texture2D(Texture, _c0014);
    _sums1 = _TMP1.xyz + _TMP2.xyz;
    _signal = _signal + _sums1*vec3( 1.51899993E-001, 1.22199997E-001, 1.22199997E-001);
    _TMP3 = texture2D(Texture, VARtex);
    _signal = _signal + _TMP3.xyz*vec3( 1.63399994E-001, 1.28000006E-001, 1.28000006E-001);
    _r0020.x = dot(vec3( 1.00000000E+000, 9.55999970E-001, 6.20999992E-001), _signal);
    _r0020.y = dot(vec3( 1.00000000E+000, -2.72000015E-001, -6.47400022E-001), _signal);
    _r0020.z = dot(vec3( 1.00000000E+000, -1.10599995E+000, 1.70459998E+000), _signal);
    _ret_0 = vec4(_r0020.x, _r0020.y, _r0020.z, 1.00000000E+000);
    gl_FragColor = _ret_0;
    return;
} 
#endif
