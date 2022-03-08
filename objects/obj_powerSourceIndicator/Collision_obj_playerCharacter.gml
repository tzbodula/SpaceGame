/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(ord("Z")) {
	if global.fuel <= 0
	   global.fuel = 1500
	if global.energy <= 0
	   global.energy = 1500
	room_goto(rm_outerSpace)
}