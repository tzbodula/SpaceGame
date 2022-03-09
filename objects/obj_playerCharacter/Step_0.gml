// Player movement struct
playerMovement = {
	right : keyboard_check(ord("D")),
	left : keyboard_check(ord("A"))
}


// Room borders
x = clamp(x, 0, room_width)
y = clamp(y, obj_marker.bbox_top, 670)


// Climbing mechanics
if instance_place(x, y, obj_ladder) {
		if keyboard_check(keys.up) or keyboard_check(keys.down) {
			climbing = true
			walking = false
			if instance_place(x, y+climb_speed, obj_floorBorder) or instance_place(x, y, obj_floorBorderUpper)
				walking = true
			sprite_index = spr_playerCharacter_side
	}
}


// If on top of ladder
else if instance_place(x, y, obj_marker) {
	climbing = true
	walking = true
}


// Default case
else {
	walking = true
	climbing = false
}


// Climbing mechanics
if climbing {
		if keyboard_check(keys.up)
			y -= climb_speed
		if keyboard_check(keys.down)
			y += climb_speed
		//if instance_place(x, y+move_speed, obj_block)
		//	climbing = false
}


if walking {
	// If no keys pressed, set sprite
	if keyboard_check_released(keys.l) or keyboard_check_released(keys.r)
		sprite_index = spr_playerCharacter_side

	// Move left
	if playerMovement.left and instance_place(x, y, obj_floor){
		sprite_index = spr_playerCharacter_walk
		//alarm[0] = 20 // 1/3 of a second
		x += -move_speed
		image_xscale = -1
	}

	// Move right
	if playerMovement.right and instance_place(x, y, obj_floor) {
		sprite_index = spr_playerCharacter_walk
		//alarm[0] = 20 // 1/3 of a second
		x += move_speed
		image_xscale = 1
		

	}
}