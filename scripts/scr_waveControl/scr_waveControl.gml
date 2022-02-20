// For implementing waves

function increaseIntensity() {
	// Spawn enemy # 
	spawnsRemaining *= 2;
	// Spawn interval
	spawnInterval /= 2;
	
}


// Determine if wave has ended
function waveStatus() {
	// By dafult, wave is still continuing 
	global.isWaveOver = false;
	
	// Wave has ended when all enemies are eliminated
	if !instance_exists(obj_enemy1) and obj_enemy1Spawner.spawnsRemaining == 0 and 
	   !instance_exists(obj_enemy2) and obj_enemy2Spawner.spawnsRemaining == 0 and
	   !instance_exists(obj_enemy3) and obj_enemy3Spawner.spawnsRemaining == 0 {
		  
		  global.isWaveOver = true;  
		  global.waveNumber++;
		  scr_endWave();
	}
	
}

function endWave() {
	room_goto(rm_shipInterior);
	
}