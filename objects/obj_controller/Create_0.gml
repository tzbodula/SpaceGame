// Initialize global player resources
score = 0;


/**
===========================

	GUI variables

===========================
*/
healthBarLen = 500;				//	Health and shield bar length (in pixels)
healthBarHeight = 56;			//	Health and shield bar height
powerBarLen = 300;				//	Power bar length (in pixels)

hbarXStart = 8;								// Health and shield bar X start coordinate
hbarXEnd = hbarXStart + healthBarLen;		// Health and shield bar X end coordinate
hbarYStart = 8;								// Health and shield bar base Y start coordinate
hbarYEnd = 64;								// Health and shield bar base Y end coordinate

pbarStartX = hbarXEnd;						// Power bar starting X coordinate
pbarEndX = pbarStartX + powerBarLen;		// Power bar ending X coordinate



/**
===========================

	Player variables

===========================
**/

// Resource values
global.healthPoints = 100;			//	Set player health
global.cash = 100;					//	Player money
global.points = 0;
global.wave = 1;
global.shields = 50;				//	Player shields
global.fuel = 2000;				//	Ship fuel
global.energy = 2000;				//	Ship energy
global.smallAmmo = 100;				//	Ammo available for small cannon
global.bigAmmo = 10;				//	Ammo available for big cannon
global.smallAmmoDamage = 5;			//	Damage per small bullet (upgradable)
global.bigAmmoDamage = global.smallAmmoDamage * 2;		//	RIP comment formatting
global.maxHsp = 10;					//	Max hspeed (upgradable; 3 tiers)
global.maxVsp = 8;					//	Max vspeed (upgradable; 3 tiers)
global.cash = 0

// Resource capacity values (These will be upgradable)
global.healthCapacity = global.healthPoints;
global.shieldCapacity = global.shields;
global.energyCapacity = global.energy;
global.fuelCapacity = global.fuel;
global.smallAmmoCapacity = global.smallAmmo;
global.bigAmmoCapacity = global.bigAmmo;

// Timing intervals
global.energyUseInterval = 1;		//	Automatically use 1 energy per second
global.smallShotInterval = 0.33;	//	delay (in seconds) for small cannon
global.bigShotInterval = 3;			//	delay (in seconds) for big cannon


// By default, wave is still continuing 
global.wave = 3;
global.totalWaves = 3;				// Total number of distinct waves
global.isWaveOver = false;
global.gameStart = true;


//make the room persistent
if global.tutorial {
	persistent = false
    room_persistent = false
} else {
	room_persistent = true
}
// a boolean variable to determine whether or not 
// the player will take health damage when they have to refuel
global.enemiesNearPlayer = 0;



/**
===========================

	Player Upgrade System

===========================
**/

global.playerUpgrades = {
		
		//	 Upgrade variables	//
		
		healthCapacity: {
			cost: 5,
			multiplier: 1.1,
			nPurchased: 0,
		},
		
		shieldCapacity: {
			cost: 5,
			multiplier: 1.15,
			nPurchased: 0,
		},
		
		energyCapacity: {
			cost: 5,
			multiplier: 1.15,
			nPurchased: 0,
		},
		
		fuelCapacity: {
			cost: 5,
			multiplier: 1.20,
			nPurchased: 0,
		},
		
		smallAmmoDamage: {
			cost: 5,
			multiplier: 1.4,
			nPurchased: 0,
		},
		
		bigAmmoDamage: {
			cost: 5,
			multiplier: 1.85,
			nPurchased: 0,
		},
		
		//	 Upgrade function(s)	//
		
		// Attempt to purchase upgrade
		buy: function(upgradeName)
		{
			// Get internal struct for selected upgrade
			var upgrade = variable_struct_get(self, upgradeName);
			
			// Check if player can afford upgrade
			if(global.cash >= upgrade.cost)
			{
				// Get global variable to upgrade
				var globvar =  variable_global_get(upgradeName);
				
				show_debug_message("global.playerUpgrades." + string(upgradeName) + " before upgrade: " + string(upgrade));
				show_debug_message("global." + string(upgradeName) + " before upgrade: " + string(globvar));
				
				// Decrement player cash and increment upgrade variables
				global.cash -= upgrade.cost;
				upgrade.cost *= upgrade.multiplier;
				upgrade.nPurchased += 1;
				
				// Upgrade global variable
				globvar *= upgrade.multiplier;
				
				// Check if upgrade multiplier should be incremented
				if(upgrade.nPurchased % 5 == 0)
				{
					// Increase multiplier by 10%
					upgrade.multiplier *= 1.1;
				}
				
				// Ensure variables are integers
				upgrade.cost = ceil(upgrade.cost);
				globvar = floor(globvar);
				
				// Set global variable
				variable_global_set(upgradeName, globvar);
				
				show_debug_message("global.playerUpgrades." + string(upgradeName) + " after upgrade: " + string(upgrade));
				show_debug_message("global." + string(upgradeName) + " after upgrade: " + string(variable_global_get(upgradeName)));
				
			}
			// Player can't afford uprgade
			else {
				show_debug_message("No cash? Upgrade cost = $" + string(upgrade.cost) + "\tAvailable balance = $" + string(global.cash));
			}
		},
		
};


/**
===========================

	Player Cheat States

===========================
**/
global.invincibility = false;









global.enemiesNearPlayer = 0
global.shipSink = false
global.insideShip = false
global.energyConsumptionScore = 0

