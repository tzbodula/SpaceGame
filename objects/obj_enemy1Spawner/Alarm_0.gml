// If there is at least 1 spawn remaining
if spawnsRemaining != 0 {
	// Spawn enemy
	spawnEnemy(enemyType)
	// Decrement number of remaining enemies to be spawned
	spawnsRemaining -= 1;
	alarm[0] = spawnInterval
}


