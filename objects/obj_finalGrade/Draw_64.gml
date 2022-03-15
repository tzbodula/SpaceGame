draw_set_font(brokenconsole);
draw_set_colour(make_colour_rgb(51, 159, 200));

if global.gameWon == true {
	draw_text_transformed(1100, 50, text2, 2, 2, 0)
	draw_set_colour(c_white);
	//draw_text(50, 100, text)
	draw_set_colour(global.color);
	draw_text_transformed(1175, 90, text3, 7, 7, 0)
}

else if global.gameWon == false {
	draw_text_transformed(100, 250, text2, 2, 2, 0)
	draw_set_colour(c_white);
	//draw_text(100, 550, text)
}