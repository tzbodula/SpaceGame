with(obj_playerStats) {
	text += "\nTotal big bullets fired: " + string(global.totalBigBulletsFired)
	audio_play_sound(snd_playershoot, 1, false)
}