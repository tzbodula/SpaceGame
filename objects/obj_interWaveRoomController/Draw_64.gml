/// @description Insert description here
// You can write your code in this editor
draw_text(250,100, "Press Z to refill and get back in action! \nYou have this many seconds before ship blows up")
draw_text(250,200, seconds)
draw_text(250,250, death_message)

// decrement the health as time goes on
draw_text(
	16, 
	82, 
	"Health    " + string(global.healthPoints) + "/" + string(global.healthCapacity)
);