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
global.points = 0;					//	Instance variable for score
global.wave = 1;
global.shields = 100;				//	Player shields
global.fuel = 2000;					//	Ship fuel
global.energy = 2000;				//	Ship energy
global.smallAmmo = 100;				//	Ammo available for small cannon
global.bigAmmo = 10;				//	Ammo available for big cannon
global.maxHsp = 10;					//	Max hspeed (upgradable; 3 tiers)
global.maxVsp = 8;					//	Max vspeed (upgradable; 3 tiers)

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


// By dafult, wave is still continuing 
global.isWaveOver = false;

//make the room persistent
if global.tutorial {
    room_persistent = false
} else {
	room_persistent = true
}
// a boolean variable to determine whether or not 
// the player will take health damage when they have to refuel
global.enemiesNearPlayer = 0
global.shipSink = false
global.insideShip = false
global.waveStart = true