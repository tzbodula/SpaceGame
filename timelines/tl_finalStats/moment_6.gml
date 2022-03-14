with(obj_playerStats) {
	text += "Total enemies eliminated: " + string(global.totalKills)
	audio_play_sound(snd_playershoot, 1, false)
}