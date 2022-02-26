// Determine coordinates of user click (for choosing difficulty level)

if (mouse_check_button_pressed(mb_left))			// if user clicks left mouse button...
{			
	xx = mouse_x
	yy = mouse_y
																			
	if (position_meeting(xx, yy, obj_easy))			// easy
		global.difficulty = "easy"
	if (position_meeting(xx, yy, obj_hard))			// hard
		global.difficulty = "hard"
	if (position_meeting(xx, yy, obj_insane))		// insane
		global.difficulty = "insane"
	
	if global.difficulty != "null" {
		audio_stop_sound(snd_introduction)
		room_goto(rm_introScene)
	}
													
}
