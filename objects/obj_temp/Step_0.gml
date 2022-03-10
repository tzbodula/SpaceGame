if (mouse_check_button_pressed(mb_left))			
{			
	xx = mouse_x
	yy = mouse_y
																			
	if (position_meeting(xx, yy, obj_temp)) {		
		audio_stop_sound(snd_introduction)
		global.tutorial = false
		global.tutorial2 = false
		global.gameWon = false
		room_goto(rm_gameOver)
	}
													
}