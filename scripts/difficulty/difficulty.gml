// Script for implementing difficulty levels for various objects

// Player difficulty stats adjustment
function player_difficulty(){
	switch(global.difficulty) {
		case "easy":
			movement_speed *= 0.5
			health_points *= 0.5
			break
		case "medium":
			movement_speed *= 1
			health_points *= 1
			break
		case "hard":
			movement_speed *= 1.5
			health_points *= 1.5
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