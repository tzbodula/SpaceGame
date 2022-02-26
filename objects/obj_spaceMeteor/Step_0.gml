/// @description Insert description here
// You can write your code in this editor
if !collisionPresent and instance_place(x, y, obj_playerShip) {
	    //set collisionPresent to true to avoid activating the collision state
		collisionPresent = true
		//damage the player ship
	    damageObj(obj_playerShip, 50)
		// set an alarm (gives time for the player to reposition and move out of the collision)
	    alarm[0] = 150
}

image_angle += 2