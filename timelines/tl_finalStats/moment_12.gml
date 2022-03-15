with(obj_playerStats) {
	//instance_destroy(obj_endingController)
	//global.displayScore = true
	//instance_create_layer(room_width/2, room_height/2, "Instances", obj_endingController)
	
	draw_set_font(brokenconsole);
	draw_set_colour(c_white);
	draw_text_transformed(room_width/2, room_height/2, "FINAL SCORE", 2, 2, 0)
	
	audio_play_sound(snd_playershoot, 1, false)
}