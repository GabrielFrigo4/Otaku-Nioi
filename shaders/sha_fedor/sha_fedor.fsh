//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float Time;
uniform vec2 Texel;

const float Xspeed = 0.005;
const float Xfreq = 10.0;
const float Xsize = 2.0;

void main()
{
	float Xwave = sin(Time*Xspeed + v_vTexcoord.y*Xfreq) * (Xsize*Texel.x);
	
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord + vec2(Xwave,0.0));
	gl_FragColor.g += 0.2;
	gl_FragColor.r -= 0.1;
	gl_FragColor.b -= 0.1;
}
