/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_playerShip) {
    move_towards_point(obj_playerShip.x, obj_playerShip.y, movementSpeed * randMultiplier) 
	image_angle = point_direction(x, y, obj_playerShip.x, obj_playerShip.y)

    // If there has been a collision and collisionPresent is false,
	// then go ahead and execute this code
    if instance_place(x, y, obj_playerShip) {
	   damageObj(obj_playerShip, 5)
	   instance_destroy()
    }
}

