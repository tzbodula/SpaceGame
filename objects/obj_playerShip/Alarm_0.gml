/*
*
* This alarm is triggered every time the player's ship energy should
* be automatically decremented
*
*/

global.energy -= 1;

// Restart alarm
if(global.energy > 0)
{
	alarm[0] = room_speed*global.energyUseInterval;
}