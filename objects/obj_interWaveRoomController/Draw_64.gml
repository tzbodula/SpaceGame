/// @description Insert description here
// You can write your code in this editor
draw_text(250,100, "Protective Barrier Down. Refill before ship sinks into space!")
draw_text(250,200, seconds)
draw_text(250,250, death_message)

// decrement the health as time goes on
draw_text(
	16, 
	82, 
	"Health    " + string(global.healthPoints) + "/" + string(global.healthCapacity)
);

draw_text(250,300, "Enemies attacking us")
draw_text(250,350, global.enemiesNearPlayer)