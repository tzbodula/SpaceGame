// Change spawnInterval based on difficulty level
// difficulty.player_difficulty()
spawnsRemaining *= global.waveStage;
spawnInterval *= 1/global.waveStage;
alarm[0] = spawnInterval