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
	instance_deactivate_object(obj_interiorTimer)
	instance_deactivate_object(obj_shop_button)
	instance_activate_object(obj_shopButtonTutorial)
	if room_persistent = true
		room_persistent = false
	
}

else if global.tutorial2 {
	instance_deactivate_object(obj_tutorialController1)
	instance_deactivate_object(obj_battlefield_button)
	instance_activate_object(obj_tutorialController3)
	instance_deactivate_object(obj_interiorTimer)
	instance_deactivate_object(obj_shop_button)
	instance_activate_object(obj_shopButtonTutorial)
}

else {
	instance_deactivate_object(obj_tutorialController1) 
	instance_deactivate_object(obj_tutorialController3)
	instance_deactivate_object(obj_battlefield_button)
	instance_activate_object(obj_interiorTimer)
	instance_deactivate_object(obj_shopButtonTutorial)
}