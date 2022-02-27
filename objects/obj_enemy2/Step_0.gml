/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_playerShip) {
	image_angle = point_direction(x, y, obj_playerShip.x, obj_playerShip.y)
     // If there has been a collision and collisionPresent is false,
	// then go ahead and execute this code
    if !collisionPresent and instance_place(x, y, obj_playerShip) {
		audio_play_sound(snd_playerdamaged, 1, false)
	    sprite_index = spriteCollision
		//set collisionPresent to true to avoid activating the collision state
		collisionPresent = true
		//damage the player ship
	    damageObj(obj_playerShip, collisionDamage)
		//take the health points and damage themself
	    healthPoints -= collisionDamage
		// if healthPoints <= 0 then destroy it
	    if healthPoints <= 0
	        instance_destroy()
		// set an alarm (gives time for the player to reposition and move out of the collision)
	    alarm[1] = 150
    }
}

// Initial condition: if the enemy is spawned outside the room then move towards the middle
if (!inRoom and (x < (sprite_xoffset + 100) or x > (room_width - sprite_xoffset - 100) or y >( room_height - sprite_yoffset - 100) or y < (sprite_yoffset + 100))) {
	move_towards_point(room_width/2, room_height/2, movementSpeed)
	//canShoot = false
}
// When they are inside the room, turn the inRoom to true. This causes the above code to never execute again.
// This avoids the enemies stuttering whenever the player is on the direct edge of the screen.
else {
	//when they make it into the room set inRoom true
	inRoom = true
	//if for some reason they go outside the room then do inRoom is false
	if x < 0 or x > room_width or y < 0 or y > room_height {
	    inRoom = false
	}
	//as long as the player ship exists
	if instance_exists(obj_playerShip) {
		//if the coinflip is greater than .5
	    if coinFlip > .5 {
		  // if enemy is greater than 300 units
	      if distance_to_object(obj_playerShip) > 300
		      //move towards player
	          move_towards_point(obj_playerShip.x, obj_playerShip.y, movementSpeed)
	      //otherwise dont
		  else
	          speed = 0
	    //if coinflip is less than .5 then don't move.
	    } else {
		    speed = 0
	    }
	//if the player ship doesn't exist then don't move	
    } else {
		speed = 0
	}
	
	
	if canShoot and instance_exists(obj_playerShip) and inRoom {
	canShoot = false
	instance_create_layer(x, y, "Instances", obj_enemyLaser)
	alarm[2] = laserInterval
    }
}


	