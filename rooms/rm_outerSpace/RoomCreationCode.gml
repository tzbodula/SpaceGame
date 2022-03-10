if global.tutorial {
	instance_deactivate_all(true)
	//instance_deactivate_object(obj_playerStats)
	instance_activate_object(obj_playerShip)
	instance_activate_object(obj_tutorialController2)
	global.shields = 5000;				//	Player shields
	global.fuel = 200000;				//	Ship fuel
	global.energy = 200000;				//	Ship energy
	room_persistent = false
	global.cash = 0;
}

else {
	instance_deactivate_object(obj_tutorialController2)
}

