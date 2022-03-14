draw_set_font(brokenconsole);
draw_set_colour(c_white);
draw_text_transformed(room_width/5, room_height/5, header, 3, 3, 0)

draw_set_colour(make_colour_rgb(51, 159, 200));
draw_text_transformed(room_width/5, room_height/5 + 80, subheader, 2, 2, 0)

draw_set_alpha(1)
draw_set_colour(c_white);
draw_text_transformed(room_width/5 + 175, room_height/5 + 130, finalMessageDisplayed, 1, 1, 0)