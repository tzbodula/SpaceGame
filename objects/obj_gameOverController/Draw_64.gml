draw_set_font(brokenconsole);
draw_set_colour(c_white);
draw_set_alpha(1)
draw_text_transformed(100, 100, finalMessageDisplayed, 2, 2, 0)

if global.gameWon == true
	draw_text(1000, 600, "Press X to continue...")