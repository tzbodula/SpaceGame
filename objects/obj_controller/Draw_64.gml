
/*
 This section is dedicated towards drawing the HUD bars 
 and anchoring towards the bottom of the screen
*/

draw_sprite_ext(spr_healthBar, -1, 100, 700, 0.5, 0.5, 0, c_white, 1)
// Set text color for label
draw_set_colour(c_black);
draw_set_font(brokenconsole);
draw_text(16, 24, "Shields    " + string(global.shields) + "/" + string(global.shieldCapacity));
if(global.shields > (global.shieldCapacity / 2))
{
	draw_set_colour(c_black);
}
else {
	draw_set_colour(c_red);
}

draw_sprite_ext(spr_fuelBar, -1, 400, 700, 0.5, 0.5, 0, c_white, 1)

draw_sprite_ext(spr_powerBar, -1, 700, 700, 0.5, 0.5, 0, c_white, 1)

draw_sprite_ext(spr_shieldBar, -1, 1000, 700, 0.5, 0.5, 0, c_white, 1)

draw_set_color(c_white); //Sets the text color to white, for all the text that we will use
draw_set_font(brokenconsole); //Sets the text font to brokenconsole, which is the one for the game.

/*
 This section is dedicated towards drawing the text
 and anchoring towards the left side of the respective bar.
*/

draw_text_transformed(150, 720, string(global.healthPoints), 1, 1, 0);

draw_text_transformed(450, 720, string(global.fuel), 1, 1, 0);

draw_text_transformed(750, 720, string(global.energy), 1, 1, 0);
draw_text(hbarXEnd/2 + 16, 24, "Fuel    " + string(global.fuel) + "/" + string(global.fuelCapacity));

draw_text_transformed(1050, 720, string(global.shields), 1, 1, 0);

draw_set_colour(c_white);
draw_text_transformed(15, 55, "$" , 1.5, 1.5, 0);
draw_set_colour(c_lime);
draw_text_transformed(35, 55, string(global.cash) , 1.5, 1.5, 0);
draw_set_colour(c_red);
draw_text_transformed(1255, 5, string(global.enemiesRemaning) , 3, 3, 0);
draw_set_colour(make_colour_rgb(255, 184, 51));
draw_text_transformed(15, 5, "WAVE", 2.5, 2.5, 0);
draw_set_colour(c_white);
// Counts literal wave difficulty level, not round that player is currently in
draw_text_transformed(155, 5, string(global.waveStage) , 2.5, 2.5, 0);

// Check selected ammo type
if(obj_playerShip.ammoType == AmmoTypes.SMALL)
{
	// Highlight selected ammo type
	draw_set_colour(c_white);
	draw_text(450, 650, "Small cannon:    " + string(global.smallAmmo) + "/" + string(global.smallAmmoCapacity));
	draw_set_colour(c_orange);
	draw_text(750, 650, "Big cannon:    " + string(global.bigAmmo) + "/" + string(global.bigAmmoCapacity));
}
else {
	// Draw ammo remaining 
	draw_set_colour(c_white);
	draw_text(450, 650, "Small cannon:    " + string(global.smallAmmo) + "/" + string(global.smallAmmoCapacity));
	draw_set_colour(c_orange);
	draw_text(750, 650, "Big cannon:    " + string(global.bigAmmo) + "/" + string(global.bigAmmoCapacity));
}

// Set text color for label

draw_set_colour(c_black);
draw_set_font(brokenconsole);

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
	);
	
// Draw ammo remaining 
draw_set_colour(c_silver);
draw_text(pbarEndX+10, 12, "Small cannon:    " + string(global.smallAmmo) + "/" + string(global.smallAmmoCapacity));
draw_text(pbarEndX+10, 42, "Big cannon:    " + string(global.bigAmmo) + "/" + string(global.bigAmmoCapacity));
