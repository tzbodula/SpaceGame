/// @description Insert description here
// You can write your code in this editor


// Initial condition: if the enemy is spawned outside the room then move towards the middle
if (!inRoom and (x < (sprite_xoffset + 100) or x > (room_width - sprite_xoffset - 100) or y >( room_height - sprite_yoffset - 100) or y < (sprite_yoffset + 100))) {
	move_towards_point(room_width/2, room_height/2, movement_speed)
}
// When they are inside the room, turn the inRoom to true. This causes the above code to never execute again.
// This avoids the enemies stuttering whenever the player is on the direct edge of the screen.
else {
	inRoom = true
	if coinFlip > .5 {
	  if distance_to_object(obj_playerShip) > 300
	      move_towards_point(obj_playerShip.x, obj_playerShip.y, movement_speed)
	  else
	      speed = 0
	} else {
		speed = 0
	}
}
	