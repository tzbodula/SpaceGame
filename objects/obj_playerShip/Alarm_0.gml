/*
*
* This alarm is triggered every time the player's ship energy should
* be automatically decremented
*
*/

energy -= 1;

// Restart alarm
if(energy > 0)
{
	alarm[0] = room_speed*energyUseInterval;
}