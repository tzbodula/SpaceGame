//
// Simple passthrough fragment shader
// Had to watch a youtube video on how to 
// boost the red color and make it oscalate back and forth to 
// signal a "you're low on HP effect."
// referenced video: https://www.youtube.com/watch?v=V2mt_Oxj87c&ab_channel=GameMakerCasts
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float gameTime;
void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor.r *= 3.0 + sin(gameTime) * 2.0;
}
