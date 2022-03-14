if global.gameWon == true {
	instance_deactivate_object(obj_mainScreenButton)	
}

else if global.gameWon == false {
	instance_activate_object(obj_mainScreenButton)		
}