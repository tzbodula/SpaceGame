function scr_resetGame() {
	room_persistent = false
	
	global.wave = 1						// Current wave #
    global.totalWaves = 3;				// Total number of different waves

	// Resource values
    global.healthPoints = 100;			//	Set player health
    global.points = 0;					//	Instance variable for score
    global.wave = 1;
    global.shields = 50;				//	Player shields
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
	
	instance_destroy(obj_controller)
	game_restart()
}