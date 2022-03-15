/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(spr_backPlate, -1, 325, -25, 0.75, 0.5, 0, c_white, 1)

draw_set_font(brokenconsole)

draw_set_color(c_white)
draw_text_transformed(525,50, "GET READY FOR THE NEXT WAVE", 1.5, 1.5, 0)

draw_set_colour(make_colour_rgb(62, 152, 247));
draw_text_transformed(600, 100, string(seconds) +  " Seconds", 2, 2, 0)