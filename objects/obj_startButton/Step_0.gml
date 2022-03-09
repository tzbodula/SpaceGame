if (mouse_check_button_pressed(mb_left))			
{			
	xx = mouse_x
	yy = mouse_y
																			
	if (position_meeting(xx, yy, obj_startButton)) {		
		audio_stop_sound(snd_introduction)
		room_goto(rm_shipInterior)
		global.tutorial = false
		global.tutorial2 = false
		instance_create_layer(room_width/2, room_height/2, "Instances", obj_playerStats)
	}
													
}