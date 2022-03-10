text = ""


if global.gameWon = true {
	layer_background_create("Instances", spr_greenTerminal)
	timeline_index = tl_win
}

else if global.gameWon = false {
	layer_background_create("Instances", spr_redTerminal)
	timeline_index = tl_lose
}




//reduce the timeline speed to match in real life time
timeline_speed = 1/(room_speed-30)
timeline_running = true