/// @description Draw player's cash balance

// Set font and font color
draw_set_color(c_green); 
draw_set_font(brokenconsole);

// Draw cash
draw_text_transformed(90, 130, "Cash: $" + string(global.cash), 2, 2, 0);