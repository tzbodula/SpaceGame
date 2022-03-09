if global.tutorial {
	instance_deactivate_all(true)
	instance_activate_object(obj_playerShip)
	instance_activate_object(obj_tutorialController2)
}

else {
	instance_deactivate_object(obj_tutorialController2)	
}