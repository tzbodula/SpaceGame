// When game conclueds, user will have option to record their score
// The following code is the async call for getting name and triggering obj_generateScores

/*
if (mouse_check_button_pressed(mb_left)) {
	click_x = mouse_x;
	click_y = mouse_y;
	if (position_meeting(click_x, click_y, obj_recordScore)) {
		room_goto(rm_scoreBoard)
		global.name = get_string_async("Enter name: ", "")
	}
}
*/

// Each step, check if the wave has concluded 
waveStatus();

/*
// If all waves within a stage are over 
if (global.waveNumberInStage == global.wavesPerStage) {
	// Reset stage wave number
	global.waveNumberInStage = 1;	
	// Increase wave stage 
	global.waveStage++; 
}*/

if (global.isWaveOver == true) {
	//make the room not persistent in order to reset variables back to 
	//normal.
	room_persistent = false
	audio_stop_all()
	endWave()
}

if (global.fuel <= 0 or global.energy <= 0) {
	// if we run out of fuel or energy force the player to re-fill
	//by switching rooms.
	room_goto(rm_shipInteriorDuringWave)
}

// Check for cheat code entry
checkForCheatCode();