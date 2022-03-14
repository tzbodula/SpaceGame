// Each step, check if the wave has concluded 
if !global.insideShip{
    waveStatus(); 
}


if (global.isWaveOver == true and !global.insideShip) {
	//make the room not persistent in order to reset variables back to 
	//normal.
	if keyboard_check_pressed(ord("X")) {
	    room_persistent = false
	    audio_stop_all()
	    global.insideShip = true
	    endWave()
	}
}

if ((global.fuel <= 0 or global.energy <= 0) and !global.insideShip) {
	// if we run out of fuel or energy force the player to re-fill
	//by switching rooms.
	global.insideShip = true
	room_goto(rm_shipInterior_DuringWave)
}

// Check for cheat code entry
checkForCheatCode();

if global.shipSink and !global.insideShip{
	global.insideShip = false
	//make sure the room is not persistent so we properly restart
    room_persistent = false
    //stop the music in order to avoid ear drum destruction
	global.shipSink = false
    audio_stop_all()
    room_restart()
}
