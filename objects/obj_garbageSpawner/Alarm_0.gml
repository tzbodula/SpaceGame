/// @description Insert description here
// You can write your code in this editor
var randomX = random_range(room_width/2, room_width)
var randomY = random_range(-15, -100)
instance_create_layer(randomX, randomY, "Instances", obj_spaceGarbage)
alarm[0] = spawnInterval