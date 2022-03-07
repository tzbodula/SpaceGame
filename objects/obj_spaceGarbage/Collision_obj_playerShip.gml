/// @description Insert description here
// You can write your code in this editor
// add 15 points to the fuel
var value = global.fuel + 30
// if the fuel capcaity is exceeded then bring it back to normal levels
if value > global.fuelCapacity
    global.fuel = global.fuelCapacity
else
    global.fuel += 15
instance_destroy()