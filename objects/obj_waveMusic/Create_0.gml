/// @description Insert description here
// You can write your code in this editor
if global.waveStage == 1 {
	audio_play_sound(snd_wave1, 1, true)
} else {
    if global.waveStage == 2 {
		audio_play_sound(snd_wave2, 1, true)
    }
    else {
		audio_play_sound(snd_wave3, 1, true)
    }
}