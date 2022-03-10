// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_resetGame() {
	global.waveNumberInStage = 1;		// What round the player has completed
    global.waveStage = 1;				// "Intensity stage" of player 
    global.wavesPerStage = 1;			// How many waves of difficulty X will occur per stage? (set to 1 for testing purposes)
    global.totalWaves = 3;				// Total number of different waves
    global.wave_spawnsRemaining_multiplier = global.waveStage;
    global.wave_spawnInterval_multiplier = 1/global.waveStage;
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