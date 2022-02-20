/// @description Fire small cannon interval

// Subtract from small ammo remaining
global.smallAmmo--;

// Reset timer
if(global.smallAmmo > 0)
{
	canShootSmall = true;
	alarm[1] = room_speed * global.smallShotInterval;	
}
