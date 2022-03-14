if global.tutorial {
	room_persistent = false
	instance_deactivate_all(true)
	//instance_deactivate_object(obj_playerStats)
	instance_activate_object(obj_playerShip)
	instance_activate_object(obj_tutorialController2)
	global.shields = 5000;				//	Player shields
	global.fuel = 200000;				//	Ship fuel
	global.energy = 200000;				//	Ship energy
	global.cash = 0;
}

else if global.gameEnd {
	instance_deactivate_all(true)
	instance_activate_object(obj_spaceMeteor)
	instance_activate_object(obj_spaceMeteor2)
	instance_activate_object(obj_endingController)
	instance_activate_object(obj_mainScreenButton)
	instance_activate_object(obj_playerStats)
	audio_stop_all()
	audio_play_sound(snd_typing, 1, true)
	// play musicbox
	
}

else if global.credits {
	instance_deactivate_all(true)
	instance_activate_object(obj_spaceMeteor)
	instance_activate_object(obj_spaceMeteor2)
	instance_activate_object(obj_creditsController)
	instance_activate_object(obj_mainScreenButton)
}

else {
	instance_deactivate_object(obj_tutorialController2)
	instance_deactivate_object(obj_endingController)
	instance_deactivate_object(obj_mainScreenButton)
	instance_deactivate_object(obj_playerStats)
	instance_deactivate_object(obj_creditsController)
	// Set intensity level based on wave #
	//setIntensity()
}

