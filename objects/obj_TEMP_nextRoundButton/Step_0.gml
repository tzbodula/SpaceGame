if (mouse_check_button_pressed(mb_left))			// if user clicks left mouse button...
{			
	xx = mouse_x
	yy = mouse_y
																			
	if (position_meeting(xx, yy, self))	{
		audio_stop_all();
		beginWave(); 
		}
}
