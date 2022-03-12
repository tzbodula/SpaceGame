/// @description Insert description here
// You can write your code in this editor
//make it so enemiesNearPlayer decrements by 1
global.enemiesNearPlayer -= 1
// Increment player score
global.cash += self.healthPoints;
instance_create_layer(x, y, "Instances", deathObject)