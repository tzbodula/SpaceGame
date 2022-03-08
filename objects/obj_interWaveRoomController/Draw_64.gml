/// @description Insert description here
// You can write your code in this editor
draw_text(obj_playerCharacter.x + 30, obj_playerCharacter.y - 200, string(seconds) +  " seconds remaining before ship sinks")
// decrement the health as time goes on
draw_text(
	obj_playerCharacter.x + 30, 
	obj_playerCharacter.y - 150, 
	"Health    " + string(global.healthPoints) + "/" + string(global.healthCapacity)
);
