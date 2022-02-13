// Draw armor bar and label
draw_healthbar(
	hbarXStart,
	hbarYStart,
	hbarXEnd,
	hbarYEnd,
	obj_playerShip.shields,
	c_black,c_blue,c_aqua,0,true,true);
	
draw_set_colour(c_black);
draw_text(16, 32, "Shields    " + string(obj_playerShip.shields) + "/" + string(obj_playerShip.shieldCapacity));

// Draw healthbar and label
draw_healthbar(
	hbarXStart,
	hbarYStart + healthBarHeight + 5,
	hbarXEnd,
	hbarYEnd + healthBarHeight,
	obj_playerShip.health_points,
	c_black,c_red,c_lime,0,true,true);

draw_set_colour(c_black);
draw_text(16, 88, "Health    " + string(obj_playerShip.health_points) + "/" + string(obj_playerShip.healthCapacity));



draw_set_colour(c_white);
draw_text(600, 32, "Points: " + string(obj_playerShip.points));