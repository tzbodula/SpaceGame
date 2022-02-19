// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function difficulty_player(){
	switch(global.difficulty) {
		case "easy":
			global.healthCapacity *= 1.5;						
			global.shieldCapacity *= 1.5;			
			global.energyCapacity *= 1.5;
			break
		case "medium":
			obj_playerShip.shields *= 1
			obj_playerShip.energy *= 1
			obj_playerShip.healthPoints *= 1
			break
		case "hard":
			obj_playerShip.shields *= 0.5
			obj_playerShip.energy *= 0.5
			obj_playerShip.healthPoints *= 0.5
			break
	}
}


/*
			obj_playerShip.shieldCapacity *= 1.5
			obj_playerShip.energyCapacity *= 1.5
			obj_playerShip.healthCapacity *= 1.5
			*/