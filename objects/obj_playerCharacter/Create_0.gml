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
	}
}

