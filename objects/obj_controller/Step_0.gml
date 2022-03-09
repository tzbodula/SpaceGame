// Each step, check if the wave has concluded 
waveStatus();


if (global.isWaveOver == true) {
	//make the room not persistent in order to reset variables back to 
	//normal.
	room_persistent = false
	audio_stop_all()
	endWave()
}

if (global.fuel <= 0 or global.energy <= 0) {
	// if we run out of fuel or energy force the player to re-fill
	//by switching rooms.
	room_goto(rm_shipInterior_DuringWave)
}

if global.shipSink {
	//make sure the room is not persistent so we properly restart
    room_persistent = false
    //stop the music in order to avoid ear drum destruction
	global.shipSink = false
    audio_stop_all()
    room_restart()
}