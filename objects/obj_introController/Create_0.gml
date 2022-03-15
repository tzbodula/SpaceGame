if !audio_is_playing(snd_introduction) {
	audio_stop_all()
	audio_play_sound(snd_introduction, 1, true)
}