// listen for async dialogue event
i_d = ds_map_find_value(async_load, "id")

if i_d == global.name {
	if ds_map_find_value(async_load, "status") {
		if ds_map_find_value(async_load, "result") != "" {
			global.name = ds_map_find_value(async_load, "result")
			
			ini_open("highScores3.ini")
			for(i = 0; i < 10; i++) {
				global.score_array[i, 0] = ini_read_string(string(i), "Name", "PLAYER")
				global.score_array[i, 1] = ini_read_string(string(i), "Score", "0")
			}
			ini_close()
			
			for(i = 0; i < 10; i++) {
				if(global.score > global.score_array[i, 1]) {
					for(j = 9; j > 1; j--) {
						global.score_array[j, 0] = global.score_array[j-1, 0]
						global.score_array[j, 1] = global.score_array[j-1, 1]
					}
					global.score_array[i, 0] = global.name
					global.score_array[i, 1] = floor(global.score)
					break
				}
			}
			
			ini_open("highScores3.ini")
			for(i = 0; i < 10; i++) {
				ini_write_string(string(i), "Name", global.score_array[i, 0])
				ini_write_real(string(i), "Score", global.score_array[i, 1])
			}
			ini_close()
			
			room_goto(rm_scoreBoard)
		}
	}
	
	scr_displayScores()
}