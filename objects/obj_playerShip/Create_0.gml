/**
*
* This script runs whenever an instance of obj_playerShip is created
*
*/
rspeed = 5;					//	Rotational speed  


// State variables/functions
canMove = function() {
			return global.fuel > 0;			//	Player ship can only move if it has fuel
		};

canRotate = function() {
			return global.energy > 0;		//	Player ship can only rotate if it has energy
		};
		
hasSmallAmmo = function() {
			return global.smallAmmo > 0;	//	Check if player has enough small ammo
		}
		
hasBigAmmo = function() {
			return global.bigAmmo > 0;		//	Check if player has enough big ammo
		}


canShootSmall = true;						//	State to control small ammo fire rate
canShootBig = true;							//	State to control big ammo fire rate

// Enumerator for ammo types
enum AmmoTypes {
		SMALL,
		BIG
	};
	
// Set default ammo type
ammoType = AmmoTypes.SMALL;

// Define struct to store input controls
playerControls = {
	left : function() {
		return keyboard_check(ord("A"));		//	A key to move left
	},			
	right : function() {
		return keyboard_check(ord("D"));		//	D key to move right
	},	
	up : function() {
		return keyboard_check(ord("W"));		//	W key to move up
	},	
	down : function() {
		return keyboard_check(ord("S"));		//	S key to move down
	},	
	rotateLeft : function() {
		return keyboard_check(ord("Q"));		//	Q to rotate/turn left
	},								
	rotateRight : function() {
		return keyboard_check(ord("E"));		//	E to rotate/turn right
	},
	fire : function() {
		return keyboard_check(vk_space);		//	Spacebar to fire 
	},
	toggleCannon : function() {
		return keyboard_check_pressed(vk_tab);			//	Tab to toggle ammo/cannon type	
	}
};


// Alarm for automatically using energy
alarm[0] = room_speed*global.energyUseInterval;



// Alarm for big cannon fire rate
//alarm[2] = room_speed * global.bigShotInterval;
// counter for shader
counter = 0