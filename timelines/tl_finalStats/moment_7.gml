with(obj_playerStats) {
	text += "\nEnergy Consumption Score: " + string(floor(global.energyConsumptionScore))
	audio_play_sound(snd_playershoot, 1, false)
}

