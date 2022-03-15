// Determine if wave has ended
function waveStatus() {
	
	if global.playerDead == false and global.gameStart == true {
		// Wave has ended when all enemies are spawned and eliminated
		if !instance_exists(obj_enemy1) and obj_enemy1Spawner.spawnsRemaining == 0 and 
		   !instance_exists(obj_enemy2) and obj_enemy2Spawner.spawnsRemaining == 0 and
		   !instance_exists(obj_enemy3) and obj_enemy3Spawner.spawnsRemaining == 0 and
		   global.isWaveOver == false {
		  
			  global.isWaveOver = true;  
	   }
	}
	
}

function endWave() {

	// If there are additional waves remaining...
	if (global.wave < global.totalWaves) {
		audio_play_sound(snd_inBetweenWaves, 1, true)
		// Continue game
		room_goto(rm_shipInterior);
		global.wave++;
	}
	
	// If there are no additional waves remaining...
	else if (global.wave == global.totalWaves) {
		// Player has survived to winning state 
		global.gameWon = true
		room_goto(rm_gameOver);
	}
}

