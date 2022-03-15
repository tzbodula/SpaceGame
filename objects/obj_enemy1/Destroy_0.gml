// Increment player score
global.cash += 3;
global.totalCash += 3;
audio_play_sound(snd_enemyDeath, 1, false);
instance_create_layer(x, y, "Instances", deathObject)