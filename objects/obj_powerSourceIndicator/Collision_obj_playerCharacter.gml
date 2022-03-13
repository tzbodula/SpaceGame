/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(ord("Z")) {
	if global.fuel <= 0
	   global.fuel = floor(global.fuelCapacity/2)
	if global.energy <= 0
	   global.energy = floor(global.energyCapacity/2)
	global.insideShip = false
	room_goto(rm_outerSpace)
}