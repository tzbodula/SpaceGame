// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawnEnemy(objectType){
	var xLeft = irandom_range(0,1)
	var yTop = irandom_range(0,1)
	var xRandom = .5
	var yRandom = .5
	if xLeft == 1
	    xRandom = random_range(-5, -150)
	else
	    xRandom = random_range(room_width + 15, room_width + 150)
	if yTop == 1
	    yRandom = random_range(-5, -150)
	else
	    yRandom = random_range(room_height + 15, room_height + 150)
	
	instance_create_layer(xRandom, yRandom, "Instances", objectType)
}