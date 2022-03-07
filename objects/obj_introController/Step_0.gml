
// Walk left
if keyboard_check(ord("A")) and instance_place(x, y, obj_floor){
	sprite_index = spr_playerCharacter_walk
	//alarm[0] = 20 // 1/3 of a second
	x += -move_speed
	image_xscale = -1
}

// Walk right
if keyboard_check(ord("D")) and instance_place(x, y, obj_floor) {
	sprite_index = spr_playerCharacter_walk
	//alarm[0] = 20 // 1/3 of a second
	x += move_speed
	image_xscale = 1
}