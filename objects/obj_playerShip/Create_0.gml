/**
*
* This script runs whenever an instance of obj_playerShip is created
*
*/

max_hsp = 20;	//	Max horizontal movement speed
max_vsp = 16;	//	Max vertical movement speed

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
	rotateLeft : ord("Q"),								//	Q to rotate/turn left
	rotateRight : ord("E")								//	E to rotate/turn right
};