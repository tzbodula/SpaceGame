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

// Determine if wave is over 
waveStatus();

// If all waves within a stage are over 
if (global.waveNumberInStage == global.wavesPerStage) {
	// Reset stage wave number
	global.waveNumberInStage = 1;	
	// Increase wave stage 
	global.waveStage++; 
}

if (global.waveStatus == true) {
	
	
}
// If all spawners are done spawning
// TEMPORARY UNTIL BULLETS ARE FUNCTIONAL
//if (global.enemyDead == 3) {	
//	endWave();
//}