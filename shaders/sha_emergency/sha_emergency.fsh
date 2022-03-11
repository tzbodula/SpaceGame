//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;

void main()
{
    vec4 texColor = texture2D(gm_BaseTexture, v_vTexcoord);
	gl_FragColor = vec4(1.0, 0.0, 0.0, 0.5);
}
