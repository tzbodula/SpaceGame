if (mouse_check_button_pressed(mb_left)) {
	click_x = mouse_x;
	click_y = mouse_y;
	if (position_meeting(click_x, click_y, obj_recordScore)) {
		room_goto(rm_scoreBoard)
		global.name = get_string_async("Enter name: ", "")
	}
}