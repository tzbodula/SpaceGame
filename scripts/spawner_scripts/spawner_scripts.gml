function spawnEnemy(objectType){
	var xLeft = random_range(0,1)
	var xRandom = .5
	var yRandom = .5
	if xLeft > .5
	    xRandom = random_range(-5, -150)
	else
	    xRandom = random_range(room_width + 15, room_width + 150)
	yRandom = random_range(room_height + 15, room_height + 150)
	
	instance_create_layer(xRandom, yRandom, "Instances", objectType)
}