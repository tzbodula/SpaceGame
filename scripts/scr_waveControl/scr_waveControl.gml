/**
===========================

	Wave Control variables

===========================
**/
global.waveNumberInStage = 1;		// What round the player has completed
global.waveStage = 1;				// "Intensity stage" of player 
global.wavesPerStage = 1;			// How many waves of difficulty X will occur per stage? (set to 1 for testing purposes)
global.totalWaves = 3;				// Total number of different waves
global.wave_spawnsRemaining_multiplier = global.waveStage;
global.wave_spawnInterval_multiplier = 1/global.waveStage;
	 
// INITIAL TESTING AS OF 2/21/22
// Enemy 1, 2, 3 will begin with 1 enemy spawned per round --> 2/round --> 3/round
// Enemies all have 1 healthPoint
// Currently, there is one round/wave --> in future, upgrade to ~four rounds/wave

// For implementing waves

function increaseIntensity() {
	// Spawn enemy # ... Increase from 1-->2-->3 for testing putposes
	//obj_enemy1Spawner.spawnsRemaining = global.waveStage;
	//obj_enemy2Spawner.spawnsRemaining = global.waveStage;
	//obj_enemy3Spawner.spawnsRemaining = global.waveStage;
	// Spawn interval
	//obj_enemy1Spawner.spawnInterval = global.waveStage;
	//obj_enemy2Spawner.spawnInterval = global.waveStage;
	//obj_enemy3Spawner.spawnInterval = global.waveStage;
	 global.wave_spawnsRemaining_multiplier = global.waveStage;
	 global.wave_spawnInterval_multiplier = 1/global.waveStage;
	
}


// Determine if wave has ended
function waveStatus() {
	// By dafult, wave is still continuing 
	global.isWaveOver = false;
	
	// Wave has ended when all enemies are eliminated
	if !instance_exists(obj_enemy1) and obj_enemy1Spawner.spawnsRemaining == 0 and 
	   !instance_exists(obj_enemy2) and obj_enemy2Spawner.spawnsRemaining == 0 and
	   !instance_exists(obj_enemy3) and obj_enemy3Spawner.spawnsRemaining == 0 {
		  
		  global.waveNumberInStage++;
		  global.isWaveOver = true;  
	}
	
}

function endWave() {
	// Increase wave counter
	global.waveStage += 1;
	
	// If there are additional waves remaining...
	if (global.waveStage <= global.totalWaves) {
		// Continue game
		room_goto(rm_shipInterior);
	}
	
	// If there are no additional waves remaining...
	else
		// End game
		room_goto(rm_introScreen);
	
}


function beginWave() {
	// Return to playing field
	room_goto(rm_outerSpace);
	// Since spawners are not persistent, create new spawners
	instance_create_layer(350, 150, "Instances", obj_enemy1Spawner);
	instance_create_layer(1500, 700, "Instances", obj_enemy2Spawner);
	instance_create_layer(300, 800, "Instances", obj_enemy3Spawner);
	// When new wave begins, increase difficulty
	increaseIntensity();
	
}