
// Draw shield bar and label
draw_healthbar(
	hbarXStart,
	hbarYStart,
	hbarXEnd,
	hbarYEnd,
	global.shields,
	c_black,c_aqua,c_blue,0,true,true);

// Set text color for label
if(global.shields > (global.shieldCapacity / 2))
{
	draw_set_colour(c_black);
}
else {
	draw_set_colour(c_red);
}


draw_text(16, 24, "Shields    " + string(global.shields) + "/" + string(global.shieldCapacity));


// Draw fuel bar and label
draw_healthbar(
	(hbarXEnd/2)+1,
	hbarYStart,
	hbarXEnd,
	hbarYEnd,
	global.fuel,
	c_black,c_maroon,c_orange,0,true,true);

// Set text color for label
if(global.fuel > (global.fuelCapacity / 2))
{
	draw_set_colour(c_black);
}
else {
	draw_set_colour(c_red);
}



draw_text(hbarXEnd/2 + 16, 24, "Fuel    " + string(global.fuel) + "/" + string(global.fuelCapacity));

// Draw healthbar and label
draw_healthbar(
	hbarXStart,
	hbarYStart + healthBarHeight + 5,
	hbarXEnd,
	hbarYEnd + healthBarHeight,
	global.healthPoints,
	c_black,c_red,c_lime,0,true,true);

// Set text color for label
if(global.healthPoints > (global.healthCapacity / 2))
{
	draw_set_colour(c_black);
}
else {
	draw_set_colour(c_red);
}
draw_text(
	16, 
	82, 
	"Health    " + string(global.healthPoints) + "/" + string(global.healthCapacity)
	);


// Draw energy bar and label
draw_healthbar(
	pbarStartX,
	hbarYStart,
	pbarEndX,
	hbarYStart + healthBarHeight,
	global.energy,
	c_black,c_yellow,c_yellow,0,true,true);


// Set text color for label
if(global.energy > (global.energyCapacity / 2))
{
	draw_set_colour(c_black);
}
else {
	draw_set_colour(c_red);
}


draw_text(
	pbarStartX+10, 
	26, 
	"Energy    " + string(global.energy) + "/" + string(global.energyCapacity)
	);


// Draw player's points(score)
draw_set_colour(c_red);
draw_text(
	pbarStartX+10, 
	82,
	"Points:    " + string(global.points)
	);
	
draw_set_colour(c_red);
draw_text(
	pbarStartX+10, 
	100,
	"Enemies in the area:    " + string(instance_number(obj_enemy1))
	)
