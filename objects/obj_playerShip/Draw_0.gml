/// @description Insert description here
// You can write your code in this editors
if global.healthPoints < 50 {
	shader_set(shd_lowHP);
	var timeElapsed = shader_get_uniform(shd_lowHP, "gameTime");
    shader_set_uniform_f(timeElapsed, counter);
} else {
	shader_set(shd_normalHP);
}

draw_self();
shader_reset();