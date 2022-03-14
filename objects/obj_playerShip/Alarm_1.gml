/// @description Fire small cannon interval

// Reset timer
if(global.smallAmmo >= 0)
{
	canShootSmall = true;
	alarm[1] = room_speed * global.smallShotInterval;	
}