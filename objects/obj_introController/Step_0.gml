// Implement difficulty settings based on sprite clicked on intro screen
// If left mouse botton pressed...

if (mouse_check_button_pressed(mb_left)) {
	click_x = mouse_x;
	click_y = mouse_y;

	if (position_meeting(click_x < )) {
		global.difficulty = "easy"
		room_goto(rm_outerSpace)
	}
	if (position_meeting(click_x, click_y, spr_hard)) {
		global.difficulty = "medium"
		room_goto(rm_outerSpace)
	}
	if (position_meeting(click_x, click_y, spr_insane)) {
		global.difficulty = "hard"
		room_goto(rm_outerSpace)
	}
	
}
