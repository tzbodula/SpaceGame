/// @description Insert description here
// You can write your code in this editor
if countDown {
	counter += 1
}
if counter % 60 == 0 {
	seconds -= 1
	global.healthPoints -= 2
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