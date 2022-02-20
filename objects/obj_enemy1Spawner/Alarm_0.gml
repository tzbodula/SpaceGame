/// @description Insert description here
// You can write your code in this editor
spawnEnemy(enemyType)
spawnsRemaining -= 1;

if (spawnsRemaining == 0) {
	global.enemyDead += 1;	// likely will end up deleting this
	// Stop spawner from spawning additional enemies
	instance_deactivate_object(self)
	endWave();
	//room_restart();
	//increaseIntensity();
}

alarm[0] = spawnInterval