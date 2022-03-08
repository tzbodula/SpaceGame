if (mouse_check_button_pressed(mb_left))			
{			
	xx = mouse_x
	yy = mouse_y
																			
	if (position_meeting(xx, yy, obj_startButton)) {		
		audio_stop_sound(snd_introduction)
		room_goto(rm_introScene)
	}
													
}