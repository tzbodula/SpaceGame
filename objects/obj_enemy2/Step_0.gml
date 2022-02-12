/// @description Insert description here
// You can write your code in this editor
if (x < 0 or x > room_width or y > room_height or y < 0) {
	move_towards_point(room_width/2, room_height/2, movement_speed)
} else {
	if distance_to_object(obj_playerShip) > 300
	    move_towards_point(obj_playerShip.x, obj_playerShip.y, movement_speed)
	else {
		speed = 0
	}
}