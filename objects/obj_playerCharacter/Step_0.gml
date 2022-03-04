// Keep user within screen bounds
y = clamp(y, 390, 745);
x = clamp(x, 0, 1365);

// check to see if object is on ladder
if instance_place(x, y, obj_ladder) or (x > 224 and x < 320) {
	if playerControls.up() or playerControls.down() {
		climbing = true		
	}
}

if climbing {
	sprite_index = spr_playerCharacter_side;	
	// 	Upward movement
	if (playerControls.up())
		y -= climb_speed;
	
	if (playerControls.down() and (x > 224 and x < 320)) 
		y += climb_speed;
		
	if (y = 390 or y = 745)
			climbing = false
	
}

else {
	
	// 	Leftward movement
	if (playerControls.left())  {
		x -= move_speed;
		sprite_index = spr_playerCharacter_walk1;
		image_xscale = -1
	}
	
	// 	Rightward movement
	if (playerControls.right()) {
		x += move_speed;
		sprite_index = spr_playerCharacter_walk1;
		image_xscale = 1
	}


}
//
//if walking {
//	alarm[0] = 20
//	alarm[1] = 20
//}