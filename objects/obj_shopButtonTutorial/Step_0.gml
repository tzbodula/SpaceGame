if (mouse_check_button_pressed(mb_left))			
{			
	xx = mouse_x
	yy = mouse_y
																			
	if (position_meeting(xx, yy, obj_shopButtonTutorial)) {		
		room_persistent = true
		room_goto(rm_shop_Tutorial)
	}
													
}


