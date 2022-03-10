/// @description Insert description here
// You can write your code in this editor
draw_text(100, 10, "SHIP SINKING. GO TO THE POWER TUBE IN THE TOP LEFT AND PRESS Z TO REFUEL")
draw_text(100, 50, string(seconds) +  " seconds remaining before ship sinks")
// decrement the health as time goes on
draw_text(
	100, 
	100, 
	"Health    " + string(global.healthPoints) + "/" + string(global.healthCapacity)
);

draw_text(
	100, 
	150, 
	"Shields    " + string(global.shields) + "/" + string(global.shieldCapacity)
);