/// @description Fire big cannon interval

// Subtract from small ammo remaining
global.bigAmmo--;

// Reset timer
if(global.bigAmmo > 0)
{
	alarm[1] = room_speed * global.bigShotInterval;	
}

