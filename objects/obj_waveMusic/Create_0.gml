/// @description Insert description here
// You can write your code in this editor
if global.wave == 1 and global.credits = false {
	audio_play_sound(snd_wave1, 1, true)
} else {
    if global.wave == 2 {
		audio_play_sound(snd_wave2, 1, true)
    }
    else 
	 if global.wave == 3 {
		audio_play_sound(snd_wave3, 1, true)
    }
}