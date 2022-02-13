/**
*
* This script runs whenever an instance of obj_playerShip is created
*
*/

max_hsp = 20;				//	Max horizontal movement speed
max_vsp = 16;				//	Max vertical movement speed
rspeed = 5;					//	Rotational speed  
health_points = 100;		//	Set player health
points = 0;					//	Instance variable for score
shields = 50;				//	Player shields
energy = 100;				//	Ship energy

// Health, Shield, and power capacity (These will be upgradable)
healthCapacity = health_points;
shieldCapacity = shields;
energyCapacity = energy;

// Time in seconds between automatically decrementing player ship energy while in combat
energyUseInterval = 2; // This could be upgradable


// State variables/functions
canMove = function() {
			return energy > 0;		//	Player ship can only move if it has energy
		};



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
	}	
};


// Alarm for automatically using energy
alarm[0] = room_speed*energyUseInterval;