// Increment player score
global.cash += self.healthPoints;
audio_play_sound(snd_enemyDeath, 1, false);
instance_create_layer(x, y, "Instances", deathObject)