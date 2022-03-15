/// @description Insert description here
// You can write your code in this editor
if countDown {
	counter += 1
}
// every second inside the ship decrements
if counter % 60 == 0 {
	seconds -= 1
	    //made it decrement by 20 for testing purposes
	//if there were enemies in the vicinity, decrease health by 5
	if global.enemiesNearPlayer > 0 {
		var damageDiff = global.shields - 2
		if damageDiff < 0 {
			global.shields = 0
			global.healthPoints += damageDiff
		} else {
			global.shields -= 2
		}
	}
}

// if healthPoints <= 0 then restart the game
if global.healthPoints <= 0 {
	global.shipSink = true
	global.insideShip = false
	global.fuel += 100
	global.energy += 100
	room_goto(rm_outerSpace)
}
