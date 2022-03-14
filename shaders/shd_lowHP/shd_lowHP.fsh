//
// Simple passthrough fragment shader

// Had to watch a youtube video on how to 
// boost the red color and make it oscalate back and forth to 
// signal a "you're low on HP effect."
// referenced video: https://www.youtube.com/watch?v=V2mt_Oxj87c&ab_channel=GameMakerCasts
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
// parameter that we will pass in
uniform float gameTime;
void main()
{
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	// Take the red color to be always 3.
	// Let the gameTime represent the actual game time.
	// since the game time only increases and the sin function oscatlates back and
	// forth, it will constantly shade the ship from a dark to light red every
	// so often.
	gl_FragColor.r *= 3.0 + sin(gameTime) * 2.0;
}
