// Change spawnsRemaining and spawnInterval based on current wave #

self.spawnsRemaining *= global.wave;
self.spawnInterval *= 1/global.wave;
alarm[0] = spawnInterval