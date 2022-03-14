// State variables to store which cheats are currently enabled

// Check for cheat code entry
function checkForCheatCode(){
	
	// Toggle invincibility
	if(keyboard_check(vk_control) && keyboard_check_pressed(ord("I")))
	{
		// Check if invincibility is enabled
		if(!global.invincibility)
		{
			// Set player's health and shields to infinity
			global.healthPoints = infinity;
			global.shields = infinity;
			
			// Update invincibility state
			global.invincibility = true;
		}
		else {
			// Revert to initial starting stats
			global.healthPoints = global.healthCapacity;
			global.shields = global.shieldCapacity;
			
			// Update invincibility state
			global.invincibility = false;
		}
	}
	
	// Test code
	if(keyboard_check(vk_control) && keyboard_check_pressed(ord("T")))
	{
		room_goto(rm_shop);
	}
	
	// Add Cash (+ $100)
	if(keyboard_check(vk_control) && keyboard_check_pressed(ord("C")))
	{
		global.cash += 100;	
	}
}