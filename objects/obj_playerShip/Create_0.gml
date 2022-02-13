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
shields = 50;					//	Player shields

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