// Change spawnInterval based on difficulty level
// difficulty.player_difficulty()
spawnsRemaining *= global.wave_spawnsRemaining_multiplier;
spawnInterval *= global.wave_spawnInterval_multiplier;
alarm[0] = spawnInterval