/// @description Insert description here
// You can write your code in this editor
draw_set_font(brokenconsole);
draw_set_colour(make_colour_rgb(51, 159, 200));

if global.gameWon == true {
	draw_text_transformed(50, 50, "STATS", 2, 2, 0)
	draw_set_colour(c_white);
	draw_text(50, 100, text)
}

else if global.gameWon == false {
	draw_text_transformed(100, 250, "STATS", 2, 2, 0)
	draw_set_colour(c_white);
	draw_text(100, 300, text)
}