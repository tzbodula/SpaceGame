/// @description Damage enemy and destroy bullet
damageObj(other, self.damage);
global.shotsHit++;
audio_play_sound(snd_enemyDamaged, 1, false);
instance_destroy(self);

