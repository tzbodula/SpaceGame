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
	if global.enemiesNearPlayer > 0
	    damageObj(obj_playerShip, 5)
}

// if healthPoints <= 0 then restart the game
if global.healthPoints <=0 {
	global.shipSink = true
    room_goto(rm_outerSpace)
}
