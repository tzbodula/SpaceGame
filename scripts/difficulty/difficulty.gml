// Script for implementing difficulty levels for enemy objects

function difficulty(){
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