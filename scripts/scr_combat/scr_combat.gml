function damageObj(obj, amount)
{
	// Check if obj is player
	if(obj == obj_playerShip)
	{
		// Check if player has shields
		if(global.shields > 0)
		{
			// Check if damage will overkill the shield (destroy shield with more damage left to deal)
			if(global.shields - amount <= 0)
			{
				// Compute difference amount
				diff = amount - global.shields;
				
				// Set player shields to 0
				global.shields = 0;
				
				// Subtract remaining damage from player health
				global.healthPoints -= diff;
			}
			else {
				// Damage player shields
				global.shields -= amount;
			}
		}
		// No shields remaining
		else {
			// Check if damage will kill player
			if(global.healthPoints - amount <= 0)
			{
				// Destroy calling object
				//instance_destroy(self);
				//scr_resetGame()
				// Destroy player ship	
				instance_destroy(obj)
			}
			else {
				// Destroy calling object and increment player score
				//obj.points += self.healthPoints;
			//	instance_destroy(self);
				//instance_destroy(self);
				
				// Decrement player health
				global.healthPoints -= amount;
			}
		}
	}
	// Not the player
	else {
		// Check if damage will destroy object
		if(obj.healthPoints - amount <= 0)
		{
			// Destroy object
			instance_destroy(obj);
		}
		else {
			obj.healthPoints -= amount;
				
		}
			
	}
}