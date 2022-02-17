// Initialize global player resources
score = 0;

healthBarLen = 500;				//	Health and shield bar length (in pixels)
healthBarHeight = 56;			//	Health and shield bar height
powerBarLen = 300;				//	Power bar length (in pixels)

hbarXStart = 8;								// Health and shield bar X start coordinate
hbarXEnd = hbarXStart + healthBarLen;		// Health and shield bar X end coordinate
hbarYStart = 8;								// Health and shield bar base Y start coordinate
hbarYEnd = 64;								// Health and shield bar base Y end coordinate

pbarStartX = hbarXEnd;						// Power bar starting X coordinate
pbarEndX = pbarStartX + powerBarLen;		// Power bar ending X coordinate



// Player variables
global.healthPoints = 100;			//	Set player health
global.points = 0;					//	Instance variable for score
global.shields = 50;				//	Player shields
global.fuel = 1000;				//	Ship fuel
global.energy = 100;				//	Ship energy
global.smallAmmo = 100;			//	Ammo available for small cannon
global.bigAmmo = 10;				//	Ammo available for big cannon

// Resource capacity values (These will be upgradable)
global.healthCapacity = global.healthPoints;
global.shieldCapacity = global.shields;
global.energyCapacity = global.energy;
global.fuelCapacity = global.fuel;
global.smallAmmoCapacity = global.smallAmmo;
global.bigAmmoCapacity = global.bigAmmo;

// Timing intervals
global.energyUseInterval = 0.5;	//	This could be upgradable