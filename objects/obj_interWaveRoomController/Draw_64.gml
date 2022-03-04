/// @description Insert description here
// You can write your code in this editor
draw_text(room_width/2, 100, "Press Z to refill before ship sinks into space!")
draw_text(room_width/2, 200, seconds)
draw_text(room_width/2, 250, "seconds remaining before ship sinks")
draw_text(250,350, death_message)

// decrement the health as time goes on
draw_text(
	room_width/2, 
	300, 
	"Health    " + string(global.healthPoints) + "/" + string(global.healthCapacity)
);
