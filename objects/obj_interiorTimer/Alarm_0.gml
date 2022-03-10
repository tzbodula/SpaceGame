/// @description Insert description here
// You can write your code in this editor
//set countdown to false
countDown = false
// set counter to some uneven number
counter = 61
// stop audio
audio_stop_all()
// transition to outerspace
global.insideShip = false
global.isWaveOver = false
room_goto(rm_outerSpace)