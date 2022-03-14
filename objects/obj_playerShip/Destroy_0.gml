//make sure the room is not persistent so we properly restart
room_persistent = false
//stop the music in order to avoid ear drum destruction
audio_stop_all()
audio_play_sound(snd_playerDeath, 1, false);
instance_create_layer(x, y, "Instances", obj_playerShipDeath)