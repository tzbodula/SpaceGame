finalScore = ""
global.color = ""

//totalPoints = round((global.spaceGarbageCollected * global.totalCash) / (global.energyConsumptionScore / 2))

// TESTING
totalPoints = 4

switch (totalPoints) {
	
	case 4: finalScore = "A"
			global.color = make_color_rgb(0, 204, 0)
			break
			
	case 3: finalScore = "B"
			global.color = make_color_rgb(204, 204, 0)
			break
			
	case 2: finalScore = "C"
			global.color = make_color_rgb(255, 255, 0)
			break
			
	case 1: finalScore = "D"
			global.color = make_color_rgb(255, 128, 0)
			break
			
	case 0: finalScore = "F" 
			global.color = make_color_rgb(255, 0, 0)
			break
	
}

with(obj_finalGrade) {
	text3 += finalScore
	audio_play_sound(snd_garbageCollection, 1, false)
}