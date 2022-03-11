
/*
 This section is dedicated towards drawing the HUD bars 
 and anchoring towards the bottom of the screen
*/
if !global.insideShip{
    draw_sprite_ext(spr_healthBar, -1, 100, 700, 0.5, 0.5, 0, c_white, 1)

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

    draw_text_transformed(1050, 720, string(global.shields), 1, 1, 0);

    draw_set_colour(c_white);
    draw_text_transformed(15, 55, "$" , 1.5, 1.5, 0);
    draw_set_colour(c_lime);
    draw_text_transformed(35, 55, string(global.cash) , 1.5, 1.5, 0);
    draw_set_colour(c_red);
    draw_text_transformed(1255, 5, string(instance_number(obj_enemy1)) , 3, 3, 0);
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
	
	draw_set_colour(make_colour_rgb(255, 184, 51));
    draw_text(100, 650, "Energy Consumption Score: " + string(floor(global.energyConsumptionScore)));
	
	if global.isWaveOver == true and !global.insideShip {
		draw_text(room_width/2, room_height/2, "Press X to proceed to next wave")
	}
}


