with(obj_playerStats) {
	text += "\nShot accuracy: " + string((global.shotsHit / (global.totalBigBulletsFired + global.totalSmallBulletsFired) * 100)) + "%"
	audio_play_sound(snd_playershoot, 1, false)
}