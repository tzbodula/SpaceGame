/// @description Insert description here
// You can write your code in this editor

audio_play_sound(snd_garbageCollection, 1, false);

if !global.tutorial {
	global.energyConsumptionScore -= 10;
	global.cash += 3;
    // add 200 points to the fuel
    var value = global.fuel + 200
    // if the fuel capcaity is exceeded then bring it back to normal levels
    if value > global.fuelCapacity
        global.fuel = global.fuelCapacity
    else
        global.fuel += 200
		
	// add 15 points to the ammo
    var value_ammo = global.smallAmmo + 15
    // if the fuel capcaity is exceeded then bring it back to normal levels
    if value_ammo > global.smallAmmoCapacity
        global.smallAmmo = global.smallAmmoCapacity
    else
        global.smallAmmo += 15
} else {
	global.fuel += 20000
	global.energy += 20000
}
global.spaceGarbageCollected++
instance_destroy()