with(obj_tutorialController2) {
	text += "\nBe sure to keep an eye on your ammo supply!"
	instance_activate_all()
	instance_deactivate_object(obj_spaceMeteor)
	instance_deactivate_object(obj_spaceMeteor2)
	instance_deactivate_object(obj_spaceGarbage)
	instance_deactivate_object(obj_endingController)
	instance_deactivate_object(obj_mainScreenButton)
	instance_deactivate_object(obj_playerStats)
	instance_deactivate_object(obj_creditsController)
	instance_deactivate_object(obj_finalGrade)
	//instance_activate_object(obj_controller)
}