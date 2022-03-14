if (mouse_check_button_pressed(mb_left))			
{			
	xx = mouse_x
	yy = mouse_y
																			
	if (position_meeting(xx, yy, obj_titleScreen_button)) {
		game_restart()
		//audio_stop_all()
		//room_goto(rm_titleScreen)
	}
													
}