if (textLength <= 0)
   textLength = string_length(finalMessage)

if (index < textLength) {
   pause-- 
  
   if (pause <= 0) {
       index++
       finalMessageDisplayed = string_copy(finalMessage, 1, index) 
       pause = textSpeed 
   }
}

else {
	audio_stop_sound(snd_typing)	
	
}