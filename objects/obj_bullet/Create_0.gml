audio_play_sound(snd_playershoot, 1, false);
direction = obj_playerShip.direction;
image_angle = obj_playerShip.image_angle;

// Set horizontal and vertical speeds (defines direction of travel)
hspeed = cos(degtorad(image_angle)) * moveSpeed;
vspeed = sin(degtorad(-image_angle)) * moveSpeed;

