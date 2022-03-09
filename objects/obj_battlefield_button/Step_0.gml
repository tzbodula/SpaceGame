if (mouse_check_button_pressed(mb_left))			
{			
	xx = mouse_x
	yy = mouse_y
																			
	if (position_meeting(xx, yy, obj_battlefield_button)) {		
		audio_stop_sound(snd_eeriemusic)
		room_goto(rm_outerSpace)
	}
													
}