with(obj_tutorialController2) {
	text += "\nBe sure to keep an eye on your ammo supply!"
	instance_activate_all()
	//instance_deactivate_object(obj_enemy1Spawner)
	//instance_deactivate_object(obj_enemy2Spawner)
	//instance_deactivate_object(obj_enemy3Spawner)
	instance_deactivate_object(obj_spaceMeteor)
	instance_deactivate_object(obj_spaceMeteor2)
	instance_deactivate_object(obj_spaceGarbage)
	instance_deactivate_object(obj_endingController)
	instance_deactivate_object(obj_mainScreenButton)
	instance_deactivate_object(obj_playerStats)
}