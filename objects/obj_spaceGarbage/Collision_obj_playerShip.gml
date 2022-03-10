/// @description Insert description here
// You can write your code in this editor

if !global.tutorial {
    // add 200 points to the fuel
    var value = global.fuel + 200
    // if the fuel capcaity is exceeded then bring it back to normal levels
    if value > global.fuelCapacity
        global.fuel = global.fuelCapacity
    else
        global.fuel += 200
		
	// add 30 points to the ammo
    value = global.smallAmmo + 15
    // if the fuel capcaity is exceeded then bring it back to normal levels
    if value > global.smallAmmoCapacity
        global.smallAmmo = global.smallAmmoCapacity
    else
        global.smallAmmo += 15
} else {
	global.fuel += 20000
	global.energy += 20000
}
instance_destroy()