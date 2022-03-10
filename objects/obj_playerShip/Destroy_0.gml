global.healthPoints = global.healthCapacity
global.shields = global.shieldCapacity
global.fuel = global.fuelCapacity
global.energy = global.energyCapacity
global.smallAmmo = global.smallAmmoCapacity
global.bigAmmo = global.bigAmmoCapacity
//make sure the room is not persistent so we properly restart
room_persistent = false
//stop the music in order to avoid ear drum destruction
audio_stop_all()
room_restart()