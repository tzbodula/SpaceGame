// Determine coordinates of left mouse click

if (mouse_check_button_pressed(mb_left))			
{			
	xx = mouse_x
	yy = mouse_y
																			
	if (position_meeting(xx, yy, obj_skipButton)) {			
		room_goto(rm_shipInterior)
		
	}
													
}