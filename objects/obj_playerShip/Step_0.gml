/**
*
*
* This script is run once per frame
*
*/

//	Check to ensure player doesn't go out of bounds. Also check numerical bounds like vspeed and hspeed
function checkBounds()
{
	// Check physical bounds (i.e. keep player in the game window / viewport)
	x = clamp(x, sprite_xoffset * 1.5, room_width - sprite_xoffset*1.5);
	y = clamp(y, sprite_yoffset * 3.2, room_height - sprite_yoffset*1.5);
	
	// Check numerical bounds 
	vspeed = clamp(vspeed, -global.maxVsp, global.maxVsp);
	hspeed = clamp(hspeed, -global.maxHsp, global.maxHsp);
	global.energy = clamp(global.energy, 0, global.energyCapacity);
}

// Check for and handle input from the player
function checkForInput()
{
	
	/*
	===========================

			Movement

	===========================
	*/
	
	// 	Leftward movement
	if(playerControls.left() && canMove())
	{
		hspeed -= 2;
		global.fuel -= 1;
		global.energyConsumptionScore += .25;
	}
	// 	Rightward movement
	if(playerControls.right() && canMove()) 
	{
		hspeed += 2;
		global.fuel--;
		global.energyConsumptionScore += .25;
	}
	// 	Upward movement
	if(playerControls.up() && canMove()) 
	{
		vspeed -= 2;
		global.fuel--;
		global.energyConsumptionScore += .25;
	}
	// 	Downward movement
	if(playerControls.down() && canMove()) 
	{
		vspeed += 2;
		global.fuel--;
		global.energyConsumptionScore += .25;
	}
	// Rotate left
	if(playerControls.rotateLeft() && canRotate())
	{
		//	Update the image angle by rotation speed
		image_angle += rspeed;
	}
	// Rotate right
	if(playerControls.rotateRight() && canRotate())
	{
		//	Update the image angle by rotation speed
		image_angle -= rspeed;
	}
	
	
	/*
	===========================

			Combat

	===========================
	*/
	
	// Switch cannon type
	if(playerControls.toggleCannon())
	{
		// Check currently selected ammo type
		if(ammoType == AmmoTypes.SMALL)
		{
			// Toggle ammo type
			ammoType = AmmoTypes.BIG;
		} else {
			// Toggle ammo type
			ammoType = AmmoTypes.SMALL;	
		}
	}
	
	// Fire cannon
	if(playerControls.fire() && (global.energy > 0) && (hasSmallAmmo() || hasBigAmmo()))
	{
		// Check current ammo type
		switch(ammoType)
		{
			// Small ammo
			case AmmoTypes.SMALL:
				// Check if player has any small ammo and can fire
				if(hasSmallAmmo() && canShootSmall)
				{
					// Update state
					canShootSmall = false;
					
					// Spawn bullet object
					inst = instance_create_layer(x,y,"instances",obj_bullet);
					
					// Subtract from small ammo remaining and energy
					global.smallAmmo--;
					global.energy -= inst.energyPerShot;
					
					// Alarm for small cannon fire rate
					alarm[1] = room_speed * global.smallShotInterval;
					global.energyConsumptionScore += .25;
				}
				
				break;
				
				// Big ammo
				case AmmoTypes.BIG:
					// Check if player has any big ammo and can fire
					if(hasBigAmmo() && canShootBig)
					{
						// Update state
						canShootBig = false;
					
						// Spawn bullet object
						bigBullet = instance_create_layer(x,y,"instances",obj_bullet);
						
						// Update instance variables
						with(bigBullet)
						{	
							energyPerShot *= 3;			//	Increase energy consumed per shot
							damage *= 2;				//	Increase damage
							speed /= 1.35;				//	Reduce speed by 35%
							image_index = 2;			//	This currently doesn't seem to work
							image_xscale = 3;			//	Increase width 
							image_yscale = 3;			//	Increase height
						}
					
						// Subtract from big ammo remaining and energy
						global.bigAmmo--;
						global.energy -= bigBullet.energyPerShot;
					
						// Alarm for big cannon fire rate
						alarm[2] = room_speed * global.bigShotInterval;
						global.energyConsumptionScore += 1;
					}
					
					break;
		}
		
	}
	
	
	/*
	===========================

		Automatic deceleration

	===========================
	*/
	
	//	Check if player is NOT pressing keys to move
	if(!playerControls.left() && !playerControls.right())
	{
		// Decelerate player's horizontal speed
		hspeed -= sign(hspeed);	//	This ensures it always moves in the opposite direction
	}
	
	if(!playerControls.up() && !playerControls.down())
	{
		// Decelerate player's vertical speed
		vspeed -= sign(vspeed);	
	}
	
	// Check player bounds
	checkBounds();
}


checkForInput();
// health lower than 50 then start the counter
if global.healthPoints < 50 {
	counter += 1
}

// reset counter ever so often (avoids overflows)
if counter > 60 {
	counter = 0
}