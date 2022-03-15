/// @description Insert description here
// You can write your code in this editor
if !collisionPresent and instance_place(x, y, obj_playerShip) {
	    audio_play_sound(snd_playerdamaged, 1, false)
	    //set collisionPresent to true to avoid activating the collision state
		collisionPresent = true
		//damage the player ship
	    damageObj(obj_playerShip, 40)
		// set an alarm (gives time for the player to reposition and move out of the collision)
	    alarm[0] = 150
}

image_angle += rotationSpeed

// Make sure to reset the image angle to 0 after a full rotation
// in order to avoid hitting max real number capactiy
if image_angle >= 360 or image_angle <= -360
    image_angle = 0