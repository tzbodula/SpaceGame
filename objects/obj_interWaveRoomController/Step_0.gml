/// @description Insert description here
// You can write your code in this editor
if countDown {
	counter += 1
}
// every second inside the ship decrement the timer and healthPoints
if counter % 60 == 0 {
	seconds -= 1
	//made it decrement by 20 for testing purposes
	global.healthPoints -= 20
}

// if healthPoints <= 0 then restart the game
if global.healthPoints <=0 {
	game_restart()
}
// for now, make the player press Z to 
// refill fuel and/or energy
if keyboard_check(ord("Z")) {
	if global.fuel <= 0
	   global.fuel = 500
	if global.energy <= 0
	   global.energy = 500
	room_goto(rm_outerSpace)
}