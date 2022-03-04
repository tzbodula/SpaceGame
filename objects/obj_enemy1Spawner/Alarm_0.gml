// While there are enemies yet to be spawned
if spawnsRemaining != 0 {
	// Spawn enemy
	spawnEnemy(enemyType)
	// Decrement number of remaining enemies to be spawned
	spawnsRemaining -= 1;
	alarm[0] = spawnInterval
}


