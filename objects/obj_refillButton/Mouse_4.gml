/// @description Purchase upgrade

// Check which upgrade was clicked
switch(self.name)
{
	case "refillAmmo":
		// Compute cost of upgrade
		var cost = (((global.bigAmmoCapacity - global.bigAmmo) + (global.smallAmmoCapacity - global.smallAmmo))/2) + 1; // + 1 so it's always at least 1
		
		// Check if player has enough money
		if(global.cash >= cost)
		{
			// Subtract cost from player cash
			global.cash -= cost;
			
			// Refill player's ammo
			global.smallAmmo = global.smallAmmoCapacity;
			global.bigAmmo = global.bigAmmoCapacity;
		}
		
		break;
		
	case "refillEnergy":
		// Compute cost of upgrade
		var cost = ceil((global.energyCapacity - global.energy)/global.energy) + 1;
		
		// Check if player has enough money
		if(global.cash >= cost)
		{
			// Subtract cost from player cash
			global.cash -= cost;
			
			// Refill player's energy
			global.energy = global.energyCapacity;
		}
		
		break;
		
	case "refillFuel":
		// Compute cost of upgrade
		var cost = ceil((global.fuelCapacity - global.fuel)/global.fuel) + 1;
		
		// Check if player has enough money
		if(global.cash >= cost)
		{
			// Subtract cost from player cash
			global.cash -= cost;
			
			// Refill player's fuel
			global.fuel = global.fuelCapacity;
		}
		
		break;
		
	case "refillShields":
		// Compute cost of upgrade
		var cost = (ceil((global.healthCapacity - global.healthPoints)/(global.healthPoints+1)) + ceil((global.shieldCapacity - global.shields)/(global.shields+1))) / 5;
		
		// Check if player has enough money
		if(global.cash >= cost)
		{
			// Subtract cost from player cash
			global.cash -= cost;
			
			// Refill player's health and shields
			global.healthPoints = global.healthCapacity;
			global.shields = global.shieldCapacity;
		}
		
		break;
		
	case "upgradeAmmo":
		// Purchase upgrades
		global.playerUpgrades.buy("smallAmmoDamage");
		global.playerUpgrades.buy("bigAmmoDamage");
		break;
		
	case "upgradeEnergy":
		// Purchase upgrade
		global.playerUpgrades.buy("energyCapacity");
		break;
		
	case "upgradeFuel":
		// Purchase upgrade
		global.playerUpgrades.buy("fuelCapacity");
		break;
		
	case "upgradeShields":
		// Check if hp and shields are at capacity
		max_hp = (global.healthPoints == global.healthCapacity);
		max_shields = (global.shields == global.shieldCapacity);
		
		// Purchase upgrade
		global.playerUpgrades.buy("healthCapacity");
		global.playerUpgrades.buy("shieldCapacity");
		
		//Check if hp and shields should be set to new max
		if(max_hp)
		{
			global.healthPoints = global.healthCapacity;	
		}
		if(max_shields)
		{
			global.shields = global.shieldCapacity;
		}
		
		break;
}

show_debug_message(string(self.name) + " pressed");
