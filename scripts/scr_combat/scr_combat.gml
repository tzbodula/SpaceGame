function damageObj(obj, amount)
{
	// Check if obj is player
	if(obj == obj_playerShip)
	{
		// Check if player has shields
		if(obj.shields > 0)
		{
			// Check if damage will overkill the shield (destroy shield with more damage left to deal)
			if(obj.shields - amount <= 0)
			{
				// Compute difference amount
				diff = amount - obj.shields;
				
				// Set player shields to 0
				obj.shields = 0;
				
				// Subtract remaining damage from player health
				obj.healthPoints -= diff;
			}
			else {
				// Damage player shields
				obj.shields -= amount;
			}
		}
		// No shields remaining
		else {
			// Check if damage will kill player
			if(obj.healthPoints - amount <= 0)
			{
				// Destroy calling object
				instance_destroy(self);
				
				// Destroy player ship	
				instance_destroy(obj)
			}
			else {
				// Destroy calling object and increment player score
				//obj.points += self.healthPoints;
			//	instance_destroy(self);
				
				// Decrement player health
				obj.healthPoints -= amount;
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