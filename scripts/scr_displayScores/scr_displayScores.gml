function displayScores() {
	xx = room_width/2 - 130
	yy = 175

	for (i = 0; i < 10; i++) {
		yy += 40
		draw_text(xx, yy, string(global.score_array[i, 0]))
		draw_text(xx + 200, yy, string(floor(global.score_array[i, 1])))
	}
}