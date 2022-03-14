if (textLength <= 0)
   textLength = string_length(finalMessage)

if (index < textLength) {
   pause-- 
  
   if (pause <= 0) {
       index++; // advance one character in the text
       finalMessageDisplayed = string_copy(finalMessage, 1, index) // starting from the 1st char in "text" we the amount of "index" characters to the displayed_text
       pause = textSpeed // resetting the cooldown for the next character
   }
}

else {
	audio_stop_sound(snd_typing)
	
	if keyboard_check_pressed(ord("X")) {
		global.gameEnd = true
		room_goto(rm_outerSpace)
		room_persistent = false
	}
}