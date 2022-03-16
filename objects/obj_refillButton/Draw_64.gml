/// @description Draw gui


draw_set_color(c_white); //Sets the text color to white, for all the text that we will use
draw_set_font(brokenconsole); //Sets the text font to brokenconsole, which is the one for the game.

// Draw Text
switch(self.name)
{
	case "refillAmmo":
		// Draw name of upgrade
		draw_text_transformed(name_startX-5, name_startY-10, 
		"Refill Ammo\nSmall Ammo: " + string(global.smallAmmo) + "/" + string(global.smallAmmoCapacity) + "\nBig Ammo: " + string(global.bigAmmo) + "/" + string(global.bigAmmoCapacity), 
		0.75, 0.75, 0);

		// Compute cost of upgrade
		var cost = (((global.bigAmmoCapacity - global.bigAmmo) + (global.smallAmmoCapacity - global.smallAmmo))/2) + 1; // + 1 so it's always at least 1
	
		// Draw cost
		draw_text(cost_startX, cost_startY, "Cost: $" + string(cost));
	
		break;
		
	case "refillEnergy":
		// Draw name of upgrade
		draw_text_transformed(name_startX+name_xoffset, name_startY-10, "Refill Energy:\n" + string(global.energy) + "/" + string(global.energyCapacity), 1, 1, 0);

		// Compute cost of upgrade
		var cost = ceil((global.energyCapacity - global.energy)/global.energy) + 1;
	
		// Draw cost
		draw_text(cost_startX+name_xoffset, cost_startY, "Cost: $" + string(cost));
	
		break;
		
	case "refillFuel":
		// Draw name of upgrade
		draw_text_transformed((name_startX+name_xoffset)*1.38, name_startY-10, "Refill Fuel:\n" + string(global.fuel) + "/" + string(global.fuelCapacity), 1, 1, 0);

		// Compute cost of upgrade
		var cost = ceil((global.fuelCapacity - global.fuel)/global.fuel) + 1;
	
		// Draw cost
		draw_text((cost_startX+name_xoffset)*1.35, cost_startY, "Cost: $" + string(cost));
	
		break;
	case "refillShields":
		// Draw name of upgrade
		draw_text_transformed((name_startX+name_xoffset)*1.7, name_startY-10,
		"Refill Health/Shields\nHealth: " + string(global.healthPoints) + "/" + string(global.healthCapacity) + "\nShields: " + string(global.shields) + "/" + string(global.shieldCapacity), 
		0.75, 0.75, 0);

		// Compute cost of upgrade
		var cost = ceil((global.healthCapacity - global.healthPoints)/(global.healthPoints+1)) + ceil((global.shieldCapacity - global.shields)/(global.shields+1)) +  1;
	
		// Draw cost
		draw_text((cost_startX+name_xoffset)*1.7, cost_startY, "Cost: $" + string(cost));
	
		break;
		
	case "upgradeAmmo":
		// Draw name of upgrade
		draw_text_transformed(curr_startX-20, (curr_startY+55), "Upgrade Ammo", 1, 1, 0);

		// Compute and draw current and next percent upgrade
		var curr_pct = (abs(global.playerUpgrades.bigAmmoDamage.multiplier - 1)*100.0) + (abs(global.playerUpgrades.smallAmmoDamage.multiplier - 1)*100.0);
		var next_pct = curr_pct * (global.playerUpgrades.bigAmmoDamage.nPurchased+1)+1;
		draw_set_color(c_green);
		draw_text_transformed(curr_startX+65, (curr_startY-70), "+" + string(curr_pct) + "%", 0.75, 0.75, 0);
		draw_text_transformed(curr_startX+30, (curr_startY-50), "+" + string(next_pct) + "%", 0.75, 0.75, 0);
		
		draw_set_color(c_white);

		// Compute cost of upgrade
		var cost = global.playerUpgrades.bigAmmoDamage.cost + global.playerUpgrades.smallAmmoDamage.cost;
	
		// Draw cost
		draw_text(curr_startX, curr_startY, "Cost: $" + string(cost));
	
		break;
		
	case "upgradeEnergy":
		// Draw name of upgrade
		draw_text_transformed(curr_startX*1.42, (curr_startY+55), "Upgrade Energy Cap", 1, 1, 0);

		// Compute and draw current and next percent upgrade
		var curr_pct = (abs(global.playerUpgrades.energyCapacity.multiplier - 1)*100.0);
		var next_pct = curr_pct * (global.playerUpgrades.energyCapacity.nPurchased+1)+1;
		draw_set_color(c_green);
		draw_text_transformed((curr_startX+65)*1.42, (curr_startY-70), "+" + string(curr_pct) + "%", 0.75, 0.75, 0);
		draw_text_transformed((curr_startX+30)*1.47, (curr_startY-50), "+" + string(next_pct) + "%", 0.75, 0.75, 0);
		
		draw_set_color(c_white);

		// Compute cost of upgrade
		var cost = global.playerUpgrades.energyCapacity.cost;
	
		// Draw cost
		draw_text(curr_startX*1.5, curr_startY, "Cost: $" + string(cost));
	
		break;
	case "upgradeFuel":
		// Draw name of upgrade
		draw_text_transformed(curr_startX*1.95, (curr_startY+55), "Upgrade Fuel Cap", 1, 1, 0);

		// Compute and draw current and next percent upgrade
		var curr_pct = (abs(global.playerUpgrades.fuelCapacity.multiplier - 1)*100.0);
		var next_pct = curr_pct * (global.playerUpgrades.fuelCapacity.nPurchased+1)+1;
		draw_set_color(c_green);
		draw_text_transformed((curr_startX+65)*1.87, (curr_startY-70), "+" + string(curr_pct) + "%", 0.75, 0.75, 0);
		draw_text_transformed((curr_startX+30)*1.95, (curr_startY-50), "+" + string(next_pct) + "%", 0.75, 0.75, 0);
		
		draw_set_color(c_white);

		// Compute cost of upgrade
		var cost = global.playerUpgrades.fuelCapacity.cost;
	
		// Draw cost
		draw_text(curr_startX*2, curr_startY, "Cost: $" + string(cost));
	
		break;
	case "upgradeShields":
		// Draw name of upgrade
		draw_text_transformed(curr_startX*2.35, (curr_startY+55), "Upgrade Health/Shield Cap", 1, 1, 0);

		// Compute and draw current and next percent upgrade
		var curr_pct = (abs(global.playerUpgrades.healthCapacity.multiplier - 1)*100.0);
		var next_pct = curr_pct * (global.playerUpgrades.healthCapacity.nPurchased+1)+1;
		draw_set_color(c_green);
		draw_text_transformed((curr_startX+65)*2.32, (curr_startY-70), "+" + string(curr_pct) + "%", 0.75, 0.75, 0);
		draw_text_transformed((curr_startX+30)*2.46, (curr_startY-50), "+" + string(next_pct) + "%", 0.75, 0.75, 0);
		
		draw_set_color(c_white);

		// Compute cost of upgrade
		var cost = global.playerUpgrades.healthCapacity.cost + global.playerUpgrades.shieldCapacity.cost;
	
		// Draw cost
		draw_text(curr_startX*2.55, curr_startY, "Cost: $" + string(cost));
	
		break;
}
