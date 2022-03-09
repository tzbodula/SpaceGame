// Key shortcuts for organization of player movement
keys = {
	r : ord("D"),
	l : ord("A"),
	up : ord("W"),
	down : ord("S")
}

spr = object_get_sprite(obj_playerCharacter)
pc_height = sprite_height(spr)