/**
*
* This script runs whenever an instance of obj_playerShip is created
*
*/

max_hsp = 20;				//	Max horizontal movement speed
max_vsp = 16;				//	Max vertical movement speed
rspeed = 5;					//	Rotational speed  


// State variables/functions
canMove = function() {
			return global.fuel > 0;		//	Player ship can only move if it has energy
		};

canRotate = function() {
			return global.energy > 0;
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
	},
	fire : function() {
		return keyboard_check(vk_space);	
	}
};


// Alarms for automatically using energy and fuel
alarm[0] = room_speed*global.energyUseInterval;