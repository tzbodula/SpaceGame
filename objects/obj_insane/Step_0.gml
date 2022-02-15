// Implement hard difficulty setting

if (mouse_check_button_pressed(mb_left)) {
	click_x = mouse_x;
	click_y = mouse_y;
	if (position_meeting(click_x, click_y, obj_insane)) {
		global.difficulty = "hard"
		room_goto(rm_shipInterior)
	}
}