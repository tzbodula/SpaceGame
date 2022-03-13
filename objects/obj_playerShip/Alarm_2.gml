/// @description Fire big cannon interval

// Reset timer
if(global.bigAmmo >= 0)
{
	// Update state variable
	canShootBig = true;
	alarm[2] = room_speed * global.bigShotInterval;	
}