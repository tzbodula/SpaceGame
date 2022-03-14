// Set global.insideShip
global.insideShip = true;

room_persistent = true;

// Check if obj_controller exists yet
if(!instance_exists(obj_controller))
{
	// Create obj_controller
	instance_create_layer(0,0,"instances",obj_controller);
}

if global.tutorial {
	instance_activate_object(obj_tutorialController1)
	instance_deactivate_object(obj_tutorialController3)
}

else if global.tutorial2 {
	instance_deactivate_object(obj_tutorialController1)
	instance_deactivate_object(obj_battlefield_button)
	instance_activate_object(obj_tutorialController3)
	
}

else {
	instance_deactivate_object(obj_tutorialController1) 
	instance_deactivate_object(obj_tutorialController3)
	instance_deactivate_object(obj_battlefield_button)
	instance_activate_object(obj_interiorTimer)
	if global.wave == 0
		audio_play_sound(snd_inBetweenWaves, 1, false)
}

// UNCOMMENT FOR FINAL GAME
//instance_deactivate_object(obj_battlefield_button)