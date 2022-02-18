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
}

// Check for and handle input from the player
function checkForInput()
{
	// 	Leftward movement
	if(playerControls.left() && canMove())
	{
		hspeed -= 2;
		global.fuel -= 1;
	}
	// 	Rightward movement
	if(playerControls.right() && canMove()) 
	{
		hspeed += 2;
		global.fuel--;
	}
	// 	Upward movement
	if(playerControls.up() && canMove()) 
	{
		vspeed -= 2;
		global.fuel--;
	}
	// 	Downward movement
	if(playerControls.down() && canMove()) 
	{
		vspeed += 2;
		global.fuel--;
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