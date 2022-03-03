/// @description Insert description here
// You can write your code in this editor
if keyboard_check(ord("Z")) {
	if global.fuel <= 0
	   global.fuel = 500
	if global.energy <= 0
	   global.energy = 500
	room_goto(rm_outerSpace)
}