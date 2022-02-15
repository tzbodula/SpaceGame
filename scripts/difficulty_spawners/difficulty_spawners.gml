// Script for implementing difficulty levels for enemy spawners

function difficulty_spawners(){
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