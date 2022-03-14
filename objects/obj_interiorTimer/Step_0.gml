/// @description Insert description here
// You can write your code in this editor
// if theres a countdown then increment ocunter by 1
// (Increment counter every frame)
if countDown {
	counter += 1
}
// every 60 frames (every second) decrement seconds by 1
if counter % 60 == 0 and seconds != 0 {
	seconds -= 1
}

// Check if player is in ship
if global.insideShip 
{
	visible = true;
}
else {
	visible = false;
	room_persistent = false;
}

