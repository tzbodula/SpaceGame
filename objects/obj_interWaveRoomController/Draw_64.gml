/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_backPlate, -1, 325, -25, 0.75, 0.5, 0, c_white, 1)

draw_set_color(c_white)
draw_text_transformed(505, 50, "REFUEL THE SHIP USING THE POWER TUBE ABOVE!", 1, 1, 0)

draw_set_colour(make_colour_rgb(62, 152, 247));
draw_text_transformed(505, 80, string(seconds) +  " SECONDS LEFT ALIVE", 2, 2, 0)
// decrement the health as time goes on

draw_set_color(c_white)
draw_text_transformed(
	520, 
	135, 
	"Health    " + string(global.healthPoints) + "/" + string(global.healthCapacity),
	1,
	1,
	0
);

draw_text_transformed(
	720, 
	135, 
	"Shields    " + string(global.shields) + "/" + string(global.shieldCapacity),
	1,
	1,
	0
);