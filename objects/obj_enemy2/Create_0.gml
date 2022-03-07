/// @description Insert description here
// You can write your code in this editor

// Change variable values movement_speed and health_points based on difficulty
originalSprite = sprite_index
coinFlip = random_range(0, 1)
inRoom = false
canShoot = true
// Make the enemies shoot faster as the waves increase
laserInterval = laserInterval - (global.wave * 8)
nearPlayer = false
alarm[0] = 50
