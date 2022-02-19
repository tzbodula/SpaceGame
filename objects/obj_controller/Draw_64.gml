// Draw shield bar and label

draw_healthbar(
	hbarXStart,
	hbarYStart,
	hbarXEnd,
	hbarYEnd,
	obj_playerShip.shields,
	c_black,c_aqua,c_blue,0,true,true);

// Set text color for label
draw_set_colour(c_black);
draw_text(16, 24, "Shields    " + string(obj_playerShip.shields) + "/" + string(global.shieldCapacity));

// Draw healthbar and label
draw_healthbar(
	hbarXStart,
	hbarYStart + healthBarHeight + 5,
	hbarXEnd,
	hbarYEnd + healthBarHeight,
	obj_playerShip.healthPoints,
	c_black,c_red,c_lime,0,true,true);

// Set text color for label
draw_set_colour(c_black);
draw_text(
	16, 
	82, 
	"Health    " + string(obj_playerShip.healthPoints) + "/" + string(global.healthCapacity)
	);

// Draw energy bar and label
draw_healthbar(
	pbarStartX,
	hbarYStart,
	pbarEndX,
	hbarYStart + healthBarHeight,
	obj_playerShip.healthPoints,
	c_black,c_orange,c_yellow,0,true,true);

draw_set_colour(c_black);
draw_text(
	pbarStartX+10, 
	26, 
	"Energy    " + string(obj_playerShip.energy) + "/" + string(global.energyCapacity)
	);


// Draw player's points(score)
draw_set_colour(c_red);
draw_text(
	pbarStartX+10, 
	82,
	"Points:    " + string(obj_playerShip.points)
	);