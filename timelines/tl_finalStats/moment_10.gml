with(obj_playerStats) {
	text += "\nTotal small bullets fired: " + string(global.totalSmallBulletsFired)
	audio_play_sound(snd_playershoot, 1, false)
}