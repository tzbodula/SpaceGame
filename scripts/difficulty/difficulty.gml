// Script for implementing difficulty levels for enemy objects

function difficulty(){
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