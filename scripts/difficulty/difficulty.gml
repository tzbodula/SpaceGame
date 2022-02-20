// Script for implementing difficulty levels for various objects

// Player difficulty stats adjustment
function player_difficulty(){
	switch(global.difficulty) {
		case "easy":
			movementSpeed *= 0.5
			healthPoints *= 0.5
			break
		case "medium":
			movementSpeed *= 1
			healthPoints *= 1
			break
		case "hard":
			movementSpeed *= 1.5
			healthPoints *= 1.5
			break
	}
}

// Enemy spawner difficulty stats adjustment 
function spawner_difficulty() {
	switch(global.difficulty) {
		case "easy":
			spawnInterval *= 0.5
			break
		case "medium":
			spawnInterval *= 1
			break
		case "hard":
			spawnInterval *= 1.5
			break
	}
	
}