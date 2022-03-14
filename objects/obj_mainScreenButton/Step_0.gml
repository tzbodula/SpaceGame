// Determine coordinates of left mouse click

if (mouse_check_button_pressed(mb_left))			
{			
	xx = mouse_x
	yy = mouse_y
																			
	if (position_meeting(xx, yy, obj_mainScreenButton)) {			
		audio_stop_all()
		scr_resetGame()
		room_goto(rm_titleScreen)
	
	}
													
}