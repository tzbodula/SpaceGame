text = ""
finalMessageDisplayed = ""
textLength = -1
index = 0


if global.gameWon == true {
	textSpeed = room_speed / 25
	finalMessage = "Thank you, space defender. \nWithout you, we surely would have perished."
	layer_background_create("Instances", spr_greenTerminal)
	audio_play_sound(snd_typing, 1, true)
	instance_deactivate_object(obj_playerStats)
}

else if global.gameWon == false {
	textSpeed = room_speed / 15
	finalMessage = "YOU LOSE.\nHumanity has perished."
	layer_background_create("Instances", spr_redTerminal)
	audio_play_sound(snd_typing, 1, true)

}


pause = textSpeed


